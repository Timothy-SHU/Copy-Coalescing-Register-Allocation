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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [13 x i8] c"gtype-desc.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@rtx_next = dso_local local_unnamed_addr constant [139 x i8] c"\00\00\00\10\10\00\08\18\18\18\18\18\18\18\10\00\00\00\00\00\00\08\08\10\08\08\08\00\00\08\00\00\00\00\00\08\00\00\00\08\08\08\00\08\08\00\00\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\10", align 16
@gt_ggc_r_gtype_desc_c = dso_local local_unnamed_addr constant [87 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @ipa_edge_args_vector, i64 1, i64 8, ptr @gt_ggc_mx_VEC_ipa_edge_args_t_gc, ptr @gt_pch_nx_VEC_ipa_edge_args_t_gc }, %struct.ggc_root_tab { ptr @chrec_known, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @chrec_dont_know, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @cfg_layout_function_header, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @cfg_layout_function_footer, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @block_clear_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @reg_equiv_init, i64 1, i64 8, ptr @gt_ggc_ma_reg_equiv_init, ptr @gt_pch_na_reg_equiv_init }, %struct.ggc_root_tab { ptr @reg_equiv_memory_loc_vec, i64 1, i64 8, ptr @gt_ggc_mx_VEC_rtx_gc, ptr @gt_pch_nx_VEC_rtx_gc }, %struct.ggc_root_tab { ptr @varpool_nodes, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @cgraph_asm_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_asm_node, ptr @gt_pch_nx_cgraph_asm_node }, %struct.ggc_root_tab { ptr @cgraph_new_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @cgraph_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @cgraph_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @in_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @bss_noswitch_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @lcomm_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @comm_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @tls_comm_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @eh_frame_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @exception_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @sbss_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @bss_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @dtors_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @ctors_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @sdata_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @readonly_data_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @data_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @text_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @types_used_by_cur_var_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @types_used_by_vars_hash, i64 1, i64 8, ptr @gt_ggc_m_P24types_used_by_vars_entry4htab, ptr @gt_pch_n_P24types_used_by_vars_entry4htab }, %struct.ggc_root_tab { ptr @cfun, i64 1, i64 8, ptr @gt_ggc_mx_function, ptr @gt_pch_nx_function }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 16), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 24), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 32), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 48), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 56), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 64), i64 1, i64 488, ptr @gt_ggc_mx_sequence_stack, ptr @gt_pch_nx_sequence_stack }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 96), i64 1, i64 488, ptr @gt_ggc_mx_rtx_constant_pool, ptr @gt_pch_nx_rtx_constant_pool }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 128), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 200), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 208), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 216), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 224), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 232), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 240), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 248), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 256), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 264), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 272), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 280), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 288), i64 1, i64 488, ptr @gt_ggc_mx_VEC_uchar_gc, ptr @gt_pch_nx_VEC_uchar_gc }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 296), i64 1, i64 488, ptr @gt_ggc_mx_VEC_call_site_record_gc, ptr @gt_pch_nx_VEC_call_site_record_gc }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 320), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 328), i64 1, i64 488, ptr @gt_ggc_mx_initial_value_struct, ptr @gt_pch_nx_initial_value_struct }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 336), i64 1, i64 488, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 344), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 352), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 360), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 368), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 376), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 384), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 392), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 408), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 416), i64 1, i64 488, ptr @gt_ggc_mx_VEC_temp_slot_p_gc, ptr @gt_pch_nx_VEC_temp_slot_p_gc }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 424), i64 1, i64 488, ptr @gt_ggc_mx_temp_slot, ptr @gt_pch_nx_temp_slot }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 456), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @regno_reg_rtx, i64 1, i64 8, ptr @gt_ggc_ma_regno_reg_rtx, ptr @gt_pch_na_regno_reg_rtx }, %struct.ggc_root_tab { ptr @libfunc_table, i64 14, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @memory_identifier_string, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @current_function_func_begin_label, i64 1, i64 8, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr @current_function_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @sizetype_tab, i64 4, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @integer_types, i64 11, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @global_trees, i64 131, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @implicit_built_in_decls, i64 721, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @built_in_decls, i64 721, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @alias_pairs, i64 1, i64 8, ptr @gt_ggc_mx_VEC_alias_pair_gc, ptr @gt_pch_nx_VEC_alias_pair_gc }, %struct.ggc_root_tab { ptr @stack_limit_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @return_address_pointer_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @pic_offset_table_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @global_rtl, i64 11, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @const_tiny_rtx, i64 261, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @const_true_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @const_int_rtx, i64 129, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @line_table, i64 1, i64 8, ptr @gt_ggc_mx_line_maps, ptr @gt_pch_nx_line_maps }, %struct.ggc_root_tab zeroinitializer], align 16
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
@reg_equiv_init_size = external global i32, align 4
@gt_pch_rs_gtype_desc_c = dso_local local_unnamed_addr constant [9 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @reg_equiv_init_size, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_order, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_max_pid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_edge_max_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_max_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_n_nodes, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @in_cold_section_p, i64 1, i64 1, ptr null, ptr null }, %struct.ggc_root_tab { ptr @x_rtl, i64 1, i64 488, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@cgraph_order = external global i32, align 4
@cgraph_max_pid = external global i32, align 4
@cgraph_edge_max_uid = external global i32, align 4
@cgraph_max_uid = external global i32, align 4
@cgraph_n_nodes = external global i32, align 4
@in_cold_section_p = external global i8, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_ipa_edge_args_t_gc(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !36
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %6, %61
  %11 = phi i64 [ %62, %61 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %61, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %12, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %16, %49
  %20 = phi i64 [ %50, %49 ], [ 0, %16 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !46
  switch i32 %23, label %49 [
    i32 1, label %24
    i32 3, label %28
    i32 4, label %32
    i32 2, label %36
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %47

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %47

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %47

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %38) #5
  %41 = load ptr, ptr %13, align 8, !tbaa !42
  br label %42

42:                                               ; preds = %36, %40
  %43 = phi ptr [ %21, %36 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.ipa_jump_func, ptr %43, i64 %20, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %32, %28, %24
  %48 = phi ptr [ %26, %24 ], [ %30, %28 ], [ %34, %32 ], [ %45, %42 ]
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %48) #5
  br label %49

49:                                               ; preds = %47, %24, %28, %32, %42, %19
  %50 = add i64 %20, 1
  %51 = load i32, ptr %12, align 8, !tbaa !45
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %19, !llvm.loop !49

54:                                               ; preds = %49
  %55 = load ptr, ptr %13, align 8, !tbaa !42
  br label %56

56:                                               ; preds = %54, %16
  %57 = phi ptr [ %55, %54 ], [ %14, %16 ]
  %58 = icmp ult ptr %57, inttoptr (i64 2 to ptr)
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @ggc_set_mark(ptr noundef nonnull %57) #5
  br label %61

61:                                               ; preds = %56, %59, %10
  %62 = add nuw nsw i64 %11, 1
  %63 = icmp eq i64 %62, %8
  br i1 %63, label %64, label %10, !llvm.loop !51

64:                                               ; preds = %61, %6, %1, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_ssa_operand_memory_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %22, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %8, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !52
  %9 = icmp ult ptr %8, inttoptr (i64 2 to ptr)
  br i1 %9, label %10, label %3, !llvm.loop !54

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %4, %3 ], [ %8, %7 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %19
  %14 = phi ptr [ %20, %19 ], [ %0, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_ssa_operand_memory_d(ptr noundef nonnull %15) #6
  %18 = load ptr, ptr %14, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ null, %13 ]
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %22, label %13, !llvm.loop !55

22:                                               ; preds = %19, %1, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_gimple_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !56
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !60

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_gimple_statement_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %538, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %538

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #6
  switch i32 %7, label %538 [
    i32 0, label %8
    i32 1, label %18
    i32 2, label %42
    i32 3, label %52
    i32 13, label %76
    i32 5, label %91
    i32 8, label %116
    i32 9, label %136
    i32 10, label %156
    i32 6, label %171
    i32 11, label %200
    i32 7, label %210
    i32 12, label %230
    i32 4, label %245
    i32 14, label %271
    i32 15, label %291
    i32 16, label %363
    i32 17, label %393
    i32 18, label %438
    i32 19, label %463
    i32 20, label %483
    i32 21, label %503
    i32 22, label %523
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %538, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %15) #5
  br label %538

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %25) #5
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !48
  %31 = zext i32 %30 to i64
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %538, label %33

33:                                               ; preds = %28, %39
  %34 = phi i64 [ %40, %39 ], [ 0, %28 ]
  %35 = getelementptr inbounds %struct.gimple_statement_with_ops, ptr %0, i64 0, i32 1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %36) #5
  br label %39

39:                                               ; preds = %33, %38
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp eq i64 %40, %31
  br i1 %41, label %538, label %33, !llvm.loop !61

42:                                               ; preds = %6
  %43 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %44) #6
  br label %47

47:                                               ; preds = %42, %46
  %48 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %538, label %51

51:                                               ; preds = %47
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %49) #5
  br label %538

52:                                               ; preds = %6
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %54) #6
  br label %57

57:                                               ; preds = %52, %56
  %58 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %59) #5
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !48
  %65 = zext i32 %64 to i64
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %538, label %67

67:                                               ; preds = %62, %73
  %68 = phi i64 [ %74, %73 ], [ 0, %62 ]
  %69 = getelementptr inbounds %struct.gimple_statement_with_memory_ops, ptr %0, i64 0, i32 1, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %70) #5
  br label %73

73:                                               ; preds = %67, %72
  %74 = add nuw nsw i64 %68, 1
  %75 = icmp eq i64 %74, %65
  br i1 %75, label %538, label %67, !llvm.loop !62

76:                                               ; preds = %6
  %77 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %78) #6
  br label %81

81:                                               ; preds = %76, %80
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !48
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %83) #5
  br label %86

86:                                               ; preds = %81, %85
  %87 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !48
  %89 = icmp eq ptr %88, null
  br i1 %89, label %538, label %90

90:                                               ; preds = %86
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %88) #6
  br label %538

91:                                               ; preds = %6
  %92 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !48
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %93) #6
  br label %96

96:                                               ; preds = %91, %95
  %97 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %98) #5
  br label %101

101:                                              ; preds = %96, %100
  %102 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !48
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %103) #5
  br label %106

106:                                              ; preds = %101, %105
  %107 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !48
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %108) #5
  br label %111

111:                                              ; preds = %106, %110
  %112 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !48
  %114 = icmp eq ptr %113, null
  br i1 %114, label %538, label %115

115:                                              ; preds = %111
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %113) #6
  br label %538

116:                                              ; preds = %6
  %117 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %118) #6
  br label %121

121:                                              ; preds = %116, %120
  %122 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !48
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %123) #5
  br label %126

126:                                              ; preds = %121, %125
  %127 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !48
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %128) #5
  br label %131

131:                                              ; preds = %126, %130
  %132 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !48
  %134 = icmp eq ptr %133, null
  br i1 %134, label %538, label %135

135:                                              ; preds = %131
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %133) #6
  br label %538

136:                                              ; preds = %6
  %137 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !48
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %138) #6
  br label %141

141:                                              ; preds = %136, %140
  %142 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !48
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %143) #5
  br label %146

146:                                              ; preds = %141, %145
  %147 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !48
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %148) #5
  br label %151

151:                                              ; preds = %146, %150
  %152 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  %154 = icmp eq ptr %153, null
  br i1 %154, label %538, label %155

155:                                              ; preds = %151
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %153) #6
  br label %538

156:                                              ; preds = %6
  %157 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !48
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %158) #6
  br label %161

161:                                              ; preds = %156, %160
  %162 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %163) #5
  br label %166

166:                                              ; preds = %161, %165
  %167 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !48
  %169 = icmp eq ptr %168, null
  br i1 %169, label %538, label %170

170:                                              ; preds = %166
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %168) #5
  br label %538

171:                                              ; preds = %6
  %172 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %173 = load ptr, ptr %172, align 8, !tbaa !48
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %173) #6
  br label %176

176:                                              ; preds = %171, %175
  %177 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !48
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %178) #5
  br label %181

181:                                              ; preds = %176, %180
  %182 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !48
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %183) #5
  br label %186

186:                                              ; preds = %185, %181
  %187 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !48
  %189 = zext i32 %188 to i64
  %190 = icmp eq i32 %188, 0
  br i1 %190, label %538, label %191

191:                                              ; preds = %186, %197
  %192 = phi i64 [ %198, %197 ], [ 0, %186 ]
  %193 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %192, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !48
  %195 = icmp eq ptr %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %194) #5
  br label %197

197:                                              ; preds = %191, %196
  %198 = add nuw nsw i64 %192, 1
  %199 = icmp eq i64 %198, %189
  br i1 %199, label %538, label %191, !llvm.loop !63

200:                                              ; preds = %6
  %201 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !48
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %202) #6
  br label %205

205:                                              ; preds = %200, %204
  %206 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !48
  %208 = icmp eq ptr %207, null
  br i1 %208, label %538, label %209

209:                                              ; preds = %205
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %207) #5
  br label %538

210:                                              ; preds = %6
  %211 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !48
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %212) #6
  br label %215

215:                                              ; preds = %210, %214
  %216 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %217) #5
  br label %220

220:                                              ; preds = %215, %219
  %221 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !48
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %222) #6
  br label %225

225:                                              ; preds = %220, %224
  %226 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !48
  %228 = icmp eq ptr %227, null
  br i1 %228, label %538, label %229

229:                                              ; preds = %225
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %227) #6
  br label %538

230:                                              ; preds = %6
  %231 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %232 = load ptr, ptr %231, align 8, !tbaa !48
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %232) #6
  br label %235

235:                                              ; preds = %230, %234
  %236 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %237 = load ptr, ptr %236, align 8, !tbaa !48
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %237) #5
  br label %240

240:                                              ; preds = %235, %239
  %241 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !48
  %243 = icmp eq ptr %242, null
  br i1 %243, label %538, label %244

244:                                              ; preds = %240
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %242) #6
  br label %538

245:                                              ; preds = %6
  %246 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !48
  %248 = icmp eq ptr %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %247) #6
  br label %250

250:                                              ; preds = %245, %249
  %251 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !48
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %252) #5
  br label %255

255:                                              ; preds = %254, %250
  %256 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %257) #5
  %258 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %259 = load i32, ptr %258, align 4, !tbaa !48
  %260 = zext i32 %259 to i64
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %538, label %262

262:                                              ; preds = %255, %268
  %263 = phi i64 [ %269, %268 ], [ 0, %255 ]
  %264 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 6, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !48
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %262
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %265) #5
  br label %268

268:                                              ; preds = %262, %267
  %269 = add nuw nsw i64 %263, 1
  %270 = icmp eq i64 %269, %260
  br i1 %270, label %538, label %262, !llvm.loop !64

271:                                              ; preds = %6
  %272 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %273 = load ptr, ptr %272, align 8, !tbaa !48
  %274 = icmp eq ptr %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %271
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %273) #6
  br label %276

276:                                              ; preds = %271, %275
  %277 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %278 = load ptr, ptr %277, align 8, !tbaa !48
  %279 = icmp eq ptr %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %276
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %278) #5
  br label %281

281:                                              ; preds = %276, %280
  %282 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !48
  %284 = icmp eq ptr %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %283) #6
  br label %286

286:                                              ; preds = %281, %285
  %287 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !48
  %289 = icmp eq ptr %288, null
  br i1 %289, label %538, label %290

290:                                              ; preds = %286
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %288) #5
  br label %538

291:                                              ; preds = %6
  %292 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %293 = load ptr, ptr %292, align 8, !tbaa !48
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %293) #6
  br label %296

296:                                              ; preds = %291, %295
  %297 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %298 = load ptr, ptr %297, align 8, !tbaa !48
  %299 = icmp eq ptr %298, null
  br i1 %299, label %301, label %300

300:                                              ; preds = %296
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %298) #5
  br label %301

301:                                              ; preds = %296, %300
  %302 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %301
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %303) #6
  br label %306

306:                                              ; preds = %301, %305
  %307 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !48
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %308) #5
  br label %311

311:                                              ; preds = %310, %306
  %312 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !48
  %314 = icmp eq ptr %313, null
  br i1 %314, label %358, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %317 = load i64, ptr %316, align 8, !tbaa !48
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %353, label %319

319:                                              ; preds = %315, %347
  %320 = phi i64 [ %348, %347 ], [ 0, %315 ]
  %321 = load ptr, ptr %312, align 8, !tbaa !48
  %322 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %321, i64 %320, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !65
  %324 = icmp eq ptr %323, null
  br i1 %324, label %327, label %325

325:                                              ; preds = %319
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %323) #5
  %326 = load ptr, ptr %312, align 8, !tbaa !48
  br label %327

327:                                              ; preds = %319, %325
  %328 = phi ptr [ %321, %319 ], [ %326, %325 ]
  %329 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %328, i64 %320, i32 2
  %330 = load ptr, ptr %329, align 8, !tbaa !67
  %331 = icmp eq ptr %330, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %327
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %330) #5
  %333 = load ptr, ptr %312, align 8, !tbaa !48
  br label %334

334:                                              ; preds = %327, %332
  %335 = phi ptr [ %328, %327 ], [ %333, %332 ]
  %336 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %335, i64 %320, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !68
  %338 = icmp eq ptr %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %334
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %337) #5
  %340 = load ptr, ptr %312, align 8, !tbaa !48
  br label %341

341:                                              ; preds = %334, %339
  %342 = phi ptr [ %335, %334 ], [ %340, %339 ]
  %343 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %342, i64 %320, i32 4
  %344 = load ptr, ptr %343, align 8, !tbaa !69
  %345 = icmp eq ptr %344, null
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %344) #5
  br label %347

347:                                              ; preds = %341, %346
  %348 = add i64 %320, 1
  %349 = load i64, ptr %316, align 8, !tbaa !48
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %319, !llvm.loop !70

351:                                              ; preds = %347
  %352 = load ptr, ptr %312, align 8, !tbaa !48
  br label %353

353:                                              ; preds = %351, %315
  %354 = phi ptr [ %352, %351 ], [ %313, %315 ]
  %355 = icmp ult ptr %354, inttoptr (i64 2 to ptr)
  br i1 %355, label %358, label %356

356:                                              ; preds = %353
  %357 = tail call i32 @ggc_set_mark(ptr noundef nonnull %354) #5
  br label %358

358:                                              ; preds = %353, %356, %311
  %359 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %360 = load ptr, ptr %359, align 8, !tbaa !48
  %361 = icmp eq ptr %360, null
  br i1 %361, label %538, label %362

362:                                              ; preds = %358
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %360) #6
  br label %538

363:                                              ; preds = %6
  %364 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %365 = load ptr, ptr %364, align 8, !tbaa !48
  %366 = icmp eq ptr %365, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %363
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %365) #6
  br label %368

368:                                              ; preds = %363, %367
  %369 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !48
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %370) #5
  br label %373

373:                                              ; preds = %368, %372
  %374 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !48
  %376 = icmp eq ptr %375, null
  br i1 %376, label %378, label %377

377:                                              ; preds = %373
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %375) #6
  br label %378

378:                                              ; preds = %373, %377
  %379 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !48
  %381 = icmp eq ptr %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %380) #5
  br label %383

383:                                              ; preds = %378, %382
  %384 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !48
  %386 = icmp eq ptr %385, null
  br i1 %386, label %388, label %387

387:                                              ; preds = %383
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %385) #5
  br label %388

388:                                              ; preds = %383, %387
  %389 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !48
  %391 = icmp eq ptr %390, null
  br i1 %391, label %538, label %392

392:                                              ; preds = %388
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %390) #5
  br label %538

393:                                              ; preds = %6
  %394 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %395 = load ptr, ptr %394, align 8, !tbaa !48
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %395) #6
  br label %398

398:                                              ; preds = %393, %397
  %399 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %400 = load ptr, ptr %399, align 8, !tbaa !48
  %401 = icmp eq ptr %400, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %398
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %400) #5
  br label %403

403:                                              ; preds = %398, %402
  %404 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !48
  %406 = icmp eq ptr %405, null
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %405) #6
  br label %408

408:                                              ; preds = %403, %407
  %409 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !48
  %411 = icmp eq ptr %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %408
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %410) #5
  br label %413

413:                                              ; preds = %408, %412
  %414 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !48
  %416 = icmp eq ptr %415, null
  br i1 %416, label %418, label %417

417:                                              ; preds = %413
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %415) #5
  br label %418

418:                                              ; preds = %413, %417
  %419 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !48
  %421 = icmp eq ptr %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %418
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %420) #5
  br label %423

423:                                              ; preds = %418, %422
  %424 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !48
  %426 = icmp eq ptr %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %425) #5
  br label %428

428:                                              ; preds = %423, %427
  %429 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %430 = load ptr, ptr %429, align 8, !tbaa !48
  %431 = icmp eq ptr %430, null
  br i1 %431, label %433, label %432

432:                                              ; preds = %428
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %430) #5
  br label %433

433:                                              ; preds = %428, %432
  %434 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %435 = load ptr, ptr %434, align 8, !tbaa !48
  %436 = icmp eq ptr %435, null
  br i1 %436, label %538, label %437

437:                                              ; preds = %433
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %435) #5
  br label %538

438:                                              ; preds = %6
  %439 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %440 = load ptr, ptr %439, align 8, !tbaa !48
  %441 = icmp eq ptr %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %438
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %440) #6
  br label %443

443:                                              ; preds = %438, %442
  %444 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %445 = load ptr, ptr %444, align 8, !tbaa !48
  %446 = icmp eq ptr %445, null
  br i1 %446, label %448, label %447

447:                                              ; preds = %443
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %445) #5
  br label %448

448:                                              ; preds = %443, %447
  %449 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !48
  %451 = icmp eq ptr %450, null
  br i1 %451, label %453, label %452

452:                                              ; preds = %448
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %450) #6
  br label %453

453:                                              ; preds = %448, %452
  %454 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !48
  %456 = icmp eq ptr %455, null
  br i1 %456, label %458, label %457

457:                                              ; preds = %453
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %455) #5
  br label %458

458:                                              ; preds = %453, %457
  %459 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %460 = load ptr, ptr %459, align 8, !tbaa !48
  %461 = icmp eq ptr %460, null
  br i1 %461, label %538, label %462

462:                                              ; preds = %458
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %460) #5
  br label %538

463:                                              ; preds = %6
  %464 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %465 = load ptr, ptr %464, align 8, !tbaa !48
  %466 = icmp eq ptr %465, null
  br i1 %466, label %468, label %467

467:                                              ; preds = %463
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %465) #6
  br label %468

468:                                              ; preds = %463, %467
  %469 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %470 = load ptr, ptr %469, align 8, !tbaa !48
  %471 = icmp eq ptr %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %468
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %470) #5
  br label %473

473:                                              ; preds = %468, %472
  %474 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !48
  %476 = icmp eq ptr %475, null
  br i1 %476, label %478, label %477

477:                                              ; preds = %473
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %475) #6
  br label %478

478:                                              ; preds = %473, %477
  %479 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !48
  %481 = icmp eq ptr %480, null
  br i1 %481, label %538, label %482

482:                                              ; preds = %478
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %480) #5
  br label %538

483:                                              ; preds = %6
  %484 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %485 = load ptr, ptr %484, align 8, !tbaa !48
  %486 = icmp eq ptr %485, null
  br i1 %486, label %488, label %487

487:                                              ; preds = %483
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %485) #6
  br label %488

488:                                              ; preds = %483, %487
  %489 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %490 = load ptr, ptr %489, align 8, !tbaa !48
  %491 = icmp eq ptr %490, null
  br i1 %491, label %493, label %492

492:                                              ; preds = %488
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %490) #5
  br label %493

493:                                              ; preds = %488, %492
  %494 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !48
  %496 = icmp eq ptr %495, null
  br i1 %496, label %498, label %497

497:                                              ; preds = %493
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %495) #5
  br label %498

498:                                              ; preds = %493, %497
  %499 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %500 = load ptr, ptr %499, align 8, !tbaa !48
  %501 = icmp eq ptr %500, null
  br i1 %501, label %538, label %502

502:                                              ; preds = %498
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %500) #5
  br label %538

503:                                              ; preds = %6
  %504 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %505 = load ptr, ptr %504, align 8, !tbaa !48
  %506 = icmp eq ptr %505, null
  br i1 %506, label %508, label %507

507:                                              ; preds = %503
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %505) #6
  br label %508

508:                                              ; preds = %503, %507
  %509 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %510 = load ptr, ptr %509, align 8, !tbaa !48
  %511 = icmp eq ptr %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %510) #5
  br label %513

513:                                              ; preds = %508, %512
  %514 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !48
  %516 = icmp eq ptr %515, null
  br i1 %516, label %518, label %517

517:                                              ; preds = %513
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %515) #5
  br label %518

518:                                              ; preds = %513, %517
  %519 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !48
  %521 = icmp eq ptr %520, null
  br i1 %521, label %538, label %522

522:                                              ; preds = %518
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %520) #5
  br label %538

523:                                              ; preds = %6
  %524 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %525 = load ptr, ptr %524, align 8, !tbaa !48
  %526 = icmp eq ptr %525, null
  br i1 %526, label %528, label %527

527:                                              ; preds = %523
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %525) #6
  br label %528

528:                                              ; preds = %523, %527
  %529 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %530 = load ptr, ptr %529, align 8, !tbaa !48
  %531 = icmp eq ptr %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %528
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %530) #5
  br label %533

533:                                              ; preds = %528, %532
  %534 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !48
  %536 = icmp eq ptr %535, null
  br i1 %536, label %538, label %537

537:                                              ; preds = %533
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %535) #5
  br label %538

538:                                              ; preds = %268, %197, %73, %39, %255, %186, %62, %28, %1, %17, %13, %51, %47, %90, %86, %115, %111, %135, %131, %155, %151, %170, %166, %209, %205, %229, %225, %244, %240, %290, %286, %362, %358, %392, %388, %437, %433, %462, %458, %482, %478, %502, %498, %522, %518, %537, %533, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_throw_stmt_node(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_eh_landing_pad_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !73
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_landing_pad_d(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !76

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_eh_landing_pad_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_landing_pad_d(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #5
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_eh_region_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !82
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !85

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_eh_region_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !90
  switch i32 %22, label %48 [
    i32 1, label %23
    i32 2, label %33
    i32 3, label %43
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %25) #6
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %30) #6
  br label %48

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %35) #5
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %40) #5
  br label %48

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %45) #5
  br label %48

48:                                               ; preds = %32, %28, %42, %38, %47, %43, %20
  %49 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_ggc_mx_eh_landing_pad_d(ptr noundef nonnull %50) #6
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !92
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %55) #6
  br label %58

58:                                               ; preds = %53, %57
  %59 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !93
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %60) #6
  br label %63

63:                                               ; preds = %1, %58, %62, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_eh_catch_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !94
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #5
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #5
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #5
  br label %30

30:                                               ; preds = %1, %25, %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_rtx_def(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %1261, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %17, %14 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !48
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds i8, ptr %4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp ult ptr %17, inttoptr (i64 2 to ptr)
  br i1 %18, label %19, label %3, !llvm.loop !100

19:                                               ; preds = %7, %3, %14
  %20 = phi ptr [ %4, %3 ], [ %17, %14 ], [ null, %7 ]
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %43, label %22

22:                                               ; preds = %19, %42
  %23 = phi ptr [ %38, %42 ], [ %0, %19 ]
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, %23
  %36 = select i1 %35, ptr %30, ptr null
  br label %37

37:                                               ; preds = %32, %22, %28
  %38 = phi ptr [ null, %28 ], [ null, %22 ], [ %36, %32 ]
  %39 = ptrtoint ptr %38 to i64
  switch i64 %39, label %40 [
    i64 0, label %43
    i64 1, label %42
  ]

40:                                               ; preds = %37
  %41 = tail call i32 @ggc_set_mark(ptr noundef nonnull %38) #5
  br label %42

42:                                               ; preds = %40, %37
  br label %22

43:                                               ; preds = %37, %19
  %44 = phi ptr [ %0, %19 ], [ %23, %37 ]
  %45 = icmp eq ptr %44, %20
  br i1 %45, label %1261, label %46

46:                                               ; preds = %43, %1258
  %47 = phi ptr [ %1259, %1258 ], [ %44, %43 ]
  %48 = load i32, ptr %47, align 8
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %1247 [
    i16 138, label %50
    i16 137, label %60
    i16 136, label %65
    i16 135, label %70
    i16 134, label %80
    i16 133, label %90
    i16 132, label %100
    i16 131, label %105
    i16 130, label %110
    i16 129, label %115
    i16 128, label %125
    i16 127, label %135
    i16 126, label %145
    i16 125, label %150
    i16 124, label %160
    i16 123, label %170
    i16 122, label %185
    i16 121, label %195
    i16 120, label %200
    i16 119, label %215
    i16 118, label %230
    i16 117, label %235
    i16 116, label %240
    i16 115, label %245
    i16 114, label %250
    i16 113, label %255
    i16 112, label %260
    i16 111, label %265
    i16 110, label %270
    i16 109, label %275
    i16 108, label %280
    i16 107, label %285
    i16 106, label %290
    i16 105, label %295
    i16 104, label %300
    i16 103, label %305
    i16 102, label %310
    i16 101, label %315
    i16 100, label %320
    i16 99, label %325
    i16 98, label %330
    i16 97, label %335
    i16 96, label %345
    i16 95, label %355
    i16 94, label %365
    i16 93, label %375
    i16 92, label %385
    i16 91, label %395
    i16 90, label %405
    i16 89, label %415
    i16 88, label %425
    i16 87, label %435
    i16 86, label %445
    i16 85, label %455
    i16 84, label %465
    i16 83, label %475
    i16 82, label %485
    i16 81, label %495
    i16 80, label %505
    i16 79, label %515
    i16 78, label %525
    i16 77, label %535
    i16 76, label %540
    i16 75, label %545
    i16 74, label %550
    i16 73, label %555
    i16 72, label %565
    i16 71, label %575
    i16 70, label %585
    i16 69, label %595
    i16 68, label %605
    i16 67, label %615
    i16 66, label %625
    i16 65, label %635
    i16 64, label %645
    i16 63, label %650
    i16 62, label %660
    i16 61, label %670
    i16 60, label %680
    i16 59, label %690
    i16 58, label %700
    i16 57, label %710
    i16 56, label %720
    i16 55, label %730
    i16 54, label %740
    i16 53, label %750
    i16 52, label %760
    i16 51, label %770
    i16 50, label %775
    i16 49, label %785
    i16 48, label %795
    i16 47, label %805
    i16 2, label %1242
    i16 45, label %820
    i16 44, label %845
    i16 43, label %850
    i16 42, label %860
    i16 41, label %865
    i16 40, label %875
    i16 39, label %880
    i16 3, label %1232
    i16 37, label %885
    i16 4, label %1222
    i16 35, label %890
    i16 34, label %895
    i16 33, label %898
    i16 5, label %1217
    i16 6, label %1212
    i16 7, label %1187
    i16 29, label %903
    i16 8, label %1162
    i16 9, label %1132
    i16 26, label %913
    i16 25, label %923
    i16 24, label %928
    i16 23, label %933
    i16 22, label %943
    i16 21, label %958
    i16 20, label %978
    i16 19, label %983
    i16 18, label %988
    i16 17, label %993
    i16 16, label %1013
    i16 15, label %1016
    i16 14, label %1021
    i16 13, label %1031
    i16 12, label %1070
    i16 11, label %1092
    i16 10, label %1102
  ]

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %52 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %53) #6
  br label %56

56:                                               ; preds = %50, %55
  %57 = load ptr, ptr %51, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %1247, label %59

59:                                               ; preds = %56
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %57) #5
  br label %1247

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  br i1 %63, label %1247, label %64

64:                                               ; preds = %60
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %62) #6
  br label %1247

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = icmp eq ptr %67, null
  br i1 %68, label %1247, label %69

69:                                               ; preds = %65
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %67) #6
  br label %1247

70:                                               ; preds = %46
  %71 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %72 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %73) #6
  br label %76

76:                                               ; preds = %70, %75
  %77 = load ptr, ptr %71, align 8, !tbaa !48
  %78 = icmp eq ptr %77, null
  br i1 %78, label %1247, label %79

79:                                               ; preds = %76
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %77) #6
  br label %1247

80:                                               ; preds = %46
  %81 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %82 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !48
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %83) #6
  br label %86

86:                                               ; preds = %80, %85
  %87 = load ptr, ptr %81, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %1247, label %89

89:                                               ; preds = %86
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %87) #6
  br label %1247

90:                                               ; preds = %46
  %91 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %92 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !48
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %93) #6
  br label %96

96:                                               ; preds = %90, %95
  %97 = load ptr, ptr %91, align 8, !tbaa !48
  %98 = icmp eq ptr %97, null
  br i1 %98, label %1247, label %99

99:                                               ; preds = %96
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %97) #6
  br label %1247

100:                                              ; preds = %46
  %101 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !48
  %103 = icmp eq ptr %102, null
  br i1 %103, label %1247, label %104

104:                                              ; preds = %100
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %102) #6
  br label %1247

105:                                              ; preds = %46
  %106 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = icmp eq ptr %107, null
  br i1 %108, label %1247, label %109

109:                                              ; preds = %105
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %107) #6
  br label %1247

110:                                              ; preds = %46
  %111 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = icmp eq ptr %112, null
  br i1 %113, label %1247, label %114

114:                                              ; preds = %110
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %112) #6
  br label %1247

115:                                              ; preds = %46
  %116 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %117 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %118) #6
  br label %121

121:                                              ; preds = %115, %120
  %122 = load ptr, ptr %116, align 8, !tbaa !48
  %123 = icmp eq ptr %122, null
  br i1 %123, label %1247, label %124

124:                                              ; preds = %121
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %122) #6
  br label %1247

125:                                              ; preds = %46
  %126 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %127 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !48
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %128) #6
  br label %131

131:                                              ; preds = %125, %130
  %132 = load ptr, ptr %126, align 8, !tbaa !48
  %133 = icmp eq ptr %132, null
  br i1 %133, label %1247, label %134

134:                                              ; preds = %131
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %132) #6
  br label %1247

135:                                              ; preds = %46
  %136 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %137 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !48
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %138) #6
  br label %141

141:                                              ; preds = %135, %140
  %142 = load ptr, ptr %136, align 8, !tbaa !48
  %143 = icmp eq ptr %142, null
  br i1 %143, label %1247, label %144

144:                                              ; preds = %141
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %142) #6
  br label %1247

145:                                              ; preds = %46
  %146 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !48
  %148 = icmp eq ptr %147, null
  br i1 %148, label %1247, label %149

149:                                              ; preds = %145
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %147) #6
  br label %1247

150:                                              ; preds = %46
  %151 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %152 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %153) #6
  br label %156

156:                                              ; preds = %150, %155
  %157 = load ptr, ptr %151, align 8, !tbaa !48
  %158 = icmp eq ptr %157, null
  br i1 %158, label %1247, label %159

159:                                              ; preds = %156
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %157) #6
  br label %1247

160:                                              ; preds = %46
  %161 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %162 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %163) #6
  br label %166

166:                                              ; preds = %160, %165
  %167 = load ptr, ptr %161, align 8, !tbaa !48
  %168 = icmp eq ptr %167, null
  br i1 %168, label %1247, label %169

169:                                              ; preds = %166
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %167) #6
  br label %1247

170:                                              ; preds = %46
  %171 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %172 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %173 = load ptr, ptr %172, align 8, !tbaa !48
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %173) #6
  br label %176

176:                                              ; preds = %170, %175
  %177 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !48
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %178) #6
  br label %181

181:                                              ; preds = %176, %180
  %182 = load ptr, ptr %171, align 8, !tbaa !48
  %183 = icmp eq ptr %182, null
  br i1 %183, label %1247, label %184

184:                                              ; preds = %181
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %182) #6
  br label %1247

185:                                              ; preds = %46
  %186 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %187 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !48
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %188) #6
  br label %191

191:                                              ; preds = %185, %190
  %192 = load ptr, ptr %186, align 8, !tbaa !48
  %193 = icmp eq ptr %192, null
  br i1 %193, label %1247, label %194

194:                                              ; preds = %191
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %192) #6
  br label %1247

195:                                              ; preds = %46
  %196 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !48
  %198 = icmp eq ptr %197, null
  br i1 %198, label %1247, label %199

199:                                              ; preds = %195
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %197) #6
  br label %1247

200:                                              ; preds = %46
  %201 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %202 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %203 = load ptr, ptr %202, align 8, !tbaa !48
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %203) #6
  br label %206

206:                                              ; preds = %200, %205
  %207 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !48
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %208) #6
  br label %211

211:                                              ; preds = %206, %210
  %212 = load ptr, ptr %201, align 8, !tbaa !48
  %213 = icmp eq ptr %212, null
  br i1 %213, label %1247, label %214

214:                                              ; preds = %211
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %212) #6
  br label %1247

215:                                              ; preds = %46
  %216 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %217 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %218 = load ptr, ptr %217, align 8, !tbaa !48
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %218) #6
  br label %221

221:                                              ; preds = %215, %220
  %222 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !48
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %221
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %223) #6
  br label %226

226:                                              ; preds = %221, %225
  %227 = load ptr, ptr %216, align 8, !tbaa !48
  %228 = icmp eq ptr %227, null
  br i1 %228, label %1247, label %229

229:                                              ; preds = %226
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %227) #6
  br label %1247

230:                                              ; preds = %46
  %231 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !48
  %233 = icmp eq ptr %232, null
  br i1 %233, label %1247, label %234

234:                                              ; preds = %230
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %232) #6
  br label %1247

235:                                              ; preds = %46
  %236 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !48
  %238 = icmp eq ptr %237, null
  br i1 %238, label %1247, label %239

239:                                              ; preds = %235
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %237) #6
  br label %1247

240:                                              ; preds = %46
  %241 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !48
  %243 = icmp eq ptr %242, null
  br i1 %243, label %1247, label %244

244:                                              ; preds = %240
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %242) #6
  br label %1247

245:                                              ; preds = %46
  %246 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !48
  %248 = icmp eq ptr %247, null
  br i1 %248, label %1247, label %249

249:                                              ; preds = %245
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %247) #6
  br label %1247

250:                                              ; preds = %46
  %251 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !48
  %253 = icmp eq ptr %252, null
  br i1 %253, label %1247, label %254

254:                                              ; preds = %250
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %252) #6
  br label %1247

255:                                              ; preds = %46
  %256 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !48
  %258 = icmp eq ptr %257, null
  br i1 %258, label %1247, label %259

259:                                              ; preds = %255
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %257) #6
  br label %1247

260:                                              ; preds = %46
  %261 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !48
  %263 = icmp eq ptr %262, null
  br i1 %263, label %1247, label %264

264:                                              ; preds = %260
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %262) #6
  br label %1247

265:                                              ; preds = %46
  %266 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !48
  %268 = icmp eq ptr %267, null
  br i1 %268, label %1247, label %269

269:                                              ; preds = %265
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %267) #6
  br label %1247

270:                                              ; preds = %46
  %271 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !48
  %273 = icmp eq ptr %272, null
  br i1 %273, label %1247, label %274

274:                                              ; preds = %270
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %272) #6
  br label %1247

275:                                              ; preds = %46
  %276 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !48
  %278 = icmp eq ptr %277, null
  br i1 %278, label %1247, label %279

279:                                              ; preds = %275
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %277) #6
  br label %1247

280:                                              ; preds = %46
  %281 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !48
  %283 = icmp eq ptr %282, null
  br i1 %283, label %1247, label %284

284:                                              ; preds = %280
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %282) #6
  br label %1247

285:                                              ; preds = %46
  %286 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !48
  %288 = icmp eq ptr %287, null
  br i1 %288, label %1247, label %289

289:                                              ; preds = %285
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %287) #6
  br label %1247

290:                                              ; preds = %46
  %291 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !48
  %293 = icmp eq ptr %292, null
  br i1 %293, label %1247, label %294

294:                                              ; preds = %290
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %292) #6
  br label %1247

295:                                              ; preds = %46
  %296 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !48
  %298 = icmp eq ptr %297, null
  br i1 %298, label %1247, label %299

299:                                              ; preds = %295
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %297) #6
  br label %1247

300:                                              ; preds = %46
  %301 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !48
  %303 = icmp eq ptr %302, null
  br i1 %303, label %1247, label %304

304:                                              ; preds = %300
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %302) #6
  br label %1247

305:                                              ; preds = %46
  %306 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !48
  %308 = icmp eq ptr %307, null
  br i1 %308, label %1247, label %309

309:                                              ; preds = %305
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %307) #6
  br label %1247

310:                                              ; preds = %46
  %311 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !48
  %313 = icmp eq ptr %312, null
  br i1 %313, label %1247, label %314

314:                                              ; preds = %310
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %312) #6
  br label %1247

315:                                              ; preds = %46
  %316 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !48
  %318 = icmp eq ptr %317, null
  br i1 %318, label %1247, label %319

319:                                              ; preds = %315
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %317) #6
  br label %1247

320:                                              ; preds = %46
  %321 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !48
  %323 = icmp eq ptr %322, null
  br i1 %323, label %1247, label %324

324:                                              ; preds = %320
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %322) #6
  br label %1247

325:                                              ; preds = %46
  %326 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !48
  %328 = icmp eq ptr %327, null
  br i1 %328, label %1247, label %329

329:                                              ; preds = %325
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %327) #6
  br label %1247

330:                                              ; preds = %46
  %331 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !48
  %333 = icmp eq ptr %332, null
  br i1 %333, label %1247, label %334

334:                                              ; preds = %330
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %332) #6
  br label %1247

335:                                              ; preds = %46
  %336 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %337 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %338 = load ptr, ptr %337, align 8, !tbaa !48
  %339 = icmp eq ptr %338, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %335
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %338) #6
  br label %341

341:                                              ; preds = %335, %340
  %342 = load ptr, ptr %336, align 8, !tbaa !48
  %343 = icmp eq ptr %342, null
  br i1 %343, label %1247, label %344

344:                                              ; preds = %341
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %342) #6
  br label %1247

345:                                              ; preds = %46
  %346 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %347 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %348 = load ptr, ptr %347, align 8, !tbaa !48
  %349 = icmp eq ptr %348, null
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %348) #6
  br label %351

351:                                              ; preds = %345, %350
  %352 = load ptr, ptr %346, align 8, !tbaa !48
  %353 = icmp eq ptr %352, null
  br i1 %353, label %1247, label %354

354:                                              ; preds = %351
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %352) #6
  br label %1247

355:                                              ; preds = %46
  %356 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %357 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !48
  %359 = icmp eq ptr %358, null
  br i1 %359, label %361, label %360

360:                                              ; preds = %355
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %358) #6
  br label %361

361:                                              ; preds = %355, %360
  %362 = load ptr, ptr %356, align 8, !tbaa !48
  %363 = icmp eq ptr %362, null
  br i1 %363, label %1247, label %364

364:                                              ; preds = %361
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %362) #6
  br label %1247

365:                                              ; preds = %46
  %366 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %367 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !48
  %369 = icmp eq ptr %368, null
  br i1 %369, label %371, label %370

370:                                              ; preds = %365
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %368) #6
  br label %371

371:                                              ; preds = %365, %370
  %372 = load ptr, ptr %366, align 8, !tbaa !48
  %373 = icmp eq ptr %372, null
  br i1 %373, label %1247, label %374

374:                                              ; preds = %371
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %372) #6
  br label %1247

375:                                              ; preds = %46
  %376 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %377 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %378 = load ptr, ptr %377, align 8, !tbaa !48
  %379 = icmp eq ptr %378, null
  br i1 %379, label %381, label %380

380:                                              ; preds = %375
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %378) #6
  br label %381

381:                                              ; preds = %375, %380
  %382 = load ptr, ptr %376, align 8, !tbaa !48
  %383 = icmp eq ptr %382, null
  br i1 %383, label %1247, label %384

384:                                              ; preds = %381
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %382) #6
  br label %1247

385:                                              ; preds = %46
  %386 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %387 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !48
  %389 = icmp eq ptr %388, null
  br i1 %389, label %391, label %390

390:                                              ; preds = %385
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %388) #6
  br label %391

391:                                              ; preds = %385, %390
  %392 = load ptr, ptr %386, align 8, !tbaa !48
  %393 = icmp eq ptr %392, null
  br i1 %393, label %1247, label %394

394:                                              ; preds = %391
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %392) #6
  br label %1247

395:                                              ; preds = %46
  %396 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %397 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %398 = load ptr, ptr %397, align 8, !tbaa !48
  %399 = icmp eq ptr %398, null
  br i1 %399, label %401, label %400

400:                                              ; preds = %395
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %398) #6
  br label %401

401:                                              ; preds = %395, %400
  %402 = load ptr, ptr %396, align 8, !tbaa !48
  %403 = icmp eq ptr %402, null
  br i1 %403, label %1247, label %404

404:                                              ; preds = %401
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %402) #6
  br label %1247

405:                                              ; preds = %46
  %406 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %407 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !48
  %409 = icmp eq ptr %408, null
  br i1 %409, label %411, label %410

410:                                              ; preds = %405
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %408) #6
  br label %411

411:                                              ; preds = %405, %410
  %412 = load ptr, ptr %406, align 8, !tbaa !48
  %413 = icmp eq ptr %412, null
  br i1 %413, label %1247, label %414

414:                                              ; preds = %411
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %412) #6
  br label %1247

415:                                              ; preds = %46
  %416 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %417 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %418 = load ptr, ptr %417, align 8, !tbaa !48
  %419 = icmp eq ptr %418, null
  br i1 %419, label %421, label %420

420:                                              ; preds = %415
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %418) #6
  br label %421

421:                                              ; preds = %415, %420
  %422 = load ptr, ptr %416, align 8, !tbaa !48
  %423 = icmp eq ptr %422, null
  br i1 %423, label %1247, label %424

424:                                              ; preds = %421
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %422) #6
  br label %1247

425:                                              ; preds = %46
  %426 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %427 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %428 = load ptr, ptr %427, align 8, !tbaa !48
  %429 = icmp eq ptr %428, null
  br i1 %429, label %431, label %430

430:                                              ; preds = %425
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %428) #6
  br label %431

431:                                              ; preds = %425, %430
  %432 = load ptr, ptr %426, align 8, !tbaa !48
  %433 = icmp eq ptr %432, null
  br i1 %433, label %1247, label %434

434:                                              ; preds = %431
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %432) #6
  br label %1247

435:                                              ; preds = %46
  %436 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %437 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %438 = load ptr, ptr %437, align 8, !tbaa !48
  %439 = icmp eq ptr %438, null
  br i1 %439, label %441, label %440

440:                                              ; preds = %435
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %438) #6
  br label %441

441:                                              ; preds = %435, %440
  %442 = load ptr, ptr %436, align 8, !tbaa !48
  %443 = icmp eq ptr %442, null
  br i1 %443, label %1247, label %444

444:                                              ; preds = %441
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %442) #6
  br label %1247

445:                                              ; preds = %46
  %446 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %447 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %448 = load ptr, ptr %447, align 8, !tbaa !48
  %449 = icmp eq ptr %448, null
  br i1 %449, label %451, label %450

450:                                              ; preds = %445
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %448) #6
  br label %451

451:                                              ; preds = %445, %450
  %452 = load ptr, ptr %446, align 8, !tbaa !48
  %453 = icmp eq ptr %452, null
  br i1 %453, label %1247, label %454

454:                                              ; preds = %451
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %452) #6
  br label %1247

455:                                              ; preds = %46
  %456 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %457 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %458 = load ptr, ptr %457, align 8, !tbaa !48
  %459 = icmp eq ptr %458, null
  br i1 %459, label %461, label %460

460:                                              ; preds = %455
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %458) #6
  br label %461

461:                                              ; preds = %455, %460
  %462 = load ptr, ptr %456, align 8, !tbaa !48
  %463 = icmp eq ptr %462, null
  br i1 %463, label %1247, label %464

464:                                              ; preds = %461
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %462) #6
  br label %1247

465:                                              ; preds = %46
  %466 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %467 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %468 = load ptr, ptr %467, align 8, !tbaa !48
  %469 = icmp eq ptr %468, null
  br i1 %469, label %471, label %470

470:                                              ; preds = %465
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %468) #6
  br label %471

471:                                              ; preds = %465, %470
  %472 = load ptr, ptr %466, align 8, !tbaa !48
  %473 = icmp eq ptr %472, null
  br i1 %473, label %1247, label %474

474:                                              ; preds = %471
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %472) #6
  br label %1247

475:                                              ; preds = %46
  %476 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %477 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %478 = load ptr, ptr %477, align 8, !tbaa !48
  %479 = icmp eq ptr %478, null
  br i1 %479, label %481, label %480

480:                                              ; preds = %475
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %478) #6
  br label %481

481:                                              ; preds = %475, %480
  %482 = load ptr, ptr %476, align 8, !tbaa !48
  %483 = icmp eq ptr %482, null
  br i1 %483, label %1247, label %484

484:                                              ; preds = %481
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %482) #6
  br label %1247

485:                                              ; preds = %46
  %486 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %487 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %488 = load ptr, ptr %487, align 8, !tbaa !48
  %489 = icmp eq ptr %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %485
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %488) #6
  br label %491

491:                                              ; preds = %485, %490
  %492 = load ptr, ptr %486, align 8, !tbaa !48
  %493 = icmp eq ptr %492, null
  br i1 %493, label %1247, label %494

494:                                              ; preds = %491
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %492) #6
  br label %1247

495:                                              ; preds = %46
  %496 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %497 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %498 = load ptr, ptr %497, align 8, !tbaa !48
  %499 = icmp eq ptr %498, null
  br i1 %499, label %501, label %500

500:                                              ; preds = %495
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %498) #6
  br label %501

501:                                              ; preds = %495, %500
  %502 = load ptr, ptr %496, align 8, !tbaa !48
  %503 = icmp eq ptr %502, null
  br i1 %503, label %1247, label %504

504:                                              ; preds = %501
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %502) #6
  br label %1247

505:                                              ; preds = %46
  %506 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %507 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %508 = load ptr, ptr %507, align 8, !tbaa !48
  %509 = icmp eq ptr %508, null
  br i1 %509, label %511, label %510

510:                                              ; preds = %505
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %508) #6
  br label %511

511:                                              ; preds = %505, %510
  %512 = load ptr, ptr %506, align 8, !tbaa !48
  %513 = icmp eq ptr %512, null
  br i1 %513, label %1247, label %514

514:                                              ; preds = %511
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %512) #6
  br label %1247

515:                                              ; preds = %46
  %516 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %517 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %518 = load ptr, ptr %517, align 8, !tbaa !48
  %519 = icmp eq ptr %518, null
  br i1 %519, label %521, label %520

520:                                              ; preds = %515
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %518) #6
  br label %521

521:                                              ; preds = %515, %520
  %522 = load ptr, ptr %516, align 8, !tbaa !48
  %523 = icmp eq ptr %522, null
  br i1 %523, label %1247, label %524

524:                                              ; preds = %521
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %522) #6
  br label %1247

525:                                              ; preds = %46
  %526 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %527 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %528 = load ptr, ptr %527, align 8, !tbaa !48
  %529 = icmp eq ptr %528, null
  br i1 %529, label %531, label %530

530:                                              ; preds = %525
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %528) #6
  br label %531

531:                                              ; preds = %525, %530
  %532 = load ptr, ptr %526, align 8, !tbaa !48
  %533 = icmp eq ptr %532, null
  br i1 %533, label %1247, label %534

534:                                              ; preds = %531
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %532) #6
  br label %1247

535:                                              ; preds = %46
  %536 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !48
  %538 = icmp eq ptr %537, null
  br i1 %538, label %1247, label %539

539:                                              ; preds = %535
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %537) #6
  br label %1247

540:                                              ; preds = %46
  %541 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !48
  %543 = icmp eq ptr %542, null
  br i1 %543, label %1247, label %544

544:                                              ; preds = %540
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %542) #6
  br label %1247

545:                                              ; preds = %46
  %546 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !48
  %548 = icmp eq ptr %547, null
  br i1 %548, label %1247, label %549

549:                                              ; preds = %545
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %547) #6
  br label %1247

550:                                              ; preds = %46
  %551 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !48
  %553 = icmp eq ptr %552, null
  br i1 %553, label %1247, label %554

554:                                              ; preds = %550
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %552) #6
  br label %1247

555:                                              ; preds = %46
  %556 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %557 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %558 = load ptr, ptr %557, align 8, !tbaa !48
  %559 = icmp eq ptr %558, null
  br i1 %559, label %561, label %560

560:                                              ; preds = %555
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %558) #6
  br label %561

561:                                              ; preds = %555, %560
  %562 = load ptr, ptr %556, align 8, !tbaa !48
  %563 = icmp eq ptr %562, null
  br i1 %563, label %1247, label %564

564:                                              ; preds = %561
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %562) #6
  br label %1247

565:                                              ; preds = %46
  %566 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %567 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %568 = load ptr, ptr %567, align 8, !tbaa !48
  %569 = icmp eq ptr %568, null
  br i1 %569, label %571, label %570

570:                                              ; preds = %565
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %568) #6
  br label %571

571:                                              ; preds = %565, %570
  %572 = load ptr, ptr %566, align 8, !tbaa !48
  %573 = icmp eq ptr %572, null
  br i1 %573, label %1247, label %574

574:                                              ; preds = %571
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %572) #6
  br label %1247

575:                                              ; preds = %46
  %576 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %577 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %578 = load ptr, ptr %577, align 8, !tbaa !48
  %579 = icmp eq ptr %578, null
  br i1 %579, label %581, label %580

580:                                              ; preds = %575
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %578) #6
  br label %581

581:                                              ; preds = %575, %580
  %582 = load ptr, ptr %576, align 8, !tbaa !48
  %583 = icmp eq ptr %582, null
  br i1 %583, label %1247, label %584

584:                                              ; preds = %581
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %582) #6
  br label %1247

585:                                              ; preds = %46
  %586 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %587 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %588 = load ptr, ptr %587, align 8, !tbaa !48
  %589 = icmp eq ptr %588, null
  br i1 %589, label %591, label %590

590:                                              ; preds = %585
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %588) #6
  br label %591

591:                                              ; preds = %585, %590
  %592 = load ptr, ptr %586, align 8, !tbaa !48
  %593 = icmp eq ptr %592, null
  br i1 %593, label %1247, label %594

594:                                              ; preds = %591
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %592) #6
  br label %1247

595:                                              ; preds = %46
  %596 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %597 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %598 = load ptr, ptr %597, align 8, !tbaa !48
  %599 = icmp eq ptr %598, null
  br i1 %599, label %601, label %600

600:                                              ; preds = %595
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %598) #6
  br label %601

601:                                              ; preds = %595, %600
  %602 = load ptr, ptr %596, align 8, !tbaa !48
  %603 = icmp eq ptr %602, null
  br i1 %603, label %1247, label %604

604:                                              ; preds = %601
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %602) #6
  br label %1247

605:                                              ; preds = %46
  %606 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %607 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %608 = load ptr, ptr %607, align 8, !tbaa !48
  %609 = icmp eq ptr %608, null
  br i1 %609, label %611, label %610

610:                                              ; preds = %605
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %608) #6
  br label %611

611:                                              ; preds = %605, %610
  %612 = load ptr, ptr %606, align 8, !tbaa !48
  %613 = icmp eq ptr %612, null
  br i1 %613, label %1247, label %614

614:                                              ; preds = %611
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %612) #6
  br label %1247

615:                                              ; preds = %46
  %616 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %617 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %618 = load ptr, ptr %617, align 8, !tbaa !48
  %619 = icmp eq ptr %618, null
  br i1 %619, label %621, label %620

620:                                              ; preds = %615
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %618) #6
  br label %621

621:                                              ; preds = %615, %620
  %622 = load ptr, ptr %616, align 8, !tbaa !48
  %623 = icmp eq ptr %622, null
  br i1 %623, label %1247, label %624

624:                                              ; preds = %621
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %622) #6
  br label %1247

625:                                              ; preds = %46
  %626 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %627 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %628 = load ptr, ptr %627, align 8, !tbaa !48
  %629 = icmp eq ptr %628, null
  br i1 %629, label %631, label %630

630:                                              ; preds = %625
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %628) #6
  br label %631

631:                                              ; preds = %625, %630
  %632 = load ptr, ptr %626, align 8, !tbaa !48
  %633 = icmp eq ptr %632, null
  br i1 %633, label %1247, label %634

634:                                              ; preds = %631
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %632) #6
  br label %1247

635:                                              ; preds = %46
  %636 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %637 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %638 = load ptr, ptr %637, align 8, !tbaa !48
  %639 = icmp eq ptr %638, null
  br i1 %639, label %641, label %640

640:                                              ; preds = %635
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %638) #6
  br label %641

641:                                              ; preds = %635, %640
  %642 = load ptr, ptr %636, align 8, !tbaa !48
  %643 = icmp eq ptr %642, null
  br i1 %643, label %1247, label %644

644:                                              ; preds = %641
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %642) #6
  br label %1247

645:                                              ; preds = %46
  %646 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !48
  %648 = icmp eq ptr %647, null
  br i1 %648, label %1247, label %649

649:                                              ; preds = %645
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %647) #6
  br label %1247

650:                                              ; preds = %46
  %651 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %652 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %653 = load ptr, ptr %652, align 8, !tbaa !48
  %654 = icmp eq ptr %653, null
  br i1 %654, label %656, label %655

655:                                              ; preds = %650
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %653) #6
  br label %656

656:                                              ; preds = %650, %655
  %657 = load ptr, ptr %651, align 8, !tbaa !48
  %658 = icmp eq ptr %657, null
  br i1 %658, label %1247, label %659

659:                                              ; preds = %656
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %657) #6
  br label %1247

660:                                              ; preds = %46
  %661 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %662 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %663 = load ptr, ptr %662, align 8, !tbaa !48
  %664 = icmp eq ptr %663, null
  br i1 %664, label %666, label %665

665:                                              ; preds = %660
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %663) #6
  br label %666

666:                                              ; preds = %660, %665
  %667 = load ptr, ptr %661, align 8, !tbaa !48
  %668 = icmp eq ptr %667, null
  br i1 %668, label %1247, label %669

669:                                              ; preds = %666
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %667) #6
  br label %1247

670:                                              ; preds = %46
  %671 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %672 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %673 = load ptr, ptr %672, align 8, !tbaa !48
  %674 = icmp eq ptr %673, null
  br i1 %674, label %676, label %675

675:                                              ; preds = %670
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %673) #6
  br label %676

676:                                              ; preds = %670, %675
  %677 = load ptr, ptr %671, align 8, !tbaa !48
  %678 = icmp eq ptr %677, null
  br i1 %678, label %1247, label %679

679:                                              ; preds = %676
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %677) #6
  br label %1247

680:                                              ; preds = %46
  %681 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %682 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !48
  %684 = icmp eq ptr %683, null
  br i1 %684, label %686, label %685

685:                                              ; preds = %680
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %683) #6
  br label %686

686:                                              ; preds = %680, %685
  %687 = load ptr, ptr %681, align 8, !tbaa !48
  %688 = icmp eq ptr %687, null
  br i1 %688, label %1247, label %689

689:                                              ; preds = %686
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %687) #6
  br label %1247

690:                                              ; preds = %46
  %691 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %692 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %693 = load ptr, ptr %692, align 8, !tbaa !48
  %694 = icmp eq ptr %693, null
  br i1 %694, label %696, label %695

695:                                              ; preds = %690
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %693) #6
  br label %696

696:                                              ; preds = %690, %695
  %697 = load ptr, ptr %691, align 8, !tbaa !48
  %698 = icmp eq ptr %697, null
  br i1 %698, label %1247, label %699

699:                                              ; preds = %696
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %697) #6
  br label %1247

700:                                              ; preds = %46
  %701 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %702 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %703 = load ptr, ptr %702, align 8, !tbaa !48
  %704 = icmp eq ptr %703, null
  br i1 %704, label %706, label %705

705:                                              ; preds = %700
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %703) #6
  br label %706

706:                                              ; preds = %700, %705
  %707 = load ptr, ptr %701, align 8, !tbaa !48
  %708 = icmp eq ptr %707, null
  br i1 %708, label %1247, label %709

709:                                              ; preds = %706
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %707) #6
  br label %1247

710:                                              ; preds = %46
  %711 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %712 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %713 = load ptr, ptr %712, align 8, !tbaa !48
  %714 = icmp eq ptr %713, null
  br i1 %714, label %716, label %715

715:                                              ; preds = %710
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %713) #6
  br label %716

716:                                              ; preds = %710, %715
  %717 = load ptr, ptr %711, align 8, !tbaa !48
  %718 = icmp eq ptr %717, null
  br i1 %718, label %1247, label %719

719:                                              ; preds = %716
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %717) #6
  br label %1247

720:                                              ; preds = %46
  %721 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %722 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %723 = load ptr, ptr %722, align 8, !tbaa !48
  %724 = icmp eq ptr %723, null
  br i1 %724, label %726, label %725

725:                                              ; preds = %720
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %723) #6
  br label %726

726:                                              ; preds = %720, %725
  %727 = load ptr, ptr %721, align 8, !tbaa !48
  %728 = icmp eq ptr %727, null
  br i1 %728, label %1247, label %729

729:                                              ; preds = %726
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %727) #6
  br label %1247

730:                                              ; preds = %46
  %731 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %732 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %733 = load ptr, ptr %732, align 8, !tbaa !48
  %734 = icmp eq ptr %733, null
  br i1 %734, label %736, label %735

735:                                              ; preds = %730
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %733) #6
  br label %736

736:                                              ; preds = %730, %735
  %737 = load ptr, ptr %731, align 8, !tbaa !48
  %738 = icmp eq ptr %737, null
  br i1 %738, label %1247, label %739

739:                                              ; preds = %736
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %737) #6
  br label %1247

740:                                              ; preds = %46
  %741 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %742 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %743 = load ptr, ptr %742, align 8, !tbaa !48
  %744 = icmp eq ptr %743, null
  br i1 %744, label %746, label %745

745:                                              ; preds = %740
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %743) #6
  br label %746

746:                                              ; preds = %740, %745
  %747 = load ptr, ptr %741, align 8, !tbaa !48
  %748 = icmp eq ptr %747, null
  br i1 %748, label %1247, label %749

749:                                              ; preds = %746
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %747) #6
  br label %1247

750:                                              ; preds = %46
  %751 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %752 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %753 = load ptr, ptr %752, align 8, !tbaa !48
  %754 = icmp eq ptr %753, null
  br i1 %754, label %756, label %755

755:                                              ; preds = %750
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %753) #6
  br label %756

756:                                              ; preds = %750, %755
  %757 = load ptr, ptr %751, align 8, !tbaa !48
  %758 = icmp eq ptr %757, null
  br i1 %758, label %1247, label %759

759:                                              ; preds = %756
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %757) #6
  br label %1247

760:                                              ; preds = %46
  %761 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %762 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %763 = load ptr, ptr %762, align 8, !tbaa !48
  %764 = icmp eq ptr %763, null
  br i1 %764, label %766, label %765

765:                                              ; preds = %760
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %763) #6
  br label %766

766:                                              ; preds = %760, %765
  %767 = load ptr, ptr %761, align 8, !tbaa !48
  %768 = icmp eq ptr %767, null
  br i1 %768, label %1247, label %769

769:                                              ; preds = %766
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %767) #6
  br label %1247

770:                                              ; preds = %46
  %771 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %772 = load ptr, ptr %771, align 8, !tbaa !48
  %773 = icmp eq ptr %772, null
  br i1 %773, label %1247, label %774

774:                                              ; preds = %770
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %772) #6
  br label %1247

775:                                              ; preds = %46
  %776 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %777 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %778 = load ptr, ptr %777, align 8, !tbaa !48
  %779 = icmp eq ptr %778, null
  br i1 %779, label %781, label %780

780:                                              ; preds = %775
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %778) #6
  br label %781

781:                                              ; preds = %775, %780
  %782 = load ptr, ptr %776, align 8, !tbaa !48
  %783 = icmp eq ptr %782, null
  br i1 %783, label %1247, label %784

784:                                              ; preds = %781
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %782) #6
  br label %1247

785:                                              ; preds = %46
  %786 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %787 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %788 = load ptr, ptr %787, align 8, !tbaa !48
  %789 = icmp eq ptr %788, null
  br i1 %789, label %791, label %790

790:                                              ; preds = %785
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %788) #6
  br label %791

791:                                              ; preds = %785, %790
  %792 = load ptr, ptr %786, align 8, !tbaa !48
  %793 = icmp eq ptr %792, null
  br i1 %793, label %1247, label %794

794:                                              ; preds = %791
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %792) #6
  br label %1247

795:                                              ; preds = %46
  %796 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %797 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %798 = load ptr, ptr %797, align 8, !tbaa !48
  %799 = icmp eq ptr %798, null
  br i1 %799, label %801, label %800

800:                                              ; preds = %795
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %798) #6
  br label %801

801:                                              ; preds = %795, %800
  %802 = load ptr, ptr %796, align 8, !tbaa !48
  %803 = icmp eq ptr %802, null
  br i1 %803, label %1247, label %804

804:                                              ; preds = %801
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %802) #6
  br label %1247

805:                                              ; preds = %46
  %806 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %807 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %808 = load ptr, ptr %807, align 8, !tbaa !48
  %809 = icmp eq ptr %808, null
  br i1 %809, label %811, label %810

810:                                              ; preds = %805
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %808) #6
  br label %811

811:                                              ; preds = %805, %810
  %812 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %813 = load ptr, ptr %812, align 8, !tbaa !48
  %814 = icmp eq ptr %813, null
  br i1 %814, label %816, label %815

815:                                              ; preds = %811
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %813) #6
  br label %816

816:                                              ; preds = %811, %815
  %817 = load ptr, ptr %806, align 8, !tbaa !48
  %818 = icmp eq ptr %817, null
  br i1 %818, label %1247, label %819

819:                                              ; preds = %816
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %817) #6
  br label %1247

820:                                              ; preds = %46
  %821 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %822 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %823 = load i32, ptr %822, align 8, !tbaa !48
  %824 = and i32 %823, 128
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %832, label %826

826:                                              ; preds = %820
  %827 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %828 = load ptr, ptr %827, align 8, !tbaa !48
  %829 = icmp eq ptr %828, null
  br i1 %829, label %832, label %830

830:                                              ; preds = %826
  tail call void @gt_ggc_mx_object_block(ptr noundef nonnull %828) #6
  %831 = load i32, ptr %47, align 8
  br label %832

832:                                              ; preds = %820, %826, %830
  %833 = phi i32 [ %48, %820 ], [ %48, %826 ], [ %831, %830 ]
  %834 = and i32 %833, 67108864
  %835 = icmp eq i32 %834, 0
  %836 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %837 = load ptr, ptr %836, align 8, !tbaa !48
  %838 = icmp eq ptr %837, null
  br i1 %835, label %841, label %839

839:                                              ; preds = %832
  br i1 %838, label %843, label %840

840:                                              ; preds = %839
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %837) #5
  br label %843

841:                                              ; preds = %832
  br i1 %838, label %843, label %842

842:                                              ; preds = %841
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %837) #5
  br label %843

843:                                              ; preds = %841, %842, %839, %840
  %844 = load ptr, ptr %821, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %844) #5
  br label %1247

845:                                              ; preds = %46
  %846 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !48
  %848 = icmp eq ptr %847, null
  br i1 %848, label %1247, label %849

849:                                              ; preds = %845
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %847) #6
  br label %1247

850:                                              ; preds = %46
  %851 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %852 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %853 = load ptr, ptr %852, align 8, !tbaa !48
  %854 = icmp eq ptr %853, null
  br i1 %854, label %856, label %855

855:                                              ; preds = %850
  tail call void @gt_ggc_mx_mem_attrs(ptr noundef nonnull %853) #6
  br label %856

856:                                              ; preds = %850, %855
  %857 = load ptr, ptr %851, align 8, !tbaa !48
  %858 = icmp eq ptr %857, null
  br i1 %858, label %1247, label %859

859:                                              ; preds = %856
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %857) #6
  br label %1247

860:                                              ; preds = %46
  %861 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %862 = load ptr, ptr %861, align 8, !tbaa !48
  %863 = icmp eq ptr %862, null
  br i1 %863, label %1247, label %864

864:                                              ; preds = %860
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %862) #6
  br label %1247

865:                                              ; preds = %46
  %866 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %867 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %868 = load ptr, ptr %867, align 8, !tbaa !48
  %869 = icmp eq ptr %868, null
  br i1 %869, label %871, label %870

870:                                              ; preds = %865
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %868) #6
  br label %871

871:                                              ; preds = %865, %870
  %872 = load ptr, ptr %866, align 8, !tbaa !48
  %873 = icmp eq ptr %872, null
  br i1 %873, label %1247, label %874

874:                                              ; preds = %871
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %872) #6
  br label %1247

875:                                              ; preds = %46
  %876 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !48
  %878 = icmp eq ptr %877, null
  br i1 %878, label %1247, label %879

879:                                              ; preds = %875
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %877) #6
  br label %1247

880:                                              ; preds = %46
  %881 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %882 = load ptr, ptr %881, align 8, !tbaa !48
  %883 = icmp eq ptr %882, null
  br i1 %883, label %1247, label %884

884:                                              ; preds = %880
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %882) #6
  br label %1247

885:                                              ; preds = %46
  %886 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %887 = load ptr, ptr %886, align 8, !tbaa !48
  %888 = icmp eq ptr %887, null
  br i1 %888, label %1247, label %889

889:                                              ; preds = %885
  tail call void @gt_ggc_mx_reg_attrs(ptr noundef nonnull %887) #6
  br label %1247

890:                                              ; preds = %46
  %891 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %892 = load ptr, ptr %891, align 8, !tbaa !48
  %893 = icmp eq ptr %892, null
  br i1 %893, label %1247, label %894

894:                                              ; preds = %890
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %892) #6
  br label %1247

895:                                              ; preds = %46
  %896 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %897 = load ptr, ptr %896, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %897) #5
  br label %1247

898:                                              ; preds = %46
  %899 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %900 = load ptr, ptr %899, align 8, !tbaa !48
  %901 = icmp eq ptr %900, null
  br i1 %901, label %1247, label %902

902:                                              ; preds = %898
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %900) #6
  br label %1247

903:                                              ; preds = %46
  %904 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %905 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %906 = load ptr, ptr %905, align 8, !tbaa !48
  %907 = icmp eq ptr %906, null
  br i1 %907, label %909, label %908

908:                                              ; preds = %903
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %906) #6
  br label %909

909:                                              ; preds = %903, %908
  %910 = load ptr, ptr %904, align 8, !tbaa !48
  %911 = icmp eq ptr %910, null
  br i1 %911, label %1247, label %912

912:                                              ; preds = %909
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %910) #6
  br label %1247

913:                                              ; preds = %46
  %914 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %915 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %916 = load ptr, ptr %915, align 8, !tbaa !48
  %917 = icmp eq ptr %916, null
  br i1 %917, label %919, label %918

918:                                              ; preds = %913
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %916) #6
  br label %919

919:                                              ; preds = %913, %918
  %920 = load ptr, ptr %914, align 8, !tbaa !48
  %921 = icmp eq ptr %920, null
  br i1 %921, label %1247, label %922

922:                                              ; preds = %919
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %920) #6
  br label %1247

923:                                              ; preds = %46
  %924 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %925 = load ptr, ptr %924, align 8, !tbaa !48
  %926 = icmp eq ptr %925, null
  br i1 %926, label %1247, label %927

927:                                              ; preds = %923
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %925) #6
  br label %1247

928:                                              ; preds = %46
  %929 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %930 = load ptr, ptr %929, align 8, !tbaa !48
  %931 = icmp eq ptr %930, null
  br i1 %931, label %1247, label %932

932:                                              ; preds = %928
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %930) #6
  br label %1247

933:                                              ; preds = %46
  %934 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %935 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %936 = load ptr, ptr %935, align 8, !tbaa !48
  %937 = icmp eq ptr %936, null
  br i1 %937, label %939, label %938

938:                                              ; preds = %933
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %936) #6
  br label %939

939:                                              ; preds = %933, %938
  %940 = load ptr, ptr %934, align 8, !tbaa !48
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1247, label %942

942:                                              ; preds = %939
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %940) #6
  br label %1247

943:                                              ; preds = %46
  %944 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %945 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %946 = load ptr, ptr %945, align 8, !tbaa !48
  %947 = icmp eq ptr %946, null
  br i1 %947, label %949, label %948

948:                                              ; preds = %943
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %946) #6
  br label %949

949:                                              ; preds = %943, %948
  %950 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %951 = load ptr, ptr %950, align 8, !tbaa !48
  %952 = icmp eq ptr %951, null
  br i1 %952, label %954, label %953

953:                                              ; preds = %949
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %951) #6
  br label %954

954:                                              ; preds = %949, %953
  %955 = load ptr, ptr %944, align 8, !tbaa !48
  %956 = icmp eq ptr %955, null
  br i1 %956, label %1247, label %957

957:                                              ; preds = %954
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %955) #6
  br label %1247

958:                                              ; preds = %46
  %959 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %960 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %961 = load ptr, ptr %960, align 8, !tbaa !48
  %962 = icmp eq ptr %961, null
  br i1 %962, label %964, label %963

963:                                              ; preds = %958
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %961) #6
  br label %964

964:                                              ; preds = %958, %963
  %965 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %966 = load ptr, ptr %965, align 8, !tbaa !48
  %967 = icmp eq ptr %966, null
  br i1 %967, label %969, label %968

968:                                              ; preds = %964
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %966) #6
  br label %969

969:                                              ; preds = %964, %968
  %970 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %971 = load ptr, ptr %970, align 8, !tbaa !48
  %972 = icmp eq ptr %971, null
  br i1 %972, label %974, label %973

973:                                              ; preds = %969
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %971) #6
  br label %974

974:                                              ; preds = %969, %973
  %975 = load ptr, ptr %959, align 8, !tbaa !48
  %976 = icmp eq ptr %975, null
  br i1 %976, label %1247, label %977

977:                                              ; preds = %974
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %975) #6
  br label %1247

978:                                              ; preds = %46
  %979 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %980 = load ptr, ptr %979, align 8, !tbaa !48
  %981 = icmp eq ptr %980, null
  br i1 %981, label %1247, label %982

982:                                              ; preds = %978
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %980) #6
  br label %1247

983:                                              ; preds = %46
  %984 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %985 = load ptr, ptr %984, align 8, !tbaa !48
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1247, label %987

987:                                              ; preds = %983
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %985) #6
  br label %1247

988:                                              ; preds = %46
  %989 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !48
  %991 = icmp eq ptr %990, null
  br i1 %991, label %1247, label %992

992:                                              ; preds = %988
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %990) #6
  br label %1247

993:                                              ; preds = %46
  %994 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %995 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %996 = load ptr, ptr %995, align 8, !tbaa !48
  %997 = icmp eq ptr %996, null
  br i1 %997, label %999, label %998

998:                                              ; preds = %993
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %996) #6
  br label %999

999:                                              ; preds = %993, %998
  %1000 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %1001 = load ptr, ptr %1000, align 8, !tbaa !48
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1004, label %1003

1003:                                             ; preds = %999
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1001) #6
  br label %1004

1004:                                             ; preds = %999, %1003
  %1005 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !48
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1004
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1006) #6
  br label %1009

1009:                                             ; preds = %1008, %1004
  %1010 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1011 = load ptr, ptr %1010, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %1011) #5
  %1012 = load ptr, ptr %994, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %1012) #5
  br label %1247

1013:                                             ; preds = %46
  %1014 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1015 = load ptr, ptr %1014, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %1015) #5
  br label %1247

1016:                                             ; preds = %46
  %1017 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1018 = load ptr, ptr %1017, align 8, !tbaa !48
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1247, label %1020

1020:                                             ; preds = %1016
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1018) #6
  br label %1247

1021:                                             ; preds = %46
  %1022 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1023 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1024 = load ptr, ptr %1023, align 8, !tbaa !48
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1027, label %1026

1026:                                             ; preds = %1021
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1024) #6
  br label %1027

1027:                                             ; preds = %1021, %1026
  %1028 = load ptr, ptr %1022, align 8, !tbaa !48
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1247, label %1030

1030:                                             ; preds = %1027
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1028) #6
  br label %1247

1031:                                             ; preds = %46
  %1032 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %1033 = load i32, ptr %1032, align 8, !tbaa !48
  switch i32 %1033, label %1034 [
    i32 12, label %1055
    i32 11, label %1055
    i32 10, label %1055
    i32 9, label %1037
    i32 8, label %1055
    i32 7, label %1055
    i32 6, label %1055
    i32 5, label %1055
    i32 4, label %1055
    i32 3, label %1042
    i32 2, label %1047
    i32 1, label %1052
    i32 0, label %1055
  ]

1034:                                             ; preds = %1031
  %1035 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %1036 = load ptr, ptr %1035, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %1036) #5
  br label %1055

1037:                                             ; preds = %1031
  %1038 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %1039 = load ptr, ptr %1038, align 8, !tbaa !48
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1055, label %1041

1041:                                             ; preds = %1037
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1039) #6
  br label %1055

1042:                                             ; preds = %1031
  %1043 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %1044 = load ptr, ptr %1043, align 8, !tbaa !48
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1055, label %1046

1046:                                             ; preds = %1042
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %1044) #5
  br label %1055

1047:                                             ; preds = %1031
  %1048 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %1049 = load ptr, ptr %1048, align 8, !tbaa !48
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1055, label %1051

1051:                                             ; preds = %1047
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %1049) #5
  br label %1055

1052:                                             ; preds = %1031
  %1053 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %1054 = load ptr, ptr %1053, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %1054) #5
  br label %1055

1055:                                             ; preds = %1034, %1031, %1031, %1031, %1031, %1031, %1031, %1031, %1031, %1052, %1031, %1041, %1037, %1046, %1042, %1051, %1047
  %1056 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1057 = load ptr, ptr %1056, align 8, !tbaa !48
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1060, label %1059

1059:                                             ; preds = %1055
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1057) #6
  br label %1060

1060:                                             ; preds = %1055, %1059
  %1061 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1062 = load ptr, ptr %1061, align 8, !tbaa !48
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1065, label %1064

1064:                                             ; preds = %1060
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1062) #6
  br label %1065

1065:                                             ; preds = %1060, %1064
  %1066 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1067 = load ptr, ptr %1066, align 8, !tbaa !48
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1247, label %1069

1069:                                             ; preds = %1065
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1067) #6
  br label %1247

1070:                                             ; preds = %46
  %1071 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 1
  %1072 = load ptr, ptr %1071, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %1072) #5
  %1073 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %1074 = load ptr, ptr %1073, align 8, !tbaa !48
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1077, label %1076

1076:                                             ; preds = %1070
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1074) #6
  br label %1077

1077:                                             ; preds = %1070, %1076
  %1078 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1079 = load ptr, ptr %1078, align 8, !tbaa !48
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1082, label %1081

1081:                                             ; preds = %1077
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1079) #6
  br label %1082

1082:                                             ; preds = %1077, %1081
  %1083 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1084 = load ptr, ptr %1083, align 8, !tbaa !48
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1082
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1084) #6
  br label %1087

1087:                                             ; preds = %1082, %1086
  %1088 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1089 = load ptr, ptr %1088, align 8, !tbaa !48
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1247, label %1091

1091:                                             ; preds = %1087
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1089) #6
  br label %1247

1092:                                             ; preds = %46
  %1093 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1094 = load ptr, ptr %1093, align 8, !tbaa !48
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1097, label %1096

1096:                                             ; preds = %1092
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1094) #6
  br label %1097

1097:                                             ; preds = %1092, %1096
  %1098 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1099 = load ptr, ptr %1098, align 8, !tbaa !48
  %1100 = icmp eq ptr %1099, null
  br i1 %1100, label %1247, label %1101

1101:                                             ; preds = %1097
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1099) #6
  br label %1247

1102:                                             ; preds = %46
  %1103 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 2
  %1104 = load ptr, ptr %1103, align 8, !tbaa !48
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1107, label %1106

1106:                                             ; preds = %1102
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1104) #6
  br label %1107

1107:                                             ; preds = %1102, %1106
  %1108 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !48
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1112, label %1111

1111:                                             ; preds = %1107
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1109) #6
  br label %1112

1112:                                             ; preds = %1107, %1111
  %1113 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %1114 = load ptr, ptr %1113, align 8, !tbaa !48
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1117, label %1116

1116:                                             ; preds = %1112
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1114) #6
  br label %1117

1117:                                             ; preds = %1112, %1116
  %1118 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !48
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1122, label %1121

1121:                                             ; preds = %1117
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1119) #6
  br label %1122

1122:                                             ; preds = %1117, %1121
  %1123 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1124 = load ptr, ptr %1123, align 8, !tbaa !48
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1127, label %1126

1126:                                             ; preds = %1122
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1124) #6
  br label %1127

1127:                                             ; preds = %1122, %1126
  %1128 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !48
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1247, label %1131

1131:                                             ; preds = %1127
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1129) #6
  br label %1247

1132:                                             ; preds = %46
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 2
  %1134 = load ptr, ptr %1133, align 8, !tbaa !48
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1137, label %1136

1136:                                             ; preds = %1132
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1134) #6
  br label %1137

1137:                                             ; preds = %1132, %1136
  %1138 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 1
  %1139 = load ptr, ptr %1138, align 8, !tbaa !48
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1142, label %1141

1141:                                             ; preds = %1137
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1139) #6
  br label %1142

1142:                                             ; preds = %1137, %1141
  %1143 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %1144 = load ptr, ptr %1143, align 8, !tbaa !48
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1147, label %1146

1146:                                             ; preds = %1142
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1144) #6
  br label %1147

1147:                                             ; preds = %1142, %1146
  %1148 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1149 = load ptr, ptr %1148, align 8, !tbaa !48
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1152, label %1151

1151:                                             ; preds = %1147
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1149) #6
  br label %1152

1152:                                             ; preds = %1147, %1151
  %1153 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1154 = load ptr, ptr %1153, align 8, !tbaa !48
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1157, label %1156

1156:                                             ; preds = %1152
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1154) #6
  br label %1157

1157:                                             ; preds = %1152, %1156
  %1158 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !48
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1247, label %1161

1161:                                             ; preds = %1157
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1159) #6
  br label %1247

1162:                                             ; preds = %46
  %1163 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 1
  %1164 = load ptr, ptr %1163, align 8, !tbaa !48
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1167, label %1166

1166:                                             ; preds = %1162
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1164) #6
  br label %1167

1167:                                             ; preds = %1162, %1166
  %1168 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %1169 = load ptr, ptr %1168, align 8, !tbaa !48
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1172, label %1171

1171:                                             ; preds = %1167
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1169) #6
  br label %1172

1172:                                             ; preds = %1167, %1171
  %1173 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !48
  %1175 = icmp eq ptr %1174, null
  br i1 %1175, label %1177, label %1176

1176:                                             ; preds = %1172
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1174) #6
  br label %1177

1177:                                             ; preds = %1172, %1176
  %1178 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1179 = load ptr, ptr %1178, align 8, !tbaa !48
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1182, label %1181

1181:                                             ; preds = %1177
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1179) #6
  br label %1182

1182:                                             ; preds = %1177, %1181
  %1183 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1184 = load ptr, ptr %1183, align 8, !tbaa !48
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1247, label %1186

1186:                                             ; preds = %1182
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1184) #6
  br label %1247

1187:                                             ; preds = %46
  %1188 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 1
  %1189 = load ptr, ptr %1188, align 8, !tbaa !48
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1192, label %1191

1191:                                             ; preds = %1187
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1189) #6
  br label %1192

1192:                                             ; preds = %1187, %1191
  %1193 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %1194 = load ptr, ptr %1193, align 8, !tbaa !48
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1197, label %1196

1196:                                             ; preds = %1192
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1194) #6
  br label %1197

1197:                                             ; preds = %1192, %1196
  %1198 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !48
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1202, label %1201

1201:                                             ; preds = %1197
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1199) #6
  br label %1202

1202:                                             ; preds = %1197, %1201
  %1203 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %1204 = load ptr, ptr %1203, align 8, !tbaa !48
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1207, label %1206

1206:                                             ; preds = %1202
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1204) #6
  br label %1207

1207:                                             ; preds = %1202, %1206
  %1208 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1209 = load ptr, ptr %1208, align 8, !tbaa !48
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1247, label %1211

1211:                                             ; preds = %1207
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1209) #6
  br label %1247

1212:                                             ; preds = %46
  %1213 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1214 = load ptr, ptr %1213, align 8, !tbaa !48
  %1215 = icmp eq ptr %1214, null
  br i1 %1215, label %1247, label %1216

1216:                                             ; preds = %1212
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1214) #6
  br label %1247

1217:                                             ; preds = %46
  %1218 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1219 = load ptr, ptr %1218, align 8, !tbaa !48
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1247, label %1221

1221:                                             ; preds = %1217
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1219) #6
  br label %1247

1222:                                             ; preds = %46
  %1223 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1224 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1225 = load ptr, ptr %1224, align 8, !tbaa !48
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1228, label %1227

1227:                                             ; preds = %1222
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1225) #6
  br label %1228

1228:                                             ; preds = %1222, %1227
  %1229 = load ptr, ptr %1223, align 8, !tbaa !48
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1247, label %1231

1231:                                             ; preds = %1228
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1229) #6
  br label %1247

1232:                                             ; preds = %46
  %1233 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1234 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !48
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1238, label %1237

1237:                                             ; preds = %1232
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1235) #6
  br label %1238

1238:                                             ; preds = %1232, %1237
  %1239 = load ptr, ptr %1233, align 8, !tbaa !48
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1247, label %1241

1241:                                             ; preds = %1238
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1239) #6
  br label %1247

1242:                                             ; preds = %46
  %1243 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %1244 = load ptr, ptr %1243, align 8, !tbaa !48
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1247, label %1246

1246:                                             ; preds = %1242
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %1244) #5
  br label %1247

1247:                                             ; preds = %46, %1242, %1246, %1238, %1241, %1228, %1231, %1217, %1221, %1212, %1216, %1207, %1211, %1182, %1186, %1157, %1161, %1127, %1131, %1097, %1101, %1087, %1091, %1065, %1069, %1027, %1030, %1016, %1020, %988, %992, %983, %987, %978, %982, %974, %977, %954, %957, %939, %942, %928, %932, %923, %927, %919, %922, %909, %912, %898, %902, %890, %894, %885, %889, %880, %884, %875, %879, %871, %874, %860, %864, %856, %859, %845, %849, %816, %819, %801, %804, %791, %794, %781, %784, %770, %774, %766, %769, %756, %759, %746, %749, %736, %739, %726, %729, %716, %719, %706, %709, %696, %699, %686, %689, %676, %679, %666, %669, %656, %659, %645, %649, %641, %644, %631, %634, %621, %624, %611, %614, %601, %604, %591, %594, %581, %584, %571, %574, %561, %564, %550, %554, %545, %549, %540, %544, %535, %539, %531, %534, %521, %524, %511, %514, %501, %504, %491, %494, %481, %484, %471, %474, %461, %464, %451, %454, %441, %444, %431, %434, %421, %424, %411, %414, %401, %404, %391, %394, %381, %384, %371, %374, %361, %364, %351, %354, %341, %344, %330, %334, %325, %329, %320, %324, %315, %319, %310, %314, %305, %309, %300, %304, %295, %299, %290, %294, %285, %289, %280, %284, %275, %279, %270, %274, %265, %269, %260, %264, %255, %259, %250, %254, %245, %249, %240, %244, %235, %239, %230, %234, %226, %229, %211, %214, %195, %199, %191, %194, %181, %184, %166, %169, %156, %159, %145, %149, %141, %144, %131, %134, %121, %124, %110, %114, %105, %109, %100, %104, %96, %99, %86, %89, %76, %79, %65, %69, %60, %64, %56, %59, %1013, %1009, %895, %843
  %1248 = load i32, ptr %47, align 8
  %1249 = and i32 %1248, 65535
  %1250 = zext nneg i32 %1249 to i64
  %1251 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %1250
  %1252 = load i8, ptr %1251, align 1, !tbaa !48
  %1253 = icmp eq i8 %1252, 0
  br i1 %1253, label %1258, label %1254

1254:                                             ; preds = %1247
  %1255 = zext i8 %1252 to i64
  %1256 = getelementptr inbounds i8, ptr %47, i64 %1255
  %1257 = load ptr, ptr %1256, align 8, !tbaa !59
  br label %1258

1258:                                             ; preds = %1247, %1254
  %1259 = phi ptr [ %1257, %1254 ], [ null, %1247 ]
  %1260 = icmp eq ptr %1259, %20
  br i1 %1260, label %1261, label %46, !llvm.loop !101

1261:                                             ; preds = %1258, %1, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_constant_descriptor_tree(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cgraph_asm_node(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_cgraph_asm_node(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.cgraph_asm_node, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_varpool_node(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %37, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !110

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11, %34
  %15 = phi ptr [ %35, %34 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %16) #5
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %21) #6
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !112
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %26) #6
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %31) #6
  br label %34

34:                                               ; preds = %33, %29
  %35 = load ptr, ptr %20, align 8, !tbaa !108
  %36 = icmp eq ptr %35, %12
  br i1 %36, label %37, label %14, !llvm.loop !114

37:                                               ; preds = %34, %1, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_cgraph_node_set_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !115
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_cgraph_node_set_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_cgraph_node_set_def(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !118

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cgraph_node_set_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !119
  tail call void @gt_ggc_m_P27cgraph_node_set_element_def4htab(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @gt_ggc_mx_VEC_cgraph_node_ptr_gc(ptr noundef nonnull %9) #6
  br label %12

12:                                               ; preds = %1, %6, %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P27cgraph_node_set_element_def4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_cgraph_node_set_element_def(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !126

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_cgraph_node_ptr_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !127
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !130

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cgraph_node_set_element_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !131
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cgraph_node(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %130, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !141

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %21
  %15 = phi ptr [ %17, %21 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %14
  br label %14

22:                                               ; preds = %14, %11
  %23 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %130, label %25

25:                                               ; preds = %22, %127
  %26 = phi ptr [ %128, %127 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #5
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !144
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !145
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %37) #6
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !133
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %42) #6
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !142
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %47) #6
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !146
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %57) #6
  br label %60

60:                                               ; preds = %55, %59
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !148
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %62) #6
  br label %65

65:                                               ; preds = %60, %64
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !149
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %67) #6
  br label %70

70:                                               ; preds = %65, %69
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !150
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %72) #6
  br label %75

75:                                               ; preds = %70, %74
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !151
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %77) #6
  br label %80

80:                                               ; preds = %75, %79
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !152
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %82) #6
  br label %85

85:                                               ; preds = %80, %84
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !153
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %87) #6
  br label %90

90:                                               ; preds = %85, %89
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !154
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %92) #6
  br label %95

95:                                               ; preds = %90, %94
  %96 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 14
  %97 = load ptr, ptr %96, align 8, !tbaa !155
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %97) #6
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !156
  tail call void @gt_ggc_m_P11cgraph_edge4htab(ptr noundef %102) #6
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !157
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %104) #6
  br label %107

107:                                              ; preds = %100, %106
  %108 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21
  %109 = load ptr, ptr %108, align 8, !tbaa !158
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @gt_ggc_mx_VEC_ipa_replace_map_p_gc(ptr noundef nonnull %109) #6
  br label %112

112:                                              ; preds = %107, %111
  %113 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !159
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %114) #6
  br label %117

117:                                              ; preds = %112, %116
  %118 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !160
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %119) #6
  br label %122

122:                                              ; preds = %117, %121
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 22, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !161
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %124) #5
  br label %127

127:                                              ; preds = %126, %122
  %128 = load ptr, ptr %41, align 8, !tbaa !133
  %129 = icmp eq ptr %128, %12
  br i1 %129, label %130, label %25, !llvm.loop !162

130:                                              ; preds = %127, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cgraph_edge(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %64, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !163
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !166

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %21
  %15 = phi ptr [ %17, %21 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !167
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %14
  br label %14

22:                                               ; preds = %14, %11
  %23 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %64, label %25

25:                                               ; preds = %22, %61
  %26 = phi ptr [ %62, %61 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %28) #6
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !169
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %33) #6
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !167
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %38) #6
  br label %41

41:                                               ; preds = %36, %40
  %42 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !163
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %43) #6
  br label %46

46:                                               ; preds = %41, %45
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %48) #6
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !171
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %53) #6
  br label %56

56:                                               ; preds = %51, %55
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !172
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %58) #6
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %42, align 8, !tbaa !163
  %63 = icmp eq ptr %62, %12
  br i1 %63, label %64, label %25, !llvm.loop !173

64:                                               ; preds = %61, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_ipa_replace_map_p_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !174
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_ipa_replace_map(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !177

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_ipa_replace_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !178
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.ipa_replace_map, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P11cgraph_edge4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !181

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_bitmap_head_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !182
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_bitmap_obstack(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_basic_block_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !186
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !189

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_basic_block_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %65, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !190
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !192

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %21
  %15 = phi ptr [ %17, %21 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %14
  br label %14

22:                                               ; preds = %14, %11
  %23 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %65, label %25

25:                                               ; preds = %22, %62
  %26 = phi ptr [ %63, %62 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_VEC_edge_gc(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !195
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_VEC_edge_gc(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %37) #6
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !193
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %42) #6
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !190
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %47) #6
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !197
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %54, label %58, label %60

58:                                               ; preds = %50
  br i1 %57, label %62, label %59

59:                                               ; preds = %58
  tail call void @gt_ggc_mx_gimple_bb_info(ptr noundef nonnull %56) #6
  br label %62

60:                                               ; preds = %50
  br i1 %57, label %62, label %61

61:                                               ; preds = %60
  tail call void @gt_ggc_mx_rtl_bb_info(ptr noundef nonnull %56) #6
  br label %62

62:                                               ; preds = %60, %61, %58, %59
  %63 = load ptr, ptr %46, align 8, !tbaa !190
  %64 = icmp eq ptr %63, %12
  br i1 %64, label %65, label %25, !llvm.loop !198

65:                                               ; preds = %62, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_gimple_bb_info(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !199
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.gimple_bb_info, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !201
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_gimple_seq_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %33, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_seq_d, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !204

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11, %30
  %15 = phi ptr [ %31, %30 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %16) #6
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %21) #6
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !202
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %26) #6
  %29 = load ptr, ptr %25, align 8, !tbaa !202
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ null, %24 ]
  %32 = icmp eq ptr %31, %12
  br i1 %32, label %33, label %14, !llvm.loop !207

33:                                               ; preds = %30, %1, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_rtl_bb_info(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !208
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !212
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_edge_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !213
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_edge_def(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !216

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_edge_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !217
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !219
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = tail call i32 @current_ir_type() #5
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %17, label %21, label %23

21:                                               ; preds = %15
  br i1 %20, label %25, label %22

22:                                               ; preds = %21
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %19) #6
  br label %25

23:                                               ; preds = %15
  br i1 %20, label %25, label %24

24:                                               ; preds = %23
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %19) #6
  br label %25

25:                                               ; preds = %22, %21, %24, %23
  %26 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !220
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #5
  br label %30

30:                                               ; preds = %1, %25, %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cselib_val_struct(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = phi ptr [ %0, %1 ], [ %25, %23 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !221
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !223
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_elt_loc_list(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !224
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_ggc_mx_elt_list(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !225
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %2

27:                                               ; preds = %2, %23, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_elt_loc_list(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !226
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_elt_loc_list(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !228
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !229
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_elt_list(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !230
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_elt_list(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.elt_list, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !232
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_cselib_val_struct(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_loop_p_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !233
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !236

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_loop(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %63, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !241

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %63, label %14

14:                                               ; preds = %11, %60
  %15 = phi ptr [ %61, %60 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !242
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %14, %19
  %21 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !243
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !244
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_VEC_loop_p_gc(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !245
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !237
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %37) #6
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !246
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %42) #5
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !247
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_ggc_mx_nb_iter_bound(ptr noundef nonnull %47) #6
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !248
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !249
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %57) #5
  br label %60

60:                                               ; preds = %59, %55
  %61 = load ptr, ptr %36, align 8, !tbaa !237
  %62 = icmp eq ptr %61, %12
  br i1 %62, label %63, label %14, !llvm.loop !250

63:                                               ; preds = %60, %1, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_nb_iter_bound(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %28, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nb_iter_bound, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !251
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !253

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %28, label %14

14:                                               ; preds = %11, %25
  %15 = phi ptr [ %26, %25 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !254
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %16) #6
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.nb_iter_bound, ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !251
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @gt_ggc_mx_nb_iter_bound(ptr noundef nonnull %21) #6
  %24 = load ptr, ptr %20, align 8, !tbaa !251
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ null, %19 ]
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %28, label %14, !llvm.loop !255

28:                                               ; preds = %25, %1, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_loop_exit(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi ptr [ %0, %1 ], [ %24, %22 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !256
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_edge_def(ptr noundef nonnull %9) #6
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !258
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !259
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %19) #6
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !260
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %2

26:                                               ; preds = %2, %22, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_types_used_by_vars_entry(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !261
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !263
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_loops(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !264
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_VEC_loop_p_gc(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !266
  tail call void @gt_ggc_m_P9loop_exit4htab(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !267
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %1, %11, %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9loop_exit4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !268

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_control_flow_graph(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !269
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !271
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !272
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_VEC_basic_block_gc(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !273
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_VEC_basic_block_gc(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_eh_status(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !274
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !276
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_VEC_eh_region_gc(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !277
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_VEC_eh_landing_pad_gc(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  tail call void @gt_ggc_m_P15throw_stmt_node4htab(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !279
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @gt_ggc_mx_VEC_tree_gc(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !280
  switch i8 %28, label %39 [
    i8 1, label %29
    i8 0, label %34
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  tail call void @gt_ggc_mx_VEC_tree_gc(ptr noundef nonnull %31) #6
  br label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @gt_ggc_mx_VEC_uchar_gc(ptr noundef nonnull %36) #6
  br label %39

39:                                               ; preds = %1, %33, %29, %38, %34, %27, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P15throw_stmt_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_throw_stmt_node(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !292

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_tree_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !293
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !296

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_uchar_gc(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_temp_slot_p_gc(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !297
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !300

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_temp_slot(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_gimple_df(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !301
  tail call void @gt_ggc_m_P9tree_node4htab(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @gt_ggc_mx_VEC_gimple_gc(ptr noundef nonnull %9) #6
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !306
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_VEC_tree_gc(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !307
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %19) #5
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !308
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %22, %26
  %28 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 5, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !309
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %29) #6
  br label %32

32:                                               ; preds = %27, %31
  %33 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !310
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %34) #5
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !311
  tail call void @gt_ggc_m_P9tree_node4htab(ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !312
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %41) #6
  br label %44

44:                                               ; preds = %37, %43
  %45 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !313
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gt_ggc_mx_ssa_operand_memory_d(ptr noundef nonnull %46) #6
  br label %49

49:                                               ; preds = %1, %44, %48, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9tree_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %19) #5
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !314

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_call_site_record_gc(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !315
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_call_site_record_d(ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !318

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_call_site_record_d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_sequence_stack(ptr noundef %0) #0 !prof !35 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi ptr [ %0, %1 ], [ %19, %17 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !319
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %9) #6
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !321
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !322
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %2

21:                                               ; preds = %2, %17, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_tree_priority_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !323
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_tree_int_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !326
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_tree_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !328
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.tree_map, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !330
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_tree_statement_list_node(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %42, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_statement_list_node, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !331
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !333

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %20
  %15 = phi ptr [ %16, %20 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !334
  %17 = ptrtoint ptr %16 to i64
  switch i64 %17, label %18 [
    i64 0, label %21
    i64 1, label %20
  ]

18:                                               ; preds = %14
  %19 = tail call i32 @ggc_set_mark(ptr noundef nonnull %16) #5
  br label %20

20:                                               ; preds = %18, %14
  br label %14

21:                                               ; preds = %14, %11
  %22 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %42, label %24

24:                                               ; preds = %21, %39
  %25 = phi ptr [ %40, %39 ], [ %22, %21 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !334
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @gt_ggc_mx_tree_statement_list_node(ptr noundef nonnull %26) #6
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.tree_statement_list_node, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !331
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @gt_ggc_mx_tree_statement_list_node(ptr noundef nonnull %31) #6
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %struct.tree_statement_list_node, ptr %25, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !335
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %36) #5
  br label %39

39:                                               ; preds = %38, %34
  %40 = load ptr, ptr %30, align 8, !tbaa !331
  %41 = icmp eq ptr %40, %12
  br i1 %41, label %42, label %24, !llvm.loop !336

42:                                               ; preds = %39, %1, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_var_ann_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.var_ann_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %8) #5
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_varray_head_tag(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %107, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %107

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !339
  tail call void @gt_ggc_m_S(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !341
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 795, ptr noundef nonnull @.str.1) #5
  br label %107

12:                                               ; preds = %6
  %13 = load i64, ptr %0, align 8, !tbaa !342
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %107, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %21, %17 ]
  %19 = getelementptr inbounds [1 x ptr], ptr %16, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %20) #5
  %21 = add nuw i64 %18, 1
  %22 = icmp eq i64 %21, %13
  br i1 %22, label %107, label %17, !llvm.loop !343

23:                                               ; preds = %6
  %24 = load i64, ptr %0, align 8, !tbaa !342
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %107, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %28

28:                                               ; preds = %26, %34
  %29 = phi i64 [ 0, %26 ], [ %35, %34 ]
  %30 = getelementptr inbounds [1 x ptr], ptr %27, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %31) #6
  br label %34

34:                                               ; preds = %28, %33
  %35 = add nuw i64 %29, 1
  %36 = icmp eq i64 %35, %24
  br i1 %36, label %107, label %28, !llvm.loop !344

37:                                               ; preds = %6
  %38 = load i64, ptr %0, align 8, !tbaa !342
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %107, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %48
  %43 = phi i64 [ 0, %40 ], [ %49, %48 ]
  %44 = getelementptr inbounds [1 x ptr], ptr %41, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %45) #6
  br label %48

48:                                               ; preds = %42, %47
  %49 = add nuw i64 %43, 1
  %50 = icmp eq i64 %49, %38
  br i1 %50, label %107, label %42, !llvm.loop !345

51:                                               ; preds = %6
  %52 = load i64, ptr %0, align 8, !tbaa !342
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %107, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %56

56:                                               ; preds = %54, %62
  %57 = phi i64 [ 0, %54 ], [ %63, %62 ]
  %58 = getelementptr inbounds [1 x ptr], ptr %55, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %59) #5
  br label %62

62:                                               ; preds = %56, %61
  %63 = add nuw i64 %57, 1
  %64 = icmp eq i64 %63, %52
  br i1 %64, label %107, label %56, !llvm.loop !346

65:                                               ; preds = %6
  %66 = load i64, ptr %0, align 8, !tbaa !342
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %70

70:                                               ; preds = %68, %76
  %71 = phi i64 [ 0, %68 ], [ %77, %76 ]
  %72 = getelementptr inbounds [1 x ptr], ptr %69, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %73) #6
  br label %76

76:                                               ; preds = %70, %75
  %77 = add nuw i64 %71, 1
  %78 = icmp eq i64 %77, %66
  br i1 %78, label %107, label %70, !llvm.loop !347

79:                                               ; preds = %6
  %80 = load i64, ptr %0, align 8, !tbaa !342
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %84

84:                                               ; preds = %82, %90
  %85 = phi i64 [ 0, %82 ], [ %91, %90 ]
  %86 = getelementptr inbounds [1 x ptr], ptr %83, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call void @gt_ggc_mx_elt_list(ptr noundef nonnull %87) #6
  br label %90

90:                                               ; preds = %84, %89
  %91 = add nuw i64 %85, 1
  %92 = icmp eq i64 %91, %80
  br i1 %92, label %107, label %84, !llvm.loop !348

93:                                               ; preds = %6
  %94 = load i64, ptr %0, align 8, !tbaa !342
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %98

98:                                               ; preds = %96, %104
  %99 = phi i64 [ 0, %96 ], [ %105, %104 ]
  %100 = getelementptr inbounds [1 x ptr], ptr %97, i64 0, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  tail call void @gt_ggc_mx_edge_def(ptr noundef nonnull %101) #6
  br label %104

104:                                              ; preds = %98, %103
  %105 = add nuw i64 %99, 1
  %106 = icmp eq i64 %105, %94
  br i1 %106, label %107, label %98, !llvm.loop !349

107:                                              ; preds = %17, %34, %48, %62, %76, %90, %104, %12, %23, %37, %51, %65, %79, %93, %1, %11, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_m_S(ptr noundef) #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_rtvec_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !350
  %8 = sext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.rtvec_def, ptr %0, i64 0, i32 1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !352

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_ptr_info_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !353
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_constructor_elt_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !355
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi i64 [ %22, %21 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !358
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %11, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !360
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %18) #5
  br label %21

21:                                               ; preds = %16, %20
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !361

24:                                               ; preds = %21, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_alias_pair_gc(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !362
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi i64 [ %22, %21 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !365
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %11, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !367
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %18) #5
  br label %21

21:                                               ; preds = %16, %20
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !368

24:                                               ; preds = %21, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_function(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !369
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_status(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !371
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_control_flow_graph(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !372
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !373
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_gimple_df(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_loops(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !375
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %32) #5
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !376
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %37) #5
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !377
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %42) #5
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !378
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %47) #5
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !379
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_ggc_mx_machine_function(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !380
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_ggc_mx_language_function(ptr noundef nonnull %57) #5
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !381
  tail call void @gt_ggc_m_P9tree_node4htab(ptr noundef %62) #6
  br label %63

63:                                               ; preds = %1, %60, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_machine_function(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !382
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_stack_local_entry(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !385
  tail call void @gt_ggc_m_S(ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !386
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %1, %10, %16, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_language_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_fixed_value(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_real_value(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_rtx_gc(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !387
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !390

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_object_block(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !391
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_section(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !393
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_VEC_rtx_gc(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !394
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_VEC_rtx_gc(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_section(ptr noundef %0) #0 !prof !35 {
  br label %2

2:                                                ; preds = %18, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %18 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 8, !tbaa !48
  %10 = and i32 %9, 6291456
  switch i32 %10, label %22 [
    i32 2097152, label %11
    i32 0, label %18
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %15) #5
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.unnamed_section, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %2

22:                                               ; preds = %2, %18, %8, %5, %17, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_reg_attrs(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !395
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_mem_attrs(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !397
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !399
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !400
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_bitmap_obstack(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !401
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.bitmap_obstack, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !404
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_bitmap_element_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi ptr [ %0, %1 ], [ %14, %12 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !405
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %9) #6
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !407
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %2

16:                                               ; preds = %2, %12, %5
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_stack_local_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_gimple_seq_node_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %44, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !408
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !410

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %21
  %15 = phi ptr [ %17, %21 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !411
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %14
  br label %14

22:                                               ; preds = %14, %11
  %23 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %44, label %25

25:                                               ; preds = %22, %41
  %26 = phi ptr [ %42, %41 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !412
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !411
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !408
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %37) #6
  %40 = load ptr, ptr %36, align 8, !tbaa !408
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ null, %35 ]
  %43 = icmp eq ptr %42, %12
  br i1 %43, label %44, label %25, !llvm.loop !413

44:                                               ; preds = %41, %1, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !414 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #6, !range !415
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #6
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 !prof !35 !PGOFuncName !416 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !417
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !418 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_answer(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !419
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_answer(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !421
  %13 = zext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %10, %33
  %16 = phi i64 [ %34, %33 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16
  %18 = tail call i32 @cpp_token_val_index(ptr noundef nonnull %17) #5
  switch i32 %18, label %33 [
    i32 0, label %19
    i32 1, label %25
    i32 2, label %30
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %21, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %24) #5
  br label %33

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_cpp_token(ptr noundef nonnull %27) #6
  br label %33

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16, i32 3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %32) #5
  br label %33

33:                                               ; preds = %19, %23, %30, %29, %25, %15
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %15, !llvm.loop !422

36:                                               ; preds = %33, %10, %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @cpp_token_val_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cpp_token(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %16 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = tail call i32 @cpp_token_val_index(ptr noundef nonnull %3) #5
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 1, label %16
    i32 2, label %20
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %12, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %15) #5
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %2

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %22) #5
  br label %23

23:                                               ; preds = %2, %16, %8, %5, %10, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_cpp_macro(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %83

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !423
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !425
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %23
  %14 = phi i16 [ %24, %23 ], [ %11, %9 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %9 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !423
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %18, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %21) #5
  %22 = load i16, ptr %10, align 8, !tbaa !425
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i16 [ %22, %20 ], [ %14, %13 ]
  %25 = add i64 %15, 1
  %26 = zext i16 %24 to i64
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %13, !llvm.loop !426

28:                                               ; preds = %23
  %29 = load ptr, ptr %0, align 8, !tbaa !423
  br label %30

30:                                               ; preds = %28, %9
  %31 = phi ptr [ %29, %28 ], [ %7, %9 ]
  %32 = icmp ult ptr %31, inttoptr (i64 2 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @ggc_set_mark(ptr noundef nonnull %31) #5
  br label %35

35:                                               ; preds = %30, %33, %6
  %36 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  br i1 %39, label %42, label %82

42:                                               ; preds = %35
  %43 = icmp eq ptr %41, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !427
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %44, %70
  %49 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %50 = load ptr, ptr %40, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 %49
  %52 = tail call i32 @cpp_token_val_index(ptr noundef %51) #5
  switch i32 %52, label %70 [
    i32 0, label %53
    i32 1, label %60
    i32 2, label %66
  ]

53:                                               ; preds = %48
  %54 = load ptr, ptr %40, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.cpp_token, ptr %54, i64 %49, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %56, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %59) #5
  br label %70

60:                                               ; preds = %48
  %61 = load ptr, ptr %40, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 %49, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  tail call void @gt_ggc_mx_cpp_token(ptr noundef nonnull %63) #6
  br label %70

66:                                               ; preds = %48
  %67 = load ptr, ptr %40, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct.cpp_token, ptr %67, i64 %49, i32 3, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  tail call void @gt_ggc_m_S(ptr noundef %69) #5
  br label %70

70:                                               ; preds = %53, %58, %66, %65, %60, %48
  %71 = add i64 %49, 1
  %72 = load i32, ptr %45, align 4, !tbaa !427
  %73 = zext i32 %72 to i64
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %48, !llvm.loop !428

75:                                               ; preds = %70
  %76 = load ptr, ptr %40, align 8, !tbaa !48
  br label %77

77:                                               ; preds = %75, %44
  %78 = phi ptr [ %76, %75 ], [ %41, %44 ]
  %79 = icmp ult ptr %78, inttoptr (i64 2 to ptr)
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @ggc_set_mark(ptr noundef nonnull %78) #5
  br label %83

82:                                               ; preds = %35
  tail call void @gt_ggc_m_S(ptr noundef %41) #5
  br label %83

83:                                               ; preds = %77, %1, %80, %82, %42, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_line_maps(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !429
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !431
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %9 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !429
  %16 = getelementptr inbounds %struct.line_map, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !432
  tail call void @gt_ggc_m_S(ptr noundef %17) #5
  %18 = add i64 %14, 1
  %19 = load i32, ptr %10, align 4, !tbaa !431
  %20 = zext i32 %19 to i64
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %13, !llvm.loop !434

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8, !tbaa !429
  br label %24

24:                                               ; preds = %22, %9
  %25 = phi ptr [ %23, %22 ], [ %7, %9 ]
  %26 = icmp ult ptr %25, inttoptr (i64 2 to ptr)
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @ggc_set_mark(ptr noundef nonnull %25) #5
  br label %29

29:                                               ; preds = %24, %1, %27, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_II17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %11, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !435
  tail call void @gt_ggc_m_II17splay_tree_node_s(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !437
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %13, label %3

13:                                               ; preds = %3, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_SP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %21, label %3

3:                                                ; preds = %1, %15
  %4 = phi ptr [ %19, %15 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8, !tbaa !438
  %9 = inttoptr i64 %8 to ptr
  tail call void @gt_ggc_m_S(ptr noundef %9) #5
  %10 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !439
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = inttoptr i64 %11 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %14) #5
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !435
  tail call void @gt_ggc_m_SP9tree_node17splay_tree_node_s(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !437
  %20 = icmp ult ptr %19, inttoptr (i64 2 to ptr)
  br i1 %20, label %21, label %3

21:                                               ; preds = %3, %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %24, label %3

3:                                                ; preds = %1, %18
  %4 = phi ptr [ %22, %18 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8, !tbaa !438
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = inttoptr i64 %8 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %11) #5
  br label %12

12:                                               ; preds = %7, %10
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !439
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = inttoptr i64 %14 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #5
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !435
  tail call void @gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %20) #6
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !437
  %23 = icmp ult ptr %22, inttoptr (i64 2 to ptr)
  br i1 %23, label %24, label %3

24:                                               ; preds = %3, %18, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_IP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %17, %13 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !439
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = inttoptr i64 %9 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !435
  tail call void @gt_ggc_m_IP9tree_node17splay_tree_node_s(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !437
  %18 = icmp ult ptr %17, inttoptr (i64 2 to ptr)
  br i1 %18, label %19, label %3

19:                                               ; preds = %3, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P12tree_int_map4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_tree_int_map(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !440

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_IP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_ggc_m_IP9tree_node17splay_tree_node_s(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P12varpool_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !443

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P24constant_descriptor_tree4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_constant_descriptor_tree(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !444

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P12object_block4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_object_block(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !445

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P7section4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_section(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !446

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P17tree_priority_map4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_tree_priority_map(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !447

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P8tree_map4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_tree_map(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !448

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9reg_attrs4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_reg_attrs(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !449

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9mem_attrs4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_mem_attrs(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !450

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P7rtx_def4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !451

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_SP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_ggc_m_SP9tree_node17splay_tree_node_s(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P11cgraph_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !452

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_II12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_ggc_m_II17splay_tree_node_s(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P24types_used_by_vars_entry4htab(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_types_used_by_vars_entry(ptr noundef nonnull %19) #6
  %22 = load i64, ptr %11, align 8, !tbaa !125
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !453

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_ipa_edge_args_t_gc(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_ipa_edge_args_t_gc, i32 noundef 54) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !36
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %60, label %8

8:                                                ; preds = %4, %57
  %9 = phi i64 [ %58, %57 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 8, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %14, %47
  %18 = phi i64 [ %48, %47 ], [ 0, %14 ]
  %19 = load ptr, ptr %11, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18
  %21 = load i32, ptr %20, align 8, !tbaa !46
  switch i32 %21, label %47 [
    i32 1, label %22
    i32 3, label %26
    i32 4, label %30
    i32 2, label %34
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %45

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %45

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %45

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %36) #5
  %39 = load ptr, ptr %11, align 8, !tbaa !42
  br label %40

40:                                               ; preds = %34, %38
  %41 = phi ptr [ %19, %34 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.ipa_jump_func, ptr %41, i64 %18, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %30, %26, %22
  %46 = phi ptr [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %43, %40 ]
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %46) #5
  br label %47

47:                                               ; preds = %45, %22, %26, %30, %40, %17
  %48 = add i64 %18, 1
  %49 = load i32, ptr %10, align 8, !tbaa !45
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %17, !llvm.loop !454

52:                                               ; preds = %47
  %53 = load ptr, ptr %11, align 8, !tbaa !42
  br label %54

54:                                               ; preds = %52, %14
  %55 = phi ptr [ %53, %52 ], [ %12, %14 ]
  %56 = tail call i32 @gt_pch_note_object(ptr noundef %55, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_22VEC_ipa_edge_args_t_gc, i32 noundef 217) #5
  br label %57

57:                                               ; preds = %8, %54
  %58 = add nuw nsw i64 %9, 1
  %59 = icmp eq i64 %58, %6
  br i1 %59, label %60, label %8, !llvm.loop !455

60:                                               ; preds = %57, %4, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_22VEC_ipa_edge_args_t_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !36
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %55
  %11 = phi i64 [ 0, %8 ], [ %56, %55 ]
  %12 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %1, i64 0, i32 2, i64 %11
  %13 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %1, i64 0, i32 2, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %12, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %16, %48
  %20 = phi i64 [ %49, %48 ], [ 0, %16 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !46
  switch i32 %23, label %48 [
    i32 1, label %24
    i32 3, label %28
    i32 4, label %32
    i32 2, label %36
  ]

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, %0
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 %20, i32 1
  br label %46

28:                                               ; preds = %19
  %29 = icmp eq ptr %21, %0
  br i1 %29, label %30, label %48

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 %20, i32 1
  br label %46

32:                                               ; preds = %19
  %33 = icmp eq ptr %21, %0
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 %20, i32 1, i32 0, i32 1
  br label %46

36:                                               ; preds = %19
  %37 = icmp eq ptr %21, %0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 %20, i32 1
  tail call void %2(ptr noundef nonnull %39, ptr noundef %3) #5
  %40 = load ptr, ptr %13, align 8, !tbaa !42
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi ptr [ %40, %38 ], [ %21, %36 ]
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 %20, i32 1, i32 0, i32 1
  br label %46

46:                                               ; preds = %44, %34, %30, %26
  %47 = phi ptr [ %27, %26 ], [ %31, %30 ], [ %35, %34 ], [ %45, %44 ]
  tail call void %2(ptr noundef nonnull %47, ptr noundef %3) #5
  br label %48

48:                                               ; preds = %46, %24, %28, %32, %41, %19
  %49 = add i64 %20, 1
  %50 = load i32, ptr %12, align 8, !tbaa !45
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %19, !llvm.loop !456

53:                                               ; preds = %48, %16
  br i1 %9, label %54, label %55

54:                                               ; preds = %53
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %55

55:                                               ; preds = %53, %54, %10
  %56 = add nuw nsw i64 %11, 1
  %57 = icmp eq i64 %56, %6
  br i1 %57, label %58, label %10, !llvm.loop !457

58:                                               ; preds = %55, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_ssa_operand_memory_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_20ssa_operand_memory_d, i32 noundef 56) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %20, label %6

4:                                                ; preds = %6
  %5 = icmp eq ptr %8, %0
  br i1 %5, label %20, label %11

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @gt_pch_note_object(ptr noundef %8, ptr noundef %8, ptr noundef nonnull @gt_pch_p_20ssa_operand_memory_d, i32 noundef 56) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %6, !llvm.loop !458

11:                                               ; preds = %4, %17
  %12 = phi ptr [ %18, %17 ], [ %0, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void @gt_pch_nx_ssa_operand_memory_d(ptr noundef nonnull %13) #6
  %16 = load ptr, ptr %12, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ null, %11 ]
  %19 = icmp eq ptr %18, %8
  br i1 %19, label %20, label %11, !llvm.loop !459

20:                                               ; preds = %17, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_20ssa_operand_memory_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_gimple_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13VEC_gimple_gc, i32 noundef 59) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !56
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !460

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_13VEC_gimple_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !56
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !461

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_gimple_statement_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18gimple_statement_d, i32 noundef 162) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %534, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #6
  switch i32 %5, label %534 [
    i32 0, label %6
    i32 1, label %16
    i32 2, label %40
    i32 3, label %50
    i32 13, label %74
    i32 5, label %89
    i32 8, label %114
    i32 9, label %134
    i32 10, label %154
    i32 6, label %169
    i32 11, label %198
    i32 7, label %208
    i32 12, label %228
    i32 4, label %243
    i32 14, label %269
    i32 15, label %289
    i32 16, label %359
    i32 17, label %389
    i32 18, label %434
    i32 19, label %459
    i32 20, label %479
    i32 21, label %499
    i32 22, label %519
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %534, label %15

15:                                               ; preds = %11
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %13) #5
  br label %534

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %18) #6
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %23) #5
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !48
  %29 = zext i32 %28 to i64
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %534, label %31

31:                                               ; preds = %26, %37
  %32 = phi i64 [ %38, %37 ], [ 0, %26 ]
  %33 = getelementptr inbounds %struct.gimple_statement_with_ops, ptr %0, i64 0, i32 1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %34) #5
  br label %37

37:                                               ; preds = %31, %36
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %29
  br i1 %39, label %534, label %31, !llvm.loop !462

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %42) #6
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = icmp eq ptr %47, null
  br i1 %48, label %534, label %49

49:                                               ; preds = %45
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %47) #5
  br label %534

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %57) #5
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !48
  %63 = zext i32 %62 to i64
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %534, label %65

65:                                               ; preds = %60, %71
  %66 = phi i64 [ %72, %71 ], [ 0, %60 ]
  %67 = getelementptr inbounds %struct.gimple_statement_with_memory_ops, ptr %0, i64 0, i32 1, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %68) #5
  br label %71

71:                                               ; preds = %65, %70
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %72, %63
  br i1 %73, label %534, label %65, !llvm.loop !463

74:                                               ; preds = %4
  %75 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !48
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %76) #6
  br label %79

79:                                               ; preds = %74, %78
  %80 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !48
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %81) #5
  br label %84

84:                                               ; preds = %79, %83
  %85 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !48
  %87 = icmp eq ptr %86, null
  br i1 %87, label %534, label %88

88:                                               ; preds = %84
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %86) #6
  br label %534

89:                                               ; preds = %4
  %90 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %91) #6
  br label %94

94:                                               ; preds = %89, %93
  %95 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %96) #5
  br label %99

99:                                               ; preds = %94, %98
  %100 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %101) #5
  br label %104

104:                                              ; preds = %99, %103
  %105 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %106) #5
  br label %109

109:                                              ; preds = %104, %108
  %110 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  %112 = icmp eq ptr %111, null
  br i1 %112, label %534, label %113

113:                                              ; preds = %109
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %111) #6
  br label %534

114:                                              ; preds = %4
  %115 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !48
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %116) #6
  br label %119

119:                                              ; preds = %114, %118
  %120 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !48
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %121) #5
  br label %124

124:                                              ; preds = %119, %123
  %125 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !48
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %126) #5
  br label %129

129:                                              ; preds = %124, %128
  %130 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !48
  %132 = icmp eq ptr %131, null
  br i1 %132, label %534, label %133

133:                                              ; preds = %129
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %131) #6
  br label %534

134:                                              ; preds = %4
  %135 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !48
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %136) #6
  br label %139

139:                                              ; preds = %134, %138
  %140 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %141 = load ptr, ptr %140, align 8, !tbaa !48
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %141) #5
  br label %144

144:                                              ; preds = %139, %143
  %145 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !48
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %146) #5
  br label %149

149:                                              ; preds = %144, %148
  %150 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !48
  %152 = icmp eq ptr %151, null
  br i1 %152, label %534, label %153

153:                                              ; preds = %149
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %151) #6
  br label %534

154:                                              ; preds = %4
  %155 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !48
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %156) #6
  br label %159

159:                                              ; preds = %154, %158
  %160 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !48
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %161) #5
  br label %164

164:                                              ; preds = %159, %163
  %165 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !48
  %167 = icmp eq ptr %166, null
  br i1 %167, label %534, label %168

168:                                              ; preds = %164
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %166) #5
  br label %534

169:                                              ; preds = %4
  %170 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %171) #6
  br label %174

174:                                              ; preds = %169, %173
  %175 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %176 = load ptr, ptr %175, align 8, !tbaa !48
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %176) #5
  br label %179

179:                                              ; preds = %174, %178
  %180 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !48
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %181) #5
  br label %184

184:                                              ; preds = %183, %179
  %185 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %186 = load i32, ptr %185, align 4, !tbaa !48
  %187 = zext i32 %186 to i64
  %188 = icmp eq i32 %186, 0
  br i1 %188, label %534, label %189

189:                                              ; preds = %184, %195
  %190 = phi i64 [ %196, %195 ], [ 0, %184 ]
  %191 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %190, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !48
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %192) #5
  br label %195

195:                                              ; preds = %189, %194
  %196 = add nuw nsw i64 %190, 1
  %197 = icmp eq i64 %196, %187
  br i1 %197, label %534, label %189, !llvm.loop !464

198:                                              ; preds = %4
  %199 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !48
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %200) #6
  br label %203

203:                                              ; preds = %198, %202
  %204 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  %206 = icmp eq ptr %205, null
  br i1 %206, label %534, label %207

207:                                              ; preds = %203
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %205) #5
  br label %534

208:                                              ; preds = %4
  %209 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !48
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %210) #6
  br label %213

213:                                              ; preds = %208, %212
  %214 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !48
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %213
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %215) #5
  br label %218

218:                                              ; preds = %213, %217
  %219 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !48
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %220) #6
  br label %223

223:                                              ; preds = %218, %222
  %224 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !48
  %226 = icmp eq ptr %225, null
  br i1 %226, label %534, label %227

227:                                              ; preds = %223
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %225) #6
  br label %534

228:                                              ; preds = %4
  %229 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !48
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %230) #6
  br label %233

233:                                              ; preds = %228, %232
  %234 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %235 = load ptr, ptr %234, align 8, !tbaa !48
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %235) #5
  br label %238

238:                                              ; preds = %233, %237
  %239 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !48
  %241 = icmp eq ptr %240, null
  br i1 %241, label %534, label %242

242:                                              ; preds = %238
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %240) #6
  br label %534

243:                                              ; preds = %4
  %244 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %245 = load ptr, ptr %244, align 8, !tbaa !48
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %245) #6
  br label %248

248:                                              ; preds = %243, %247
  %249 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %250 = load ptr, ptr %249, align 8, !tbaa !48
  %251 = icmp eq ptr %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %250) #5
  br label %253

253:                                              ; preds = %252, %248
  %254 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %255) #5
  %256 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %257 = load i32, ptr %256, align 4, !tbaa !48
  %258 = zext i32 %257 to i64
  %259 = icmp eq i32 %257, 0
  br i1 %259, label %534, label %260

260:                                              ; preds = %253, %266
  %261 = phi i64 [ %267, %266 ], [ 0, %253 ]
  %262 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 6, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !48
  %264 = icmp eq ptr %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %260
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %263) #5
  br label %266

266:                                              ; preds = %260, %265
  %267 = add nuw nsw i64 %261, 1
  %268 = icmp eq i64 %267, %258
  br i1 %268, label %534, label %260, !llvm.loop !465

269:                                              ; preds = %4
  %270 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %271 = load ptr, ptr %270, align 8, !tbaa !48
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %271) #6
  br label %274

274:                                              ; preds = %269, %273
  %275 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !48
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %274
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %276) #5
  br label %279

279:                                              ; preds = %274, %278
  %280 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !48
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %281) #6
  br label %284

284:                                              ; preds = %279, %283
  %285 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !48
  %287 = icmp eq ptr %286, null
  br i1 %287, label %534, label %288

288:                                              ; preds = %284
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %286) #5
  br label %534

289:                                              ; preds = %4
  %290 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !48
  %292 = icmp eq ptr %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %291) #6
  br label %294

294:                                              ; preds = %289, %293
  %295 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %296 = load ptr, ptr %295, align 8, !tbaa !48
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %296) #5
  br label %299

299:                                              ; preds = %294, %298
  %300 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !48
  %302 = icmp eq ptr %301, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %301) #6
  br label %304

304:                                              ; preds = %299, %303
  %305 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !48
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %304
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %306) #5
  br label %309

309:                                              ; preds = %308, %304
  %310 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !48
  %312 = icmp eq ptr %311, null
  br i1 %312, label %354, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %315 = load i64, ptr %314, align 8, !tbaa !48
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %351, label %317

317:                                              ; preds = %313, %345
  %318 = phi i64 [ %346, %345 ], [ 0, %313 ]
  %319 = load ptr, ptr %310, align 8, !tbaa !48
  %320 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %319, i64 %318, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !65
  %322 = icmp eq ptr %321, null
  br i1 %322, label %325, label %323

323:                                              ; preds = %317
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %321) #5
  %324 = load ptr, ptr %310, align 8, !tbaa !48
  br label %325

325:                                              ; preds = %317, %323
  %326 = phi ptr [ %319, %317 ], [ %324, %323 ]
  %327 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %326, i64 %318, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !67
  %329 = icmp eq ptr %328, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %325
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %328) #5
  %331 = load ptr, ptr %310, align 8, !tbaa !48
  br label %332

332:                                              ; preds = %325, %330
  %333 = phi ptr [ %326, %325 ], [ %331, %330 ]
  %334 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %333, i64 %318, i32 3
  %335 = load ptr, ptr %334, align 8, !tbaa !68
  %336 = icmp eq ptr %335, null
  br i1 %336, label %339, label %337

337:                                              ; preds = %332
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %335) #5
  %338 = load ptr, ptr %310, align 8, !tbaa !48
  br label %339

339:                                              ; preds = %332, %337
  %340 = phi ptr [ %333, %332 ], [ %338, %337 ]
  %341 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %340, i64 %318, i32 4
  %342 = load ptr, ptr %341, align 8, !tbaa !69
  %343 = icmp eq ptr %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %342) #5
  br label %345

345:                                              ; preds = %339, %344
  %346 = add i64 %318, 1
  %347 = load i64, ptr %314, align 8, !tbaa !48
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %317, !llvm.loop !466

349:                                              ; preds = %345
  %350 = load ptr, ptr %310, align 8, !tbaa !48
  br label %351

351:                                              ; preds = %349, %313
  %352 = phi ptr [ %350, %349 ], [ %311, %313 ]
  %353 = tail call i32 @gt_pch_note_object(ptr noundef %352, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_18gimple_statement_d, i32 noundef 217) #5
  br label %354

354:                                              ; preds = %309, %351
  %355 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %356 = load ptr, ptr %355, align 8, !tbaa !48
  %357 = icmp eq ptr %356, null
  br i1 %357, label %534, label %358

358:                                              ; preds = %354
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %356) #6
  br label %534

359:                                              ; preds = %4
  %360 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %361 = load ptr, ptr %360, align 8, !tbaa !48
  %362 = icmp eq ptr %361, null
  br i1 %362, label %364, label %363

363:                                              ; preds = %359
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %361) #6
  br label %364

364:                                              ; preds = %359, %363
  %365 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %366 = load ptr, ptr %365, align 8, !tbaa !48
  %367 = icmp eq ptr %366, null
  br i1 %367, label %369, label %368

368:                                              ; preds = %364
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %366) #5
  br label %369

369:                                              ; preds = %364, %368
  %370 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !48
  %372 = icmp eq ptr %371, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %371) #6
  br label %374

374:                                              ; preds = %369, %373
  %375 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !48
  %377 = icmp eq ptr %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %376) #5
  br label %379

379:                                              ; preds = %374, %378
  %380 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !48
  %382 = icmp eq ptr %381, null
  br i1 %382, label %384, label %383

383:                                              ; preds = %379
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %381) #5
  br label %384

384:                                              ; preds = %379, %383
  %385 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !48
  %387 = icmp eq ptr %386, null
  br i1 %387, label %534, label %388

388:                                              ; preds = %384
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %386) #5
  br label %534

389:                                              ; preds = %4
  %390 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %391 = load ptr, ptr %390, align 8, !tbaa !48
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %389
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %391) #6
  br label %394

394:                                              ; preds = %389, %393
  %395 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %396 = load ptr, ptr %395, align 8, !tbaa !48
  %397 = icmp eq ptr %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %394
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %396) #5
  br label %399

399:                                              ; preds = %394, %398
  %400 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !48
  %402 = icmp eq ptr %401, null
  br i1 %402, label %404, label %403

403:                                              ; preds = %399
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %401) #6
  br label %404

404:                                              ; preds = %399, %403
  %405 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !48
  %407 = icmp eq ptr %406, null
  br i1 %407, label %409, label %408

408:                                              ; preds = %404
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %406) #5
  br label %409

409:                                              ; preds = %404, %408
  %410 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !48
  %412 = icmp eq ptr %411, null
  br i1 %412, label %414, label %413

413:                                              ; preds = %409
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %411) #5
  br label %414

414:                                              ; preds = %409, %413
  %415 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %416 = load ptr, ptr %415, align 8, !tbaa !48
  %417 = icmp eq ptr %416, null
  br i1 %417, label %419, label %418

418:                                              ; preds = %414
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %416) #5
  br label %419

419:                                              ; preds = %414, %418
  %420 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !48
  %422 = icmp eq ptr %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %419
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %421) #5
  br label %424

424:                                              ; preds = %419, %423
  %425 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !48
  %427 = icmp eq ptr %426, null
  br i1 %427, label %429, label %428

428:                                              ; preds = %424
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %426) #5
  br label %429

429:                                              ; preds = %424, %428
  %430 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !48
  %432 = icmp eq ptr %431, null
  br i1 %432, label %534, label %433

433:                                              ; preds = %429
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %431) #5
  br label %534

434:                                              ; preds = %4
  %435 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %436 = load ptr, ptr %435, align 8, !tbaa !48
  %437 = icmp eq ptr %436, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %434
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %436) #6
  br label %439

439:                                              ; preds = %434, %438
  %440 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %441 = load ptr, ptr %440, align 8, !tbaa !48
  %442 = icmp eq ptr %441, null
  br i1 %442, label %444, label %443

443:                                              ; preds = %439
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %441) #5
  br label %444

444:                                              ; preds = %439, %443
  %445 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !48
  %447 = icmp eq ptr %446, null
  br i1 %447, label %449, label %448

448:                                              ; preds = %444
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %446) #6
  br label %449

449:                                              ; preds = %444, %448
  %450 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !48
  %452 = icmp eq ptr %451, null
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %451) #5
  br label %454

454:                                              ; preds = %449, %453
  %455 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %456 = load ptr, ptr %455, align 8, !tbaa !48
  %457 = icmp eq ptr %456, null
  br i1 %457, label %534, label %458

458:                                              ; preds = %454
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %456) #5
  br label %534

459:                                              ; preds = %4
  %460 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %461 = load ptr, ptr %460, align 8, !tbaa !48
  %462 = icmp eq ptr %461, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %459
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %461) #6
  br label %464

464:                                              ; preds = %459, %463
  %465 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %466 = load ptr, ptr %465, align 8, !tbaa !48
  %467 = icmp eq ptr %466, null
  br i1 %467, label %469, label %468

468:                                              ; preds = %464
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %466) #5
  br label %469

469:                                              ; preds = %464, %468
  %470 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !48
  %472 = icmp eq ptr %471, null
  br i1 %472, label %474, label %473

473:                                              ; preds = %469
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %471) #6
  br label %474

474:                                              ; preds = %469, %473
  %475 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !48
  %477 = icmp eq ptr %476, null
  br i1 %477, label %534, label %478

478:                                              ; preds = %474
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %476) #5
  br label %534

479:                                              ; preds = %4
  %480 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %481 = load ptr, ptr %480, align 8, !tbaa !48
  %482 = icmp eq ptr %481, null
  br i1 %482, label %484, label %483

483:                                              ; preds = %479
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %481) #6
  br label %484

484:                                              ; preds = %479, %483
  %485 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %486 = load ptr, ptr %485, align 8, !tbaa !48
  %487 = icmp eq ptr %486, null
  br i1 %487, label %489, label %488

488:                                              ; preds = %484
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %486) #5
  br label %489

489:                                              ; preds = %484, %488
  %490 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !48
  %492 = icmp eq ptr %491, null
  br i1 %492, label %494, label %493

493:                                              ; preds = %489
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %491) #5
  br label %494

494:                                              ; preds = %489, %493
  %495 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !48
  %497 = icmp eq ptr %496, null
  br i1 %497, label %534, label %498

498:                                              ; preds = %494
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %496) #5
  br label %534

499:                                              ; preds = %4
  %500 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %501 = load ptr, ptr %500, align 8, !tbaa !48
  %502 = icmp eq ptr %501, null
  br i1 %502, label %504, label %503

503:                                              ; preds = %499
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %501) #6
  br label %504

504:                                              ; preds = %499, %503
  %505 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %506 = load ptr, ptr %505, align 8, !tbaa !48
  %507 = icmp eq ptr %506, null
  br i1 %507, label %509, label %508

508:                                              ; preds = %504
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %506) #5
  br label %509

509:                                              ; preds = %504, %508
  %510 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !48
  %512 = icmp eq ptr %511, null
  br i1 %512, label %514, label %513

513:                                              ; preds = %509
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %511) #5
  br label %514

514:                                              ; preds = %509, %513
  %515 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %516 = load ptr, ptr %515, align 8, !tbaa !48
  %517 = icmp eq ptr %516, null
  br i1 %517, label %534, label %518

518:                                              ; preds = %514
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %516) #5
  br label %534

519:                                              ; preds = %4
  %520 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %521 = load ptr, ptr %520, align 8, !tbaa !48
  %522 = icmp eq ptr %521, null
  br i1 %522, label %524, label %523

523:                                              ; preds = %519
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %521) #6
  br label %524

524:                                              ; preds = %519, %523
  %525 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %526 = load ptr, ptr %525, align 8, !tbaa !48
  %527 = icmp eq ptr %526, null
  br i1 %527, label %529, label %528

528:                                              ; preds = %524
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %526) #5
  br label %529

529:                                              ; preds = %524, %528
  %530 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %531 = load ptr, ptr %530, align 8, !tbaa !48
  %532 = icmp eq ptr %531, null
  br i1 %532, label %534, label %533

533:                                              ; preds = %529
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %531) #5
  br label %534

534:                                              ; preds = %266, %195, %71, %37, %253, %184, %60, %26, %15, %11, %49, %45, %88, %84, %113, %109, %133, %129, %153, %149, %168, %164, %207, %203, %227, %223, %242, %238, %288, %284, %358, %354, %388, %384, %433, %429, %458, %454, %478, %474, %498, %494, %518, %514, %533, %529, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_throw_stmt_node(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15throw_stmt_node, i32 noundef 64) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_15throw_stmt_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_eh_landing_pad_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_21VEC_eh_landing_pad_gc, i32 noundef 65) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !73
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_landing_pad_d(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !467

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_21VEC_eh_landing_pad_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !73
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !468

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_eh_landing_pad_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16eh_landing_pad_d, i32 noundef 68) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_landing_pad_d(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #5
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_eh_region_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16VEC_eh_region_gc, i32 noundef 66) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !82
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !469

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_16VEC_eh_region_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !82
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !470

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_eh_region_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11eh_region_d, i32 noundef 69) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !90
  switch i32 %20, label %46 [
    i32 1, label %21
    i32 2, label %31
    i32 3, label %41
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %23) #6
  br label %26

26:                                               ; preds = %21, %25
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %28) #6
  br label %46

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %33) #5
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %38) #5
  br label %46

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %43) #5
  br label %46

46:                                               ; preds = %30, %26, %40, %36, %45, %41, %18
  %47 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !91
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @gt_pch_nx_eh_landing_pad_d(ptr noundef nonnull %48) #6
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %53) #6
  br label %56

56:                                               ; preds = %51, %55
  %57 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !93
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %58) #6
  br label %61

61:                                               ; preds = %56, %60, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_eh_catch_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_10eh_catch_d, i32 noundef 67) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !94
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #5
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #5
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %25) #5
  br label %28

28:                                               ; preds = %23, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_10eh_catch_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  br label %11

11:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_16eh_landing_pad_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_rtx_def(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_7rtx_def, i32 noundef 164) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %1260, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !48
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = zext i8 %10 to i64
  %14 = getelementptr inbounds i8, ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %4, %12
  %17 = phi ptr [ %15, %12 ], [ null, %4 ]
  %18 = tail call i32 @gt_pch_note_object(ptr noundef %17, ptr noundef %17, ptr noundef nonnull @gt_pch_p_7rtx_def, i32 noundef 164) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %4, !llvm.loop !471

20:                                               ; preds = %16
  %21 = icmp eq ptr %17, %0
  br i1 %21, label %42, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 7
  br i1 %26, label %27, label %42

27:                                               ; preds = %22, %36
  %28 = phi ptr [ %30, %36 ], [ %0, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, %28
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %30, ptr noundef nonnull %30, ptr noundef nonnull @gt_pch_p_7rtx_def, i32 noundef 164) #5
  %38 = load i32, ptr %30, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 7
  br i1 %41, label %27, label %42

42:                                               ; preds = %32, %36, %27, %22, %20
  %43 = phi ptr [ %0, %20 ], [ %0, %22 ], [ %28, %32 ], [ %30, %36 ], [ %28, %27 ]
  %44 = icmp eq ptr %43, %17
  br i1 %44, label %1260, label %45

45:                                               ; preds = %42, %1257
  %46 = phi ptr [ %1258, %1257 ], [ %43, %42 ]
  %47 = load i32, ptr %46, align 8
  %48 = trunc i32 %47 to i16
  switch i16 %48, label %1246 [
    i16 138, label %49
    i16 137, label %59
    i16 136, label %64
    i16 135, label %69
    i16 134, label %79
    i16 133, label %89
    i16 132, label %99
    i16 131, label %104
    i16 130, label %109
    i16 129, label %114
    i16 128, label %124
    i16 127, label %134
    i16 126, label %144
    i16 125, label %149
    i16 124, label %159
    i16 123, label %169
    i16 122, label %184
    i16 121, label %194
    i16 120, label %199
    i16 119, label %214
    i16 118, label %229
    i16 117, label %234
    i16 116, label %239
    i16 115, label %244
    i16 114, label %249
    i16 113, label %254
    i16 112, label %259
    i16 111, label %264
    i16 110, label %269
    i16 109, label %274
    i16 108, label %279
    i16 107, label %284
    i16 106, label %289
    i16 105, label %294
    i16 104, label %299
    i16 103, label %304
    i16 102, label %309
    i16 101, label %314
    i16 100, label %319
    i16 99, label %324
    i16 98, label %329
    i16 97, label %334
    i16 96, label %344
    i16 95, label %354
    i16 94, label %364
    i16 93, label %374
    i16 92, label %384
    i16 91, label %394
    i16 90, label %404
    i16 89, label %414
    i16 88, label %424
    i16 87, label %434
    i16 86, label %444
    i16 85, label %454
    i16 84, label %464
    i16 83, label %474
    i16 82, label %484
    i16 81, label %494
    i16 80, label %504
    i16 79, label %514
    i16 78, label %524
    i16 77, label %534
    i16 76, label %539
    i16 75, label %544
    i16 74, label %549
    i16 73, label %554
    i16 72, label %564
    i16 71, label %574
    i16 70, label %584
    i16 69, label %594
    i16 68, label %604
    i16 67, label %614
    i16 66, label %624
    i16 65, label %634
    i16 64, label %644
    i16 63, label %649
    i16 62, label %659
    i16 61, label %669
    i16 60, label %679
    i16 59, label %689
    i16 58, label %699
    i16 57, label %709
    i16 56, label %719
    i16 55, label %729
    i16 54, label %739
    i16 53, label %749
    i16 52, label %759
    i16 51, label %769
    i16 50, label %774
    i16 49, label %784
    i16 48, label %794
    i16 47, label %804
    i16 2, label %1241
    i16 45, label %819
    i16 44, label %844
    i16 43, label %849
    i16 42, label %859
    i16 41, label %864
    i16 40, label %874
    i16 39, label %879
    i16 3, label %1231
    i16 37, label %884
    i16 4, label %1221
    i16 35, label %889
    i16 34, label %894
    i16 33, label %897
    i16 5, label %1216
    i16 6, label %1211
    i16 7, label %1186
    i16 29, label %902
    i16 8, label %1161
    i16 9, label %1131
    i16 26, label %912
    i16 25, label %922
    i16 24, label %927
    i16 23, label %932
    i16 22, label %942
    i16 21, label %957
    i16 20, label %977
    i16 19, label %982
    i16 18, label %987
    i16 17, label %992
    i16 16, label %1012
    i16 15, label %1015
    i16 14, label %1020
    i16 13, label %1030
    i16 12, label %1069
    i16 11, label %1091
    i16 10, label %1101
  ]

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %49, %54
  %56 = load ptr, ptr %50, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %57, label %1246, label %58

58:                                               ; preds = %55
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %56) #5
  br label %1246

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !48
  %62 = icmp eq ptr %61, null
  br i1 %62, label %1246, label %63

63:                                               ; preds = %59
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %61) #6
  br label %1246

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = icmp eq ptr %66, null
  br i1 %67, label %1246, label %68

68:                                               ; preds = %64
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %66) #6
  br label %1246

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %71 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !48
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %72) #6
  br label %75

75:                                               ; preds = %69, %74
  %76 = load ptr, ptr %70, align 8, !tbaa !48
  %77 = icmp eq ptr %76, null
  br i1 %77, label %1246, label %78

78:                                               ; preds = %75
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %76) #6
  br label %1246

79:                                               ; preds = %45
  %80 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %81 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %82) #6
  br label %85

85:                                               ; preds = %79, %84
  %86 = load ptr, ptr %80, align 8, !tbaa !48
  %87 = icmp eq ptr %86, null
  br i1 %87, label %1246, label %88

88:                                               ; preds = %85
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %86) #6
  br label %1246

89:                                               ; preds = %45
  %90 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %91 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %92) #6
  br label %95

95:                                               ; preds = %89, %94
  %96 = load ptr, ptr %90, align 8, !tbaa !48
  %97 = icmp eq ptr %96, null
  br i1 %97, label %1246, label %98

98:                                               ; preds = %95
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %96) #6
  br label %1246

99:                                               ; preds = %45
  %100 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  %102 = icmp eq ptr %101, null
  br i1 %102, label %1246, label %103

103:                                              ; preds = %99
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %101) #6
  br label %1246

104:                                              ; preds = %45
  %105 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = icmp eq ptr %106, null
  br i1 %107, label %1246, label %108

108:                                              ; preds = %104
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %106) #6
  br label %1246

109:                                              ; preds = %45
  %110 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  %112 = icmp eq ptr %111, null
  br i1 %112, label %1246, label %113

113:                                              ; preds = %109
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %111) #6
  br label %1246

114:                                              ; preds = %45
  %115 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %116 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !48
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %117) #6
  br label %120

120:                                              ; preds = %114, %119
  %121 = load ptr, ptr %115, align 8, !tbaa !48
  %122 = icmp eq ptr %121, null
  br i1 %122, label %1246, label %123

123:                                              ; preds = %120
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %121) #6
  br label %1246

124:                                              ; preds = %45
  %125 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %126 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %127) #6
  br label %130

130:                                              ; preds = %124, %129
  %131 = load ptr, ptr %125, align 8, !tbaa !48
  %132 = icmp eq ptr %131, null
  br i1 %132, label %1246, label %133

133:                                              ; preds = %130
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %131) #6
  br label %1246

134:                                              ; preds = %45
  %135 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %136 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !48
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %137) #6
  br label %140

140:                                              ; preds = %134, %139
  %141 = load ptr, ptr %135, align 8, !tbaa !48
  %142 = icmp eq ptr %141, null
  br i1 %142, label %1246, label %143

143:                                              ; preds = %140
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %141) #6
  br label %1246

144:                                              ; preds = %45
  %145 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !48
  %147 = icmp eq ptr %146, null
  br i1 %147, label %1246, label %148

148:                                              ; preds = %144
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %146) #6
  br label %1246

149:                                              ; preds = %45
  %150 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %151 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !48
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %152) #6
  br label %155

155:                                              ; preds = %149, %154
  %156 = load ptr, ptr %150, align 8, !tbaa !48
  %157 = icmp eq ptr %156, null
  br i1 %157, label %1246, label %158

158:                                              ; preds = %155
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %156) #6
  br label %1246

159:                                              ; preds = %45
  %160 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %161 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !48
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %162) #6
  br label %165

165:                                              ; preds = %159, %164
  %166 = load ptr, ptr %160, align 8, !tbaa !48
  %167 = icmp eq ptr %166, null
  br i1 %167, label %1246, label %168

168:                                              ; preds = %165
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %166) #6
  br label %1246

169:                                              ; preds = %45
  %170 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %171 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %172 = load ptr, ptr %171, align 8, !tbaa !48
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %172) #6
  br label %175

175:                                              ; preds = %169, %174
  %176 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !48
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %177) #6
  br label %180

180:                                              ; preds = %175, %179
  %181 = load ptr, ptr %170, align 8, !tbaa !48
  %182 = icmp eq ptr %181, null
  br i1 %182, label %1246, label %183

183:                                              ; preds = %180
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %181) #6
  br label %1246

184:                                              ; preds = %45
  %185 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %186 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !48
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %187) #6
  br label %190

190:                                              ; preds = %184, %189
  %191 = load ptr, ptr %185, align 8, !tbaa !48
  %192 = icmp eq ptr %191, null
  br i1 %192, label %1246, label %193

193:                                              ; preds = %190
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %191) #6
  br label %1246

194:                                              ; preds = %45
  %195 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !48
  %197 = icmp eq ptr %196, null
  br i1 %197, label %1246, label %198

198:                                              ; preds = %194
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %196) #6
  br label %1246

199:                                              ; preds = %45
  %200 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %201 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %202 = load ptr, ptr %201, align 8, !tbaa !48
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %202) #6
  br label %205

205:                                              ; preds = %199, %204
  %206 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !48
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %207) #6
  br label %210

210:                                              ; preds = %205, %209
  %211 = load ptr, ptr %200, align 8, !tbaa !48
  %212 = icmp eq ptr %211, null
  br i1 %212, label %1246, label %213

213:                                              ; preds = %210
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %211) #6
  br label %1246

214:                                              ; preds = %45
  %215 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %216 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %214
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %217) #6
  br label %220

220:                                              ; preds = %214, %219
  %221 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !48
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %222) #6
  br label %225

225:                                              ; preds = %220, %224
  %226 = load ptr, ptr %215, align 8, !tbaa !48
  %227 = icmp eq ptr %226, null
  br i1 %227, label %1246, label %228

228:                                              ; preds = %225
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %226) #6
  br label %1246

229:                                              ; preds = %45
  %230 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !48
  %232 = icmp eq ptr %231, null
  br i1 %232, label %1246, label %233

233:                                              ; preds = %229
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %231) #6
  br label %1246

234:                                              ; preds = %45
  %235 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !48
  %237 = icmp eq ptr %236, null
  br i1 %237, label %1246, label %238

238:                                              ; preds = %234
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %236) #6
  br label %1246

239:                                              ; preds = %45
  %240 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !48
  %242 = icmp eq ptr %241, null
  br i1 %242, label %1246, label %243

243:                                              ; preds = %239
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %241) #6
  br label %1246

244:                                              ; preds = %45
  %245 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !48
  %247 = icmp eq ptr %246, null
  br i1 %247, label %1246, label %248

248:                                              ; preds = %244
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %246) #6
  br label %1246

249:                                              ; preds = %45
  %250 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !48
  %252 = icmp eq ptr %251, null
  br i1 %252, label %1246, label %253

253:                                              ; preds = %249
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %251) #6
  br label %1246

254:                                              ; preds = %45
  %255 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !48
  %257 = icmp eq ptr %256, null
  br i1 %257, label %1246, label %258

258:                                              ; preds = %254
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %256) #6
  br label %1246

259:                                              ; preds = %45
  %260 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !48
  %262 = icmp eq ptr %261, null
  br i1 %262, label %1246, label %263

263:                                              ; preds = %259
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %261) #6
  br label %1246

264:                                              ; preds = %45
  %265 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !48
  %267 = icmp eq ptr %266, null
  br i1 %267, label %1246, label %268

268:                                              ; preds = %264
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %266) #6
  br label %1246

269:                                              ; preds = %45
  %270 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !48
  %272 = icmp eq ptr %271, null
  br i1 %272, label %1246, label %273

273:                                              ; preds = %269
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %271) #6
  br label %1246

274:                                              ; preds = %45
  %275 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !48
  %277 = icmp eq ptr %276, null
  br i1 %277, label %1246, label %278

278:                                              ; preds = %274
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %276) #6
  br label %1246

279:                                              ; preds = %45
  %280 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !48
  %282 = icmp eq ptr %281, null
  br i1 %282, label %1246, label %283

283:                                              ; preds = %279
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %281) #6
  br label %1246

284:                                              ; preds = %45
  %285 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !48
  %287 = icmp eq ptr %286, null
  br i1 %287, label %1246, label %288

288:                                              ; preds = %284
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %286) #6
  br label %1246

289:                                              ; preds = %45
  %290 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !48
  %292 = icmp eq ptr %291, null
  br i1 %292, label %1246, label %293

293:                                              ; preds = %289
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %291) #6
  br label %1246

294:                                              ; preds = %45
  %295 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !48
  %297 = icmp eq ptr %296, null
  br i1 %297, label %1246, label %298

298:                                              ; preds = %294
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %296) #6
  br label %1246

299:                                              ; preds = %45
  %300 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !48
  %302 = icmp eq ptr %301, null
  br i1 %302, label %1246, label %303

303:                                              ; preds = %299
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %301) #6
  br label %1246

304:                                              ; preds = %45
  %305 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !48
  %307 = icmp eq ptr %306, null
  br i1 %307, label %1246, label %308

308:                                              ; preds = %304
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %306) #6
  br label %1246

309:                                              ; preds = %45
  %310 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !48
  %312 = icmp eq ptr %311, null
  br i1 %312, label %1246, label %313

313:                                              ; preds = %309
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %311) #6
  br label %1246

314:                                              ; preds = %45
  %315 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !48
  %317 = icmp eq ptr %316, null
  br i1 %317, label %1246, label %318

318:                                              ; preds = %314
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %316) #6
  br label %1246

319:                                              ; preds = %45
  %320 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !48
  %322 = icmp eq ptr %321, null
  br i1 %322, label %1246, label %323

323:                                              ; preds = %319
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %321) #6
  br label %1246

324:                                              ; preds = %45
  %325 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !48
  %327 = icmp eq ptr %326, null
  br i1 %327, label %1246, label %328

328:                                              ; preds = %324
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %326) #6
  br label %1246

329:                                              ; preds = %45
  %330 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !48
  %332 = icmp eq ptr %331, null
  br i1 %332, label %1246, label %333

333:                                              ; preds = %329
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %331) #6
  br label %1246

334:                                              ; preds = %45
  %335 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %336 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !48
  %338 = icmp eq ptr %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %334
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %337) #6
  br label %340

340:                                              ; preds = %334, %339
  %341 = load ptr, ptr %335, align 8, !tbaa !48
  %342 = icmp eq ptr %341, null
  br i1 %342, label %1246, label %343

343:                                              ; preds = %340
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %341) #6
  br label %1246

344:                                              ; preds = %45
  %345 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %346 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !48
  %348 = icmp eq ptr %347, null
  br i1 %348, label %350, label %349

349:                                              ; preds = %344
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %347) #6
  br label %350

350:                                              ; preds = %344, %349
  %351 = load ptr, ptr %345, align 8, !tbaa !48
  %352 = icmp eq ptr %351, null
  br i1 %352, label %1246, label %353

353:                                              ; preds = %350
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %351) #6
  br label %1246

354:                                              ; preds = %45
  %355 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %356 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !48
  %358 = icmp eq ptr %357, null
  br i1 %358, label %360, label %359

359:                                              ; preds = %354
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %357) #6
  br label %360

360:                                              ; preds = %354, %359
  %361 = load ptr, ptr %355, align 8, !tbaa !48
  %362 = icmp eq ptr %361, null
  br i1 %362, label %1246, label %363

363:                                              ; preds = %360
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %361) #6
  br label %1246

364:                                              ; preds = %45
  %365 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %366 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %367 = load ptr, ptr %366, align 8, !tbaa !48
  %368 = icmp eq ptr %367, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %367) #6
  br label %370

370:                                              ; preds = %364, %369
  %371 = load ptr, ptr %365, align 8, !tbaa !48
  %372 = icmp eq ptr %371, null
  br i1 %372, label %1246, label %373

373:                                              ; preds = %370
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %371) #6
  br label %1246

374:                                              ; preds = %45
  %375 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %376 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %377 = load ptr, ptr %376, align 8, !tbaa !48
  %378 = icmp eq ptr %377, null
  br i1 %378, label %380, label %379

379:                                              ; preds = %374
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %377) #6
  br label %380

380:                                              ; preds = %374, %379
  %381 = load ptr, ptr %375, align 8, !tbaa !48
  %382 = icmp eq ptr %381, null
  br i1 %382, label %1246, label %383

383:                                              ; preds = %380
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %381) #6
  br label %1246

384:                                              ; preds = %45
  %385 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %386 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %387 = load ptr, ptr %386, align 8, !tbaa !48
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %384
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %387) #6
  br label %390

390:                                              ; preds = %384, %389
  %391 = load ptr, ptr %385, align 8, !tbaa !48
  %392 = icmp eq ptr %391, null
  br i1 %392, label %1246, label %393

393:                                              ; preds = %390
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %391) #6
  br label %1246

394:                                              ; preds = %45
  %395 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %396 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !48
  %398 = icmp eq ptr %397, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %394
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %397) #6
  br label %400

400:                                              ; preds = %394, %399
  %401 = load ptr, ptr %395, align 8, !tbaa !48
  %402 = icmp eq ptr %401, null
  br i1 %402, label %1246, label %403

403:                                              ; preds = %400
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %401) #6
  br label %1246

404:                                              ; preds = %45
  %405 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %406 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !48
  %408 = icmp eq ptr %407, null
  br i1 %408, label %410, label %409

409:                                              ; preds = %404
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %407) #6
  br label %410

410:                                              ; preds = %404, %409
  %411 = load ptr, ptr %405, align 8, !tbaa !48
  %412 = icmp eq ptr %411, null
  br i1 %412, label %1246, label %413

413:                                              ; preds = %410
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %411) #6
  br label %1246

414:                                              ; preds = %45
  %415 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %416 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %417 = load ptr, ptr %416, align 8, !tbaa !48
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419

419:                                              ; preds = %414
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %417) #6
  br label %420

420:                                              ; preds = %414, %419
  %421 = load ptr, ptr %415, align 8, !tbaa !48
  %422 = icmp eq ptr %421, null
  br i1 %422, label %1246, label %423

423:                                              ; preds = %420
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %421) #6
  br label %1246

424:                                              ; preds = %45
  %425 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %426 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %427 = load ptr, ptr %426, align 8, !tbaa !48
  %428 = icmp eq ptr %427, null
  br i1 %428, label %430, label %429

429:                                              ; preds = %424
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %427) #6
  br label %430

430:                                              ; preds = %424, %429
  %431 = load ptr, ptr %425, align 8, !tbaa !48
  %432 = icmp eq ptr %431, null
  br i1 %432, label %1246, label %433

433:                                              ; preds = %430
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %431) #6
  br label %1246

434:                                              ; preds = %45
  %435 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %436 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !48
  %438 = icmp eq ptr %437, null
  br i1 %438, label %440, label %439

439:                                              ; preds = %434
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %437) #6
  br label %440

440:                                              ; preds = %434, %439
  %441 = load ptr, ptr %435, align 8, !tbaa !48
  %442 = icmp eq ptr %441, null
  br i1 %442, label %1246, label %443

443:                                              ; preds = %440
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %441) #6
  br label %1246

444:                                              ; preds = %45
  %445 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %446 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %447 = load ptr, ptr %446, align 8, !tbaa !48
  %448 = icmp eq ptr %447, null
  br i1 %448, label %450, label %449

449:                                              ; preds = %444
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %447) #6
  br label %450

450:                                              ; preds = %444, %449
  %451 = load ptr, ptr %445, align 8, !tbaa !48
  %452 = icmp eq ptr %451, null
  br i1 %452, label %1246, label %453

453:                                              ; preds = %450
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %451) #6
  br label %1246

454:                                              ; preds = %45
  %455 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %456 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %457 = load ptr, ptr %456, align 8, !tbaa !48
  %458 = icmp eq ptr %457, null
  br i1 %458, label %460, label %459

459:                                              ; preds = %454
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %457) #6
  br label %460

460:                                              ; preds = %454, %459
  %461 = load ptr, ptr %455, align 8, !tbaa !48
  %462 = icmp eq ptr %461, null
  br i1 %462, label %1246, label %463

463:                                              ; preds = %460
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %461) #6
  br label %1246

464:                                              ; preds = %45
  %465 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %466 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !48
  %468 = icmp eq ptr %467, null
  br i1 %468, label %470, label %469

469:                                              ; preds = %464
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %467) #6
  br label %470

470:                                              ; preds = %464, %469
  %471 = load ptr, ptr %465, align 8, !tbaa !48
  %472 = icmp eq ptr %471, null
  br i1 %472, label %1246, label %473

473:                                              ; preds = %470
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %471) #6
  br label %1246

474:                                              ; preds = %45
  %475 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %476 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %477 = load ptr, ptr %476, align 8, !tbaa !48
  %478 = icmp eq ptr %477, null
  br i1 %478, label %480, label %479

479:                                              ; preds = %474
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %477) #6
  br label %480

480:                                              ; preds = %474, %479
  %481 = load ptr, ptr %475, align 8, !tbaa !48
  %482 = icmp eq ptr %481, null
  br i1 %482, label %1246, label %483

483:                                              ; preds = %480
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %481) #6
  br label %1246

484:                                              ; preds = %45
  %485 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %486 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %487 = load ptr, ptr %486, align 8, !tbaa !48
  %488 = icmp eq ptr %487, null
  br i1 %488, label %490, label %489

489:                                              ; preds = %484
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %487) #6
  br label %490

490:                                              ; preds = %484, %489
  %491 = load ptr, ptr %485, align 8, !tbaa !48
  %492 = icmp eq ptr %491, null
  br i1 %492, label %1246, label %493

493:                                              ; preds = %490
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %491) #6
  br label %1246

494:                                              ; preds = %45
  %495 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %496 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %497 = load ptr, ptr %496, align 8, !tbaa !48
  %498 = icmp eq ptr %497, null
  br i1 %498, label %500, label %499

499:                                              ; preds = %494
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %497) #6
  br label %500

500:                                              ; preds = %494, %499
  %501 = load ptr, ptr %495, align 8, !tbaa !48
  %502 = icmp eq ptr %501, null
  br i1 %502, label %1246, label %503

503:                                              ; preds = %500
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %501) #6
  br label %1246

504:                                              ; preds = %45
  %505 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %506 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %507 = load ptr, ptr %506, align 8, !tbaa !48
  %508 = icmp eq ptr %507, null
  br i1 %508, label %510, label %509

509:                                              ; preds = %504
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %507) #6
  br label %510

510:                                              ; preds = %504, %509
  %511 = load ptr, ptr %505, align 8, !tbaa !48
  %512 = icmp eq ptr %511, null
  br i1 %512, label %1246, label %513

513:                                              ; preds = %510
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %511) #6
  br label %1246

514:                                              ; preds = %45
  %515 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %516 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %517 = load ptr, ptr %516, align 8, !tbaa !48
  %518 = icmp eq ptr %517, null
  br i1 %518, label %520, label %519

519:                                              ; preds = %514
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %517) #6
  br label %520

520:                                              ; preds = %514, %519
  %521 = load ptr, ptr %515, align 8, !tbaa !48
  %522 = icmp eq ptr %521, null
  br i1 %522, label %1246, label %523

523:                                              ; preds = %520
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %521) #6
  br label %1246

524:                                              ; preds = %45
  %525 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %526 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %527 = load ptr, ptr %526, align 8, !tbaa !48
  %528 = icmp eq ptr %527, null
  br i1 %528, label %530, label %529

529:                                              ; preds = %524
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %527) #6
  br label %530

530:                                              ; preds = %524, %529
  %531 = load ptr, ptr %525, align 8, !tbaa !48
  %532 = icmp eq ptr %531, null
  br i1 %532, label %1246, label %533

533:                                              ; preds = %530
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %531) #6
  br label %1246

534:                                              ; preds = %45
  %535 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !48
  %537 = icmp eq ptr %536, null
  br i1 %537, label %1246, label %538

538:                                              ; preds = %534
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %536) #6
  br label %1246

539:                                              ; preds = %45
  %540 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !48
  %542 = icmp eq ptr %541, null
  br i1 %542, label %1246, label %543

543:                                              ; preds = %539
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %541) #6
  br label %1246

544:                                              ; preds = %45
  %545 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !48
  %547 = icmp eq ptr %546, null
  br i1 %547, label %1246, label %548

548:                                              ; preds = %544
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %546) #6
  br label %1246

549:                                              ; preds = %45
  %550 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !48
  %552 = icmp eq ptr %551, null
  br i1 %552, label %1246, label %553

553:                                              ; preds = %549
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %551) #6
  br label %1246

554:                                              ; preds = %45
  %555 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %556 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %557 = load ptr, ptr %556, align 8, !tbaa !48
  %558 = icmp eq ptr %557, null
  br i1 %558, label %560, label %559

559:                                              ; preds = %554
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %557) #6
  br label %560

560:                                              ; preds = %554, %559
  %561 = load ptr, ptr %555, align 8, !tbaa !48
  %562 = icmp eq ptr %561, null
  br i1 %562, label %1246, label %563

563:                                              ; preds = %560
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %561) #6
  br label %1246

564:                                              ; preds = %45
  %565 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %566 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %567 = load ptr, ptr %566, align 8, !tbaa !48
  %568 = icmp eq ptr %567, null
  br i1 %568, label %570, label %569

569:                                              ; preds = %564
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %567) #6
  br label %570

570:                                              ; preds = %564, %569
  %571 = load ptr, ptr %565, align 8, !tbaa !48
  %572 = icmp eq ptr %571, null
  br i1 %572, label %1246, label %573

573:                                              ; preds = %570
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %571) #6
  br label %1246

574:                                              ; preds = %45
  %575 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %576 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %577 = load ptr, ptr %576, align 8, !tbaa !48
  %578 = icmp eq ptr %577, null
  br i1 %578, label %580, label %579

579:                                              ; preds = %574
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %577) #6
  br label %580

580:                                              ; preds = %574, %579
  %581 = load ptr, ptr %575, align 8, !tbaa !48
  %582 = icmp eq ptr %581, null
  br i1 %582, label %1246, label %583

583:                                              ; preds = %580
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %581) #6
  br label %1246

584:                                              ; preds = %45
  %585 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %586 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %587 = load ptr, ptr %586, align 8, !tbaa !48
  %588 = icmp eq ptr %587, null
  br i1 %588, label %590, label %589

589:                                              ; preds = %584
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %587) #6
  br label %590

590:                                              ; preds = %584, %589
  %591 = load ptr, ptr %585, align 8, !tbaa !48
  %592 = icmp eq ptr %591, null
  br i1 %592, label %1246, label %593

593:                                              ; preds = %590
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %591) #6
  br label %1246

594:                                              ; preds = %45
  %595 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %596 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %597 = load ptr, ptr %596, align 8, !tbaa !48
  %598 = icmp eq ptr %597, null
  br i1 %598, label %600, label %599

599:                                              ; preds = %594
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %597) #6
  br label %600

600:                                              ; preds = %594, %599
  %601 = load ptr, ptr %595, align 8, !tbaa !48
  %602 = icmp eq ptr %601, null
  br i1 %602, label %1246, label %603

603:                                              ; preds = %600
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %601) #6
  br label %1246

604:                                              ; preds = %45
  %605 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %606 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !48
  %608 = icmp eq ptr %607, null
  br i1 %608, label %610, label %609

609:                                              ; preds = %604
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %607) #6
  br label %610

610:                                              ; preds = %604, %609
  %611 = load ptr, ptr %605, align 8, !tbaa !48
  %612 = icmp eq ptr %611, null
  br i1 %612, label %1246, label %613

613:                                              ; preds = %610
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %611) #6
  br label %1246

614:                                              ; preds = %45
  %615 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %616 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %617 = load ptr, ptr %616, align 8, !tbaa !48
  %618 = icmp eq ptr %617, null
  br i1 %618, label %620, label %619

619:                                              ; preds = %614
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %617) #6
  br label %620

620:                                              ; preds = %614, %619
  %621 = load ptr, ptr %615, align 8, !tbaa !48
  %622 = icmp eq ptr %621, null
  br i1 %622, label %1246, label %623

623:                                              ; preds = %620
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %621) #6
  br label %1246

624:                                              ; preds = %45
  %625 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %626 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %627 = load ptr, ptr %626, align 8, !tbaa !48
  %628 = icmp eq ptr %627, null
  br i1 %628, label %630, label %629

629:                                              ; preds = %624
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %627) #6
  br label %630

630:                                              ; preds = %624, %629
  %631 = load ptr, ptr %625, align 8, !tbaa !48
  %632 = icmp eq ptr %631, null
  br i1 %632, label %1246, label %633

633:                                              ; preds = %630
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %631) #6
  br label %1246

634:                                              ; preds = %45
  %635 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %636 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %637 = load ptr, ptr %636, align 8, !tbaa !48
  %638 = icmp eq ptr %637, null
  br i1 %638, label %640, label %639

639:                                              ; preds = %634
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %637) #6
  br label %640

640:                                              ; preds = %634, %639
  %641 = load ptr, ptr %635, align 8, !tbaa !48
  %642 = icmp eq ptr %641, null
  br i1 %642, label %1246, label %643

643:                                              ; preds = %640
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %641) #6
  br label %1246

644:                                              ; preds = %45
  %645 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !48
  %647 = icmp eq ptr %646, null
  br i1 %647, label %1246, label %648

648:                                              ; preds = %644
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %646) #6
  br label %1246

649:                                              ; preds = %45
  %650 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %651 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %652 = load ptr, ptr %651, align 8, !tbaa !48
  %653 = icmp eq ptr %652, null
  br i1 %653, label %655, label %654

654:                                              ; preds = %649
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %652) #6
  br label %655

655:                                              ; preds = %649, %654
  %656 = load ptr, ptr %650, align 8, !tbaa !48
  %657 = icmp eq ptr %656, null
  br i1 %657, label %1246, label %658

658:                                              ; preds = %655
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %656) #6
  br label %1246

659:                                              ; preds = %45
  %660 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %661 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %662 = load ptr, ptr %661, align 8, !tbaa !48
  %663 = icmp eq ptr %662, null
  br i1 %663, label %665, label %664

664:                                              ; preds = %659
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %662) #6
  br label %665

665:                                              ; preds = %659, %664
  %666 = load ptr, ptr %660, align 8, !tbaa !48
  %667 = icmp eq ptr %666, null
  br i1 %667, label %1246, label %668

668:                                              ; preds = %665
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %666) #6
  br label %1246

669:                                              ; preds = %45
  %670 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %671 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %672 = load ptr, ptr %671, align 8, !tbaa !48
  %673 = icmp eq ptr %672, null
  br i1 %673, label %675, label %674

674:                                              ; preds = %669
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %672) #6
  br label %675

675:                                              ; preds = %669, %674
  %676 = load ptr, ptr %670, align 8, !tbaa !48
  %677 = icmp eq ptr %676, null
  br i1 %677, label %1246, label %678

678:                                              ; preds = %675
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %676) #6
  br label %1246

679:                                              ; preds = %45
  %680 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %681 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %682 = load ptr, ptr %681, align 8, !tbaa !48
  %683 = icmp eq ptr %682, null
  br i1 %683, label %685, label %684

684:                                              ; preds = %679
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %682) #6
  br label %685

685:                                              ; preds = %679, %684
  %686 = load ptr, ptr %680, align 8, !tbaa !48
  %687 = icmp eq ptr %686, null
  br i1 %687, label %1246, label %688

688:                                              ; preds = %685
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %686) #6
  br label %1246

689:                                              ; preds = %45
  %690 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %691 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %692 = load ptr, ptr %691, align 8, !tbaa !48
  %693 = icmp eq ptr %692, null
  br i1 %693, label %695, label %694

694:                                              ; preds = %689
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %692) #6
  br label %695

695:                                              ; preds = %689, %694
  %696 = load ptr, ptr %690, align 8, !tbaa !48
  %697 = icmp eq ptr %696, null
  br i1 %697, label %1246, label %698

698:                                              ; preds = %695
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %696) #6
  br label %1246

699:                                              ; preds = %45
  %700 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %701 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %702 = load ptr, ptr %701, align 8, !tbaa !48
  %703 = icmp eq ptr %702, null
  br i1 %703, label %705, label %704

704:                                              ; preds = %699
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %702) #6
  br label %705

705:                                              ; preds = %699, %704
  %706 = load ptr, ptr %700, align 8, !tbaa !48
  %707 = icmp eq ptr %706, null
  br i1 %707, label %1246, label %708

708:                                              ; preds = %705
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %706) #6
  br label %1246

709:                                              ; preds = %45
  %710 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %711 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %712 = load ptr, ptr %711, align 8, !tbaa !48
  %713 = icmp eq ptr %712, null
  br i1 %713, label %715, label %714

714:                                              ; preds = %709
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %712) #6
  br label %715

715:                                              ; preds = %709, %714
  %716 = load ptr, ptr %710, align 8, !tbaa !48
  %717 = icmp eq ptr %716, null
  br i1 %717, label %1246, label %718

718:                                              ; preds = %715
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %716) #6
  br label %1246

719:                                              ; preds = %45
  %720 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %721 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %722 = load ptr, ptr %721, align 8, !tbaa !48
  %723 = icmp eq ptr %722, null
  br i1 %723, label %725, label %724

724:                                              ; preds = %719
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %722) #6
  br label %725

725:                                              ; preds = %719, %724
  %726 = load ptr, ptr %720, align 8, !tbaa !48
  %727 = icmp eq ptr %726, null
  br i1 %727, label %1246, label %728

728:                                              ; preds = %725
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %726) #6
  br label %1246

729:                                              ; preds = %45
  %730 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %731 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %732 = load ptr, ptr %731, align 8, !tbaa !48
  %733 = icmp eq ptr %732, null
  br i1 %733, label %735, label %734

734:                                              ; preds = %729
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %732) #6
  br label %735

735:                                              ; preds = %729, %734
  %736 = load ptr, ptr %730, align 8, !tbaa !48
  %737 = icmp eq ptr %736, null
  br i1 %737, label %1246, label %738

738:                                              ; preds = %735
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %736) #6
  br label %1246

739:                                              ; preds = %45
  %740 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %741 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %742 = load ptr, ptr %741, align 8, !tbaa !48
  %743 = icmp eq ptr %742, null
  br i1 %743, label %745, label %744

744:                                              ; preds = %739
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %742) #6
  br label %745

745:                                              ; preds = %739, %744
  %746 = load ptr, ptr %740, align 8, !tbaa !48
  %747 = icmp eq ptr %746, null
  br i1 %747, label %1246, label %748

748:                                              ; preds = %745
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %746) #6
  br label %1246

749:                                              ; preds = %45
  %750 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %751 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %752 = load ptr, ptr %751, align 8, !tbaa !48
  %753 = icmp eq ptr %752, null
  br i1 %753, label %755, label %754

754:                                              ; preds = %749
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %752) #6
  br label %755

755:                                              ; preds = %749, %754
  %756 = load ptr, ptr %750, align 8, !tbaa !48
  %757 = icmp eq ptr %756, null
  br i1 %757, label %1246, label %758

758:                                              ; preds = %755
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %756) #6
  br label %1246

759:                                              ; preds = %45
  %760 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %761 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %762 = load ptr, ptr %761, align 8, !tbaa !48
  %763 = icmp eq ptr %762, null
  br i1 %763, label %765, label %764

764:                                              ; preds = %759
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %762) #6
  br label %765

765:                                              ; preds = %759, %764
  %766 = load ptr, ptr %760, align 8, !tbaa !48
  %767 = icmp eq ptr %766, null
  br i1 %767, label %1246, label %768

768:                                              ; preds = %765
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %766) #6
  br label %1246

769:                                              ; preds = %45
  %770 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !48
  %772 = icmp eq ptr %771, null
  br i1 %772, label %1246, label %773

773:                                              ; preds = %769
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %771) #6
  br label %1246

774:                                              ; preds = %45
  %775 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %776 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %777 = load ptr, ptr %776, align 8, !tbaa !48
  %778 = icmp eq ptr %777, null
  br i1 %778, label %780, label %779

779:                                              ; preds = %774
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %777) #6
  br label %780

780:                                              ; preds = %774, %779
  %781 = load ptr, ptr %775, align 8, !tbaa !48
  %782 = icmp eq ptr %781, null
  br i1 %782, label %1246, label %783

783:                                              ; preds = %780
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %781) #6
  br label %1246

784:                                              ; preds = %45
  %785 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %786 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %787 = load ptr, ptr %786, align 8, !tbaa !48
  %788 = icmp eq ptr %787, null
  br i1 %788, label %790, label %789

789:                                              ; preds = %784
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %787) #6
  br label %790

790:                                              ; preds = %784, %789
  %791 = load ptr, ptr %785, align 8, !tbaa !48
  %792 = icmp eq ptr %791, null
  br i1 %792, label %1246, label %793

793:                                              ; preds = %790
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %791) #6
  br label %1246

794:                                              ; preds = %45
  %795 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %796 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %797 = load ptr, ptr %796, align 8, !tbaa !48
  %798 = icmp eq ptr %797, null
  br i1 %798, label %800, label %799

799:                                              ; preds = %794
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %797) #6
  br label %800

800:                                              ; preds = %794, %799
  %801 = load ptr, ptr %795, align 8, !tbaa !48
  %802 = icmp eq ptr %801, null
  br i1 %802, label %1246, label %803

803:                                              ; preds = %800
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %801) #6
  br label %1246

804:                                              ; preds = %45
  %805 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %806 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %807 = load ptr, ptr %806, align 8, !tbaa !48
  %808 = icmp eq ptr %807, null
  br i1 %808, label %810, label %809

809:                                              ; preds = %804
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %807) #6
  br label %810

810:                                              ; preds = %804, %809
  %811 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %812 = load ptr, ptr %811, align 8, !tbaa !48
  %813 = icmp eq ptr %812, null
  br i1 %813, label %815, label %814

814:                                              ; preds = %810
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %812) #6
  br label %815

815:                                              ; preds = %810, %814
  %816 = load ptr, ptr %805, align 8, !tbaa !48
  %817 = icmp eq ptr %816, null
  br i1 %817, label %1246, label %818

818:                                              ; preds = %815
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %816) #6
  br label %1246

819:                                              ; preds = %45
  %820 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %821 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %822 = load i32, ptr %821, align 8, !tbaa !48
  %823 = and i32 %822, 128
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %831, label %825

825:                                              ; preds = %819
  %826 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %827 = load ptr, ptr %826, align 8, !tbaa !48
  %828 = icmp eq ptr %827, null
  br i1 %828, label %831, label %829

829:                                              ; preds = %825
  tail call void @gt_pch_nx_object_block(ptr noundef nonnull %827) #6
  %830 = load i32, ptr %46, align 8
  br label %831

831:                                              ; preds = %819, %825, %829
  %832 = phi i32 [ %47, %819 ], [ %47, %825 ], [ %830, %829 ]
  %833 = and i32 %832, 67108864
  %834 = icmp eq i32 %833, 0
  %835 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %836 = load ptr, ptr %835, align 8, !tbaa !48
  %837 = icmp eq ptr %836, null
  br i1 %834, label %840, label %838

838:                                              ; preds = %831
  br i1 %837, label %842, label %839

839:                                              ; preds = %838
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %836) #5
  br label %842

840:                                              ; preds = %831
  br i1 %837, label %842, label %841

841:                                              ; preds = %840
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %836) #5
  br label %842

842:                                              ; preds = %840, %841, %838, %839
  %843 = load ptr, ptr %820, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %843) #5
  br label %1246

844:                                              ; preds = %45
  %845 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %846 = load ptr, ptr %845, align 8, !tbaa !48
  %847 = icmp eq ptr %846, null
  br i1 %847, label %1246, label %848

848:                                              ; preds = %844
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %846) #6
  br label %1246

849:                                              ; preds = %45
  %850 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %851 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %852 = load ptr, ptr %851, align 8, !tbaa !48
  %853 = icmp eq ptr %852, null
  br i1 %853, label %855, label %854

854:                                              ; preds = %849
  tail call void @gt_pch_nx_mem_attrs(ptr noundef nonnull %852) #6
  br label %855

855:                                              ; preds = %849, %854
  %856 = load ptr, ptr %850, align 8, !tbaa !48
  %857 = icmp eq ptr %856, null
  br i1 %857, label %1246, label %858

858:                                              ; preds = %855
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %856) #6
  br label %1246

859:                                              ; preds = %45
  %860 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %861 = load ptr, ptr %860, align 8, !tbaa !48
  %862 = icmp eq ptr %861, null
  br i1 %862, label %1246, label %863

863:                                              ; preds = %859
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %861) #6
  br label %1246

864:                                              ; preds = %45
  %865 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %866 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %867 = load ptr, ptr %866, align 8, !tbaa !48
  %868 = icmp eq ptr %867, null
  br i1 %868, label %870, label %869

869:                                              ; preds = %864
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %867) #6
  br label %870

870:                                              ; preds = %864, %869
  %871 = load ptr, ptr %865, align 8, !tbaa !48
  %872 = icmp eq ptr %871, null
  br i1 %872, label %1246, label %873

873:                                              ; preds = %870
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %871) #6
  br label %1246

874:                                              ; preds = %45
  %875 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %876 = load ptr, ptr %875, align 8, !tbaa !48
  %877 = icmp eq ptr %876, null
  br i1 %877, label %1246, label %878

878:                                              ; preds = %874
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %876) #6
  br label %1246

879:                                              ; preds = %45
  %880 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %881 = load ptr, ptr %880, align 8, !tbaa !48
  %882 = icmp eq ptr %881, null
  br i1 %882, label %1246, label %883

883:                                              ; preds = %879
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %881) #6
  br label %1246

884:                                              ; preds = %45
  %885 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %886 = load ptr, ptr %885, align 8, !tbaa !48
  %887 = icmp eq ptr %886, null
  br i1 %887, label %1246, label %888

888:                                              ; preds = %884
  tail call void @gt_pch_nx_reg_attrs(ptr noundef nonnull %886) #6
  br label %1246

889:                                              ; preds = %45
  %890 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %891 = load ptr, ptr %890, align 8, !tbaa !48
  %892 = icmp eq ptr %891, null
  br i1 %892, label %1246, label %893

893:                                              ; preds = %889
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %891) #6
  br label %1246

894:                                              ; preds = %45
  %895 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %896 = load ptr, ptr %895, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %896) #5
  br label %1246

897:                                              ; preds = %45
  %898 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %899 = load ptr, ptr %898, align 8, !tbaa !48
  %900 = icmp eq ptr %899, null
  br i1 %900, label %1246, label %901

901:                                              ; preds = %897
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %899) #6
  br label %1246

902:                                              ; preds = %45
  %903 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %904 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %905 = load ptr, ptr %904, align 8, !tbaa !48
  %906 = icmp eq ptr %905, null
  br i1 %906, label %908, label %907

907:                                              ; preds = %902
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %905) #6
  br label %908

908:                                              ; preds = %902, %907
  %909 = load ptr, ptr %903, align 8, !tbaa !48
  %910 = icmp eq ptr %909, null
  br i1 %910, label %1246, label %911

911:                                              ; preds = %908
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %909) #6
  br label %1246

912:                                              ; preds = %45
  %913 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %914 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %915 = load ptr, ptr %914, align 8, !tbaa !48
  %916 = icmp eq ptr %915, null
  br i1 %916, label %918, label %917

917:                                              ; preds = %912
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %915) #6
  br label %918

918:                                              ; preds = %912, %917
  %919 = load ptr, ptr %913, align 8, !tbaa !48
  %920 = icmp eq ptr %919, null
  br i1 %920, label %1246, label %921

921:                                              ; preds = %918
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %919) #6
  br label %1246

922:                                              ; preds = %45
  %923 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %924 = load ptr, ptr %923, align 8, !tbaa !48
  %925 = icmp eq ptr %924, null
  br i1 %925, label %1246, label %926

926:                                              ; preds = %922
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %924) #6
  br label %1246

927:                                              ; preds = %45
  %928 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %929 = load ptr, ptr %928, align 8, !tbaa !48
  %930 = icmp eq ptr %929, null
  br i1 %930, label %1246, label %931

931:                                              ; preds = %927
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %929) #6
  br label %1246

932:                                              ; preds = %45
  %933 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %934 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %935 = load ptr, ptr %934, align 8, !tbaa !48
  %936 = icmp eq ptr %935, null
  br i1 %936, label %938, label %937

937:                                              ; preds = %932
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %935) #6
  br label %938

938:                                              ; preds = %932, %937
  %939 = load ptr, ptr %933, align 8, !tbaa !48
  %940 = icmp eq ptr %939, null
  br i1 %940, label %1246, label %941

941:                                              ; preds = %938
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %939) #6
  br label %1246

942:                                              ; preds = %45
  %943 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %944 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %945 = load ptr, ptr %944, align 8, !tbaa !48
  %946 = icmp eq ptr %945, null
  br i1 %946, label %948, label %947

947:                                              ; preds = %942
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %945) #6
  br label %948

948:                                              ; preds = %942, %947
  %949 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %950 = load ptr, ptr %949, align 8, !tbaa !48
  %951 = icmp eq ptr %950, null
  br i1 %951, label %953, label %952

952:                                              ; preds = %948
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %950) #6
  br label %953

953:                                              ; preds = %948, %952
  %954 = load ptr, ptr %943, align 8, !tbaa !48
  %955 = icmp eq ptr %954, null
  br i1 %955, label %1246, label %956

956:                                              ; preds = %953
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %954) #6
  br label %1246

957:                                              ; preds = %45
  %958 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %959 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %960 = load ptr, ptr %959, align 8, !tbaa !48
  %961 = icmp eq ptr %960, null
  br i1 %961, label %963, label %962

962:                                              ; preds = %957
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %960) #6
  br label %963

963:                                              ; preds = %957, %962
  %964 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %965 = load ptr, ptr %964, align 8, !tbaa !48
  %966 = icmp eq ptr %965, null
  br i1 %966, label %968, label %967

967:                                              ; preds = %963
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %965) #6
  br label %968

968:                                              ; preds = %963, %967
  %969 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %970 = load ptr, ptr %969, align 8, !tbaa !48
  %971 = icmp eq ptr %970, null
  br i1 %971, label %973, label %972

972:                                              ; preds = %968
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %970) #6
  br label %973

973:                                              ; preds = %968, %972
  %974 = load ptr, ptr %958, align 8, !tbaa !48
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1246, label %976

976:                                              ; preds = %973
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %974) #6
  br label %1246

977:                                              ; preds = %45
  %978 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %979 = load ptr, ptr %978, align 8, !tbaa !48
  %980 = icmp eq ptr %979, null
  br i1 %980, label %1246, label %981

981:                                              ; preds = %977
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %979) #6
  br label %1246

982:                                              ; preds = %45
  %983 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %984 = load ptr, ptr %983, align 8, !tbaa !48
  %985 = icmp eq ptr %984, null
  br i1 %985, label %1246, label %986

986:                                              ; preds = %982
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %984) #6
  br label %1246

987:                                              ; preds = %45
  %988 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %989 = load ptr, ptr %988, align 8, !tbaa !48
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1246, label %991

991:                                              ; preds = %987
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %989) #6
  br label %1246

992:                                              ; preds = %45
  %993 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %994 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %995 = load ptr, ptr %994, align 8, !tbaa !48
  %996 = icmp eq ptr %995, null
  br i1 %996, label %998, label %997

997:                                              ; preds = %992
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %995) #6
  br label %998

998:                                              ; preds = %992, %997
  %999 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %1000 = load ptr, ptr %999, align 8, !tbaa !48
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1003, label %1002

1002:                                             ; preds = %998
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1000) #6
  br label %1003

1003:                                             ; preds = %998, %1002
  %1004 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1005 = load ptr, ptr %1004, align 8, !tbaa !48
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %1008, label %1007

1007:                                             ; preds = %1003
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1005) #6
  br label %1008

1008:                                             ; preds = %1007, %1003
  %1009 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1010 = load ptr, ptr %1009, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %1010) #5
  %1011 = load ptr, ptr %993, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %1011) #5
  br label %1246

1012:                                             ; preds = %45
  %1013 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1014 = load ptr, ptr %1013, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %1014) #5
  br label %1246

1015:                                             ; preds = %45
  %1016 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1017 = load ptr, ptr %1016, align 8, !tbaa !48
  %1018 = icmp eq ptr %1017, null
  br i1 %1018, label %1246, label %1019

1019:                                             ; preds = %1015
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1017) #6
  br label %1246

1020:                                             ; preds = %45
  %1021 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1022 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1023 = load ptr, ptr %1022, align 8, !tbaa !48
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1026, label %1025

1025:                                             ; preds = %1020
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1023) #6
  br label %1026

1026:                                             ; preds = %1020, %1025
  %1027 = load ptr, ptr %1021, align 8, !tbaa !48
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1246, label %1029

1029:                                             ; preds = %1026
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1027) #6
  br label %1246

1030:                                             ; preds = %45
  %1031 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %1032 = load i32, ptr %1031, align 8, !tbaa !48
  switch i32 %1032, label %1033 [
    i32 12, label %1054
    i32 11, label %1054
    i32 10, label %1054
    i32 9, label %1036
    i32 8, label %1054
    i32 7, label %1054
    i32 6, label %1054
    i32 5, label %1054
    i32 4, label %1054
    i32 3, label %1041
    i32 2, label %1046
    i32 1, label %1051
    i32 0, label %1054
  ]

1033:                                             ; preds = %1030
  %1034 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %1035 = load ptr, ptr %1034, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %1035) #5
  br label %1054

1036:                                             ; preds = %1030
  %1037 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %1038 = load ptr, ptr %1037, align 8, !tbaa !48
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1054, label %1040

1040:                                             ; preds = %1036
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1038) #6
  br label %1054

1041:                                             ; preds = %1030
  %1042 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %1043 = load ptr, ptr %1042, align 8, !tbaa !48
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1054, label %1045

1045:                                             ; preds = %1041
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %1043) #5
  br label %1054

1046:                                             ; preds = %1030
  %1047 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %1048 = load ptr, ptr %1047, align 8, !tbaa !48
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1054, label %1050

1050:                                             ; preds = %1046
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %1048) #5
  br label %1054

1051:                                             ; preds = %1030
  %1052 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %1053 = load ptr, ptr %1052, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %1053) #5
  br label %1054

1054:                                             ; preds = %1033, %1030, %1030, %1030, %1030, %1030, %1030, %1030, %1030, %1051, %1030, %1040, %1036, %1045, %1041, %1050, %1046
  %1055 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1056 = load ptr, ptr %1055, align 8, !tbaa !48
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1059, label %1058

1058:                                             ; preds = %1054
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1056) #6
  br label %1059

1059:                                             ; preds = %1054, %1058
  %1060 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1061 = load ptr, ptr %1060, align 8, !tbaa !48
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1064, label %1063

1063:                                             ; preds = %1059
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1061) #6
  br label %1064

1064:                                             ; preds = %1059, %1063
  %1065 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1066 = load ptr, ptr %1065, align 8, !tbaa !48
  %1067 = icmp eq ptr %1066, null
  br i1 %1067, label %1246, label %1068

1068:                                             ; preds = %1064
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1066) #6
  br label %1246

1069:                                             ; preds = %45
  %1070 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %1071 = load ptr, ptr %1070, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %1071) #5
  %1072 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %1073 = load ptr, ptr %1072, align 8, !tbaa !48
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1076, label %1075

1075:                                             ; preds = %1069
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1073) #6
  br label %1076

1076:                                             ; preds = %1069, %1075
  %1077 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1078 = load ptr, ptr %1077, align 8, !tbaa !48
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1081, label %1080

1080:                                             ; preds = %1076
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1078) #6
  br label %1081

1081:                                             ; preds = %1076, %1080
  %1082 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1083 = load ptr, ptr %1082, align 8, !tbaa !48
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1086, label %1085

1085:                                             ; preds = %1081
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1083) #6
  br label %1086

1086:                                             ; preds = %1081, %1085
  %1087 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1088 = load ptr, ptr %1087, align 8, !tbaa !48
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1246, label %1090

1090:                                             ; preds = %1086
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1088) #6
  br label %1246

1091:                                             ; preds = %45
  %1092 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1093 = load ptr, ptr %1092, align 8, !tbaa !48
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %1096, label %1095

1095:                                             ; preds = %1091
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1093) #6
  br label %1096

1096:                                             ; preds = %1091, %1095
  %1097 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1098 = load ptr, ptr %1097, align 8, !tbaa !48
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1246, label %1100

1100:                                             ; preds = %1096
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1098) #6
  br label %1246

1101:                                             ; preds = %45
  %1102 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 2
  %1103 = load ptr, ptr %1102, align 8, !tbaa !48
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1106, label %1105

1105:                                             ; preds = %1101
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1103) #6
  br label %1106

1106:                                             ; preds = %1101, %1105
  %1107 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %1108 = load ptr, ptr %1107, align 8, !tbaa !48
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1111, label %1110

1110:                                             ; preds = %1106
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1108) #6
  br label %1111

1111:                                             ; preds = %1106, %1110
  %1112 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !48
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1116, label %1115

1115:                                             ; preds = %1111
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1113) #6
  br label %1116

1116:                                             ; preds = %1111, %1115
  %1117 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1118 = load ptr, ptr %1117, align 8, !tbaa !48
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1121, label %1120

1120:                                             ; preds = %1116
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1118) #6
  br label %1121

1121:                                             ; preds = %1116, %1120
  %1122 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1123 = load ptr, ptr %1122, align 8, !tbaa !48
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1126, label %1125

1125:                                             ; preds = %1121
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1123) #6
  br label %1126

1126:                                             ; preds = %1121, %1125
  %1127 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !48
  %1129 = icmp eq ptr %1128, null
  br i1 %1129, label %1246, label %1130

1130:                                             ; preds = %1126
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1128) #6
  br label %1246

1131:                                             ; preds = %45
  %1132 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 2
  %1133 = load ptr, ptr %1132, align 8, !tbaa !48
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1136, label %1135

1135:                                             ; preds = %1131
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1133) #6
  br label %1136

1136:                                             ; preds = %1131, %1135
  %1137 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %1138 = load ptr, ptr %1137, align 8, !tbaa !48
  %1139 = icmp eq ptr %1138, null
  br i1 %1139, label %1141, label %1140

1140:                                             ; preds = %1136
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1138) #6
  br label %1141

1141:                                             ; preds = %1136, %1140
  %1142 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %1143 = load ptr, ptr %1142, align 8, !tbaa !48
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1146, label %1145

1145:                                             ; preds = %1141
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1143) #6
  br label %1146

1146:                                             ; preds = %1141, %1145
  %1147 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1148 = load ptr, ptr %1147, align 8, !tbaa !48
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1151, label %1150

1150:                                             ; preds = %1146
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1148) #6
  br label %1151

1151:                                             ; preds = %1146, %1150
  %1152 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1153 = load ptr, ptr %1152, align 8, !tbaa !48
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1156, label %1155

1155:                                             ; preds = %1151
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1153) #6
  br label %1156

1156:                                             ; preds = %1151, %1155
  %1157 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1158 = load ptr, ptr %1157, align 8, !tbaa !48
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1246, label %1160

1160:                                             ; preds = %1156
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1158) #6
  br label %1246

1161:                                             ; preds = %45
  %1162 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %1163 = load ptr, ptr %1162, align 8, !tbaa !48
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1166, label %1165

1165:                                             ; preds = %1161
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1163) #6
  br label %1166

1166:                                             ; preds = %1161, %1165
  %1167 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %1168 = load ptr, ptr %1167, align 8, !tbaa !48
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1171, label %1170

1170:                                             ; preds = %1166
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1168) #6
  br label %1171

1171:                                             ; preds = %1166, %1170
  %1172 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1173 = load ptr, ptr %1172, align 8, !tbaa !48
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1176, label %1175

1175:                                             ; preds = %1171
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1173) #6
  br label %1176

1176:                                             ; preds = %1171, %1175
  %1177 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1178 = load ptr, ptr %1177, align 8, !tbaa !48
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1181, label %1180

1180:                                             ; preds = %1176
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1178) #6
  br label %1181

1181:                                             ; preds = %1176, %1180
  %1182 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1183 = load ptr, ptr %1182, align 8, !tbaa !48
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1246, label %1185

1185:                                             ; preds = %1181
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1183) #6
  br label %1246

1186:                                             ; preds = %45
  %1187 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %1188 = load ptr, ptr %1187, align 8, !tbaa !48
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1191, label %1190

1190:                                             ; preds = %1186
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1188) #6
  br label %1191

1191:                                             ; preds = %1186, %1190
  %1192 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %1193 = load ptr, ptr %1192, align 8, !tbaa !48
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1196, label %1195

1195:                                             ; preds = %1191
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1193) #6
  br label %1196

1196:                                             ; preds = %1191, %1195
  %1197 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 1
  %1198 = load ptr, ptr %1197, align 8, !tbaa !48
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1201, label %1200

1200:                                             ; preds = %1196
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1198) #6
  br label %1201

1201:                                             ; preds = %1196, %1200
  %1202 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %1203 = load ptr, ptr %1202, align 8, !tbaa !48
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1206, label %1205

1205:                                             ; preds = %1201
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1203) #6
  br label %1206

1206:                                             ; preds = %1201, %1205
  %1207 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1208 = load ptr, ptr %1207, align 8, !tbaa !48
  %1209 = icmp eq ptr %1208, null
  br i1 %1209, label %1246, label %1210

1210:                                             ; preds = %1206
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1208) #6
  br label %1246

1211:                                             ; preds = %45
  %1212 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1213 = load ptr, ptr %1212, align 8, !tbaa !48
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1246, label %1215

1215:                                             ; preds = %1211
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1213) #6
  br label %1246

1216:                                             ; preds = %45
  %1217 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1218 = load ptr, ptr %1217, align 8, !tbaa !48
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1246, label %1220

1220:                                             ; preds = %1216
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1218) #6
  br label %1246

1221:                                             ; preds = %45
  %1222 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1223 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1224 = load ptr, ptr %1223, align 8, !tbaa !48
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1227, label %1226

1226:                                             ; preds = %1221
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1224) #6
  br label %1227

1227:                                             ; preds = %1221, %1226
  %1228 = load ptr, ptr %1222, align 8, !tbaa !48
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1246, label %1230

1230:                                             ; preds = %1227
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1228) #6
  br label %1246

1231:                                             ; preds = %45
  %1232 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1233 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !48
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1237, label %1236

1236:                                             ; preds = %1231
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1234) #6
  br label %1237

1237:                                             ; preds = %1231, %1236
  %1238 = load ptr, ptr %1232, align 8, !tbaa !48
  %1239 = icmp eq ptr %1238, null
  br i1 %1239, label %1246, label %1240

1240:                                             ; preds = %1237
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1238) #6
  br label %1246

1241:                                             ; preds = %45
  %1242 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %1243 = load ptr, ptr %1242, align 8, !tbaa !48
  %1244 = icmp eq ptr %1243, null
  br i1 %1244, label %1246, label %1245

1245:                                             ; preds = %1241
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %1243) #5
  br label %1246

1246:                                             ; preds = %45, %1241, %1245, %1237, %1240, %1227, %1230, %1216, %1220, %1211, %1215, %1206, %1210, %1181, %1185, %1156, %1160, %1126, %1130, %1096, %1100, %1086, %1090, %1064, %1068, %1026, %1029, %1015, %1019, %987, %991, %982, %986, %977, %981, %973, %976, %953, %956, %938, %941, %927, %931, %922, %926, %918, %921, %908, %911, %897, %901, %889, %893, %884, %888, %879, %883, %874, %878, %870, %873, %859, %863, %855, %858, %844, %848, %815, %818, %800, %803, %790, %793, %780, %783, %769, %773, %765, %768, %755, %758, %745, %748, %735, %738, %725, %728, %715, %718, %705, %708, %695, %698, %685, %688, %675, %678, %665, %668, %655, %658, %644, %648, %640, %643, %630, %633, %620, %623, %610, %613, %600, %603, %590, %593, %580, %583, %570, %573, %560, %563, %549, %553, %544, %548, %539, %543, %534, %538, %530, %533, %520, %523, %510, %513, %500, %503, %490, %493, %480, %483, %470, %473, %460, %463, %450, %453, %440, %443, %430, %433, %420, %423, %410, %413, %400, %403, %390, %393, %380, %383, %370, %373, %360, %363, %350, %353, %340, %343, %329, %333, %324, %328, %319, %323, %314, %318, %309, %313, %304, %308, %299, %303, %294, %298, %289, %293, %284, %288, %279, %283, %274, %278, %269, %273, %264, %268, %259, %263, %254, %258, %249, %253, %244, %248, %239, %243, %234, %238, %229, %233, %225, %228, %210, %213, %194, %198, %190, %193, %180, %183, %165, %168, %155, %158, %144, %148, %140, %143, %130, %133, %120, %123, %109, %113, %104, %108, %99, %103, %95, %98, %85, %88, %75, %78, %64, %68, %59, %63, %55, %58, %1012, %1008, %894, %842
  %1247 = load i32, ptr %46, align 8
  %1248 = and i32 %1247, 65535
  %1249 = zext nneg i32 %1248 to i64
  %1250 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %1249
  %1251 = load i8, ptr %1250, align 1, !tbaa !48
  %1252 = icmp eq i8 %1251, 0
  br i1 %1252, label %1257, label %1253

1253:                                             ; preds = %1246
  %1254 = zext i8 %1251 to i64
  %1255 = getelementptr inbounds i8, ptr %46, i64 %1254
  %1256 = load ptr, ptr %1255, align 8, !tbaa !59
  br label %1257

1257:                                             ; preds = %1246, %1253
  %1258 = phi ptr [ %1256, %1253 ], [ null, %1246 ]
  %1259 = icmp eq ptr %1258, %17
  br i1 %1259, label %1260, label %45, !llvm.loop !472

1260:                                             ; preds = %1257, %1, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11eh_region_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !90
  switch i32 %11, label %23 [
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
  ]

12:                                               ; preds = %9
  br i1 %5, label %13, label %30

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  %15 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  br label %24

16:                                               ; preds = %9
  br i1 %5, label %17, label %30

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %18, ptr noundef %3) #5
  %19 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  br label %24

20:                                               ; preds = %9
  br i1 %5, label %21, label %30

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  br label %24

23:                                               ; preds = %9
  br i1 %5, label %26, label %30

24:                                               ; preds = %21, %17, %13
  %25 = phi ptr [ %15, %13 ], [ %19, %17 ], [ %22, %21 ]
  tail call void %2(ptr noundef nonnull %25, ptr noundef %3) #5
  br label %26

26:                                               ; preds = %24, %23
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %27, ptr noundef %3) #5
  %28 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %28, ptr noundef %3) #5
  %29 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %29, ptr noundef %3) #5
  br label %30

30:                                               ; preds = %16, %12, %20, %23, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_constant_descriptor_tree(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24constant_descriptor_tree, i32 noundef 95) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_24constant_descriptor_tree(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cgraph_asm_node(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15cgraph_asm_node, i32 noundef 96) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_cgraph_asm_node(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.cgraph_asm_node, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_15cgraph_asm_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.cgraph_asm_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_varpool_node(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12varpool_node, i32 noundef 97) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %35, label %6

4:                                                ; preds = %6
  %5 = icmp eq ptr %9, %0
  br i1 %5, label %35, label %12

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.varpool_node, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_12varpool_node, i32 noundef 97) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %6, !llvm.loop !473

12:                                               ; preds = %4, %32
  %13 = phi ptr [ %33, %32 ], [ %0, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %14) #5
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %19) #6
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %22, %26
  %28 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %29) #6
  br label %32

32:                                               ; preds = %31, %27
  %33 = load ptr, ptr %18, align 8, !tbaa !108
  %34 = icmp eq ptr %33, %9
  br i1 %34, label %35, label %12, !llvm.loop !474

35:                                               ; preds = %32, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_12varpool_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_cgraph_node_set_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_cgraph_node_set_gc, i32 noundef 98) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !115
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_cgraph_node_set_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_cgraph_node_set_def(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !475

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_22VEC_cgraph_node_set_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !115
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !476

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cgraph_node_set_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_19cgraph_node_set_def, i32 noundef 99) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !119
  tail call void @gt_pch_n_P27cgraph_node_set_element_def4htab(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @gt_pch_nx_VEC_cgraph_node_ptr_gc(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %4, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_19cgraph_node_set_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P27cgraph_node_set_element_def4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P27cgraph_node_set_element_def4htab, i32 noundef 212) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_cgraph_node_set_element_def(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !477

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P27cgraph_node_set_element_def4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_cgraph_node_ptr_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_cgraph_node_ptr_gc, i32 noundef 101) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !127
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !478

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cgraph_node_set_element_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_27cgraph_node_set_element_def, i32 noundef 100) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_27cgraph_node_set_element_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cgraph_node(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11cgraph_node, i32 noundef 105) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %130, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_11cgraph_node, i32 noundef 105) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !479

10:                                               ; preds = %4
  %11 = icmp eq ptr %7, %0
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull @gt_pch_p_11cgraph_node, i32 noundef 105) #5
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !142
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %12, %10
  %23 = phi ptr [ %0, %10 ], [ %0, %12 ], [ %17, %16 ]
  %24 = icmp eq ptr %23, %7
  br i1 %24, label %130, label %25

25:                                               ; preds = %22, %127
  %26 = phi ptr [ %128, %127 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %27) #5
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !144
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !145
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %37) #6
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !133
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %42) #6
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !142
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %47) #6
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !146
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %57) #6
  br label %60

60:                                               ; preds = %55, %59
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !148
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %62) #6
  br label %65

65:                                               ; preds = %60, %64
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !149
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %67) #6
  br label %70

70:                                               ; preds = %65, %69
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !150
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %72) #6
  br label %75

75:                                               ; preds = %70, %74
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !151
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %77) #6
  br label %80

80:                                               ; preds = %75, %79
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !152
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %82) #6
  br label %85

85:                                               ; preds = %80, %84
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !153
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %87) #6
  br label %90

90:                                               ; preds = %85, %89
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !154
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %92) #6
  br label %95

95:                                               ; preds = %90, %94
  %96 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 14
  %97 = load ptr, ptr %96, align 8, !tbaa !155
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %97) #6
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !156
  tail call void @gt_pch_n_P11cgraph_edge4htab(ptr noundef %102) #6
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !157
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %104) #6
  br label %107

107:                                              ; preds = %100, %106
  %108 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21
  %109 = load ptr, ptr %108, align 8, !tbaa !158
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @gt_pch_nx_VEC_ipa_replace_map_p_gc(ptr noundef nonnull %109) #6
  br label %112

112:                                              ; preds = %107, %111
  %113 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !159
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %114) #6
  br label %117

117:                                              ; preds = %112, %116
  %118 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !160
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %119) #6
  br label %122

122:                                              ; preds = %117, %121
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 22, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !161
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %124) #5
  br label %127

127:                                              ; preds = %126, %122
  %128 = load ptr, ptr %41, align 8, !tbaa !133
  %129 = icmp eq ptr %128, %7
  br i1 %129, label %130, label %25, !llvm.loop !480

130:                                              ; preds = %127, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_22VEC_cgraph_node_ptr_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !127
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !481

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cgraph_edge(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11cgraph_edge, i32 noundef 102) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %64, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_11cgraph_edge, i32 noundef 102) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !482

10:                                               ; preds = %4
  %11 = icmp eq ptr %7, %0
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !167
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull @gt_pch_p_11cgraph_edge, i32 noundef 102) #5
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !167
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %12, %10
  %23 = phi ptr [ %0, %10 ], [ %0, %12 ], [ %17, %16 ]
  %24 = icmp eq ptr %23, %7
  br i1 %24, label %64, label %25

25:                                               ; preds = %22, %61
  %26 = phi ptr [ %62, %61 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %28) #6
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !169
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %33) #6
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !167
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %38) #6
  br label %41

41:                                               ; preds = %36, %40
  %42 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !163
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %43) #6
  br label %46

46:                                               ; preds = %41, %45
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %48) #6
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !171
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %53) #6
  br label %56

56:                                               ; preds = %51, %55
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !172
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %58) #6
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %42, align 8, !tbaa !163
  %63 = icmp eq ptr %62, %7
  br i1 %63, label %64, label %25, !llvm.loop !483

64:                                               ; preds = %61, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11cgraph_edge(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #5
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #5
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_ipa_replace_map_p_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24VEC_ipa_replace_map_p_gc, i32 noundef 103) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !174
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_ipa_replace_map(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !484

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_24VEC_ipa_replace_map_p_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !174
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !485

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_ipa_replace_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15ipa_replace_map, i32 noundef 104) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !178
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.ipa_replace_map, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_15ipa_replace_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.ipa_replace_map, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11cgraph_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #5
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #5
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #5
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 10
  tail call void %2(ptr noundef nonnull %16, ptr noundef %3) #5
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %17, ptr noundef %3) #5
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 12
  tail call void %2(ptr noundef nonnull %18, ptr noundef %3) #5
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 13
  tail call void %2(ptr noundef nonnull %19, ptr noundef %3) #5
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 14
  tail call void %2(ptr noundef nonnull %20, ptr noundef %3) #5
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 15
  tail call void %2(ptr noundef nonnull %21, ptr noundef %3) #5
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  tail call void %2(ptr noundef nonnull %22, ptr noundef %3) #5
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 21
  tail call void %2(ptr noundef nonnull %23, ptr noundef %3) #5
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 21, i32 1
  tail call void %2(ptr noundef nonnull %24, ptr noundef %3) #5
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 21, i32 2
  tail call void %2(ptr noundef nonnull %25, ptr noundef %3) #5
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 22, i32 2
  tail call void %2(ptr noundef nonnull %26, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P11cgraph_edge4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P11cgraph_edge4htab, i32 noundef 213) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !486

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P11cgraph_edge4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_bitmap_head_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15bitmap_head_def, i32 noundef 165) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !182
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_bitmap_obstack(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_basic_block_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18VEC_basic_block_gc, i32 noundef 106) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !186
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !487

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_18VEC_basic_block_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !186
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !488

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_basic_block_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15basic_block_def, i32 noundef 157) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_15basic_block_def, i32 noundef 157) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !489

10:                                               ; preds = %4
  %11 = icmp eq ptr %7, %0
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull @gt_pch_p_15basic_block_def, i32 noundef 157) #5
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !193
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %12, %10
  %23 = phi ptr [ %0, %10 ], [ %0, %12 ], [ %17, %16 ]
  %24 = icmp eq ptr %23, %7
  br i1 %24, label %65, label %25

25:                                               ; preds = %22, %62
  %26 = phi ptr [ %63, %62 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_VEC_edge_gc(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !195
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_VEC_edge_gc(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %37) #6
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !193
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %42) #6
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !190
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %47) #6
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !197
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %54, label %58, label %60

58:                                               ; preds = %50
  br i1 %57, label %62, label %59

59:                                               ; preds = %58
  tail call void @gt_pch_nx_gimple_bb_info(ptr noundef nonnull %56) #6
  br label %62

60:                                               ; preds = %50
  br i1 %57, label %62, label %61

61:                                               ; preds = %60
  tail call void @gt_pch_nx_rtl_bb_info(ptr noundef nonnull %56) #6
  br label %62

62:                                               ; preds = %60, %61, %58, %59
  %63 = load ptr, ptr %46, align 8, !tbaa !190
  %64 = icmp eq ptr %63, %7
  br i1 %64, label %65, label %25, !llvm.loop !490

65:                                               ; preds = %62, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_gimple_bb_info(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_14gimple_bb_info, i32 noundef 107) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !199
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.gimple_bb_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_14gimple_bb_info(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.gimple_bb_info, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_gimple_seq_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12gimple_seq_d, i32 noundef 160) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %31, label %6

4:                                                ; preds = %6
  %5 = icmp eq ptr %9, %0
  br i1 %5, label %31, label %12

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.gimple_seq_d, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_12gimple_seq_d, i32 noundef 160) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %6, !llvm.loop !491

12:                                               ; preds = %4, %28
  %13 = phi ptr [ %29, %28 ], [ %0, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %19) #6
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.gimple_seq_d, ptr %13, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !202
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %24) #6
  %27 = load ptr, ptr %23, align 8, !tbaa !202
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %31, label %12, !llvm.loop !492

31:                                               ; preds = %28, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_rtl_bb_info(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11rtl_bb_info, i32 noundef 108) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !208
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !212
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11rtl_bb_info(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_edge_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11VEC_edge_gc, i32 noundef 109) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !213
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_edge_def(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !493

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11VEC_edge_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !213
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !494

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_edge_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8edge_def, i32 noundef 158) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !217
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !219
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %12, %8
  %14 = tail call i32 @current_ir_type() #5
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %15, label %19, label %21

19:                                               ; preds = %13
  br i1 %18, label %23, label %20

20:                                               ; preds = %19
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %17) #6
  br label %23

21:                                               ; preds = %13
  br i1 %18, label %23, label %22

22:                                               ; preds = %21
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %17) #6
  br label %23

23:                                               ; preds = %20, %19, %22, %21
  %24 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %25) #5
  br label %28

28:                                               ; preds = %23, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cselib_val_struct(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %21 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_17cselib_val_struct, i32 noundef 110) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !223
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gt_pch_nx_elt_loc_list(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !224
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_pch_nx_elt_list(ptr noundef nonnull %18) #6
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !225
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %2

25:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17cselib_val_struct(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  br label %11

11:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_elt_loc_list(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12elt_loc_list, i32 noundef 111) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !226
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_elt_loc_list(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !228
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !229
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_elt_list(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8elt_list, i32 noundef 129) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !230
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_elt_list(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.elt_list, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_cselib_val_struct(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_12elt_loc_list(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.elt_loc_list, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.elt_loc_list, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_loop_p_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13VEC_loop_p_gc, i32 noundef 112) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !233
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !495

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_13VEC_loop_p_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !233
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !496

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_loop(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_4loop, i32 noundef 113) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %61, label %6

4:                                                ; preds = %6
  %5 = icmp eq ptr %9, %0
  br i1 %5, label %61, label %12

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_4loop, i32 noundef 113) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %6, !llvm.loop !497

12:                                               ; preds = %4, %58
  %13 = phi ptr [ %59, %58 ], [ %0, %4 ]
  %14 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !242
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %12, %17
  %19 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !243
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !244
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_VEC_loop_p_gc(ptr noundef nonnull %25) #6
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !245
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %30) #6
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !237
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %35) #6
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !246
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %40) #5
  br label %43

43:                                               ; preds = %38, %42
  %44 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !247
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_pch_nx_nb_iter_bound(ptr noundef nonnull %45) #6
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !248
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %50) #6
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 20
  %55 = load ptr, ptr %54, align 8, !tbaa !249
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %55) #5
  br label %58

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr %34, align 8, !tbaa !237
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %12, !llvm.loop !498

61:                                               ; preds = %58, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_4loop(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #5
  %12 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #5
  %13 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 17
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  %14 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 18
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  %15 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 20
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #5
  br label %16

16:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_nb_iter_bound(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13nb_iter_bound, i32 noundef 115) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %6

4:                                                ; preds = %6
  %5 = icmp eq ptr %9, %0
  br i1 %5, label %26, label %12

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.nb_iter_bound, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !251
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_13nb_iter_bound, i32 noundef 115) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %6, !llvm.loop !499

12:                                               ; preds = %4, %23
  %13 = phi ptr [ %24, %23 ], [ %0, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !254
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.nb_iter_bound, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !251
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @gt_pch_nx_nb_iter_bound(ptr noundef nonnull %19) #6
  %22 = load ptr, ptr %18, align 8, !tbaa !251
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ null, %17 ]
  %25 = icmp eq ptr %24, %9
  br i1 %25, label %26, label %12, !llvm.loop !500

26:                                               ; preds = %23, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_loop_exit(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %20, %1
  %3 = phi ptr [ %0, %1 ], [ %22, %20 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_9loop_exit, i32 noundef 114) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !256
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_edge_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !258
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !259
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !260
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %2

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9loop_exit(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.loop_exit, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.loop_exit, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.loop_exit, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_13nb_iter_bound(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_types_used_by_vars_entry(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24types_used_by_vars_entry, i32 noundef 116) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !261
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !263
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_24types_used_by_vars_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_loops(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_5loops, i32 noundef 118) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !264
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_VEC_loop_p_gc(ptr noundef nonnull %6) #6
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !266
  tail call void @gt_pch_n_P9loop_exit4htab(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %9, %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_5loops(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.loops, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.loops, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.loops, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9loop_exit4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9loop_exit4htab, i32 noundef 214) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !501

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P9loop_exit4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_control_flow_graph(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18control_flow_graph, i32 noundef 119) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !269
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !271
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !272
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_VEC_basic_block_gc(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !273
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_VEC_basic_block_gc(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_18control_flow_graph(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_eh_status(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9eh_status, i32 noundef 120) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !274
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !276
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_VEC_eh_region_gc(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !277
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_VEC_eh_landing_pad_gc(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  tail call void @gt_pch_n_P15throw_stmt_node4htab(ptr noundef %20) #6
  %21 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !279
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @gt_pch_nx_VEC_tree_gc(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !280
  switch i8 %26, label %37 [
    i8 1, label %27
    i8 0, label %32
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  tail call void @gt_pch_nx_VEC_tree_gc(ptr noundef nonnull %29) #6
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @gt_pch_nx_VEC_uchar_gc(ptr noundef nonnull %34) #6
  br label %37

37:                                               ; preds = %31, %27, %36, %32, %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9eh_status(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  br label %11

11:                                               ; preds = %4, %6
  %12 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !280
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
  tail call void %2(ptr noundef nonnull %16, ptr noundef %3) #5
  br label %17

17:                                               ; preds = %15, %11, %14, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P15throw_stmt_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P15throw_stmt_node4htab, i32 noundef 200) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_throw_stmt_node(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !502

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P15throw_stmt_node4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_tree_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11VEC_tree_gc, i32 noundef 143) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !293
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !503

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_uchar_gc(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12VEC_uchar_gc, i32 noundef 144) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_temp_slot_p_gc(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18VEC_temp_slot_p_gc, i32 noundef 123) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !297
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !504

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_18VEC_temp_slot_p_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !297
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !505

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_temp_slot(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_gimple_df(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9gimple_df, i32 noundef 125) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !301
  tail call void @gt_pch_n_P9tree_node4htab(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !305
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @gt_pch_nx_VEC_gimple_gc(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !306
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_VEC_tree_gc(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !307
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %17) #5
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 4, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !308
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 5, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !309
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !310
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %32) #5
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !311
  tail call void @gt_pch_n_P9tree_node4htab(ptr noundef %37) #6
  %38 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !312
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %39) #6
  br label %42

42:                                               ; preds = %35, %41
  %43 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !313
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @gt_pch_nx_ssa_operand_memory_d(ptr noundef nonnull %44) #6
  br label %47

47:                                               ; preds = %42, %46, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9gimple_df(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 4, i32 1
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 5, i32 1
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #5
  %12 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #5
  %13 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  %14 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  %15 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #5
  br label %16

16:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9tree_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9tree_node4htab, i32 noundef 216) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %17) #5
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !506

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P9tree_node4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_call_site_record_gc(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23VEC_call_site_record_gc, i32 noundef 126) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !315
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_call_site_record_d(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !507

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_23VEC_call_site_record_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !315
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !508

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_call_site_record_d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_sequence_stack(ptr noundef %0) #0 !prof !35 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %15 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_14sequence_stack, i32 noundef 128) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !319
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !321
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !322
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %2

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_14sequence_stack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_8elt_list(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.elt_list, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_tree_priority_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17tree_priority_map, i32 noundef 130) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !323
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17tree_priority_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_tree_int_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12tree_int_map, i32 noundef 131) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !326
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_12tree_int_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_tree_map(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8tree_map, i32 noundef 132) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !328
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.tree_map, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !330
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_8tree_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.tree_map, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_tree_statement_list_node(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24tree_statement_list_node, i32 noundef 134) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_statement_list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !331
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_24tree_statement_list_node, i32 noundef 134) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !509

10:                                               ; preds = %4
  %11 = icmp eq ptr %7, %0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !334
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %12 ]
  %17 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull @gt_pch_p_24tree_statement_list_node, i32 noundef 134) #5
  %18 = load ptr, ptr %16, align 8, !tbaa !334
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15

20:                                               ; preds = %15, %12, %10
  %21 = phi ptr [ %0, %10 ], [ %0, %12 ], [ %16, %15 ]
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %41, label %23

23:                                               ; preds = %20, %38
  %24 = phi ptr [ %39, %38 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !334
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_tree_statement_list_node(ptr noundef nonnull %25) #6
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.tree_statement_list_node, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !331
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_pch_nx_tree_statement_list_node(ptr noundef nonnull %30) #6
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.tree_statement_list_node, ptr %24, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !335
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %35) #5
  br label %38

38:                                               ; preds = %37, %33
  %39 = load ptr, ptr %29, align 8, !tbaa !331
  %40 = icmp eq ptr %39, %7
  br i1 %40, label %41, label %23, !llvm.loop !510

41:                                               ; preds = %38, %1, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_24tree_statement_list_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_var_ann_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9var_ann_d, i32 noundef 135) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.var_ann_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %6) #5
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9var_ann_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.var_ann_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_varray_head_tag(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15varray_head_tag, i32 noundef 139) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %105, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !339
  tail call void @gt_pch_n_S(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !341
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3228, ptr noundef nonnull @.str.1) #5
  br label %105

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 8, !tbaa !342
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %105, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = getelementptr inbounds [1 x ptr], ptr %14, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %18) #5
  %19 = add nuw i64 %16, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %105, label %15, !llvm.loop !511

21:                                               ; preds = %4
  %22 = load i64, ptr %0, align 8, !tbaa !342
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %105, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %32
  %27 = phi i64 [ 0, %24 ], [ %33, %32 ]
  %28 = getelementptr inbounds [1 x ptr], ptr %25, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %29) #6
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw i64 %27, 1
  %34 = icmp eq i64 %33, %22
  br i1 %34, label %105, label %26, !llvm.loop !512

35:                                               ; preds = %4
  %36 = load i64, ptr %0, align 8, !tbaa !342
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %105, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %40

40:                                               ; preds = %38, %46
  %41 = phi i64 [ 0, %38 ], [ %47, %46 ]
  %42 = getelementptr inbounds [1 x ptr], ptr %39, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %43) #6
  br label %46

46:                                               ; preds = %40, %45
  %47 = add nuw i64 %41, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %105, label %40, !llvm.loop !513

49:                                               ; preds = %4
  %50 = load i64, ptr %0, align 8, !tbaa !342
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %105, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %54

54:                                               ; preds = %52, %60
  %55 = phi i64 [ 0, %52 ], [ %61, %60 ]
  %56 = getelementptr inbounds [1 x ptr], ptr %53, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %57) #5
  br label %60

60:                                               ; preds = %54, %59
  %61 = add nuw i64 %55, 1
  %62 = icmp eq i64 %61, %50
  br i1 %62, label %105, label %54, !llvm.loop !514

63:                                               ; preds = %4
  %64 = load i64, ptr %0, align 8, !tbaa !342
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %68

68:                                               ; preds = %66, %74
  %69 = phi i64 [ 0, %66 ], [ %75, %74 ]
  %70 = getelementptr inbounds [1 x ptr], ptr %67, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %71) #6
  br label %74

74:                                               ; preds = %68, %73
  %75 = add nuw i64 %69, 1
  %76 = icmp eq i64 %75, %64
  br i1 %76, label %105, label %68, !llvm.loop !515

77:                                               ; preds = %4
  %78 = load i64, ptr %0, align 8, !tbaa !342
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %82

82:                                               ; preds = %80, %88
  %83 = phi i64 [ 0, %80 ], [ %89, %88 ]
  %84 = getelementptr inbounds [1 x ptr], ptr %81, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !48
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @gt_pch_nx_elt_list(ptr noundef nonnull %85) #6
  br label %88

88:                                               ; preds = %82, %87
  %89 = add nuw i64 %83, 1
  %90 = icmp eq i64 %89, %78
  br i1 %90, label %105, label %82, !llvm.loop !516

91:                                               ; preds = %4
  %92 = load i64, ptr %0, align 8, !tbaa !342
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %96

96:                                               ; preds = %94, %102
  %97 = phi i64 [ 0, %94 ], [ %103, %102 ]
  %98 = getelementptr inbounds [1 x ptr], ptr %95, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !48
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @gt_pch_nx_edge_def(ptr noundef nonnull %99) #6
  br label %102

102:                                              ; preds = %96, %101
  %103 = add nuw i64 %97, 1
  %104 = icmp eq i64 %103, %92
  br i1 %104, label %105, label %96, !llvm.loop !517

105:                                              ; preds = %15, %32, %46, %60, %74, %88, %102, %10, %21, %35, %49, %63, %77, %91, %9, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_15varray_head_tag(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !341
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5758, ptr noundef nonnull @.str.1) #5
  br label %96

12:                                               ; preds = %8
  %13 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %20, ptr noundef %3) #5
  br label %21

21:                                               ; preds = %17, %19
  %22 = add nuw i64 %18, 1
  %23 = icmp eq i64 %22, %13
  br i1 %23, label %96, label %17, !llvm.loop !518

24:                                               ; preds = %8
  %25 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %32, ptr noundef %3) #5
  br label %33

33:                                               ; preds = %29, %31
  %34 = add nuw i64 %30, 1
  %35 = icmp eq i64 %34, %25
  br i1 %35, label %96, label %29, !llvm.loop !519

36:                                               ; preds = %8
  %37 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %44, ptr noundef %3) #5
  br label %45

45:                                               ; preds = %41, %43
  %46 = add nuw i64 %42, 1
  %47 = icmp eq i64 %46, %37
  br i1 %47, label %96, label %41, !llvm.loop !520

48:                                               ; preds = %8
  %49 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %56, ptr noundef %3) #5
  br label %57

57:                                               ; preds = %53, %55
  %58 = add nuw i64 %54, 1
  %59 = icmp eq i64 %58, %49
  br i1 %59, label %96, label %53, !llvm.loop !521

60:                                               ; preds = %8
  %61 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %68, ptr noundef %3) #5
  br label %69

69:                                               ; preds = %65, %67
  %70 = add nuw i64 %66, 1
  %71 = icmp eq i64 %70, %61
  br i1 %71, label %96, label %65, !llvm.loop !522

72:                                               ; preds = %8
  %73 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %80, ptr noundef %3) #5
  br label %81

81:                                               ; preds = %77, %79
  %82 = add nuw i64 %78, 1
  %83 = icmp eq i64 %82, %73
  br i1 %83, label %96, label %77, !llvm.loop !523

84:                                               ; preds = %8
  %85 = load i64, ptr %1, align 8, !tbaa !342
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
  tail call void %2(ptr noundef nonnull %92, ptr noundef %3) #5
  br label %93

93:                                               ; preds = %89, %91
  %94 = add nuw i64 %90, 1
  %95 = icmp eq i64 %94, %85
  br i1 %95, label %96, label %89, !llvm.loop !524

96:                                               ; preds = %21, %33, %45, %57, %69, %81, %93, %12, %24, %36, %48, %60, %72, %84, %8, %11
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_n_S(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_rtvec_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9rtvec_def, i32 noundef 163) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !350
  %6 = sext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %0, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !525

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_ptr_info_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12ptr_info_def, i32 noundef 140) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !353
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %6) #6
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_12ptr_info_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_constructor_elt_gc(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_constructor_elt_gc, i32 noundef 141) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !355
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %4, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !358
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !360
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %16) #5
  br label %19

19:                                               ; preds = %14, %18
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %8, !llvm.loop !526

22:                                               ; preds = %19, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_22VEC_constructor_elt_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !355
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  %14 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1, i64 0, i32 2, i64 %11, i32 1
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  br label %15

15:                                               ; preds = %10, %12
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %10, !llvm.loop !527

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_alias_pair_gc(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17VEC_alias_pair_gc, i32 noundef 142) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !362
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %4, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !365
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !367
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %16) #5
  br label %19

19:                                               ; preds = %14, %18
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %8, !llvm.loop !528

22:                                               ; preds = %19, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17VEC_alias_pair_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !362
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  %14 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %1, i64 0, i32 2, i64 %11, i32 1
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  br label %15

15:                                               ; preds = %10, %12
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %10, !llvm.loop !529

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11VEC_tree_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !293
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !530

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @gt_pch_p_12VEC_uchar_gc(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !prof !35 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_function(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8function, i32 noundef 145) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !369
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_status(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !371
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_control_flow_graph(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !372
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !373
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_gimple_df(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !374
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_loops(ptr noundef nonnull %25) #6
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !375
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %30) #5
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !376
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %35) #5
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !377
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %40) #5
  br label %43

43:                                               ; preds = %38, %42
  %44 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !378
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %45) #5
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !379
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_pch_nx_machine_function(ptr noundef nonnull %50) #6
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !380
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @gt_pch_nx_language_function(ptr noundef nonnull %55) #5
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !381
  tail call void @gt_pch_n_P9tree_node4htab(ptr noundef %60) #6
  br label %61

61:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_8function(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #5
  %12 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #5
  %13 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  %14 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  %15 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 10
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #5
  %16 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %16, ptr noundef %3) #5
  %17 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 12
  tail call void %2(ptr noundef nonnull %17, ptr noundef %3) #5
  br label %18

18:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_machine_function(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16machine_function, i32 noundef 155) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !382
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_stack_local_entry(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !385
  tail call void @gt_pch_n_S(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !386
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %8, %14, %1
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_language_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_fixed_value(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11fixed_value, i32 noundef 147) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @gt_pch_p_11fixed_value(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !prof !35 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_real_value(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_10real_value, i32 noundef 148) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @gt_pch_p_10real_value(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !prof !35 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_rtx_gc(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_10VEC_rtx_gc, i32 noundef 149) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !387
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !531

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_10VEC_rtx_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !387
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !532

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_object_block(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12object_block, i32 noundef 150) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !391
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_section(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !393
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_VEC_rtx_gc(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !394
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_VEC_rtx_gc(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_12object_block(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.object_block, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.object_block, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_section(ptr noundef %0) #0 !prof !35 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %16 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_7section, i32 noundef 161) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8, !tbaa !48
  %8 = and i32 %7, 6291456
  switch i32 %8, label %20 [
    i32 2097152, label %9
    i32 0, label %16
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %13) #5
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.unnamed_section, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %2

20:                                               ; preds = %16, %6, %2, %15, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_reg_attrs(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9reg_attrs, i32 noundef 151) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !395
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9reg_attrs(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_mem_attrs(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9mem_attrs, i32 noundef 152) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !397
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !399
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !400
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9mem_attrs(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_bitmap_obstack(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_14bitmap_obstack, i32 noundef 153) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !401
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.bitmap_obstack, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_14bitmap_obstack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.bitmap_obstack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_bitmap_element_def(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_18bitmap_element_def, i32 noundef 154) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !405
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !407
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %2

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_18bitmap_element_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_16machine_function(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.machine_function, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.machine_function, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_stack_local_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_15basic_block_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #5
  br label %12

12:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_8edge_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = tail call i32 @current_ir_type() #5
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @current_ir_type() #5
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_gimple_seq_node_d(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17gimple_seq_node_d, i32 noundef 159) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %44, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !408
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_17gimple_seq_node_d, i32 noundef 159) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !533

10:                                               ; preds = %4
  %11 = icmp eq ptr %7, %0
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !411
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull @gt_pch_p_17gimple_seq_node_d, i32 noundef 159) #5
  %19 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !411
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %12, %10
  %23 = phi ptr [ %0, %10 ], [ %0, %12 ], [ %17, %16 ]
  %24 = icmp eq ptr %23, %7
  br i1 %24, label %44, label %25

25:                                               ; preds = %22, %41
  %26 = phi ptr [ %42, %41 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !412
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !411
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %32) #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !408
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %37) #6
  %40 = load ptr, ptr %36, align 8, !tbaa !408
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ null, %35 ]
  %43 = icmp eq ptr %42, %7
  br i1 %43, label %44, label %25, !llvm.loop !534

44:                                               ; preds = %41, %1, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17gimple_seq_node_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_12gimple_seq_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_7section(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !48
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
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %17, ptr noundef %3) #5
  br label %18

18:                                               ; preds = %16, %7, %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_18gimple_statement_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %1) #6
  switch i32 %5, label %254 [
    i32 0, label %6
    i32 1, label %11
    i32 2, label %28
    i32 3, label %33
    i32 13, label %50
    i32 5, label %56
    i32 8, label %64
    i32 9, label %71
    i32 10, label %78
    i32 6, label %84
    i32 11, label %102
    i32 7, label %107
    i32 12, label %114
    i32 4, label %120
    i32 14, label %138
    i32 15, label %145
    i32 16, label %196
    i32 17, label %205
    i32 18, label %217
    i32 19, label %225
    i32 20, label %232
    i32 21, label %239
    i32 22, label %246
  ]

6:                                                ; preds = %4
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %8, label %254

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  br label %252

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, %0
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #5
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #5
  br label %16

16:                                               ; preds = %11, %13
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = zext i32 %18 to i64
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %254, label %21

21:                                               ; preds = %16, %25
  %22 = phi i64 [ %26, %25 ], [ 0, %16 ]
  br i1 %12, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gimple_statement_with_ops, ptr %1, i64 0, i32 1, i64 %22
  tail call void %2(ptr noundef nonnull %24, ptr noundef %3) #5
  br label %25

25:                                               ; preds = %21, %23
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %254, label %21, !llvm.loop !535

28:                                               ; preds = %4
  %29 = icmp eq ptr %1, %0
  br i1 %29, label %30, label %254

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %31, ptr noundef %3) #5
  %32 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  br label %252

33:                                               ; preds = %4
  %34 = icmp eq ptr %1, %0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %36, ptr noundef %3) #5
  %37 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %37, ptr noundef %3) #5
  br label %38

38:                                               ; preds = %33, %35
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = zext i32 %40 to i64
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %254, label %43

43:                                               ; preds = %38, %47
  %44 = phi i64 [ %48, %47 ], [ 0, %38 ]
  br i1 %34, label %45, label %47

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.gimple_statement_with_memory_ops, ptr %1, i64 0, i32 1, i64 %44
  tail call void %2(ptr noundef nonnull %46, ptr noundef %3) #5
  br label %47

47:                                               ; preds = %43, %45
  %48 = add nuw nsw i64 %44, 1
  %49 = icmp eq i64 %48, %41
  br i1 %49, label %254, label %43, !llvm.loop !536

50:                                               ; preds = %4
  %51 = icmp eq ptr %1, %0
  br i1 %51, label %52, label %254

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %53, ptr noundef %3) #5
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %54, ptr noundef %3) #5
  %55 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  br label %252

56:                                               ; preds = %4
  %57 = icmp eq ptr %1, %0
  br i1 %57, label %58, label %254

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %59, ptr noundef %3) #5
  %60 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %60, ptr noundef %3) #5
  %61 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %61, ptr noundef %3) #5
  %62 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %62, ptr noundef %3) #5
  %63 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 3
  br label %252

64:                                               ; preds = %4
  %65 = icmp eq ptr %1, %0
  br i1 %65, label %66, label %254

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %67, ptr noundef %3) #5
  %68 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %68, ptr noundef %3) #5
  %69 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %69, ptr noundef %3) #5
  %70 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1, i64 0, i32 2
  br label %252

71:                                               ; preds = %4
  %72 = icmp eq ptr %1, %0
  br i1 %72, label %73, label %254

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %74, ptr noundef %3) #5
  %75 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %75, ptr noundef %3) #5
  %76 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %76, ptr noundef %3) #5
  %77 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1, i64 0, i32 2
  br label %252

78:                                               ; preds = %4
  %79 = icmp eq ptr %1, %0
  br i1 %79, label %80, label %254

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %81, ptr noundef %3) #5
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %82, ptr noundef %3) #5
  %83 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %1, i64 0, i32 1
  br label %252

84:                                               ; preds = %4
  %85 = icmp eq ptr %1, %0
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %87, ptr noundef %3) #5
  %88 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %88, ptr noundef %3) #5
  %89 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %89, ptr noundef %3) #5
  br label %90

90:                                               ; preds = %84, %86
  %91 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !48
  %93 = zext i32 %92 to i64
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %254, label %95

95:                                               ; preds = %90, %99
  %96 = phi i64 [ %100, %99 ], [ 0, %90 ]
  br i1 %85, label %97, label %99

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %96, i32 1
  tail call void %2(ptr noundef nonnull %98, ptr noundef %3) #5
  br label %99

99:                                               ; preds = %95, %97
  %100 = add nuw nsw i64 %96, 1
  %101 = icmp eq i64 %100, %93
  br i1 %101, label %254, label %95, !llvm.loop !537

102:                                              ; preds = %4
  %103 = icmp eq ptr %1, %0
  br i1 %103, label %104, label %254

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %105, ptr noundef %3) #5
  %106 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  br label %252

107:                                              ; preds = %4
  %108 = icmp eq ptr %1, %0
  br i1 %108, label %109, label %254

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %110, ptr noundef %3) #5
  %111 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %111, ptr noundef %3) #5
  %112 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %112, ptr noundef %3) #5
  %113 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 2
  br label %252

114:                                              ; preds = %4
  %115 = icmp eq ptr %1, %0
  br i1 %115, label %116, label %254

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %117, ptr noundef %3) #5
  %118 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %118, ptr noundef %3) #5
  %119 = getelementptr inbounds %struct.gimple_statement_wce, ptr %1, i64 0, i32 1
  br label %252

120:                                              ; preds = %4
  %121 = icmp eq ptr %1, %0
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %123, ptr noundef %3) #5
  %124 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %124, ptr noundef %3) #5
  %125 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %125, ptr noundef %3) #5
  br label %126

126:                                              ; preds = %120, %122
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !48
  %129 = zext i32 %128 to i64
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %254, label %131

131:                                              ; preds = %126, %135
  %132 = phi i64 [ %136, %135 ], [ 0, %126 ]
  br i1 %121, label %133, label %135

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 6, i64 %132
  tail call void %2(ptr noundef nonnull %134, ptr noundef %3) #5
  br label %135

135:                                              ; preds = %131, %133
  %136 = add nuw nsw i64 %132, 1
  %137 = icmp eq i64 %136, %129
  br i1 %137, label %254, label %131, !llvm.loop !538

138:                                              ; preds = %4
  %139 = icmp eq ptr %1, %0
  br i1 %139, label %140, label %254

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %141, ptr noundef %3) #5
  %142 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %142, ptr noundef %3) #5
  %143 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %143, ptr noundef %3) #5
  %144 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %1, i64 0, i32 1
  br label %252

145:                                              ; preds = %4
  %146 = icmp eq ptr %1, %0
  br i1 %146, label %147, label %155

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %148, ptr noundef %3) #5
  %149 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %149, ptr noundef %3) #5
  %150 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %150, ptr noundef %3) #5
  %151 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %151, ptr noundef %3) #5
  %152 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  %154 = icmp eq ptr %153, null
  br i1 %154, label %194, label %159

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !48
  %158 = icmp eq ptr %157, null
  br i1 %158, label %254, label %159

159:                                              ; preds = %147, %155
  %160 = phi ptr [ %156, %155 ], [ %152, %147 ]
  %161 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 2
  %162 = load i64, ptr %161, align 8, !tbaa !48
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %192, label %164

164:                                              ; preds = %159, %188
  %165 = phi i64 [ %189, %188 ], [ 0, %159 ]
  %166 = load ptr, ptr %160, align 8, !tbaa !48
  %167 = icmp eq ptr %166, %0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %0, i64 %165, i32 1
  tail call void %2(ptr noundef nonnull %169, ptr noundef %3) #5
  %170 = load ptr, ptr %160, align 8, !tbaa !48
  br label %171

171:                                              ; preds = %168, %164
  %172 = phi ptr [ %170, %168 ], [ %166, %164 ]
  %173 = icmp eq ptr %172, %0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %0, i64 %165, i32 2
  tail call void %2(ptr noundef nonnull %175, ptr noundef %3) #5
  %176 = load ptr, ptr %160, align 8, !tbaa !48
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi ptr [ %176, %174 ], [ %172, %171 ]
  %179 = icmp eq ptr %178, %0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %0, i64 %165, i32 3
  tail call void %2(ptr noundef nonnull %181, ptr noundef %3) #5
  %182 = load ptr, ptr %160, align 8, !tbaa !48
  br label %183

183:                                              ; preds = %180, %177
  %184 = phi ptr [ %182, %180 ], [ %178, %177 ]
  %185 = icmp eq ptr %184, %0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %0, i64 %165, i32 4
  tail call void %2(ptr noundef nonnull %187, ptr noundef %3) #5
  br label %188

188:                                              ; preds = %183, %186
  %189 = add i64 %165, 1
  %190 = load i64, ptr %161, align 8, !tbaa !48
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %164, !llvm.loop !539

192:                                              ; preds = %188, %159
  br i1 %146, label %193, label %254

193:                                              ; preds = %192
  tail call void %2(ptr noundef nonnull %160, ptr noundef %3) #5
  br label %194

194:                                              ; preds = %147, %193
  %195 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 4
  br label %252

196:                                              ; preds = %4
  %197 = icmp eq ptr %1, %0
  br i1 %197, label %198, label %254

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %199, ptr noundef %3) #5
  %200 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %200, ptr noundef %3) #5
  %201 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %201, ptr noundef %3) #5
  %202 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %202, ptr noundef %3) #5
  %203 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %203, ptr noundef %3) #5
  %204 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  br label %252

205:                                              ; preds = %4
  %206 = icmp eq ptr %1, %0
  br i1 %206, label %207, label %254

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %208, ptr noundef %3) #5
  %209 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %209, ptr noundef %3) #5
  %210 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %210, ptr noundef %3) #5
  %211 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %211, ptr noundef %3) #5
  %212 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %212, ptr noundef %3) #5
  %213 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %213, ptr noundef %3) #5
  %214 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %214, ptr noundef %3) #5
  %215 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %215, ptr noundef %3) #5
  %216 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 3
  br label %252

217:                                              ; preds = %4
  %218 = icmp eq ptr %1, %0
  br i1 %218, label %219, label %254

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %220, ptr noundef %3) #5
  %221 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %221, ptr noundef %3) #5
  %222 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %222, ptr noundef %3) #5
  %223 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %223, ptr noundef %3) #5
  %224 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 2
  br label %252

225:                                              ; preds = %4
  %226 = icmp eq ptr %1, %0
  br i1 %226, label %227, label %254

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %228, ptr noundef %3) #5
  %229 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %229, ptr noundef %3) #5
  %230 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %230, ptr noundef %3) #5
  %231 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %1, i64 0, i32 1
  br label %252

232:                                              ; preds = %4
  %233 = icmp eq ptr %1, %0
  br i1 %233, label %234, label %254

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %235, ptr noundef %3) #5
  %236 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %236, ptr noundef %3) #5
  %237 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %237, ptr noundef %3) #5
  %238 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 2
  br label %252

239:                                              ; preds = %4
  %240 = icmp eq ptr %1, %0
  br i1 %240, label %241, label %254

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %242, ptr noundef %3) #5
  %243 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %243, ptr noundef %3) #5
  %244 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %244, ptr noundef %3) #5
  %245 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 2
  br label %252

246:                                              ; preds = %4
  %247 = icmp eq ptr %1, %0
  br i1 %247, label %248, label %254

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %249, ptr noundef %3) #5
  %250 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %250, ptr noundef %3) #5
  %251 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %1, i64 0, i32 1
  br label %252

252:                                              ; preds = %8, %30, %52, %58, %66, %73, %80, %104, %109, %116, %140, %194, %198, %207, %219, %227, %234, %241, %248
  %253 = phi ptr [ %251, %248 ], [ %245, %241 ], [ %238, %234 ], [ %231, %227 ], [ %224, %219 ], [ %216, %207 ], [ %204, %198 ], [ %195, %194 ], [ %144, %140 ], [ %119, %116 ], [ %113, %109 ], [ %106, %104 ], [ %83, %80 ], [ %77, %73 ], [ %70, %66 ], [ %63, %58 ], [ %55, %52 ], [ %32, %30 ], [ %10, %8 ]
  tail call void %2(ptr noundef nonnull %253, ptr noundef %3) #5
  br label %254

254:                                              ; preds = %135, %99, %47, %25, %252, %126, %90, %38, %16, %155, %246, %239, %232, %225, %217, %205, %196, %192, %138, %114, %107, %102, %78, %71, %64, %56, %50, %28, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9rtvec_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load i32, ptr %1, align 8, !tbaa !350
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #5
  br label %14

14:                                               ; preds = %10, %12
  %15 = add i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !540

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_7rtx_def(ptr noundef readnone %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 !prof !35 {
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
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %23, ptr noundef %3) #5
  %24 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

25:                                               ; preds = %4
  %26 = icmp eq ptr %1, %0
  br i1 %26, label %27, label %653

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %28, ptr noundef %3) #5
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

30:                                               ; preds = %4
  %31 = icmp eq ptr %1, %0
  br i1 %31, label %32, label %653

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %33, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %50, ptr noundef %3) #5
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

52:                                               ; preds = %4
  %53 = icmp eq ptr %1, %0
  br i1 %53, label %54, label %653

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %55, ptr noundef %3) #5
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

57:                                               ; preds = %4
  %58 = icmp eq ptr %1, %0
  br i1 %58, label %59, label %653

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %60, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %69, ptr noundef %3) #5
  %70 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

71:                                               ; preds = %4
  %72 = icmp eq ptr %1, %0
  br i1 %72, label %73, label %653

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %74, ptr noundef %3) #5
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

76:                                               ; preds = %4
  %77 = icmp eq ptr %1, %0
  br i1 %77, label %78, label %653

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %79, ptr noundef %3) #5
  %80 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %80, ptr noundef %3) #5
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

82:                                               ; preds = %4
  %83 = icmp eq ptr %1, %0
  br i1 %83, label %84, label %653

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %85, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %94, ptr noundef %3) #5
  %95 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %95, ptr noundef %3) #5
  %96 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

97:                                               ; preds = %4
  %98 = icmp eq ptr %1, %0
  br i1 %98, label %99, label %653

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %100, ptr noundef %3) #5
  %101 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %101, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %190, ptr noundef %3) #5
  %191 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

192:                                              ; preds = %4
  %193 = icmp eq ptr %1, %0
  br i1 %193, label %194, label %653

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %195, ptr noundef %3) #5
  %196 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

197:                                              ; preds = %4
  %198 = icmp eq ptr %1, %0
  br i1 %198, label %199, label %653

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %200, ptr noundef %3) #5
  %201 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

202:                                              ; preds = %4
  %203 = icmp eq ptr %1, %0
  br i1 %203, label %204, label %653

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %205, ptr noundef %3) #5
  %206 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

207:                                              ; preds = %4
  %208 = icmp eq ptr %1, %0
  br i1 %208, label %209, label %653

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %210, ptr noundef %3) #5
  %211 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

212:                                              ; preds = %4
  %213 = icmp eq ptr %1, %0
  br i1 %213, label %214, label %653

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %215, ptr noundef %3) #5
  %216 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

217:                                              ; preds = %4
  %218 = icmp eq ptr %1, %0
  br i1 %218, label %219, label %653

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %220, ptr noundef %3) #5
  %221 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

222:                                              ; preds = %4
  %223 = icmp eq ptr %1, %0
  br i1 %223, label %224, label %653

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %225, ptr noundef %3) #5
  %226 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

227:                                              ; preds = %4
  %228 = icmp eq ptr %1, %0
  br i1 %228, label %229, label %653

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %230, ptr noundef %3) #5
  %231 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

232:                                              ; preds = %4
  %233 = icmp eq ptr %1, %0
  br i1 %233, label %234, label %653

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %235, ptr noundef %3) #5
  %236 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

237:                                              ; preds = %4
  %238 = icmp eq ptr %1, %0
  br i1 %238, label %239, label %653

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %240, ptr noundef %3) #5
  %241 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

242:                                              ; preds = %4
  %243 = icmp eq ptr %1, %0
  br i1 %243, label %244, label %653

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %245, ptr noundef %3) #5
  %246 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

247:                                              ; preds = %4
  %248 = icmp eq ptr %1, %0
  br i1 %248, label %249, label %653

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %250, ptr noundef %3) #5
  %251 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

252:                                              ; preds = %4
  %253 = icmp eq ptr %1, %0
  br i1 %253, label %254, label %653

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %255, ptr noundef %3) #5
  %256 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

257:                                              ; preds = %4
  %258 = icmp eq ptr %1, %0
  br i1 %258, label %259, label %653

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %260, ptr noundef %3) #5
  %261 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

262:                                              ; preds = %4
  %263 = icmp eq ptr %1, %0
  br i1 %263, label %264, label %653

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %265, ptr noundef %3) #5
  %266 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

267:                                              ; preds = %4
  %268 = icmp eq ptr %1, %0
  br i1 %268, label %269, label %653

269:                                              ; preds = %267
  %270 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %270, ptr noundef %3) #5
  %271 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

272:                                              ; preds = %4
  %273 = icmp eq ptr %1, %0
  br i1 %273, label %274, label %653

274:                                              ; preds = %272
  %275 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %275, ptr noundef %3) #5
  %276 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

277:                                              ; preds = %4
  %278 = icmp eq ptr %1, %0
  br i1 %278, label %279, label %653

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %280, ptr noundef %3) #5
  %281 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

282:                                              ; preds = %4
  %283 = icmp eq ptr %1, %0
  br i1 %283, label %284, label %653

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %285, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %306, ptr noundef %3) #5
  %307 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

308:                                              ; preds = %4
  %309 = icmp eq ptr %1, %0
  br i1 %309, label %310, label %653

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %311, ptr noundef %3) #5
  %312 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

313:                                              ; preds = %4
  %314 = icmp eq ptr %1, %0
  br i1 %314, label %315, label %653

315:                                              ; preds = %313
  %316 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %316, ptr noundef %3) #5
  %317 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

318:                                              ; preds = %4
  %319 = icmp eq ptr %1, %0
  br i1 %319, label %320, label %653

320:                                              ; preds = %318
  %321 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %321, ptr noundef %3) #5
  %322 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

323:                                              ; preds = %4
  %324 = icmp eq ptr %1, %0
  br i1 %324, label %325, label %653

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %326, ptr noundef %3) #5
  %327 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

328:                                              ; preds = %4
  %329 = icmp eq ptr %1, %0
  br i1 %329, label %330, label %653

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %331, ptr noundef %3) #5
  %332 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

333:                                              ; preds = %4
  %334 = icmp eq ptr %1, %0
  br i1 %334, label %335, label %653

335:                                              ; preds = %333
  %336 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %336, ptr noundef %3) #5
  %337 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

338:                                              ; preds = %4
  %339 = icmp eq ptr %1, %0
  br i1 %339, label %340, label %653

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %341, ptr noundef %3) #5
  %342 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

343:                                              ; preds = %4
  %344 = icmp eq ptr %1, %0
  br i1 %344, label %345, label %653

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %346, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %355, ptr noundef %3) #5
  %356 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

357:                                              ; preds = %4
  %358 = icmp eq ptr %1, %0
  br i1 %358, label %359, label %653

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %360, ptr noundef %3) #5
  %361 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

362:                                              ; preds = %4
  %363 = icmp eq ptr %1, %0
  br i1 %363, label %364, label %653

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %365, ptr noundef %3) #5
  %366 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

367:                                              ; preds = %4
  %368 = icmp eq ptr %1, %0
  br i1 %368, label %369, label %653

369:                                              ; preds = %367
  %370 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %370, ptr noundef %3) #5
  %371 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

372:                                              ; preds = %4
  %373 = icmp eq ptr %1, %0
  br i1 %373, label %374, label %653

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %375, ptr noundef %3) #5
  %376 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

377:                                              ; preds = %4
  %378 = icmp eq ptr %1, %0
  br i1 %378, label %379, label %653

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %380, ptr noundef %3) #5
  %381 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

382:                                              ; preds = %4
  %383 = icmp eq ptr %1, %0
  br i1 %383, label %384, label %653

384:                                              ; preds = %382
  %385 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %385, ptr noundef %3) #5
  %386 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

387:                                              ; preds = %4
  %388 = icmp eq ptr %1, %0
  br i1 %388, label %389, label %653

389:                                              ; preds = %387
  %390 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %390, ptr noundef %3) #5
  %391 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

392:                                              ; preds = %4
  %393 = icmp eq ptr %1, %0
  br i1 %393, label %394, label %653

394:                                              ; preds = %392
  %395 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %395, ptr noundef %3) #5
  %396 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

397:                                              ; preds = %4
  %398 = icmp eq ptr %1, %0
  br i1 %398, label %399, label %653

399:                                              ; preds = %397
  %400 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %400, ptr noundef %3) #5
  %401 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

402:                                              ; preds = %4
  %403 = icmp eq ptr %1, %0
  br i1 %403, label %404, label %653

404:                                              ; preds = %402
  %405 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %405, ptr noundef %3) #5
  %406 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

407:                                              ; preds = %4
  %408 = icmp eq ptr %1, %0
  br i1 %408, label %409, label %653

409:                                              ; preds = %407
  %410 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %410, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %419, ptr noundef %3) #5
  %420 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

421:                                              ; preds = %4
  %422 = icmp eq ptr %1, %0
  br i1 %422, label %423, label %653

423:                                              ; preds = %421
  %424 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %424, ptr noundef %3) #5
  %425 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

426:                                              ; preds = %4
  %427 = icmp eq ptr %1, %0
  br i1 %427, label %428, label %653

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %429, ptr noundef %3) #5
  %430 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

431:                                              ; preds = %4
  %432 = icmp eq ptr %1, %0
  br i1 %432, label %433, label %653

433:                                              ; preds = %431
  %434 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %434, ptr noundef %3) #5
  %435 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %435, ptr noundef %3) #5
  %436 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

437:                                              ; preds = %4
  %438 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %439 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %440 = load i32, ptr %439, align 8, !tbaa !48
  %441 = and i32 %440, 128
  %442 = icmp ne i32 %441, 0
  %443 = icmp eq ptr %1, %0
  %444 = and i1 %443, %442
  br i1 %444, label %445, label %447

445:                                              ; preds = %437
  %446 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %446, ptr noundef %3) #5
  br label %447

447:                                              ; preds = %437, %445
  br i1 %443, label %448, label %653

448:                                              ; preds = %447
  %449 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %449, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %457, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %466, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %495, ptr noundef %3) #5
  %496 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

497:                                              ; preds = %4
  %498 = icmp eq ptr %1, %0
  br i1 %498, label %499, label %653

499:                                              ; preds = %497
  %500 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %500, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %513, ptr noundef %3) #5
  %514 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

515:                                              ; preds = %4
  %516 = icmp eq ptr %1, %0
  br i1 %516, label %517, label %653

517:                                              ; preds = %515
  %518 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %518, ptr noundef %3) #5
  %519 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %519, ptr noundef %3) #5
  %520 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

521:                                              ; preds = %4
  %522 = icmp eq ptr %1, %0
  br i1 %522, label %523, label %653

523:                                              ; preds = %521
  %524 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %524, ptr noundef %3) #5
  %525 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %525, ptr noundef %3) #5
  %526 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %526, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %543, ptr noundef %3) #5
  %544 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  tail call void %2(ptr noundef nonnull %544, ptr noundef %3) #5
  %545 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %545, ptr noundef %3) #5
  %546 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %546, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %559, ptr noundef %3) #5
  %560 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

561:                                              ; preds = %4
  %562 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %563 = load i32, ptr %562, align 8, !tbaa !48
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
  tail call void %2(ptr noundef nonnull %575, ptr noundef %3) #5
  br label %576

576:                                              ; preds = %574, %572, %570, %568, %566, %564, %561, %561, %561, %561, %561, %561, %561, %561, %561
  %577 = icmp eq ptr %1, %0
  br i1 %577, label %578, label %653

578:                                              ; preds = %576
  %579 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %579, ptr noundef %3) #5
  %580 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %580, ptr noundef %3) #5
  %581 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

582:                                              ; preds = %4
  %583 = icmp eq ptr %1, %0
  br i1 %583, label %584, label %653

584:                                              ; preds = %582
  %585 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %585, ptr noundef %3) #5
  %586 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %586, ptr noundef %3) #5
  %587 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %587, ptr noundef %3) #5
  %588 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %588, ptr noundef %3) #5
  %589 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

590:                                              ; preds = %4
  %591 = icmp eq ptr %1, %0
  br i1 %591, label %592, label %653

592:                                              ; preds = %590
  %593 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %593, ptr noundef %3) #5
  %594 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

595:                                              ; preds = %4
  %596 = icmp eq ptr %1, %0
  br i1 %596, label %597, label %653

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %598, ptr noundef %3) #5
  %599 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %599, ptr noundef %3) #5
  %600 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %600, ptr noundef %3) #5
  %601 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %601, ptr noundef %3) #5
  %602 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %602, ptr noundef %3) #5
  %603 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

604:                                              ; preds = %4
  %605 = icmp eq ptr %1, %0
  br i1 %605, label %606, label %653

606:                                              ; preds = %604
  %607 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %607, ptr noundef %3) #5
  %608 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %608, ptr noundef %3) #5
  %609 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %609, ptr noundef %3) #5
  %610 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %610, ptr noundef %3) #5
  %611 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %611, ptr noundef %3) #5
  %612 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

613:                                              ; preds = %4
  %614 = icmp eq ptr %1, %0
  br i1 %614, label %615, label %653

615:                                              ; preds = %613
  %616 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %616, ptr noundef %3) #5
  %617 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %617, ptr noundef %3) #5
  %618 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %618, ptr noundef %3) #5
  %619 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %619, ptr noundef %3) #5
  %620 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

621:                                              ; preds = %4
  %622 = icmp eq ptr %1, %0
  br i1 %622, label %623, label %653

623:                                              ; preds = %621
  %624 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %624, ptr noundef %3) #5
  %625 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %625, ptr noundef %3) #5
  %626 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %626, ptr noundef %3) #5
  %627 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %627, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %640, ptr noundef %3) #5
  %641 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

642:                                              ; preds = %4
  %643 = icmp eq ptr %1, %0
  br i1 %643, label %644, label %653

644:                                              ; preds = %642
  %645 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %645, ptr noundef %3) #5
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
  tail call void %2(ptr noundef nonnull %652, ptr noundef %3) #5
  br label %653

653:                                              ; preds = %447, %651, %642, %637, %621, %613, %604, %595, %590, %582, %576, %556, %540, %521, %515, %510, %497, %492, %463, %454, %431, %426, %421, %416, %407, %402, %397, %392, %387, %382, %377, %372, %367, %362, %357, %352, %343, %338, %333, %328, %323, %318, %313, %308, %303, %282, %277, %272, %267, %262, %257, %252, %247, %242, %237, %232, %227, %222, %217, %212, %207, %202, %197, %192, %187, %97, %91, %82, %76, %71, %66, %57, %52, %47, %30, %25, %20, %7, %4, %647, %633, %629, %552, %548, %536, %532, %528, %506, %502, %488, %484, %480, %476, %472, %468, %459, %450, %412, %348, %299, %295, %291, %287, %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %87, %62, %43, %39, %35, %16, %12
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_constant_descriptor_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_15bitmap_head_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_answer(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_6answer, i32 noundef 167) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !419
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_answer(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !421
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %8, %31
  %14 = phi i64 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14
  %16 = tail call i32 @cpp_token_val_index(ptr noundef nonnull %15) #5
  switch i32 %16, label %31 [
    i32 0, label %17
    i32 1, label %23
    i32 2, label %28
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %19, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %22) #5
  br label %31

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_cpp_token(ptr noundef nonnull %25) #6
  br label %31

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14, i32 3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %30) #5
  br label %31

31:                                               ; preds = %17, %21, %28, %27, %23, %13
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %34, label %13, !llvm.loop !541

34:                                               ; preds = %31, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_6answer(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %1, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !421
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %8, %36
  %14 = phi i64 [ %37, %36 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14
  %16 = call i32 @cpp_token_val_index(ptr noundef nonnull %15) #5
  switch i32 %16, label %36 [
    i32 0, label %17
    i32 1, label %30
    i32 2, label %33
  ]

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %18 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds i8, ptr %19, i64 -24
  %22 = select i1 %20, ptr null, ptr %21
  store ptr %22, ptr %5, align 8, !tbaa !59
  br i1 %6, label %23, label %25

23:                                               ; preds = %17
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  %24 = load ptr, ptr %5, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %22, %17 ]
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %26, i64 0, i32 1
  %29 = select i1 %27, ptr null, ptr %28
  store ptr %29, ptr %18, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %36

30:                                               ; preds = %13
  br i1 %6, label %31, label %36

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14, i32 3
  call void %2(ptr noundef nonnull %32, ptr noundef %3) #5
  br label %36

33:                                               ; preds = %13
  br i1 %6, label %34, label %36

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14, i32 3, i32 0, i32 1
  call void %2(ptr noundef nonnull %35, ptr noundef %3) #5
  br label %36

36:                                               ; preds = %25, %31, %30, %34, %33, %13
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %39, label %13, !llvm.loop !542

39:                                               ; preds = %36, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cpp_token(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %16, %14 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_9cpp_token, i32 noundef 169) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @cpp_token_val_index(ptr noundef %3) #5
  switch i32 %7, label %21 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %18
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %10, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %13) #5
  br label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %2

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %14, %6, %2, %8, %12, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_cpp_macro(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9cpp_macro, i32 noundef 168) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %77, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !425
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7, %21
  %12 = phi i16 [ %22, %21 ], [ %9, %7 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %7 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !423
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %16, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %19) #5
  %20 = load i16, ptr %8, align 8, !tbaa !425
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i16 [ %20, %18 ], [ %12, %11 ]
  %23 = add i64 %13, 1
  %24 = zext i16 %22 to i64
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %11, !llvm.loop !543

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 8, !tbaa !423
  br label %28

28:                                               ; preds = %26, %7
  %29 = phi ptr [ %27, %26 ], [ %5, %7 ]
  %30 = tail call i32 @gt_pch_note_object(ptr noundef %29, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_9cpp_macro, i32 noundef 217) #5
  br label %31

31:                                               ; preds = %28, %4
  %32 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  br i1 %35, label %38, label %76

38:                                               ; preds = %31
  %39 = icmp eq ptr %37, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !427
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %40, %66
  %45 = phi i64 [ %67, %66 ], [ 0, %40 ]
  %46 = load ptr, ptr %36, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 %45
  %48 = tail call i32 @cpp_token_val_index(ptr noundef %47) #5
  switch i32 %48, label %66 [
    i32 0, label %49
    i32 1, label %56
    i32 2, label %62
  ]

49:                                               ; preds = %44
  %50 = load ptr, ptr %36, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 %45, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %52, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %55) #5
  br label %66

56:                                               ; preds = %44
  %57 = load ptr, ptr %36, align 8, !tbaa !48
  %58 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 %45, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  tail call void @gt_pch_nx_cpp_token(ptr noundef nonnull %59) #6
  br label %66

62:                                               ; preds = %44
  %63 = load ptr, ptr %36, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.cpp_token, ptr %63, i64 %45, i32 3, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  tail call void @gt_pch_n_S(ptr noundef %65) #5
  br label %66

66:                                               ; preds = %49, %54, %62, %61, %56, %44
  %67 = add i64 %45, 1
  %68 = load i32, ptr %41, align 4, !tbaa !427
  %69 = zext i32 %68 to i64
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %44, !llvm.loop !544

71:                                               ; preds = %66
  %72 = load ptr, ptr %36, align 8, !tbaa !48
  br label %73

73:                                               ; preds = %71, %40
  %74 = phi ptr [ %72, %71 ], [ %37, %40 ]
  %75 = tail call i32 @gt_pch_note_object(ptr noundef %74, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_9cpp_macro, i32 noundef 217) #5
  br label %77

76:                                               ; preds = %31
  tail call void @gt_pch_n_S(ptr noundef %37) #5
  br label %77

77:                                               ; preds = %76, %73, %38, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9cpp_macro(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !425
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %9, %27
  %14 = phi i16 [ %28, %27 ], [ %11, %9 ]
  %15 = phi i64 [ %35, %27 ], [ 0, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %16 = load ptr, ptr %1, align 8, !tbaa !423
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds i8, ptr %18, i64 -24
  %21 = select i1 %19, ptr null, ptr %20
  store ptr %21, ptr %5, align 8, !tbaa !59
  %22 = icmp eq ptr %16, %0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %1, align 8, !tbaa !423
  %26 = load i16, ptr %10, align 8, !tbaa !425
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i16 [ %26, %23 ], [ %14, %13 ]
  %29 = phi ptr [ %25, %23 ], [ %16, %13 ]
  %30 = phi ptr [ %24, %23 ], [ %21, %13 ]
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.tree_identifier, ptr %30, i64 0, i32 1
  %33 = select i1 %31, ptr null, ptr %32
  %34 = getelementptr inbounds ptr, ptr %29, i64 %15
  store ptr %33, ptr %34, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %35 = add i64 %15, 1
  %36 = zext i16 %28 to i64
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %13, !llvm.loop !545

38:                                               ; preds = %27, %9
  %39 = icmp eq ptr %1, %0
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  call void %2(ptr noundef nonnull %1, ptr noundef %3) #5
  br label %41

41:                                               ; preds = %38, %40, %4
  %42 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %100, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !427
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %50, %87
  %55 = phi i64 [ %88, %87 ], [ 0, %50 ]
  %56 = load ptr, ptr %47, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.cpp_token, ptr %56, i64 %55
  %58 = call i32 @cpp_token_val_index(ptr noundef %57) #5
  switch i32 %58, label %87 [
    i32 0, label %59
    i32 1, label %77
    i32 2, label %82
  ]

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %60 = load ptr, ptr %47, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.cpp_token, ptr %60, i64 %55, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds i8, ptr %62, i64 -24
  %65 = select i1 %63, ptr null, ptr %64
  store ptr %65, ptr %6, align 8, !tbaa !59
  %66 = icmp eq ptr %60, %0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  call void %2(ptr noundef nonnull %6, ptr noundef %3) #5
  %68 = load ptr, ptr %6, align 8
  %69 = load ptr, ptr %47, align 8, !tbaa !48
  br label %70

70:                                               ; preds = %67, %59
  %71 = phi ptr [ %69, %67 ], [ %60, %59 ]
  %72 = phi ptr [ %68, %67 ], [ %65, %59 ]
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.tree_identifier, ptr %72, i64 0, i32 1
  %75 = select i1 %73, ptr null, ptr %74
  %76 = getelementptr inbounds %struct.cpp_token, ptr %71, i64 %55, i32 3
  store ptr %75, ptr %76, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %87

77:                                               ; preds = %54
  %78 = load ptr, ptr %47, align 8, !tbaa !48
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 %55, i32 3
  call void %2(ptr noundef nonnull %81, ptr noundef %3) #5
  br label %87

82:                                               ; preds = %54
  %83 = load ptr, ptr %47, align 8, !tbaa !48
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 %55, i32 3, i32 0, i32 1
  call void %2(ptr noundef nonnull %86, ptr noundef %3) #5
  br label %87

87:                                               ; preds = %70, %80, %77, %85, %82, %54
  %88 = add i64 %55, 1
  %89 = load i32, ptr %51, align 4, !tbaa !427
  %90 = zext i32 %89 to i64
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %54, !llvm.loop !546

92:                                               ; preds = %87, %50
  %93 = icmp eq ptr %1, %0
  br i1 %93, label %98, label %100

94:                                               ; preds = %41
  %95 = icmp eq ptr %1, %0
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  br label %98

98:                                               ; preds = %92, %96
  %99 = phi ptr [ %97, %96 ], [ %47, %92 ]
  call void %2(ptr noundef nonnull %99, ptr noundef %3) #5
  br label %100

100:                                              ; preds = %98, %92, %94, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9cpp_token(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = alloca ptr, align 8
  %6 = tail call i32 @cpp_token_val_index(ptr noundef %1) #5
  switch i32 %6, label %29 [
    i32 0, label %7
    i32 1, label %21
    i32 2, label %25
  ]

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %8 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds i8, ptr %9, i64 -24
  %12 = select i1 %10, ptr null, ptr %11
  store ptr %12, ptr %5, align 8, !tbaa !59
  %13 = icmp eq ptr %1, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  %15 = load ptr, ptr %5, align 8
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %15, %14 ], [ %12, %7 ]
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.tree_identifier, ptr %17, i64 0, i32 1
  %20 = select i1 %18, ptr null, ptr %19
  store ptr %20, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %29

21:                                               ; preds = %4
  %22 = icmp eq ptr %1, %0
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %24, ptr noundef %3) #5
  br label %29

25:                                               ; preds = %4
  %26 = icmp eq ptr %1, %0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %28, ptr noundef %3) #5
  br label %29

29:                                               ; preds = %4, %25, %27, %21, %23, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_line_maps(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9line_maps, i32 noundef 170) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !429
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !431
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %16, %11 ], [ 0, %7 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !429
  %14 = getelementptr inbounds %struct.line_map, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !432
  tail call void @gt_pch_n_S(ptr noundef %15) #5
  %16 = add i64 %12, 1
  %17 = load i32, ptr %8, align 4, !tbaa !431
  %18 = zext i32 %17 to i64
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %11, !llvm.loop !547

20:                                               ; preds = %11
  %21 = load ptr, ptr %0, align 8, !tbaa !429
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi ptr [ %21, %20 ], [ %5, %7 ]
  %24 = tail call i32 @gt_pch_note_object(ptr noundef %23, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_9line_maps, i32 noundef 217) #5
  br label %25

25:                                               ; preds = %4, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9line_maps(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = load ptr, ptr %1, align 8, !tbaa !429
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.line_maps, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !431
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %19
  %12 = phi i32 [ %20, %19 ], [ %9, %7 ]
  %13 = phi i64 [ %21, %19 ], [ 0, %7 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !429
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.line_map, ptr %0, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #5
  %18 = load i32, ptr %8, align 4, !tbaa !431
  br label %19

19:                                               ; preds = %11, %16
  %20 = phi i32 [ %12, %11 ], [ %18, %16 ]
  %21 = add i64 %13, 1
  %22 = zext i32 %20 to i64
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %11, !llvm.loop !548

24:                                               ; preds = %19, %7
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %1, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_II17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_II17splay_tree_node_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !435
  tail call void @gt_pch_n_II17splay_tree_node_s(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !437
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_II17splay_tree_node_s, i32 noundef 217) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_II17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_SP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_SP9tree_node17splay_tree_node_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %17, %13 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8, !tbaa !438
  %7 = inttoptr i64 %6 to ptr
  tail call void @gt_pch_n_S(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !439
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = inttoptr i64 %9 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %12) #5
  br label %13

13:                                               ; preds = %11, %4
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !435
  tail call void @gt_pch_n_SP9tree_node17splay_tree_node_s(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !437
  %18 = tail call i32 @gt_pch_note_object(ptr noundef %17, ptr noundef %17, ptr noundef nonnull @gt_pch_p_SP9tree_node17splay_tree_node_s, i32 noundef 217) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %4

20:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_SP9tree_node17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9tree_nodeP9tree_node17splay_tree_node_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %20, %16 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8, !tbaa !438
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = inttoptr i64 %6 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %9) #5
  br label %10

10:                                               ; preds = %4, %8
  %11 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !439
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = inttoptr i64 %12 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #5
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !435
  tail call void @gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !437
  %21 = tail call i32 @gt_pch_note_object(ptr noundef %20, ptr noundef %20, ptr noundef nonnull @gt_pch_p_P9tree_nodeP9tree_node17splay_tree_node_s, i32 noundef 217) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %4

23:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_IP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_IP9tree_node17splay_tree_node_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %15, %11 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !439
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = inttoptr i64 %7 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #5
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !435
  tail call void @gt_pch_n_IP9tree_node17splay_tree_node_s(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !437
  %16 = tail call i32 @gt_pch_note_object(ptr noundef %15, ptr noundef %15, ptr noundef nonnull @gt_pch_p_IP9tree_node17splay_tree_node_s, i32 noundef 217) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %4

18:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_IP9tree_node17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P12tree_int_map4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12tree_int_map4htab, i32 noundef 185) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_tree_int_map(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !549

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P12tree_int_map4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P12tree_int_map4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !550

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_IP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_IP9tree_node12splay_tree_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_pch_n_IP9tree_node17splay_tree_node_s(ptr noundef %5) #6
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_IP9tree_node12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9tree_nodeP9tree_node12splay_tree_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %5) #6
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P12varpool_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12varpool_node4htab, i32 noundef 189) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !551

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P12varpool_node4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P12varpool_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !552

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P24constant_descriptor_tree4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P24constant_descriptor_tree4htab, i32 noundef 192) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_constant_descriptor_tree(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !553

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P24constant_descriptor_tree4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P24constant_descriptor_tree4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !554

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P12object_block4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12object_block4htab, i32 noundef 193) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_object_block(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !555

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P12object_block4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P12object_block4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !556

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P7section4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P7section4htab, i32 noundef 194) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_section(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !557

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P7section4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P7section4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !558

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P17tree_priority_map4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P17tree_priority_map4htab, i32 noundef 195) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_tree_priority_map(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !559

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P17tree_priority_map4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P17tree_priority_map4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !560

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P8tree_map4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P8tree_map4htab, i32 noundef 196) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_tree_map(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !561

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P8tree_map4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P8tree_map4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !562

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P15throw_stmt_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !563

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9reg_attrs4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9reg_attrs4htab, i32 noundef 201) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_reg_attrs(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !564

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P9reg_attrs4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9reg_attrs4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !565

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9mem_attrs4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9mem_attrs4htab, i32 noundef 202) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_mem_attrs(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !566

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P9mem_attrs4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9mem_attrs4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !567

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P7rtx_def4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P7rtx_def4htab, i32 noundef 203) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !568

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P7rtx_def4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P7rtx_def4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !569

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_SP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_SP9tree_node12splay_tree_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_pch_n_SP9tree_node17splay_tree_node_s(ptr noundef %5) #6
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_SP9tree_node12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P11cgraph_node4htab(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P11cgraph_node4htab, i32 noundef 210) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !570

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P11cgraph_node4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P11cgraph_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !571

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_II12splay_tree_s(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_II12splay_tree_s, i32 noundef 217) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !441
  tail call void @gt_pch_n_II17splay_tree_node_s(ptr noundef %5) #6
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_II12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #5
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P27cgraph_node_set_element_def4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !572

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P11cgraph_edge4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !573

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9loop_exit4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !574

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P24types_used_by_vars_entry4htab(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P24types_used_by_vars_entry4htab, i32 noundef 215) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_types_used_by_vars_entry(ptr noundef nonnull %17) #6
  %20 = load i64, ptr %9, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !575

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P24types_used_by_vars_entry4htab, i32 noundef 217) #5
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P24types_used_by_vars_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !576

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9tree_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !122
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #5
  %19 = load i64, ptr %9, align 8, !tbaa !125
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !577

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #5
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_reg_equiv_init(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !578 {
  %2 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !417
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #6
  %15 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !59
  %16 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !417
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = sext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !579

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @ggc_set_mark(ptr noundef nonnull %24) #5
  br label %28

28:                                               ; preds = %23, %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_reg_equiv_init(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !580 {
  %2 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !417
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12) #6
  %15 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !59
  %16 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !417
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = sext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !581

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef nonnull @reg_equiv_init, ptr noundef nonnull @gt_pch_pa_reg_equiv_init, i32 noundef 217) #5
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_constant_pool(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_constant_pool(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_initial_value_struct(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_initial_value_struct(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_regno_reg_rtx(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !582 {
  %2 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !583
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #6
  %15 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !59
  %16 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !583
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = sext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !592

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @ggc_set_mark(ptr noundef nonnull %24) #5
  br label %28

28:                                               ; preds = %23, %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_regno_reg_rtx(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !593 {
  %2 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !583
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12) #6
  %15 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !59
  %16 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !583
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = sext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !594

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef nonnull @regno_reg_rtx, ptr noundef nonnull @gt_pch_pa_regno_reg_rtx, i32 noundef 217) #5
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_reg_equiv_init(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 !PGOFuncName !595 {
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !417
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7, %19
  %11 = phi i32 [ %20, %19 ], [ %8, %7 ]
  %12 = phi ptr [ %21, %19 ], [ %5, %7 ]
  %13 = phi i64 [ %22, %19 ], [ 0, %7 ]
  %14 = icmp eq ptr %12, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds ptr, ptr %0, i64 %13
  tail call void %2(ptr noundef %16, ptr noundef %3) #5
  %17 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !59
  %18 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !417
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %11, %10 ], [ %18, %15 ]
  %21 = phi ptr [ %12, %10 ], [ %17, %15 ]
  %22 = add i64 %13, 1
  %23 = sext i32 %20 to i64
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %10, !llvm.loop !596

25:                                               ; preds = %19, %7
  %26 = icmp eq ptr %0, @reg_equiv_init
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void %2(ptr noundef nonnull @reg_equiv_init, ptr noundef %3) #5
  br label %28

28:                                               ; preds = %25, %27, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_regno_reg_rtx(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 !PGOFuncName !597 {
  %5 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !583
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7, %19
  %11 = phi i32 [ %20, %19 ], [ %8, %7 ]
  %12 = phi ptr [ %21, %19 ], [ %5, %7 ]
  %13 = phi i64 [ %22, %19 ], [ 0, %7 ]
  %14 = icmp eq ptr %12, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds ptr, ptr %0, i64 %13
  tail call void %2(ptr noundef %16, ptr noundef %3) #5
  %17 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !59
  %18 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !583
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %11, %10 ], [ %18, %15 ]
  %21 = phi ptr [ %12, %10 ], [ %17, %15 ]
  %22 = add i64 %13, 1
  %23 = sext i32 %20 to i64
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %10, !llvm.loop !598

25:                                               ; preds = %19, %7
  %26 = icmp eq ptr %0, @regno_reg_rtx
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void %2(ptr noundef nonnull @regno_reg_rtx, ptr noundef %3) #5
  br label %28

28:                                               ; preds = %25, %27, %4
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

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
!36 = !{!37, !39, i64 0}
!37 = !{!"VEC_ipa_edge_args_t_gc", !38, i64 0}
!38 = !{!"VEC_ipa_edge_args_t_base", !39, i64 0, !39, i64 4, !40, i64 8}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !44, i64 8}
!43 = !{!"ipa_edge_args", !39, i64 0, !44, i64 8}
!44 = !{!"any pointer", !40, i64 0}
!45 = !{!43, !39, i64 0}
!46 = !{!47, !39, i64 0}
!47 = !{!"ipa_jump_func", !39, i64 0, !40, i64 8}
!48 = !{!40, !40, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!53, !44, i64 0}
!53 = !{!"ssa_operand_memory_d", !44, i64 0, !40, i64 8}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = !{!57, !39, i64 0}
!57 = !{!"VEC_gimple_gc", !58, i64 0}
!58 = !{!"VEC_gimple_base", !39, i64 0, !39, i64 4, !40, i64 8}
!59 = !{!44, !44, i64 0}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50}
!65 = !{!66, !44, i64 8}
!66 = !{!"gimple_omp_for_iter", !39, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!67 = !{!66, !44, i64 16}
!68 = !{!66, !44, i64 24}
!69 = !{!66, !44, i64 32}
!70 = distinct !{!70, !50}
!71 = !{!72, !44, i64 0}
!72 = !{!"throw_stmt_node", !44, i64 0, !39, i64 8}
!73 = !{!74, !39, i64 0}
!74 = !{!"VEC_eh_landing_pad_gc", !75, i64 0}
!75 = !{!"VEC_eh_landing_pad_base", !39, i64 0, !39, i64 4, !40, i64 8}
!76 = distinct !{!76, !50}
!77 = !{!78, !44, i64 0}
!78 = !{!"eh_landing_pad_d", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32}
!79 = !{!78, !44, i64 8}
!80 = !{!78, !44, i64 16}
!81 = !{!78, !44, i64 24}
!82 = !{!83, !39, i64 0}
!83 = !{!"VEC_eh_region_gc", !84, i64 0}
!84 = !{!"VEC_eh_region_base", !39, i64 0, !39, i64 4, !40, i64 8}
!85 = distinct !{!85, !50}
!86 = !{!87, !44, i64 0}
!87 = !{!"eh_region_d", !44, i64 0, !44, i64 8, !44, i64 16, !39, i64 24, !39, i64 28, !40, i64 32, !44, i64 56, !44, i64 64, !44, i64 72, !40, i64 80}
!88 = !{!87, !44, i64 8}
!89 = !{!87, !44, i64 16}
!90 = !{!87, !39, i64 28}
!91 = !{!87, !44, i64 56}
!92 = !{!87, !44, i64 64}
!93 = !{!87, !44, i64 72}
!94 = !{!95, !44, i64 0}
!95 = !{!"eh_catch_d", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!96 = !{!95, !44, i64 8}
!97 = !{!95, !44, i64 16}
!98 = !{!95, !44, i64 24}
!99 = !{!95, !44, i64 32}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = !{!103, !44, i64 0}
!103 = !{!"constant_descriptor_tree", !44, i64 0, !44, i64 8, !39, i64 16}
!104 = !{!103, !44, i64 8}
!105 = !{!106, !44, i64 0}
!106 = !{!"cgraph_asm_node", !44, i64 0, !44, i64 8, !39, i64 16}
!107 = !{!106, !44, i64 8}
!108 = !{!109, !44, i64 8}
!109 = !{!"varpool_node", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32, !39, i64 36, !39, i64 36, !39, i64 36, !39, i64 36, !39, i64 36, !39, i64 36, !39, i64 36}
!110 = distinct !{!110, !50}
!111 = !{!109, !44, i64 0}
!112 = !{!109, !44, i64 16}
!113 = !{!109, !44, i64 24}
!114 = distinct !{!114, !50}
!115 = !{!116, !39, i64 0}
!116 = !{!"VEC_cgraph_node_set_gc", !117, i64 0}
!117 = !{!"VEC_cgraph_node_set_base", !39, i64 0, !39, i64 4, !40, i64 8}
!118 = distinct !{!118, !50}
!119 = !{!120, !44, i64 0}
!120 = !{!"cgraph_node_set_def", !44, i64 0, !44, i64 8, !44, i64 16}
!121 = !{!120, !44, i64 8}
!122 = !{!123, !44, i64 24}
!123 = !{!"htab", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !124, i64 32, !124, i64 40, !124, i64 48, !39, i64 56, !39, i64 60, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !39, i64 104}
!124 = !{!"long", !40, i64 0}
!125 = !{!123, !124, i64 32}
!126 = distinct !{!126, !50}
!127 = !{!128, !39, i64 0}
!128 = !{!"VEC_cgraph_node_ptr_gc", !129, i64 0}
!129 = !{!"VEC_cgraph_node_ptr_base", !39, i64 0, !39, i64 4, !40, i64 8}
!130 = distinct !{!130, !50}
!131 = !{!132, !44, i64 0}
!132 = !{!"cgraph_node_set_element_def", !44, i64 0, !124, i64 8}
!133 = !{!134, !44, i64 24}
!134 = !{!"cgraph_node", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !135, i64 144, !137, i64 184, !138, i64 224, !139, i64 232, !140, i64 256, !124, i64 288, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 308, !39, i64 308, !39, i64 308, !39, i64 308, !39, i64 308, !39, i64 308, !39, i64 308, !39, i64 309, !39, i64 309}
!135 = !{!"cgraph_local_info", !44, i64 0, !136, i64 8, !39, i64 32, !39, i64 32, !39, i64 32, !39, i64 32, !39, i64 32, !39, i64 32, !39, i64 32, !39, i64 32}
!136 = !{!"inline_summary", !124, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!137 = !{!"cgraph_global_info", !124, i64 0, !124, i64 8, !44, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !40, i64 36}
!138 = !{!"cgraph_rtl_info", !39, i64 0}
!139 = !{!"cgraph_clone_info", !44, i64 0, !44, i64 8, !44, i64 16}
!140 = !{!"cgraph_thunk_info", !124, i64 0, !124, i64 8, !44, i64 16, !40, i64 24, !40, i64 25, !40, i64 26}
!141 = distinct !{!141, !50}
!142 = !{!134, !44, i64 32}
!143 = !{!134, !44, i64 0}
!144 = !{!134, !44, i64 8}
!145 = !{!134, !44, i64 16}
!146 = !{!134, !44, i64 40}
!147 = !{!134, !44, i64 48}
!148 = !{!134, !44, i64 56}
!149 = !{!134, !44, i64 64}
!150 = !{!134, !44, i64 72}
!151 = !{!134, !44, i64 80}
!152 = !{!134, !44, i64 88}
!153 = !{!134, !44, i64 96}
!154 = !{!134, !44, i64 104}
!155 = !{!134, !44, i64 112}
!156 = !{!134, !44, i64 120}
!157 = !{!134, !44, i64 200}
!158 = !{!134, !44, i64 232}
!159 = !{!134, !44, i64 240}
!160 = !{!134, !44, i64 248}
!161 = !{!134, !44, i64 272}
!162 = distinct !{!162, !50}
!163 = !{!164, !44, i64 32}
!164 = !{!"cgraph_edge", !124, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !165, i64 88, !39, i64 90, !39, i64 90, !39, i64 90}
!165 = !{!"short", !40, i64 0}
!166 = distinct !{!166, !50}
!167 = !{!164, !44, i64 24}
!168 = !{!164, !44, i64 8}
!169 = !{!164, !44, i64 16}
!170 = !{!164, !44, i64 40}
!171 = !{!164, !44, i64 48}
!172 = !{!164, !44, i64 56}
!173 = distinct !{!173, !50}
!174 = !{!175, !39, i64 0}
!175 = !{!"VEC_ipa_replace_map_p_gc", !176, i64 0}
!176 = !{!"VEC_ipa_replace_map_p_base", !39, i64 0, !39, i64 4, !40, i64 8}
!177 = distinct !{!177, !50}
!178 = !{!179, !44, i64 0}
!179 = !{!"ipa_replace_map", !44, i64 0, !44, i64 8, !40, i64 16, !40, i64 17}
!180 = !{!179, !44, i64 8}
!181 = distinct !{!181, !50}
!182 = !{!183, !44, i64 0}
!183 = !{!"bitmap_head_def", !44, i64 0, !44, i64 8, !39, i64 16, !44, i64 24}
!184 = !{!183, !44, i64 8}
!185 = !{!183, !44, i64 24}
!186 = !{!187, !39, i64 0}
!187 = !{!"VEC_basic_block_gc", !188, i64 0}
!188 = !{!"VEC_basic_block_base", !39, i64 0, !39, i64 4, !40, i64 8}
!189 = distinct !{!189, !50}
!190 = !{!191, !44, i64 56}
!191 = !{!"basic_block_def", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !40, i64 32, !44, i64 48, !44, i64 56, !40, i64 64, !124, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96}
!192 = distinct !{!192, !50}
!193 = !{!191, !44, i64 48}
!194 = !{!191, !44, i64 0}
!195 = !{!191, !44, i64 8}
!196 = !{!191, !44, i64 24}
!197 = !{!191, !39, i64 96}
!198 = distinct !{!198, !50}
!199 = !{!200, !44, i64 0}
!200 = !{!"gimple_bb_info", !44, i64 0, !44, i64 8}
!201 = !{!200, !44, i64 8}
!202 = !{!203, !44, i64 16}
!203 = !{!"gimple_seq_d", !44, i64 0, !44, i64 8, !44, i64 16}
!204 = distinct !{!204, !50}
!205 = !{!203, !44, i64 0}
!206 = !{!203, !44, i64 8}
!207 = distinct !{!207, !50}
!208 = !{!209, !44, i64 0}
!209 = !{!"rtl_bb_info", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32}
!210 = !{!209, !44, i64 8}
!211 = !{!209, !44, i64 16}
!212 = !{!209, !44, i64 24}
!213 = !{!214, !39, i64 0}
!214 = !{!"VEC_edge_gc", !215, i64 0}
!215 = !{!"VEC_edge_base", !39, i64 0, !39, i64 4, !40, i64 8}
!216 = distinct !{!216, !50}
!217 = !{!218, !44, i64 0}
!218 = !{!"edge_def", !44, i64 0, !44, i64 8, !40, i64 16, !44, i64 24, !44, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !124, i64 56}
!219 = !{!218, !44, i64 8}
!220 = !{!218, !44, i64 32}
!221 = !{!222, !44, i64 8}
!222 = !{!"cselib_val_struct", !39, i64 0, !39, i64 4, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!223 = !{!222, !44, i64 16}
!224 = !{!222, !44, i64 24}
!225 = !{!222, !44, i64 32}
!226 = !{!227, !44, i64 0}
!227 = !{!"elt_loc_list", !44, i64 0, !44, i64 8, !44, i64 16}
!228 = !{!227, !44, i64 8}
!229 = !{!227, !44, i64 16}
!230 = !{!231, !44, i64 0}
!231 = !{!"elt_list", !44, i64 0, !44, i64 8}
!232 = !{!231, !44, i64 8}
!233 = !{!234, !39, i64 0}
!234 = !{!"VEC_loop_p_gc", !235, i64 0}
!235 = !{!"VEC_loop_p_base", !39, i64 0, !39, i64 4, !40, i64 8}
!236 = distinct !{!236, !50}
!237 = !{!238, !44, i64 56}
!238 = !{!"loop", !39, i64 0, !39, i64 4, !44, i64 8, !44, i64 16, !239, i64 24, !39, i64 32, !39, i64 36, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !240, i64 80, !240, i64 96, !40, i64 112, !40, i64 113, !39, i64 116, !44, i64 120, !44, i64 128, !40, i64 136, !44, i64 144}
!239 = !{!"lpt_decision", !39, i64 0, !39, i64 4}
!240 = !{!"", !124, i64 0, !124, i64 8}
!241 = distinct !{!241, !50}
!242 = !{!238, !44, i64 8}
!243 = !{!238, !44, i64 16}
!244 = !{!238, !44, i64 40}
!245 = !{!238, !44, i64 48}
!246 = !{!238, !44, i64 72}
!247 = !{!238, !44, i64 120}
!248 = !{!238, !44, i64 128}
!249 = !{!238, !44, i64 144}
!250 = distinct !{!250, !50}
!251 = !{!252, !44, i64 32}
!252 = !{!"nb_iter_bound", !44, i64 0, !240, i64 8, !40, i64 24, !44, i64 32}
!253 = distinct !{!253, !50}
!254 = !{!252, !44, i64 0}
!255 = distinct !{!255, !50}
!256 = !{!257, !44, i64 0}
!257 = !{!"loop_exit", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!258 = !{!257, !44, i64 8}
!259 = !{!257, !44, i64 16}
!260 = !{!257, !44, i64 24}
!261 = !{!262, !44, i64 0}
!262 = !{!"types_used_by_vars_entry", !44, i64 0, !44, i64 8}
!263 = !{!262, !44, i64 8}
!264 = !{!265, !44, i64 8}
!265 = !{!"loops", !39, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!266 = !{!265, !44, i64 16}
!267 = !{!265, !44, i64 24}
!268 = distinct !{!268, !50}
!269 = !{!270, !44, i64 0}
!270 = !{!"control_flow_graph", !44, i64 0, !44, i64 8, !44, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !44, i64 40, !39, i64 48, !40, i64 52, !40, i64 60, !39, i64 68, !39, i64 72}
!271 = !{!270, !44, i64 8}
!272 = !{!270, !44, i64 16}
!273 = !{!270, !44, i64 40}
!274 = !{!275, !44, i64 0}
!275 = !{!"eh_status", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !40, i64 40}
!276 = !{!275, !44, i64 8}
!277 = !{!275, !44, i64 16}
!278 = !{!275, !44, i64 24}
!279 = !{!275, !44, i64 32}
!280 = !{!281, !40, i64 2035}
!281 = !{!"gcc_target", !282, i64 0, !284, i64 368, !285, i64 664, !39, i64 744, !44, i64 752, !44, i64 760, !44, i64 768, !44, i64 776, !44, i64 784, !44, i64 792, !44, i64 800, !44, i64 808, !44, i64 816, !44, i64 824, !44, i64 832, !44, i64 840, !44, i64 848, !44, i64 856, !44, i64 864, !44, i64 872, !44, i64 880, !44, i64 888, !44, i64 896, !44, i64 904, !44, i64 912, !44, i64 920, !44, i64 928, !44, i64 936, !44, i64 944, !44, i64 952, !44, i64 960, !44, i64 968, !44, i64 976, !44, i64 984, !44, i64 992, !44, i64 1000, !44, i64 1008, !44, i64 1016, !44, i64 1024, !44, i64 1032, !44, i64 1040, !44, i64 1048, !44, i64 1056, !124, i64 1064, !124, i64 1072, !44, i64 1080, !44, i64 1088, !44, i64 1096, !44, i64 1104, !44, i64 1112, !44, i64 1120, !44, i64 1128, !44, i64 1136, !44, i64 1144, !44, i64 1152, !44, i64 1160, !44, i64 1168, !286, i64 1176, !44, i64 1232, !44, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !44, i64 1304, !44, i64 1312, !44, i64 1320, !44, i64 1328, !44, i64 1336, !44, i64 1344, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !44, i64 1392, !44, i64 1400, !44, i64 1408, !44, i64 1416, !44, i64 1424, !44, i64 1432, !44, i64 1440, !44, i64 1448, !44, i64 1456, !124, i64 1464, !287, i64 1472, !44, i64 1664, !44, i64 1672, !44, i64 1680, !44, i64 1688, !44, i64 1696, !44, i64 1704, !44, i64 1712, !44, i64 1720, !44, i64 1728, !44, i64 1736, !44, i64 1744, !44, i64 1752, !44, i64 1760, !44, i64 1768, !44, i64 1776, !288, i64 1784, !289, i64 1792, !290, i64 1896, !291, i64 1968, !44, i64 2016, !40, i64 2024, !40, i64 2025, !40, i64 2026, !40, i64 2027, !40, i64 2028, !40, i64 2029, !40, i64 2030, !40, i64 2031, !40, i64 2032, !40, i64 2033, !40, i64 2034, !40, i64 2035}
!282 = !{!"asm_out", !44, i64 0, !44, i64 8, !44, i64 16, !283, i64 24, !283, i64 56, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !44, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !44, i64 312, !44, i64 320, !44, i64 328, !44, i64 336, !44, i64 344, !44, i64 352, !44, i64 360}
!283 = !{!"asm_int_op", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!284 = !{!"sched", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !44, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288}
!285 = !{!"vectorize", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72}
!286 = !{!"addr_space", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!287 = !{!"calls", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184}
!288 = !{!"c", !44, i64 0}
!289 = !{!"cxx", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96}
!290 = !{!"emutls", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !40, i64 64, !40, i64 65}
!291 = !{!"target_option_hooks", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40}
!292 = distinct !{!292, !50}
!293 = !{!294, !39, i64 0}
!294 = !{!"VEC_tree_gc", !295, i64 0}
!295 = !{!"VEC_tree_base", !39, i64 0, !39, i64 4, !40, i64 8}
!296 = distinct !{!296, !50}
!297 = !{!298, !39, i64 0}
!298 = !{!"VEC_temp_slot_p_gc", !299, i64 0}
!299 = !{!"VEC_temp_slot_p_base", !39, i64 0, !39, i64 4, !40, i64 8}
!300 = distinct !{!300, !50}
!301 = !{!302, !44, i64 0}
!302 = !{!"gimple_df", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !303, i64 32, !303, i64 48, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !39, i64 96, !304, i64 104}
!303 = !{!"pt_solution", !39, i64 0, !39, i64 0, !39, i64 0, !39, i64 0, !39, i64 0, !39, i64 0, !44, i64 8}
!304 = !{!"ssa_operands", !44, i64 0, !39, i64 8, !39, i64 12, !40, i64 16, !44, i64 24, !44, i64 32}
!305 = !{!302, !44, i64 8}
!306 = !{!302, !44, i64 16}
!307 = !{!302, !44, i64 24}
!308 = !{!302, !44, i64 40}
!309 = !{!302, !44, i64 56}
!310 = !{!302, !44, i64 72}
!311 = !{!302, !44, i64 80}
!312 = !{!302, !44, i64 88}
!313 = !{!302, !44, i64 104}
!314 = distinct !{!314, !50}
!315 = !{!316, !39, i64 0}
!316 = !{!"VEC_call_site_record_gc", !317, i64 0}
!317 = !{!"VEC_call_site_record_base", !39, i64 0, !39, i64 4, !40, i64 8}
!318 = distinct !{!318, !50}
!319 = !{!320, !44, i64 0}
!320 = !{!"sequence_stack", !44, i64 0, !44, i64 8, !44, i64 16}
!321 = !{!320, !44, i64 8}
!322 = !{!320, !44, i64 16}
!323 = !{!324, !44, i64 0}
!324 = !{!"tree_priority_map", !325, i64 0, !165, i64 8, !165, i64 10}
!325 = !{!"tree_map_base", !44, i64 0}
!326 = !{!327, !44, i64 0}
!327 = !{!"tree_int_map", !325, i64 0, !39, i64 8}
!328 = !{!329, !44, i64 0}
!329 = !{!"tree_map", !325, i64 0, !39, i64 8, !44, i64 16}
!330 = !{!329, !44, i64 16}
!331 = !{!332, !44, i64 8}
!332 = !{!"tree_statement_list_node", !44, i64 0, !44, i64 8, !44, i64 16}
!333 = distinct !{!333, !50}
!334 = !{!332, !44, i64 0}
!335 = !{!332, !44, i64 16}
!336 = distinct !{!336, !50}
!337 = !{!338, !44, i64 8}
!338 = !{!"var_ann_d", !39, i64 0, !39, i64 0, !39, i64 0, !39, i64 0, !39, i64 0, !39, i64 4, !44, i64 8}
!339 = !{!340, !44, i64 24}
!340 = !{!"varray_head_tag", !124, i64 0, !124, i64 8, !39, i64 16, !44, i64 24, !40, i64 32}
!341 = !{!340, !39, i64 16}
!342 = !{!340, !124, i64 0}
!343 = distinct !{!343, !50}
!344 = distinct !{!344, !50}
!345 = distinct !{!345, !50}
!346 = distinct !{!346, !50}
!347 = distinct !{!347, !50}
!348 = distinct !{!348, !50}
!349 = distinct !{!349, !50}
!350 = !{!351, !39, i64 0}
!351 = !{!"rtvec_def", !39, i64 0, !40, i64 8}
!352 = distinct !{!352, !50}
!353 = !{!354, !44, i64 8}
!354 = !{!"ptr_info_def", !303, i64 0}
!355 = !{!356, !39, i64 0}
!356 = !{!"VEC_constructor_elt_gc", !357, i64 0}
!357 = !{!"VEC_constructor_elt_base", !39, i64 0, !39, i64 4, !40, i64 8}
!358 = !{!359, !44, i64 0}
!359 = !{!"constructor_elt_d", !44, i64 0, !44, i64 8}
!360 = !{!359, !44, i64 8}
!361 = distinct !{!361, !50}
!362 = !{!363, !39, i64 0}
!363 = !{!"VEC_alias_pair_gc", !364, i64 0}
!364 = !{!"VEC_alias_pair_base", !39, i64 0, !39, i64 4, !40, i64 8}
!365 = !{!366, !44, i64 0}
!366 = !{!"alias_pair", !44, i64 0, !44, i64 8}
!367 = !{!366, !44, i64 8}
!368 = distinct !{!368, !50}
!369 = !{!370, !44, i64 0}
!370 = !{!"function", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !44, i64 128, !39, i64 136, !39, i64 137, !39, i64 138, !39, i64 138, !39, i64 138, !39, i64 138, !39, i64 138, !39, i64 138, !39, i64 138, !39, i64 139, !39, i64 139, !39, i64 139, !39, i64 139, !39, i64 139, !39, i64 139, !39, i64 139}
!371 = !{!370, !44, i64 8}
!372 = !{!370, !44, i64 16}
!373 = !{!370, !44, i64 24}
!374 = !{!370, !44, i64 32}
!375 = !{!370, !44, i64 48}
!376 = !{!370, !44, i64 56}
!377 = !{!370, !44, i64 64}
!378 = !{!370, !44, i64 72}
!379 = !{!370, !44, i64 80}
!380 = !{!370, !44, i64 88}
!381 = !{!370, !44, i64 96}
!382 = !{!383, !44, i64 0}
!383 = !{!"machine_function", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !40, i64 24, !39, i64 40, !384, i64 48, !39, i64 64, !39, i64 68, !39, i64 68, !39, i64 68, !39, i64 68, !39, i64 68}
!384 = !{!"machine_cfa_state", !44, i64 0, !124, i64 8}
!385 = !{!383, !44, i64 8}
!386 = !{!383, !44, i64 48}
!387 = !{!388, !39, i64 0}
!388 = !{!"VEC_rtx_gc", !389, i64 0}
!389 = !{!"VEC_rtx_base", !39, i64 0, !39, i64 4, !40, i64 8}
!390 = distinct !{!390, !50}
!391 = !{!392, !44, i64 0}
!392 = !{!"object_block", !44, i64 0, !39, i64 8, !124, i64 16, !44, i64 24, !44, i64 32}
!393 = !{!392, !44, i64 24}
!394 = !{!392, !44, i64 32}
!395 = !{!396, !44, i64 0}
!396 = !{!"reg_attrs", !44, i64 0, !124, i64 8}
!397 = !{!398, !44, i64 0}
!398 = !{!"mem_attrs", !44, i64 0, !44, i64 8, !44, i64 16, !39, i64 24, !39, i64 28, !40, i64 32}
!399 = !{!398, !44, i64 8}
!400 = !{!398, !44, i64 16}
!401 = !{!402, !44, i64 0}
!402 = !{!"bitmap_obstack", !44, i64 0, !44, i64 8, !403, i64 16}
!403 = !{!"obstack", !124, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !124, i64 40, !39, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !39, i64 80, !39, i64 80, !39, i64 80}
!404 = !{!402, !44, i64 8}
!405 = !{!406, !44, i64 0}
!406 = !{!"bitmap_element_def", !44, i64 0, !44, i64 8, !39, i64 16, !40, i64 24}
!407 = !{!406, !44, i64 8}
!408 = !{!409, !44, i64 16}
!409 = !{!"gimple_seq_node_d", !44, i64 0, !44, i64 8, !44, i64 16}
!410 = distinct !{!410, !50}
!411 = !{!409, !44, i64 8}
!412 = !{!409, !44, i64 0}
!413 = distinct !{!413, !50}
!414 = !{!"gtype-desc.c:gimple_statement_structure"}
!415 = !{i32 0, i32 256}
!416 = !{!"gtype-desc.c:gss_for_code"}
!417 = !{!39, !39, i64 0}
!418 = !{!"gtype-desc.c:gimple_code"}
!419 = !{!420, !44, i64 0}
!420 = !{!"answer", !44, i64 0, !39, i64 8, !40, i64 16}
!421 = !{!420, !39, i64 8}
!422 = distinct !{!422, !50}
!423 = !{!424, !44, i64 0}
!424 = !{!"cpp_macro", !44, i64 0, !40, i64 8, !39, i64 16, !39, i64 20, !165, i64 24, !39, i64 26, !39, i64 26, !39, i64 26, !39, i64 26, !39, i64 26, !39, i64 26}
!425 = !{!424, !165, i64 24}
!426 = distinct !{!426, !50}
!427 = !{!424, !39, i64 20}
!428 = distinct !{!428, !50}
!429 = !{!430, !44, i64 0}
!430 = !{!"line_maps", !44, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !44, i64 48}
!431 = !{!430, !39, i64 12}
!432 = !{!433, !44, i64 0}
!433 = !{!"line_map", !44, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 21, !39, i64 22}
!434 = distinct !{!434, !50}
!435 = !{!436, !44, i64 16}
!436 = !{!"splay_tree_node_s", !124, i64 0, !124, i64 8, !44, i64 16, !44, i64 24}
!437 = !{!436, !44, i64 24}
!438 = !{!436, !124, i64 0}
!439 = !{!436, !124, i64 8}
!440 = distinct !{!440, !50}
!441 = !{!442, !44, i64 0}
!442 = !{!"splay_tree_s", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!443 = distinct !{!443, !50}
!444 = distinct !{!444, !50}
!445 = distinct !{!445, !50}
!446 = distinct !{!446, !50}
!447 = distinct !{!447, !50}
!448 = distinct !{!448, !50}
!449 = distinct !{!449, !50}
!450 = distinct !{!450, !50}
!451 = distinct !{!451, !50}
!452 = distinct !{!452, !50}
!453 = distinct !{!453, !50}
!454 = distinct !{!454, !50}
!455 = distinct !{!455, !50}
!456 = distinct !{!456, !50}
!457 = distinct !{!457, !50}
!458 = distinct !{!458, !50}
!459 = distinct !{!459, !50}
!460 = distinct !{!460, !50}
!461 = distinct !{!461, !50}
!462 = distinct !{!462, !50}
!463 = distinct !{!463, !50}
!464 = distinct !{!464, !50}
!465 = distinct !{!465, !50}
!466 = distinct !{!466, !50}
!467 = distinct !{!467, !50}
!468 = distinct !{!468, !50}
!469 = distinct !{!469, !50}
!470 = distinct !{!470, !50}
!471 = distinct !{!471, !50}
!472 = distinct !{!472, !50}
!473 = distinct !{!473, !50}
!474 = distinct !{!474, !50}
!475 = distinct !{!475, !50}
!476 = distinct !{!476, !50}
!477 = distinct !{!477, !50}
!478 = distinct !{!478, !50}
!479 = distinct !{!479, !50}
!480 = distinct !{!480, !50}
!481 = distinct !{!481, !50}
!482 = distinct !{!482, !50}
!483 = distinct !{!483, !50}
!484 = distinct !{!484, !50}
!485 = distinct !{!485, !50}
!486 = distinct !{!486, !50}
!487 = distinct !{!487, !50}
!488 = distinct !{!488, !50}
!489 = distinct !{!489, !50}
!490 = distinct !{!490, !50}
!491 = distinct !{!491, !50}
!492 = distinct !{!492, !50}
!493 = distinct !{!493, !50}
!494 = distinct !{!494, !50}
!495 = distinct !{!495, !50}
!496 = distinct !{!496, !50}
!497 = distinct !{!497, !50}
!498 = distinct !{!498, !50}
!499 = distinct !{!499, !50}
!500 = distinct !{!500, !50}
!501 = distinct !{!501, !50}
!502 = distinct !{!502, !50}
!503 = distinct !{!503, !50}
!504 = distinct !{!504, !50}
!505 = distinct !{!505, !50}
!506 = distinct !{!506, !50}
!507 = distinct !{!507, !50}
!508 = distinct !{!508, !50}
!509 = distinct !{!509, !50}
!510 = distinct !{!510, !50}
!511 = distinct !{!511, !50}
!512 = distinct !{!512, !50}
!513 = distinct !{!513, !50}
!514 = distinct !{!514, !50}
!515 = distinct !{!515, !50}
!516 = distinct !{!516, !50}
!517 = distinct !{!517, !50}
!518 = distinct !{!518, !50}
!519 = distinct !{!519, !50}
!520 = distinct !{!520, !50}
!521 = distinct !{!521, !50}
!522 = distinct !{!522, !50}
!523 = distinct !{!523, !50}
!524 = distinct !{!524, !50}
!525 = distinct !{!525, !50}
!526 = distinct !{!526, !50}
!527 = distinct !{!527, !50}
!528 = distinct !{!528, !50}
!529 = distinct !{!529, !50}
!530 = distinct !{!530, !50}
!531 = distinct !{!531, !50}
!532 = distinct !{!532, !50}
!533 = distinct !{!533, !50}
!534 = distinct !{!534, !50}
!535 = distinct !{!535, !50}
!536 = distinct !{!536, !50}
!537 = distinct !{!537, !50}
!538 = distinct !{!538, !50}
!539 = distinct !{!539, !50}
!540 = distinct !{!540, !50}
!541 = distinct !{!541, !50}
!542 = distinct !{!542, !50}
!543 = distinct !{!543, !50}
!544 = distinct !{!544, !50}
!545 = distinct !{!545, !50}
!546 = distinct !{!546, !50}
!547 = distinct !{!547, !50}
!548 = distinct !{!548, !50}
!549 = distinct !{!549, !50}
!550 = distinct !{!550, !50}
!551 = distinct !{!551, !50}
!552 = distinct !{!552, !50}
!553 = distinct !{!553, !50}
!554 = distinct !{!554, !50}
!555 = distinct !{!555, !50}
!556 = distinct !{!556, !50}
!557 = distinct !{!557, !50}
!558 = distinct !{!558, !50}
!559 = distinct !{!559, !50}
!560 = distinct !{!560, !50}
!561 = distinct !{!561, !50}
!562 = distinct !{!562, !50}
!563 = distinct !{!563, !50}
!564 = distinct !{!564, !50}
!565 = distinct !{!565, !50}
!566 = distinct !{!566, !50}
!567 = distinct !{!567, !50}
!568 = distinct !{!568, !50}
!569 = distinct !{!569, !50}
!570 = distinct !{!570, !50}
!571 = distinct !{!571, !50}
!572 = distinct !{!572, !50}
!573 = distinct !{!573, !50}
!574 = distinct !{!574, !50}
!575 = distinct !{!575, !50}
!576 = distinct !{!576, !50}
!577 = distinct !{!577, !50}
!578 = !{!"gtype-desc.c:gt_ggc_ma_reg_equiv_init"}
!579 = distinct !{!579, !50}
!580 = !{!"gtype-desc.c:gt_pch_na_reg_equiv_init"}
!581 = distinct !{!581, !50}
!582 = !{!"gtype-desc.c:gt_ggc_ma_regno_reg_rtx"}
!583 = !{!584, !39, i64 40}
!584 = !{!"rtl_data", !585, i64 0, !586, i64 40, !587, i64 96, !588, i64 112, !590, i64 208, !591, i64 248, !39, i64 312, !44, i64 320, !44, i64 328, !44, i64 336, !44, i64 344, !44, i64 352, !44, i64 360, !44, i64 368, !44, i64 376, !44, i64 384, !44, i64 392, !124, i64 400, !44, i64 408, !44, i64 416, !44, i64 424, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !44, i64 456, !40, i64 464, !40, i64 465, !40, i64 466, !40, i64 467, !40, i64 468, !40, i64 469, !40, i64 470, !40, i64 471, !40, i64 472, !40, i64 473, !40, i64 474, !40, i64 475, !40, i64 476, !40, i64 477, !40, i64 478, !40, i64 479, !40, i64 480, !40, i64 481, !40, i64 482, !40, i64 483, !40, i64 484, !40, i64 485}
!585 = !{!"expr_status", !39, i64 0, !39, i64 4, !39, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!586 = !{!"emit_status", !39, i64 0, !39, i64 4, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !44, i64 48}
!587 = !{!"varasm_status", !44, i64 0, !39, i64 8}
!588 = !{!"incoming_args", !39, i64 0, !39, i64 4, !39, i64 8, !44, i64 16, !589, i64 24, !44, i64 88}
!589 = !{!"ix86_args", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60}
!590 = !{!"function_subsections", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!591 = !{!"rtl_eh", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !40, i64 48}
!592 = distinct !{!592, !50}
!593 = !{!"gtype-desc.c:gt_pch_na_regno_reg_rtx"}
!594 = distinct !{!594, !50}
!595 = !{!"gtype-desc.c:gt_pch_pa_reg_equiv_init"}
!596 = distinct !{!596, !50}
!597 = !{!"gtype-desc.c:gt_pch_pa_regno_reg_rtx"}
!598 = distinct !{!598, !50}
