; ModuleID = 'ira.c'
source_filename = "ira.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.anon = type { i32, i32 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.equivalence = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.df_reg_info = type { ptr, i32 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.df_live_bb_info = type { ptr, ptr, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.insn_chain = type { ptr, ptr, ptr, ptr, i32, i8, %struct.bitmap_head_def, %struct.bitmap_head_def, ptr, i32, i64 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@ira_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"Disposition:\00", align 1
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" %4d:r%-4d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"b%-3d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"l%-3d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" mem\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_register_move_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@ira_may_move_in_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@may_move_in_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_out_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@may_move_out_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_class_subset_p = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@ira_setup_eliminable_regset.eliminables = internal unnamed_addr constant [4 x %struct.anon] [%struct.anon { i32 16, i32 7 }, %struct.anon { i32 16, i32 6 }, %struct.anon { i32 20, i32 7 }, %struct.anon { i32 20, i32 6 }], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@no_unit_alloc_regs = internal unnamed_addr global i64 0, align 8
@ira_no_alloc_regs = dso_local local_unnamed_addr global i64 0, align 8
@eliminable_regset = dso_local local_unnamed_addr global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"%s cannot be used in asm here\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"ira\00", align 1
@pass_ira = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.8, ptr @gate_ira, ptr @rest_of_handle_ira, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@internal_flag_ira_verbose = dso_local local_unnamed_addr global i32 0, align 4
@ira_dump_file = dso_local local_unnamed_addr global ptr null, align 8
@allocno_pool = dso_local local_unnamed_addr global ptr null, align 8
@copy_pool = dso_local local_unnamed_addr global ptr null, align 8
@allocno_live_range_pool = dso_local local_unnamed_addr global ptr null, align 8
@ira_spilled_reg_stack_slots_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_spilled_reg_stack_slots = dso_local local_unnamed_addr global ptr null, align 8
@ira_overall_cost = dso_local local_unnamed_addr global i32 0, align 4
@ira_reg_cost = dso_local local_unnamed_addr global i32 0, align 4
@ira_mem_cost = dso_local local_unnamed_addr global i32 0, align 4
@ira_load_cost = dso_local local_unnamed_addr global i32 0, align 4
@ira_store_cost = dso_local local_unnamed_addr global i32 0, align 4
@ira_shuffle_cost = dso_local local_unnamed_addr global i32 0, align 4
@ira_move_loops_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_additional_jumps_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_reg_mode_hard_regset = dso_local local_unnamed_addr global [53 x [87 x i64]] zeroinitializer, align 16
@ira_memory_move_cost = dso_local local_unnamed_addr global [87 x [27 x [2 x i16]]] zeroinitializer, align 16
@ira_class_hard_regs = dso_local local_unnamed_addr global [27 x [53 x i16]] zeroinitializer, align 16
@ira_class_hard_regs_num = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_class_hard_reg_index = dso_local local_unnamed_addr global [27 x [53 x i16]] zeroinitializer, align 16
@ira_available_class_regs = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_cover_size = dso_local local_unnamed_addr global i32 0, align 4
@ira_reg_class_cover = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_important_classes_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_important_classes = dso_local global [27 x i32] zeroinitializer, align 16
@ira_important_class_nums = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_class_translate = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_intersect = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@ira_reg_classes_intersect_p = dso_local local_unnamed_addr global [27 x [27 x i8]] zeroinitializer, align 16
@ira_reg_class_super_classes = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@ira_reg_class_union = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@ira_hard_regno_cover_class = dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16
@ira_reg_class_nregs = dso_local local_unnamed_addr global [27 x [87 x i32]] zeroinitializer, align 16
@ira_max_nregs = dso_local local_unnamed_addr global i32 0, align 4
@prohibited_class_mode_regs = dso_local local_unnamed_addr global [27 x [87 x i64]] zeroinitializer, align 16
@ira_prohibited_mode_move_regs = dso_local local_unnamed_addr global [87 x i64] zeroinitializer, align 16
@ira_reg_equiv_len = dso_local local_unnamed_addr global i32 0, align 4
@ira_reg_equiv_invariant_p = dso_local local_unnamed_addr global ptr null, align 8
@ira_reg_equiv_const = dso_local local_unnamed_addr global ptr null, align 8
@reg_renumber = dso_local local_unnamed_addr global ptr null, align 8
@ira_loops = dso_local global %struct.loops zeroinitializer, align 8
@ira_conflicts_p = dso_local local_unnamed_addr global i8 0, align 1
@print_class_cover.reg_class_names = internal unnamed_addr constant [27 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"CLOBBERED_REGS\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"SSE_FIRST_REG\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Class cover:\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"\0AClass translation:\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" %s -> %s\0A\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@fixed_reg_set = external local_unnamed_addr global i64, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@alloc_reg_class_subclasses = internal unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@setup_cover_and_important_classes.classes = internal unnamed_addr global [28 x i32] zeroinitializer, align 16
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"ira.c\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cover_class_order = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@reg_class_subclasses = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@flag_caller_saves = external local_unnamed_addr global i32, align 4
@flag_ira_verbose = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@warn_clobbered = external local_unnamed_addr global i32, align 4
@current_function_is_leaf = external local_unnamed_addr global i32, align 4
@flag_ira_loop_pressure = external local_unnamed_addr global i32, align 4
@max_regno = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"Building IRA IR\0A\00", align 1
@flag_ira_region = external local_unnamed_addr global i32, align 4
@flag_ira_share_spill_slots = external local_unnamed_addr global i32, align 4
@ira_max_point = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [15 x i8] c"Flattening IR\0A\00", align 1
@reg_equiv_memory_loc_vec = external local_unnamed_addr global ptr, align 8
@reg_equiv_memory_loc = external local_unnamed_addr global ptr, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [28 x i8] c"+++Overall after reload %d\0A\00", align 1
@ira_prohibited_mode_move_regs_initialized_p = internal unnamed_addr global i1 false, align 1
@recorded_label_ref = internal unnamed_addr global i1 false, align 4
@reg_equiv = internal unnamed_addr global ptr null, align 8
@reg_equiv_init = external local_unnamed_addr global ptr, align 8
@reg_equiv_init_size = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@reg_info_p = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@equiv_mem = internal unnamed_addr global ptr null, align 8
@equiv_mem_modified = internal unnamed_addr global i1 false, align 4
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [51 x i8] c"    New r%d: setting preferred %s, alternative %s\0A\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@caller_save_needed = external local_unnamed_addr global i32, align 4
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@.str.46 = private unnamed_addr constant [61 x i8] c"+++Costs: overall %d, reg %d, mem %d, ld %d, st %d, move %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"+++       move loops %d, new jumps %d\0A\00", align 1
@reload_insn_chain = external local_unnamed_addr global ptr, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.48 = private unnamed_addr constant [10 x i8] c"insn=%d, \00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"live_throughout: \00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"dead_or_set: \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !157 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !158
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !157 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !158
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !157 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !168

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !162
  %11 = load i8, ptr %3, align 1, !tbaa !169
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !157 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !168

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !162
  %11 = load i8, ptr %3, align 1, !tbaa !169
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !157 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !158
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !168

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !162
  %11 = load i8, ptr %3, align 1, !tbaa !169
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !157 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !158
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !157 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !168

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !170
  store i8 %12, ptr %4, align 1, !tbaa !169
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !157 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !168

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !170
  store i8 %12, ptr %4, align 1, !tbaa !169
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !157 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !168

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !170
  store i8 %12, ptr %4, align 1, !tbaa !169
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !157 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !157 {
  %2 = load i32, ptr %0, align 8, !tbaa !172
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !157 {
  %2 = load i32, ptr %0, align 8, !tbaa !172
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !157 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !173
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !157 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !173
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !157 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !157 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !157 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !157 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
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
  br i1 %23, label %7, label %24, !llvm.loop !174

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !157 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ira_allocate(i64 noundef %0) local_unnamed_addr #9 !prof !177 {
  %2 = tail call ptr @xmalloc(i64 noundef %0) #24
  ret ptr %2
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ira_reallocate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !157 {
  %3 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %1) #24
  ret ptr %3
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @ira_free(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !177 {
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @ira_allocate_bitmap() local_unnamed_addr #13 !prof !178 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ira_bitmap_obstack) #24
  ret ptr %1
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ira_free_bitmap(ptr nocapture noundef readnone %0) local_unnamed_addr #14 !prof !178 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_print_disposition(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !157 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 12, i64 1, ptr %0)
  %3 = tail call i32 @max_reg_num() #24
  %4 = icmp sgt i32 %3, 53
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %52
  %8 = phi i64 [ 53, %5 ], [ %54, %52 ]
  %9 = phi i32 [ 0, %5 ], [ %53, %52 ]
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !158
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !158
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %7, %48
  %15 = phi ptr [ %50, %48 ], [ %12, %7 ]
  %16 = phi i32 [ %22, %48 ], [ %9, %7 ]
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  br label %21

21:                                               ; preds = %19, %14
  %22 = add nsw i32 %16, 1
  %23 = load i32, ptr %15, align 8, !tbaa !179
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !181
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %25)
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !182
  %29 = load ptr, ptr %28, align 8, !tbaa !183
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  br label %36

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !185
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %35, %33 ], [ %32, %31 ]
  %38 = phi ptr [ @.str.4, %33 ], [ @.str.3, %31 ]
  %39 = load i32, ptr %37, align 8, !tbaa !173
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %39)
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !186
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %42)
  br label %48

46:                                               ; preds = %36
  %47 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 4, i64 1, ptr %0)
  br label %48

48:                                               ; preds = %44, %46
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !158
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !187

52:                                               ; preds = %48, %7
  %53 = phi i32 [ %9, %7 ], [ %22, %48 ]
  %54 = add nuw nsw i64 %8, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %7, !llvm.loop !188

56:                                               ; preds = %52, %1
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_debug_disposition() local_unnamed_addr #10 !prof !157 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !158
  tail call void @ira_print_disposition(ptr noundef %1)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_class_cover() local_unnamed_addr #15 !prof !157 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !158
  %2 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr %1) #25
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0, %5
  %6 = phi i64 [ %13, %5 ], [ 0, %0 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !173
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %11) #25
  %13 = add nuw nsw i64 %6, 1
  %14 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !189

17:                                               ; preds = %5, %0
  %18 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 20, i64 1, ptr %1) #25
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !158
  %23 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !173
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !158
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef %22, ptr noundef %27) #25
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 27
  br i1 %30, label %31, label %19, !llvm.loop !190

31:                                               ; preds = %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_init_register_move_cost(i32 noundef %0) local_unnamed_addr #13 !prof !191 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !192

6:                                                ; preds = %1
  tail call void @init_move_cost(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr %3, align 8, !tbaa !158
  %9 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr %8, ptr %9, align 8, !tbaa !158
  %10 = tail call ptr @xmalloc(i64 noundef 1458) #24
  %11 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  store ptr %10, ptr %11, align 8, !tbaa !158
  %12 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  %13 = load ptr, ptr %12, align 8, !tbaa !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %10, ptr noundef nonnull align 2 dereferenceable(1458) %13, i64 1458, i1 false)
  %14 = tail call ptr @xmalloc(i64 noundef 1458) #24
  %15 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  store ptr %14, ptr %15, align 8, !tbaa !158
  %16 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  %17 = load ptr, ptr %16, align 8, !tbaa !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %14, ptr noundef nonnull align 2 dereferenceable(1458) %17, i64 1458, i1 false)
  br label %18

18:                                               ; preds = %7, %37
  %19 = phi i64 [ 0, %7 ], [ %38, %37 ]
  br label %20

20:                                               ; preds = %18, %34
  %21 = phi i64 [ 0, %18 ], [ %35, %34 ]
  %22 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %19, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !173
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !193

25:                                               ; preds = %20
  %26 = load ptr, ptr %11, align 8, !tbaa !158
  %27 = getelementptr inbounds [27 x i16], ptr %26, i64 %19, i64 %21
  store i16 0, ptr %27, align 2, !tbaa !194
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %21, i64 %19
  %30 = load i32, ptr %29, align 4, !tbaa !173
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !193

32:                                               ; preds = %28
  %33 = getelementptr inbounds [27 x i16], ptr %14, i64 %19, i64 %21
  store i16 0, ptr %33, align 2, !tbaa !194
  br label %34

34:                                               ; preds = %28, %32
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, 27
  br i1 %36, label %37, label %20, !prof !195, !llvm.loop !196

37:                                               ; preds = %34
  %38 = add nuw nsw i64 %19, 1
  %39 = icmp eq i64 %38, 27
  br i1 %39, label %40, label %18, !prof !197, !llvm.loop !198

40:                                               ; preds = %37
  ret void
}

declare void @init_move_cost(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define dso_local void @ira_init_once() local_unnamed_addr #13 !prof !199 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_register_move_cost, i8 0, i64 696, i1 false), !tbaa !158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_in_cost, i8 0, i64 696, i1 false), !tbaa !158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_out_cost, i8 0, i64 696, i1 false), !tbaa !158
  tail call void @ira_init_costs_once() #24
  ret void
}

declare void @ira_init_costs_once() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ira_init() local_unnamed_addr #13 !prof !199 {
  %1 = alloca [27 x i8], align 16
  tail call fastcc void @free_register_move_costs()
  br label %2

2:                                                ; preds = %0, %26
  %3 = phi i64 [ 0, %0 ], [ %27, %26 ]
  br label %4

4:                                                ; preds = %2, %23
  %5 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %6 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %5, i64 %3
  store i64 0, ptr %6, align 8, !tbaa !200
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %3
  %8 = load i8, ptr %7, align 1, !tbaa !169
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10, !prof !201

10:                                               ; preds = %4
  %11 = zext i8 %8 to i64
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi i64 [ %11, %10 ], [ %14, %21 ]
  %14 = add nsw i64 %13, -1
  %15 = add nsw i64 %14, %5
  %16 = icmp slt i64 %15, 53
  br i1 %16, label %17, label %21, !prof !202

17:                                               ; preds = %12
  %18 = shl nuw i64 1, %15
  %19 = load i64, ptr %6, align 8, !tbaa !200
  %20 = or i64 %19, %18
  store i64 %20, ptr %6, align 8, !tbaa !200
  br label %21

21:                                               ; preds = %17, %12
  %22 = icmp sgt i64 %13, 1
  br i1 %22, label %12, label %23, !prof !203, !llvm.loop !204

23:                                               ; preds = %21, %4
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 53
  br i1 %25, label %26, label %4, !prof !205, !llvm.loop !206

26:                                               ; preds = %23
  %27 = add nuw nsw i64 %3, 1
  %28 = icmp eq i64 %27, 87
  br i1 %28, label %29, label %2, !prof !207, !llvm.loop !208

29:                                               ; preds = %26
  %30 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !173
  %31 = icmp eq i32 %30, 0
  %32 = load i64, ptr @fixed_reg_set, align 8, !tbaa !200
  %33 = or i64 %32, 64
  %34 = select i1 %31, i64 %33, i64 %32, !prof !209
  store i64 %34, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  %35 = xor i64 %34, -1
  br label %36

36:                                               ; preds = %29, %74
  %37 = phi i64 [ 26, %29 ], [ %76, %74 ]
  %38 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !200
  %40 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %37
  store i16 -1, ptr %40, align 2, !tbaa !194
  %41 = and i64 %39, %35
  br label %42

42:                                               ; preds = %36, %69
  %43 = phi i64 [ 0, %36 ], [ %72, %69 ]
  %44 = phi i64 [ 0, %36 ], [ %71, %69 ]
  %45 = phi i32 [ 0, %36 ], [ %70, %69 ]
  %46 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %43
  %47 = load i32, ptr %46, align 4, !tbaa !173
  %48 = zext nneg i32 %47 to i64
  %49 = shl nuw i64 1, %48
  %50 = and i64 %49, %44
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %69, !prof !210

52:                                               ; preds = %42
  %53 = or i64 %49, %44
  %54 = and i64 %49, %41
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %62, label %56, !prof !211

56:                                               ; preds = %52
  %57 = trunc i32 %45 to i16
  %58 = sext i32 %47 to i64
  %59 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %37, i64 %58
  store i16 %57, ptr %59, align 2, !tbaa !194
  %60 = trunc i32 %47 to i16
  %61 = add nsw i32 %45, 1
  br label %62

62:                                               ; preds = %52, %56
  %63 = phi i32 [ %45, %56 ], [ %47, %52 ]
  %64 = phi ptr [ @ira_class_hard_regs, %56 ], [ @ira_class_hard_reg_index, %52 ]
  %65 = phi i16 [ %60, %56 ], [ -1, %52 ]
  %66 = phi i32 [ %61, %56 ], [ %45, %52 ]
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds [27 x [53 x i16]], ptr %64, i64 0, i64 %37, i64 %67
  store i16 %65, ptr %68, align 2, !tbaa !194
  br label %69

69:                                               ; preds = %62, %42
  %70 = phi i32 [ %45, %42 ], [ %66, %62 ]
  %71 = phi i64 [ %44, %42 ], [ %53, %62 ]
  %72 = add nuw nsw i64 %43, 1
  %73 = icmp eq i64 %72, 53
  br i1 %73, label %74, label %42, !prof !212, !llvm.loop !213

74:                                               ; preds = %69
  %75 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %37
  store i32 %70, ptr %75, align 4, !tbaa !173
  %76 = add nsw i64 %37, -1
  %77 = icmp eq i64 %37, 0
  br i1 %77, label %78, label %36, !prof !214, !llvm.loop !215

78:                                               ; preds = %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_available_class_regs, i8 0, i64 108, i1 false)
  %79 = xor i64 %34, -1
  br label %80

80:                                               ; preds = %78, %97
  %81 = phi i64 [ 0, %78 ], [ %98, %97 ]
  %82 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !200
  %84 = and i64 %83, %79
  %85 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %81
  br label %86

86:                                               ; preds = %80, %94
  %87 = phi i64 [ 0, %80 ], [ %95, %94 ]
  %88 = shl nuw i64 1, %87
  %89 = and i64 %88, %84
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91, !prof !211

91:                                               ; preds = %86
  %92 = load i32, ptr %85, align 4, !tbaa !173
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %85, align 4, !tbaa !173
  br label %94

94:                                               ; preds = %91, %86
  %95 = add nuw nsw i64 %87, 1
  %96 = icmp eq i64 %95, 53
  br i1 %96, label %97, label %86, !prof !212, !llvm.loop !216

97:                                               ; preds = %94
  %98 = add nuw nsw i64 %81, 1
  %99 = icmp eq i64 %98, 27
  br i1 %99, label %100, label %80, !prof !214, !llvm.loop !217

100:                                              ; preds = %97, %100
  %101 = phi i64 [ %104, %100 ], [ 0, %97 ]
  %102 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %101
  %103 = getelementptr inbounds [2 x i16], ptr %102, i64 0, i64 1
  store i16 32767, ptr %103, align 2, !tbaa !194
  store i16 32767, ptr %102, align 4, !tbaa !194
  %104 = add nuw nsw i64 %101, 1
  %105 = icmp eq i64 %104, 87
  br i1 %105, label %106, label %100, !prof !207, !llvm.loop !218

106:                                              ; preds = %100, %152
  %107 = phi i64 [ %153, %152 ], [ 26, %100 ]
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %136, label %109, !prof !214

109:                                              ; preds = %106
  %110 = trunc i64 %107 to i32
  %111 = trunc i64 %107 to i32
  br label %112

112:                                              ; preds = %109, %133
  %113 = phi i64 [ %134, %133 ], [ 0, %109 ]
  %114 = trunc i64 %113 to i32
  %115 = tail call i32 @ix86_memory_move_cost(i32 noundef %114, i32 noundef %110, i32 noundef 0) #24
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %113
  %118 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %113, i64 %107
  store i16 %116, ptr %118, align 4, !tbaa !194
  %119 = trunc i64 %113 to i32
  %120 = tail call i32 @ix86_memory_move_cost(i32 noundef %119, i32 noundef %111, i32 noundef 1) #24
  %121 = trunc i32 %120 to i16
  %122 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %113, i64 %107, i64 1
  store i16 %121, ptr %122, align 2, !tbaa !194
  %123 = load i16, ptr %117, align 4, !tbaa !194
  %124 = load i16, ptr %118, align 4, !tbaa !194
  %125 = icmp sgt i16 %123, %124
  br i1 %125, label %126, label %127, !prof !219

126:                                              ; preds = %112
  store i16 %124, ptr %117, align 4, !tbaa !194
  br label %127

127:                                              ; preds = %126, %112
  %128 = getelementptr inbounds [2 x i16], ptr %117, i64 0, i64 1
  %129 = load i16, ptr %128, align 2, !tbaa !194
  %130 = load i16, ptr %122, align 2, !tbaa !194
  %131 = icmp sgt i16 %129, %130
  br i1 %131, label %132, label %133, !prof !220

132:                                              ; preds = %127
  store i16 %130, ptr %128, align 2, !tbaa !194
  br label %133

133:                                              ; preds = %132, %127
  %134 = add nuw nsw i64 %113, 1
  %135 = icmp eq i64 %134, 87
  br i1 %135, label %136, label %112, !prof !221, !llvm.loop !222

136:                                              ; preds = %133, %106
  %137 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %107
  %138 = load i64, ptr %137, align 8, !tbaa !200
  %139 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  br label %140

140:                                              ; preds = %136, %140
  %141 = phi i64 [ 26, %136 ], [ %150, %140 ]
  %142 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !200
  %144 = or i64 %139, %143
  %145 = xor i64 %144, -1
  %146 = and i64 %138, %145
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %107, i64 %141
  store i32 %148, ptr %149, align 4, !tbaa !173
  %150 = add nsw i64 %141, -1
  %151 = icmp eq i64 %141, 0
  br i1 %151, label %152, label %140, !prof !223, !llvm.loop !224

152:                                              ; preds = %140
  %153 = add nsw i64 %107, -1
  %154 = icmp eq i64 %107, 0
  br i1 %154, label %155, label %106, !prof !214, !llvm.loop !225

155:                                              ; preds = %152, %165
  %156 = phi i64 [ %166, %165 ], [ 0, %152 ]
  br label %160

157:                                              ; preds = %165
  %158 = load i64, ptr @no_unit_alloc_regs, align 8
  %159 = xor i64 %158, -1
  br label %168

160:                                              ; preds = %155, %160
  %161 = phi i64 [ 0, %155 ], [ %163, %160 ]
  %162 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %156, i64 %161
  store i32 27, ptr %162, align 4, !tbaa !173
  %163 = add nuw nsw i64 %161, 1
  %164 = icmp eq i64 %163, 27
  br i1 %164, label %165, label %160, !prof !223, !llvm.loop !226

165:                                              ; preds = %160
  %166 = add nuw nsw i64 %156, 1
  %167 = icmp eq i64 %166, 27
  br i1 %167, label %157, label %155, !prof !214, !llvm.loop !227

168:                                              ; preds = %157, %198
  %169 = phi i64 [ 0, %157 ], [ %199, %198 ]
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %198, label %171, !prof !214

171:                                              ; preds = %168
  %172 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %169
  %173 = load i64, ptr %172, align 8, !tbaa !200
  %174 = and i64 %173, %159
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %198, label %176, !prof !228

176:                                              ; preds = %171
  %177 = trunc i64 %169 to i32
  br label %178

178:                                              ; preds = %176, %195
  %179 = phi i64 [ %196, %195 ], [ 0, %176 ]
  %180 = icmp eq i64 %169, %179
  br i1 %180, label %195, label %181, !prof !229

181:                                              ; preds = %178
  %182 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %179
  %183 = load i64, ptr %182, align 8, !tbaa !200
  %184 = xor i64 %183, -1
  %185 = and i64 %174, %184
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %195, !prof !230

187:                                              ; preds = %181
  %188 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %179
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi ptr [ %188, %187 ], [ %193, %189 ]
  %191 = load i32, ptr %190, align 4, !tbaa !173
  %192 = icmp eq i32 %191, 27
  %193 = getelementptr inbounds i32, ptr %190, i64 1
  br i1 %192, label %194, label %189, !prof !231, !llvm.loop !232

194:                                              ; preds = %189
  store i32 %177, ptr %190, align 4, !tbaa !173
  br label %195

195:                                              ; preds = %194, %181, %178
  %196 = add nuw nsw i64 %179, 1
  %197 = icmp eq i64 %196, 27
  br i1 %197, label %198, label %178, !prof !229, !llvm.loop !233

198:                                              ; preds = %195, %171, %168
  %199 = add nuw nsw i64 %169, 1
  %200 = icmp eq i64 %199, 27
  br i1 %200, label %201, label %168, !prof !214, !llvm.loop !234

201:                                              ; preds = %198
  %202 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !235
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204, !prof !247

204:                                              ; preds = %201
  %205 = tail call ptr %202() #24, !prof !248
  br label %206

206:                                              ; preds = %204, %201
  %207 = phi ptr [ %205, %204 ], [ null, %201 ]
  %208 = icmp eq ptr %207, null
  br i1 %208, label %223, label %209, !prof !247

209:                                              ; preds = %206
  %210 = load i32, ptr %207, align 4, !tbaa !173
  %211 = icmp eq i32 %210, 27
  br i1 %211, label %220, label %212, !prof !249

212:                                              ; preds = %209, %212
  %213 = phi i64 [ %216, %212 ], [ 0, %209 ]
  %214 = phi i32 [ %218, %212 ], [ %210, %209 ]
  %215 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %213
  store i32 %214, ptr %215, align 4, !tbaa !173
  %216 = add nuw nsw i64 %213, 1
  %217 = getelementptr inbounds i32, ptr %207, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !173
  %219 = icmp eq i32 %218, 27
  br i1 %219, label %220, label %212, !prof !250, !llvm.loop !251

220:                                              ; preds = %212, %209
  %221 = phi i64 [ 0, %209 ], [ %216, %212 ]
  %222 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %221
  store i32 27, ptr %222, align 4, !tbaa !173
  br label %223

223:                                              ; preds = %220, %206
  %224 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !173
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %271, !prof !247

226:                                              ; preds = %223, %264
  %227 = phi i64 [ %266, %264 ], [ 0, %223 ]
  %228 = phi i32 [ %265, %264 ], [ 0, %223 ]
  %229 = icmp eq i64 %227, 0
  br i1 %229, label %264, label %233

230:                                              ; preds = %233
  %231 = add nuw nsw i32 %234, 1
  %232 = icmp eq i32 %231, 33
  br i1 %232, label %238, label %233, !llvm.loop !252

233:                                              ; preds = %226, %230
  %234 = phi i32 [ %231, %230 ], [ 0, %226 ]
  %235 = tail call i32 @regclass_for_constraint(i32 noundef %234) #24
  %236 = zext i32 %235 to i64
  %237 = icmp eq i64 %227, %236
  br i1 %237, label %259, label %230

238:                                              ; preds = %230
  %239 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %227
  %240 = load i64, ptr %239, align 8, !tbaa !200
  %241 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  %242 = xor i64 %241, -1
  br label %243

243:                                              ; preds = %238, %252
  %244 = phi i64 [ 0, %238 ], [ %253, %252 ]
  %245 = icmp eq i64 %227, %244
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %244
  %248 = load i64, ptr %247, align 8, !tbaa !200
  %249 = xor i64 %240, %248
  %250 = and i64 %249, %242
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %246, %243
  %253 = add nuw nsw i64 %244, 1
  %254 = icmp eq i64 %253, 27
  br i1 %254, label %255, label %243, !llvm.loop !253

255:                                              ; preds = %246, %252
  %256 = phi i64 [ %244, %246 ], [ 27, %252 ]
  %257 = and i64 %256, 4294967295
  %258 = icmp ult i64 %257, %227
  br i1 %258, label %264, label %259

259:                                              ; preds = %233, %255
  %260 = add nsw i32 %228, 1
  %261 = sext i32 %228 to i64
  %262 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %261
  %263 = trunc i64 %227 to i32
  store i32 %263, ptr %262, align 4, !tbaa !173
  br label %264

264:                                              ; preds = %259, %255, %226
  %265 = phi i32 [ %228, %226 ], [ %228, %255 ], [ %260, %259 ]
  %266 = add nuw nsw i64 %227, 1
  %267 = icmp eq i64 %266, 28
  br i1 %267, label %268, label %226, !llvm.loop !254

268:                                              ; preds = %264
  %269 = sext i32 %265 to i64
  %270 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %269
  store i32 27, ptr %270, align 4, !tbaa !173
  br label %271

271:                                              ; preds = %268, %223
  store i32 0, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %272 = load i32, ptr @setup_cover_and_important_classes.classes, align 16, !tbaa !173
  %273 = icmp eq i32 %272, 27
  br i1 %273, label %309, label %274, !prof !249

274:                                              ; preds = %271, %304
  %275 = phi i64 [ %305, %304 ], [ 0, %271 ]
  %276 = phi i32 [ %307, %304 ], [ %272, %271 ]
  %277 = icmp eq i64 %275, 0
  br i1 %277, label %291, label %278, !prof !249

278:                                              ; preds = %274, %288
  %279 = phi i64 [ %289, %288 ], [ 0, %274 ]
  %280 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !173
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %288, label %282, !prof !255

282:                                              ; preds = %278
  %283 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %279
  %284 = load i32, ptr %283, align 4, !tbaa !173
  %285 = tail call i32 @reg_classes_intersect_p(i32 noundef %276, i32 noundef %284) #24
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287, !prof !256

287:                                              ; preds = %282
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 792, ptr noundef nonnull @.str.41) #24
  br label %288

288:                                              ; preds = %287, %282, %278
  %289 = add nuw nsw i64 %279, 1
  %290 = icmp eq i64 %289, %275
  br i1 %290, label %291, label %278, !prof !257, !llvm.loop !258

291:                                              ; preds = %288, %274
  %292 = sext i32 %276 to i64
  %293 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %292
  %294 = load i64, ptr %293, align 8, !tbaa !200
  %295 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  %296 = xor i64 %295, -1
  %297 = and i64 %294, %296
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %304, label %299, !prof !259

299:                                              ; preds = %291
  %300 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %301 = add nsw i32 %300, 1
  store i32 %301, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %302
  store i32 %276, ptr %303, align 4, !tbaa !173
  br label %304

304:                                              ; preds = %299, %291
  %305 = add nuw i64 %275, 1
  %306 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !173
  %308 = icmp eq i32 %307, 27
  br i1 %308, label %309, label %274, !prof !250, !llvm.loop !260

309:                                              ; preds = %304, %271
  store i32 0, ptr @ira_important_classes_num, align 4, !tbaa !173
  %310 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  %311 = xor i64 %310, -1
  %312 = load i32, ptr @ira_reg_class_cover_size, align 4
  %313 = icmp sgt i32 %312, 0
  %314 = sext i32 %312 to i64
  %315 = zext nneg i32 %312 to i64
  %316 = load i32, ptr @ira_reg_class_cover, align 16
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %317
  %319 = zext i32 %316 to i64
  br label %331

320:                                              ; preds = %378
  %321 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %382, !prof !261

323:                                              ; preds = %320
  %324 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !173
  %325 = sext i32 %324 to i64
  %326 = shl nsw i64 %325, 2
  %327 = getelementptr i8, ptr @ira_important_classes, i64 %326
  %328 = zext nneg i32 %321 to i64
  %329 = shl nuw nsw i64 %328, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %327, ptr nonnull align 16 @ira_reg_class_cover, i64 %329, i1 false), !tbaa !173
  %330 = add i32 %324, %321
  store i32 %330, ptr @ira_important_classes_num, align 4, !tbaa !173
  br label %382

331:                                              ; preds = %309, %378
  %332 = phi i64 [ 0, %309 ], [ %380, %378 ]
  %333 = phi i32 [ 0, %309 ], [ %379, %378 ]
  %334 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %332
  %335 = load i64, ptr %334, align 8, !tbaa !200
  %336 = and i64 %335, %311
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %378, label %338, !prof !262

338:                                              ; preds = %331
  br i1 %313, label %339, label %368, !prof !263

339:                                              ; preds = %338
  %340 = load i64, ptr %318, align 8, !tbaa !200
  %341 = and i64 %340, %311
  %342 = icmp eq i64 %332, %319
  %343 = icmp eq i64 %336, %341
  %344 = select i1 %342, i1 true, i1 %343, !prof !264
  br i1 %344, label %368, label %356, !prof !265

345:                                              ; preds = %356
  %346 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %364
  %347 = load i32, ptr %346, align 4, !tbaa !173
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %348
  %350 = load i64, ptr %349, align 8, !tbaa !200
  %351 = and i64 %350, %311
  %352 = zext i32 %347 to i64
  %353 = icmp eq i64 %332, %352
  %354 = icmp eq i64 %336, %351
  %355 = select i1 %353, i1 true, i1 %354, !prof !264
  br i1 %355, label %366, label %356, !prof !266, !llvm.loop !267

356:                                              ; preds = %339, %345
  %357 = phi i64 [ %351, %345 ], [ %341, %339 ]
  %358 = phi i8 [ %363, %345 ], [ 0, %339 ]
  %359 = phi i64 [ %364, %345 ], [ 0, %339 ]
  %360 = xor i64 %357, -1
  %361 = and i64 %336, %360
  %362 = icmp eq i64 %361, 0
  %363 = select i1 %362, i8 1, i8 %358, !prof !268
  %364 = add nuw nsw i64 %359, 1
  %365 = icmp eq i64 %364, %315
  br i1 %365, label %366, label %345, !prof !269, !llvm.loop !267

366:                                              ; preds = %356, %345
  %367 = icmp slt i64 %364, %314
  br label %368

368:                                              ; preds = %366, %339, %338
  %369 = phi i8 [ 0, %338 ], [ 0, %339 ], [ %363, %366 ]
  %370 = phi i1 [ %313, %338 ], [ %313, %339 ], [ %367, %366 ]
  %371 = icmp eq i8 %369, 0
  %372 = or i1 %371, %370
  br i1 %372, label %378, label %373, !prof !270

373:                                              ; preds = %368
  %374 = add nsw i32 %333, 1
  store i32 %374, ptr @ira_important_classes_num, align 4, !tbaa !173
  %375 = sext i32 %333 to i64
  %376 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %375
  %377 = trunc i64 %332 to i32
  store i32 %377, ptr %376, align 4, !tbaa !173
  br label %378

378:                                              ; preds = %368, %373, %331
  %379 = phi i32 [ %333, %368 ], [ %374, %373 ], [ %333, %331 ]
  %380 = add nuw nsw i64 %332, 1
  %381 = icmp eq i64 %380, 27
  br i1 %381, label %320, label %331, !prof !214, !llvm.loop !271

382:                                              ; preds = %323, %320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_class_translate, i8 0, i64 108, i1 false), !tbaa !173
  %383 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !173
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %413, !prof !247

385:                                              ; preds = %382
  %386 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  %387 = xor i64 %386, -1
  %388 = icmp sgt i32 %321, 0
  %389 = zext nneg i32 %321 to i64
  br label %390

390:                                              ; preds = %385, %410
  %391 = phi i64 [ 0, %385 ], [ %411, %410 ]
  %392 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %391
  %393 = load i64, ptr %392, align 8, !tbaa !200
  br i1 %388, label %394, label %410

394:                                              ; preds = %390
  %395 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %391
  br label %396

396:                                              ; preds = %394, %407
  %397 = phi i64 [ 0, %394 ], [ %408, %407 ]
  %398 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !173
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !200
  %403 = xor i64 %393, %402
  %404 = and i64 %403, %387
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %396
  store i32 %399, ptr %395, align 4, !tbaa !173
  br label %407

407:                                              ; preds = %406, %396
  %408 = add nuw nsw i64 %397, 1
  %409 = icmp eq i64 %408, %389
  br i1 %409, label %410, label %396, !llvm.loop !272

410:                                              ; preds = %407, %390
  %411 = add nuw nsw i64 %391, 1
  %412 = icmp eq i64 %411, 27
  br i1 %412, label %413, label %390, !llvm.loop !273

413:                                              ; preds = %410, %382
  %414 = icmp sgt i32 %321, 0
  br i1 %414, label %415, label %417, !prof !261

415:                                              ; preds = %413
  %416 = zext nneg i32 %321 to i64
  br label %422

417:                                              ; preds = %443, %413
  %418 = icmp sgt i32 %321, 0
  %419 = load i64, ptr @no_unit_alloc_regs, align 8
  %420 = xor i64 %419, -1
  %421 = zext nneg i32 %321 to i64
  br label %448

422:                                              ; preds = %415, %443
  %423 = phi i64 [ 0, %415 ], [ %446, %443 ]
  %424 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !173
  br i1 %384, label %443, label %426, !prof !274

426:                                              ; preds = %422
  %427 = zext i32 %425 to i64
  %428 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !173
  %430 = icmp eq i32 %429, 27
  br i1 %430, label %443, label %431, !prof !249

431:                                              ; preds = %426, %439
  %432 = phi i32 [ %441, %439 ], [ %429, %426 ]
  %433 = phi ptr [ %440, %439 ], [ %428, %426 ]
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !173
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439, !prof !275

438:                                              ; preds = %431
  store i32 %425, ptr %435, align 4, !tbaa !173
  br label %439

439:                                              ; preds = %438, %431
  %440 = getelementptr inbounds i32, ptr %433, i64 1
  %441 = load i32, ptr %440, align 4, !tbaa !173
  %442 = icmp eq i32 %441, 27
  br i1 %442, label %443, label %431, !prof !276, !llvm.loop !277

443:                                              ; preds = %439, %426, %422
  %444 = zext i32 %425 to i64
  %445 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %444
  store i32 %425, ptr %445, align 4, !tbaa !173
  %446 = add nuw nsw i64 %423, 1
  %447 = icmp eq i64 %446, %416
  br i1 %447, label %417, label %422, !prof !278, !llvm.loop !279

448:                                              ; preds = %417, %497
  %449 = phi i64 [ 0, %417 ], [ %498, %497 ]
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %497, label %451, !prof !214

451:                                              ; preds = %448
  %452 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %449
  %453 = load i32, ptr %452, align 4, !tbaa !173
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %497, !prof !280

455:                                              ; preds = %451
  br i1 %418, label %456, label %495, !prof !281

456:                                              ; preds = %455
  %457 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %449
  %458 = load i64, ptr %457, align 8, !tbaa !200
  br label %459

459:                                              ; preds = %456, %490
  %460 = phi i64 [ 0, %456 ], [ %493, %490 ]
  %461 = phi i32 [ 2147483647, %456 ], [ %492, %490 ]
  %462 = phi i32 [ 0, %456 ], [ %491, %490 ]
  %463 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %460
  %464 = load i32, ptr %463, align 4, !tbaa !173
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %465
  %467 = load i64, ptr %466, align 8, !tbaa !200
  %468 = and i64 %458, %467
  %469 = and i64 %468, %420
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %490, label %471, !prof !282

471:                                              ; preds = %459, %471
  %472 = phi i64 [ %482, %471 ], [ 0, %459 ]
  %473 = phi i32 [ %481, %471 ], [ 2147483647, %459 ]
  %474 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %472, i64 %449
  %475 = load i16, ptr %474, align 4, !tbaa !194
  %476 = sext i16 %475 to i32
  %477 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %472, i64 %449, i64 1
  %478 = load i16, ptr %477, align 2, !tbaa !194
  %479 = sext i16 %478 to i32
  %480 = add nsw i32 %479, %476
  %481 = tail call i32 @llvm.smin.i32(i32 %473, i32 %480)
  %482 = add nuw nsw i64 %472, 1
  %483 = icmp eq i64 %482, 87
  br i1 %483, label %484, label %471, !prof !283, !llvm.loop !284

484:                                              ; preds = %471
  %485 = icmp eq i32 %462, 0
  %486 = icmp sgt i32 %461, %481
  %487 = select i1 %485, i1 true, i1 %486, !prof !285
  %488 = select i1 %487, i32 %464, i32 %462, !prof !285
  %489 = select i1 %487, i32 %481, i32 %461, !prof !285
  br label %490

490:                                              ; preds = %484, %459
  %491 = phi i32 [ %462, %459 ], [ %488, %484 ]
  %492 = phi i32 [ %461, %459 ], [ %489, %484 ]
  %493 = add nuw nsw i64 %460, 1
  %494 = icmp eq i64 %493, %421
  br i1 %494, label %495, label %459, !prof !286, !llvm.loop !287

495:                                              ; preds = %490, %455
  %496 = phi i32 [ 0, %455 ], [ %491, %490 ]
  store i32 %496, ptr %452, align 4, !tbaa !173
  br label %497

497:                                              ; preds = %495, %451, %448
  %498 = add nuw nsw i64 %449, 1
  %499 = icmp eq i64 %498, 27
  br i1 %499, label %500, label %448, !prof !214, !llvm.loop !288

500:                                              ; preds = %497
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cover_class_order, i8 -1, i64 108, i1 false), !tbaa !173
  %501 = icmp sgt i32 %321, 0
  br i1 %501, label %502, label %513, !prof !261

502:                                              ; preds = %500
  %503 = zext nneg i32 %321 to i64
  br label %504

504:                                              ; preds = %502, %504
  %505 = phi i64 [ 0, %502 ], [ %511, %504 ]
  %506 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !173
  %508 = zext i32 %507 to i64
  %509 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %508
  %510 = trunc i64 %505 to i32
  store i32 %510, ptr %509, align 4, !tbaa !173
  %511 = add nuw nsw i64 %505, 1
  %512 = icmp eq i64 %511, %503
  br i1 %512, label %513, label %504, !prof !278, !llvm.loop !289

513:                                              ; preds = %504, %500
  %514 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !173
  %515 = sext i32 %514 to i64
  tail call void @spec_qsort(ptr noundef nonnull @ira_important_classes, i64 noundef %515, i64 noundef 4, ptr noundef nonnull @comp_reg_classes_func) #24
  %516 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !173
  %517 = icmp sgt i32 %516, 0
  br i1 %517, label %518, label %529, !prof !261

518:                                              ; preds = %513
  %519 = zext nneg i32 %516 to i64
  br label %520

520:                                              ; preds = %518, %520
  %521 = phi i64 [ 0, %518 ], [ %527, %520 ]
  %522 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !173
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds [27 x i32], ptr @ira_important_class_nums, i64 0, i64 %524
  %526 = trunc i64 %521 to i32
  store i32 %526, ptr %525, align 4, !tbaa !173
  %527 = add nuw nsw i64 %521, 1
  %528 = icmp eq i64 %527, %519
  br i1 %528, label %529, label %520, !prof !290, !llvm.loop !291

529:                                              ; preds = %520, %513
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %1, i8 0, i64 27, i1 false)
  %530 = icmp sgt i32 %516, 0
  br i1 %530, label %531, label %541, !prof !261

531:                                              ; preds = %529
  %532 = zext nneg i32 %516 to i64
  br label %533

533:                                              ; preds = %531, %533
  %534 = phi i64 [ 0, %531 ], [ %539, %533 ]
  %535 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !173
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %537
  store i8 1, ptr %538, align 1, !tbaa !169
  %539 = add nuw nsw i64 %534, 1
  %540 = icmp eq i64 %539, %532
  br i1 %540, label %541, label %533, !prof !290, !llvm.loop !292

541:                                              ; preds = %533, %529
  br label %542

542:                                              ; preds = %541, %666
  %543 = phi i64 [ %667, %666 ], [ 0, %541 ]
  %544 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %543
  store i32 27, ptr %544, align 4, !tbaa !173
  %545 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %543
  %546 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %543
  br label %547

547:                                              ; preds = %542, %663
  %548 = phi i64 [ 0, %542 ], [ %664, %663 ]
  %549 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %543, i64 %548
  store i8 0, ptr %549, align 1, !tbaa !169
  %550 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %543, i64 %548
  store i32 0, ptr %550, align 4, !tbaa !173
  %551 = load i64, ptr %545, align 8, !tbaa !200
  %552 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  %553 = xor i64 %552, -1
  %554 = and i64 %551, %553
  %555 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %548
  %556 = load i64, ptr %555, align 8, !tbaa !200
  %557 = and i64 %556, %553
  %558 = icmp eq i64 %554, 0
  %559 = icmp eq i64 %557, 0
  %560 = select i1 %558, i1 %559, i1 false, !prof !293
  br i1 %560, label %561, label %581, !prof !294

561:                                              ; preds = %547
  %562 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %543, i64 0
  %563 = load i32, ptr %562, align 4, !tbaa !173
  %564 = icmp eq i32 %563, 27
  br i1 %564, label %577, label %565, !prof !295

565:                                              ; preds = %561, %572
  %566 = phi i64 [ %573, %572 ], [ 0, %561 ]
  %567 = phi i32 [ %575, %572 ], [ %563, %561 ]
  %568 = load i32, ptr %550, align 4, !tbaa !173
  %569 = tail call i32 @reg_class_subset_p(i32 noundef %568, i32 noundef %567) #24
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %572, label %571, !prof !296

571:                                              ; preds = %565
  store i32 %567, ptr %550, align 4, !tbaa !173
  br label %572

572:                                              ; preds = %571, %565
  %573 = add nuw i64 %566, 1
  %574 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %543, i64 %573
  %575 = load i32, ptr %574, align 4, !tbaa !173
  %576 = icmp eq i32 %575, 27
  br i1 %576, label %577, label %565, !prof !297, !llvm.loop !298

577:                                              ; preds = %572, %561
  %578 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %543, i64 %548
  %579 = load i32, ptr %578, align 4, !tbaa !173
  %580 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %543, i64 %548
  store i32 %579, ptr %580, align 4, !tbaa !173
  br label %663

581:                                              ; preds = %547
  %582 = and i64 %557, %551
  %583 = icmp ne i64 %582, 0
  %584 = zext i1 %583 to i8
  store i8 %584, ptr %549, align 1, !tbaa !169
  %585 = load i8, ptr %546, align 1, !tbaa !169
  %586 = icmp eq i8 %585, 0
  br i1 %586, label %603, label %587, !prof !299

587:                                              ; preds = %581
  %588 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %548
  %589 = load i8, ptr %588, align 1, !tbaa !169
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %603, label %591, !prof !300

591:                                              ; preds = %587
  %592 = xor i64 %557, -1
  %593 = and i64 %554, %592
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %595, label %603, !prof !301

595:                                              ; preds = %591, %595
  %596 = phi ptr [ %599, %595 ], [ %544, %591 ]
  %597 = load i32, ptr %596, align 4, !tbaa !173
  %598 = icmp eq i32 %597, 27
  %599 = getelementptr inbounds i32, ptr %596, i64 1
  br i1 %598, label %600, label %595, !prof !302, !llvm.loop !303

600:                                              ; preds = %595
  %601 = getelementptr inbounds i32, ptr %596, i64 1
  %602 = trunc i64 %548 to i32
  store i32 %602, ptr %596, align 4, !tbaa !173
  store i32 27, ptr %601, align 4, !tbaa !173
  br label %603

603:                                              ; preds = %600, %591, %587, %581
  %604 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %543, i64 %548
  store i32 0, ptr %604, align 4, !tbaa !173
  %605 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !173
  %606 = icmp sgt i32 %605, 0
  br i1 %606, label %607, label %663, !prof !304

607:                                              ; preds = %603
  %608 = or i64 %556, %551
  %609 = and i64 %556, %551
  %610 = xor i64 %609, -1
  %611 = xor i64 %608, -1
  %612 = zext nneg i32 %605 to i64
  br label %613

613:                                              ; preds = %607, %660
  %614 = phi i64 [ 0, %607 ], [ %661, %660 ]
  %615 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %614
  %616 = load i32, ptr %615, align 4, !tbaa !173
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %617
  %619 = load i64, ptr %618, align 8, !tbaa !200
  %620 = and i64 %619, %553
  %621 = and i64 %620, %610
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %623, label %639, !prof !305

623:                                              ; preds = %613
  %624 = load i32, ptr %550, align 4, !tbaa !173
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %625
  %627 = load i64, ptr %626, align 8, !tbaa !200
  %628 = and i64 %627, %553
  %629 = xor i64 %628, -1
  %630 = and i64 %620, %629
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %638, !prof !306

632:                                              ; preds = %623
  %633 = icmp eq i64 %620, %628
  br i1 %633, label %634, label %639, !prof !307

634:                                              ; preds = %632
  %635 = xor i64 %627, -1
  %636 = and i64 %619, %635
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %638, label %639, !prof !308

638:                                              ; preds = %634, %623
  store i32 %616, ptr %550, align 4, !tbaa !173
  br label %639

639:                                              ; preds = %638, %634, %632, %613
  %640 = and i64 %620, %611
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %642, label %660, !prof !309

642:                                              ; preds = %639
  %643 = load i32, ptr %604, align 4, !tbaa !173
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %644
  %646 = load i64, ptr %645, align 8, !tbaa !200
  %647 = and i64 %646, %553
  %648 = icmp eq i32 %643, 0
  br i1 %648, label %659, label %649, !prof !310

649:                                              ; preds = %642
  %650 = xor i64 %620, -1
  %651 = and i64 %647, %650
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %653, label %660, !prof !311

653:                                              ; preds = %649
  %654 = icmp eq i64 %647, %620
  br i1 %654, label %655, label %659, !prof !312

655:                                              ; preds = %653
  %656 = xor i64 %646, -1
  %657 = and i64 %619, %656
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %659, label %660, !prof !313

659:                                              ; preds = %655, %653, %642
  store i32 %616, ptr %604, align 4, !tbaa !173
  br label %660

660:                                              ; preds = %659, %655, %649, %639
  %661 = add nuw nsw i64 %614, 1
  %662 = icmp eq i64 %661, %612
  br i1 %662, label %663, label %613, !prof !314, !llvm.loop !315

663:                                              ; preds = %660, %603, %577
  %664 = add nuw nsw i64 %548, 1
  %665 = icmp eq i64 %664, 27
  br i1 %665, label %666, label %547, !prof !223, !llvm.loop !316

666:                                              ; preds = %663
  %667 = add nuw nsw i64 %543, 1
  %668 = icmp eq i64 %667, 27
  br i1 %668, label %669, label %542, !prof !214, !llvm.loop !317

669:                                              ; preds = %666
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %1) #24
  %670 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %671 = icmp sgt i32 %670, 0
  %672 = zext nneg i32 %670 to i64
  br label %673

673:                                              ; preds = %669, %688
  %674 = phi i64 [ 0, %669 ], [ %689, %688 ]
  %675 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %674
  store i32 0, ptr %675, align 4, !tbaa !173
  br i1 %671, label %679, label %688, !prof !318

676:                                              ; preds = %679
  %677 = add nuw nsw i64 %680, 1
  %678 = icmp eq i64 %677, %672
  br i1 %678, label %688, label %679, !prof !319, !llvm.loop !320

679:                                              ; preds = %673, %676
  %680 = phi i64 [ %677, %676 ], [ 0, %673 ]
  %681 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %680
  %682 = load i32, ptr %681, align 4, !tbaa !173
  %683 = zext i32 %682 to i64
  %684 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %683, i64 %674
  %685 = load i16, ptr %684, align 2, !tbaa !194
  %686 = icmp sgt i16 %685, -1
  br i1 %686, label %687, label %676, !prof !321

687:                                              ; preds = %679
  store i32 %682, ptr %675, align 4, !tbaa !173
  br label %688

688:                                              ; preds = %676, %673, %687
  %689 = add nuw nsw i64 %674, 1
  %690 = icmp eq i64 %689, 53
  br i1 %690, label %691, label %673, !prof !322, !llvm.loop !323

691:                                              ; preds = %688
  store i32 -1, ptr @ira_max_nregs, align 4, !tbaa !173
  br label %692

692:                                              ; preds = %691, %727
  %693 = phi i64 [ 0, %691 ], [ %728, %727 ]
  %694 = trunc i64 %693 to i32
  br label %698

695:                                              ; preds = %727
  %696 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %697 = icmp sgt i32 %696, 0
  br i1 %697, label %730, label %767, !prof !261

698:                                              ; preds = %692, %724
  %699 = phi i64 [ 0, %692 ], [ %725, %724 ]
  %700 = tail call i32 @reg_classes_intersect_p(i32 noundef %694, i32 noundef 13) #24
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %702, label %708, !prof !324

702:                                              ; preds = %698
  %703 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %699
  %704 = load i8, ptr %703, align 1, !tbaa !169
  %705 = and i8 %704, -2
  %706 = icmp eq i8 %705, 10
  %707 = select i1 %706, i32 2, i32 1, !prof !325
  br label %718

708:                                              ; preds = %698
  %709 = icmp eq i64 %699, 40
  br i1 %709, label %714, label %710, !prof !326

710:                                              ; preds = %708
  %711 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %699
  %712 = load i8, ptr %711, align 1, !tbaa !169
  %713 = zext i8 %712 to i32
  br label %714

714:                                              ; preds = %710, %708
  %715 = phi i32 [ %713, %710 ], [ 12, %708 ]
  %716 = add nuw nsw i32 %715, 3
  %717 = lshr i32 %716, 2
  br label %718

718:                                              ; preds = %714, %702
  %719 = phi i32 [ %707, %702 ], [ %717, %714 ]
  %720 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %693, i64 %699
  store i32 %719, ptr %720, align 4, !tbaa !173
  %721 = load i32, ptr @ira_max_nregs, align 4, !tbaa !173
  %722 = icmp slt i32 %721, %719
  br i1 %722, label %723, label %724, !prof !327

723:                                              ; preds = %718
  store i32 %719, ptr @ira_max_nregs, align 4, !tbaa !173
  br label %724

724:                                              ; preds = %723, %718
  %725 = add nuw nsw i64 %699, 1
  %726 = icmp eq i64 %725, 87
  br i1 %726, label %727, label %698, !prof !328, !llvm.loop !329

727:                                              ; preds = %724
  %728 = add nuw nsw i64 %693, 1
  %729 = icmp eq i64 %728, 27
  br i1 %729, label %695, label %692, !prof !214, !llvm.loop !330

730:                                              ; preds = %695, %762
  %731 = phi i64 [ %763, %762 ], [ 0, %695 ]
  %732 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %731
  %733 = load i32, ptr %732, align 4, !tbaa !173
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %734
  br label %736

736:                                              ; preds = %730, %759
  %737 = phi i64 [ 0, %730 ], [ %760, %759 ]
  %738 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %734, i64 %737
  store i64 0, ptr %738, align 8, !tbaa !200
  %739 = load i32, ptr %735, align 4, !tbaa !173
  %740 = icmp sgt i32 %739, 0
  br i1 %740, label %741, label %759, !prof !331

741:                                              ; preds = %736
  %742 = zext nneg i32 %739 to i64
  %743 = trunc i64 %737 to i32
  br label %744

744:                                              ; preds = %741, %757
  %745 = phi i64 [ %742, %741 ], [ %746, %757 ]
  %746 = add nsw i64 %745, -1
  %747 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %734, i64 %746
  %748 = load i16, ptr %747, align 2, !tbaa !194
  %749 = sext i16 %748 to i32
  %750 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %749, i32 noundef %743) #24
  %751 = icmp eq i8 %750, 0
  br i1 %751, label %752, label %757, !prof !332

752:                                              ; preds = %744
  %753 = zext nneg i32 %749 to i64
  %754 = shl nuw i64 1, %753
  %755 = load i64, ptr %738, align 8, !tbaa !200
  %756 = or i64 %755, %754
  store i64 %756, ptr %738, align 8, !tbaa !200
  br label %757

757:                                              ; preds = %752, %744
  %758 = icmp sgt i64 %745, 1
  br i1 %758, label %744, label %759, !prof !333, !llvm.loop !334

759:                                              ; preds = %757, %736
  %760 = add nuw nsw i64 %737, 1
  %761 = icmp eq i64 %760, 87
  br i1 %761, label %762, label %736, !prof !335, !llvm.loop !336

762:                                              ; preds = %759
  %763 = add nuw nsw i64 %731, 1
  %764 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %765 = sext i32 %764 to i64
  %766 = icmp slt i64 %763, %765
  br i1 %766, label %730, label %767, !prof !337, !llvm.loop !338

767:                                              ; preds = %762, %695
  tail call void @ira_init_costs() #24
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_register_move_costs() unnamed_addr #13 !prof !191 !PGOFuncName !339 {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %14, %12 ]
  %3 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !340

6:                                                ; preds = %1
  tail call void @free(ptr noundef %4)
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  %9 = load ptr, ptr %8, align 8, !tbaa !158
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !340

11:                                               ; preds = %7
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr null, ptr %13, align 8, !tbaa !158
  store ptr null, ptr %3, align 8, !tbaa !158
  store ptr null, ptr %8, align 8, !tbaa !158
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 87
  br i1 %15, label %16, label %1, !prof !335, !llvm.loop !341

16:                                               ; preds = %12
  ret void
}

declare void @ira_init_costs() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_finish_once() local_unnamed_addr #10 !prof !199 {
  tail call void @ira_finish_costs_once() #24
  tail call fastcc void @free_register_move_costs()
  ret void
}

declare void @ira_finish_costs_once() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ira_setup_eliminable_regset() local_unnamed_addr #13 !prof !342 {
  %1 = alloca ptr, align 8
  %2 = alloca [53 x i8], align 16
  %3 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !173
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5, !prof !343

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 524288
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr @flag_stack_check, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  %14 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 28), align 8
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  %17 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !344
  %22 = tail call zeroext i8 %21() #24
  %23 = icmp ne i8 %22, 0
  br label %24

24:                                               ; preds = %20, %5, %0
  %25 = phi i1 [ true, %5 ], [ true, %0 ], [ %23, %20 ]
  %26 = zext i1 %25 to i8
  store i8 %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !345
  %27 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !200
  store i64 %27, ptr @ira_no_alloc_regs, align 8, !tbaa !200
  store i64 0, ptr @eliminable_regset, align 8, !tbaa !200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %2, i8 0, i64 53, i1 false)
  %28 = load ptr, ptr @cfun, align 8, !tbaa !158
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !354
  %31 = load ptr, ptr %30, align 8, !tbaa !356
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !358
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !360
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %119, label %37, !prof !361

37:                                               ; preds = %24, %110
  %38 = phi ptr [ %112, %110 ], [ %33, %24 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !169
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !169
  %43 = icmp eq ptr %42, null
  br i1 %43, label %110, label %44, !prof !247

44:                                               ; preds = %37, %106
  %45 = phi ptr [ %108, %106 ], [ %42, %37 ]
  %46 = load ptr, ptr %39, align 8, !tbaa !169
  %47 = load ptr, ptr %46, align 8, !tbaa !362
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !169
  %50 = icmp eq ptr %45, %49
  br i1 %50, label %110, label %51, !prof !364

51:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1)
  store ptr %45, ptr %1, align 8, !tbaa !158
  %52 = call i32 @for_each_rtx(ptr noundef nonnull %1, ptr noundef nonnull @insn_contains_asm_1, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1)
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %106, label %55, !prof !365

55:                                               ; preds = %51
  %56 = load ptr, ptr @df, align 8, !tbaa !158
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !366
  %59 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !169
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !158
  %64 = getelementptr inbounds %struct.df_insn_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !369
  %66 = load ptr, ptr %65, align 8, !tbaa !158
  %67 = icmp eq ptr %66, null
  br i1 %67, label %106, label %68

68:                                               ; preds = %55, %102
  %69 = phi ptr [ %104, %102 ], [ %66, %55 ]
  %70 = phi ptr [ %103, %102 ], [ %65, %55 ]
  %71 = getelementptr inbounds %struct.df_base_ref, ptr %69, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !169
  %73 = icmp ult i32 %72, 53
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.df_base_ref, ptr %69, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !169
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 39
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !169
  br label %83

83:                                               ; preds = %80, %74
  %84 = phi ptr [ %82, %80 ], [ %76, %74 ]
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = zext nneg i32 %72 to i64
  %89 = zext nneg i32 %87 to i64
  %90 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %88, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !169
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %72, -1
  %94 = add nsw i32 %93, %92
  %95 = icmp ugt i32 %72, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %83, %96
  %97 = phi i32 [ %100, %96 ], [ %72, %83 ]
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %2, i64 %98
  store i8 1, ptr %99, align 1, !tbaa !169
  %100 = add i32 %97, 1
  %101 = icmp ugt i32 %100, %94
  br i1 %101, label %102, label %96, !llvm.loop !371

102:                                              ; preds = %96, %83, %68
  %103 = getelementptr inbounds ptr, ptr %70, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !158
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %68, !llvm.loop !372

106:                                              ; preds = %102, %55, %51
  %107 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !169
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %44, !prof !373, !llvm.loop !374

110:                                              ; preds = %106, %44, %37
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !358
  %113 = load ptr, ptr @cfun, align 8, !tbaa !158
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !354
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !360
  %118 = icmp eq ptr %112, %117
  br i1 %118, label %119, label %37, !prof !375, !llvm.loop !376

119:                                              ; preds = %110, %24
  br label %120

120:                                              ; preds = %119, %152
  %121 = phi i64 [ %153, %152 ], [ 0, %119 ]
  %122 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !377
  %123 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %121
  %124 = load i32, ptr %123, align 8, !tbaa !378
  %125 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %121, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !380
  %127 = call zeroext i8 %122(i32 noundef %124, i32 noundef %126) #24, !prof !381
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %133, label %129, !prof !382

129:                                              ; preds = %120
  %130 = and i64 %121, 1
  %131 = icmp eq i64 %130, 0
  %132 = select i1 %131, i1 %25, i1 false, !prof !383
  br label %133

133:                                              ; preds = %129, %120
  %134 = phi i1 [ true, %120 ], [ %132, %129 ]
  %135 = sext i32 %124 to i64
  %136 = getelementptr inbounds i8, ptr %2, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !169
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %147, !prof !384

139:                                              ; preds = %133
  %140 = zext nneg i32 %124 to i64
  %141 = shl nuw i64 1, %140
  %142 = load i64, ptr @eliminable_regset, align 8, !tbaa !200
  %143 = or i64 %142, %141
  store i64 %143, ptr @eliminable_regset, align 8, !tbaa !200
  br i1 %134, label %144, label %152, !prof !382

144:                                              ; preds = %139
  %145 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !200
  %146 = or i64 %145, %141
  store i64 %146, ptr @ira_no_alloc_regs, align 8, !tbaa !200
  br label %152

147:                                              ; preds = %133
  br i1 %134, label %148, label %151

148:                                              ; preds = %147
  %149 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %135
  %150 = load ptr, ptr %149, align 8, !tbaa !158
  call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %150) #24
  br label %152

151:                                              ; preds = %147
  call void @df_set_regs_ever_live(i32 noundef %124, i8 noundef zeroext 1) #24
  br label %152

152:                                              ; preds = %148, %151, %139, %144
  %153 = add nuw nsw i64 %121, 1
  %154 = icmp eq i64 %153, 4
  br i1 %154, label %155, label %120, !prof !385, !llvm.loop !386

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, ptr %2, i64 6
  %157 = load i8, ptr %156, align 2, !tbaa !169
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %165, !prof !343

159:                                              ; preds = %155
  %160 = load i64, ptr @eliminable_regset, align 8, !tbaa !200
  %161 = or i64 %160, 64
  store i64 %161, ptr @eliminable_regset, align 8, !tbaa !200
  br i1 %25, label %162, label %169, !prof !343

162:                                              ; preds = %159
  %163 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !200
  %164 = or i64 %163, 64
  store i64 %164, ptr @ira_no_alloc_regs, align 8, !tbaa !200
  br label %169

165:                                              ; preds = %155
  br i1 %25, label %166, label %168

166:                                              ; preds = %165
  %167 = load ptr, ptr getelementptr inbounds ([53 x ptr], ptr @reg_names, i64 0, i64 6), align 16, !tbaa !158
  call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %167) #24
  br label %169

168:                                              ; preds = %165
  call void @df_set_regs_ever_live(i32 noundef 6, i8 noundef zeroext 1) #24
  br label %169

169:                                              ; preds = %166, %168, %159, %162
  ret void
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mark_elimination(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !387 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !158
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !354
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !358
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !360
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %43, label %12, !prof !361

12:                                               ; preds = %2, %34
  %13 = phi ptr [ %36, %34 ], [ %8, %2 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !388
  %16 = load ptr, ptr @df, align 8, !tbaa !158
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !158
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !389
  %21 = icmp ugt i32 %20, %15
  tail call void @llvm.assume(i1 %21)
  %22 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !391
  %24 = zext i32 %15 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !158
  %27 = getelementptr inbounds %struct.df_lr_bb_info, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !392
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %0) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !394

31:                                               ; preds = %12
  %32 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %28, i32 noundef %0) #24
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %1) #24
  br label %34

34:                                               ; preds = %31, %12
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !358
  %37 = load ptr, ptr @cfun, align 8, !tbaa !158
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !354
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !360
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %12, !prof !375, !llvm.loop !395

43:                                               ; preds = %34, %2
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_ira() #14 !prof !342 !PGOFuncName !396 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_ira() #13 !prof !342 !PGOFuncName !397 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !158
  tail call fastcc void @ira(ptr noundef %1)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @comp_reg_classes_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 !prof !398 !PGOFuncName !399 {
  %3 = load i32, ptr %0, align 4, !tbaa !173
  %4 = load i32, ptr %1, align 4, !tbaa !173
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !173
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !173
  %11 = icmp ne i32 %7, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false, !prof !400
  br i1 %13, label %14, label %23, !prof !400

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !173
  %18 = zext i32 %10 to i64
  %19 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !173
  %21 = sub nsw i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !401

23:                                               ; preds = %14, %2
  %24 = sub nsw i32 %7, %10
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi i32 [ %24, %23 ], [ %21, %14 ]
  ret i32 %26
}

declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @insn_contains_asm_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #19 !prof !402 !PGOFuncName !403 {
  %3 = load ptr, ptr %0, align 8, !tbaa !158
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !404

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 17
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ira(ptr noundef %0) unnamed_addr #13 !prof !342 !PGOFuncName !405 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !343

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 148) #24
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i32, ptr @flag_caller_saves, align 4, !tbaa !173
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !406

8:                                                ; preds = %5
  tail call void @init_caller_save() #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !173
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %13, !prof !343

12:                                               ; preds = %9
  store i32 %10, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  br label %16

13:                                               ; preds = %9
  %14 = add i32 %10, -10
  store i32 %14, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  %15 = load ptr, ptr @stderr, align 8, !tbaa !158
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi ptr [ %15, %13 ], [ %0, %12 ]
  store ptr %17, ptr @ira_dump_file, align 8, !tbaa !158
  %18 = load i32, ptr @optimize, align 4, !tbaa !173
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr @ira_conflicts_p, align 1, !tbaa !169
  %21 = load i1, ptr @ira_prohibited_mode_move_regs_initialized_p, align 1
  br i1 %21, label %73, label %22, !prof !407

22:                                               ; preds = %16
  store i1 true, ptr @ira_prohibited_mode_move_regs_initialized_p, align 1
  %23 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #24
  %24 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #24
  %25 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %23, ptr noundef %24) #24
  %26 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %25, i32 noundef -1, ptr noundef null) #24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  br label %31

31:                                               ; preds = %22, %70
  %32 = phi i64 [ 0, %22 ], [ %71, %70 ]
  %33 = getelementptr inbounds [87 x i64], ptr @ira_prohibited_mode_move_regs, i64 0, i64 %32
  store i64 -1, ptr %33, align 8, !tbaa !200
  %34 = shl nuw nsw i64 %32, 16
  %35 = trunc i64 %32 to i32
  %36 = trunc i64 %34 to i32
  %37 = trunc i64 %34 to i32
  br label %38

38:                                               ; preds = %31, %67
  %39 = phi i64 [ 0, %31 ], [ %68, %67 ]
  %40 = trunc i64 %39 to i32
  %41 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %40, i32 noundef %35) #24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %67, label %43, !prof !408

43:                                               ; preds = %38
  %44 = load i32, ptr %27, align 8, !tbaa !169
  %45 = trunc i64 %39 to i32
  tail call void @df_ref_change_reg_with_loc(i32 noundef %44, i32 noundef %45, ptr noundef %23) #24
  %46 = trunc i64 %39 to i32
  store i32 %46, ptr %27, align 8, !tbaa !169
  %47 = load i32, ptr %23, align 8
  %48 = and i32 %47, -16711681
  %49 = or disjoint i32 %48, %36
  store i32 %49, ptr %23, align 8
  %50 = load i32, ptr %28, align 8, !tbaa !169
  %51 = trunc i64 %39 to i32
  tail call void @df_ref_change_reg_with_loc(i32 noundef %50, i32 noundef %51, ptr noundef %24) #24
  %52 = trunc i64 %39 to i32
  store i32 %52, ptr %28, align 8, !tbaa !169
  %53 = load i32, ptr %24, align 8
  %54 = and i32 %53, -16711681
  %55 = or disjoint i32 %54, %37
  store i32 %55, ptr %24, align 8
  store i32 -1, ptr %29, align 8, !tbaa !169
  %56 = load ptr, ptr %30, align 8, !tbaa !169
  %57 = tail call i32 @recog(ptr noundef %56, ptr noundef %26, ptr noundef null) #24
  store i32 %57, ptr %29, align 8, !tbaa !169
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %67, label %59, !prof !409

59:                                               ; preds = %43
  tail call void @extract_insn(ptr noundef %26) #24
  %60 = tail call i32 @constrain_operands(i32 noundef 1) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62, !prof !410

62:                                               ; preds = %59
  %63 = shl nuw i64 1, %39
  %64 = xor i64 %63, -1
  %65 = load i64, ptr %33, align 8, !tbaa !200
  %66 = and i64 %65, %64
  store i64 %66, ptr %33, align 8, !tbaa !200
  br label %67

67:                                               ; preds = %62, %59, %43, %38
  %68 = add nuw nsw i64 %39, 1
  %69 = icmp eq i64 %68, 53
  br i1 %69, label %70, label %38, !prof !205, !llvm.loop !411

70:                                               ; preds = %67
  %71 = add nuw nsw i64 %32, 1
  %72 = icmp eq i64 %71, 87
  br i1 %72, label %73, label %31, !prof !207, !llvm.loop !412

73:                                               ; preds = %70, %16
  tail call void @df_note_add_problem() #24
  %74 = load i32, ptr @optimize, align 4, !tbaa !173
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77, !prof !406

76:                                               ; preds = %73
  tail call void @df_live_add_problem() #24
  tail call void @df_live_set_all_dirty() #24
  br label %77

77:                                               ; preds = %76, %73
  tail call void @df_analyze() #24
  %78 = tail call i32 @df_clear_flags(i32 noundef 16) #24
  tail call void @regstat_init_n_sets_and_refs() #24
  tail call void @regstat_compute_ri() #24
  %79 = load i32, ptr @warn_clobbered, align 4, !tbaa !173
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !343

81:                                               ; preds = %77
  tail call void @generate_setjmp_warnings() #24
  br label %82

82:                                               ; preds = %81, %77
  %83 = tail call i32 @leaf_function_p() #24
  store i32 %83, ptr @current_function_is_leaf, align 4, !tbaa !173
  %84 = tail call zeroext i8 @resize_reg_info() #24
  %85 = icmp ne i8 %84, 0
  %86 = load i32, ptr @flag_ira_loop_pressure, align 4
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %85, i1 %87, i1 false, !prof !343
  br i1 %88, label %89, label %91, !prof !406

89:                                               ; preds = %82
  %90 = load ptr, ptr @ira_dump_file, align 8, !tbaa !158
  tail call void @ira_set_pseudo_classes(ptr noundef %90) #24
  br label %91

91:                                               ; preds = %89, %82
  store i1 false, ptr @recorded_label_ref, align 4
  %92 = load i32, ptr @max_regno, align 4, !tbaa !173
  %93 = sext i32 %92 to i64
  %94 = tail call ptr @xcalloc(i64 noundef %93, i64 noundef 40) #24
  store ptr %94, ptr @reg_equiv, align 8, !tbaa !158
  %95 = load i32, ptr @max_regno, align 4, !tbaa !173
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 3
  %98 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %97) #24
  store ptr %98, ptr @reg_equiv_init, align 8, !tbaa !158
  %99 = load i32, ptr @max_regno, align 4, !tbaa !173
  store i32 %99, ptr @reg_equiv_init_size, align 4, !tbaa !173
  tail call void @init_alias_analysis() #24
  %100 = load ptr, ptr @cfun, align 8, !tbaa !158
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !354
  %103 = load ptr, ptr %102, align 8, !tbaa !356
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !358
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !360
  %108 = icmp eq ptr %105, %107
  br i1 %108, label %479, label %118, !prof !361

109:                                              ; preds = %470, %118
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !358
  %112 = load ptr, ptr @cfun, align 8, !tbaa !158
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !354
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !360
  %117 = icmp eq ptr %111, %116
  br i1 %117, label %479, label %118, !prof !375, !llvm.loop !413

118:                                              ; preds = %91, %109
  %119 = phi ptr [ %111, %109 ], [ %105, %91 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 10
  %121 = load i32, ptr %120, align 4, !tbaa !414
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !169
  %124 = load ptr, ptr %123, align 8, !tbaa !169
  %125 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !415
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !169
  %129 = icmp eq ptr %124, %128
  br i1 %129, label %109, label %130, !prof !416

130:                                              ; preds = %118, %470
  %131 = phi ptr [ %472, %470 ], [ %124, %118 ]
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = add nsw i32 %133, -7
  %135 = icmp ult i32 %134, 4
  br i1 %135, label %136, label %470, !prof !417

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !169
  %139 = icmp eq ptr %138, null
  br i1 %139, label %152, label %140, !prof !418

140:                                              ; preds = %136, %148
  %141 = phi ptr [ %150, %148 ], [ %138, %136 ]
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 16711680
  %144 = icmp eq i32 %143, 131072
  br i1 %144, label %145, label %148, !prof !419

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !169
  tail call void @no_equiv(ptr noundef %147, ptr nonnull poison, ptr poison)
  br label %148

148:                                              ; preds = %145, %140
  %149 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !169
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %140, !prof !420, !llvm.loop !421

152:                                              ; preds = %148, %136
  %153 = load i32, ptr %131, align 8
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -7
  %156 = icmp ult i32 %155, 4
  br i1 %156, label %157, label %165, !prof !422

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !169
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 23
  br i1 %162, label %165, label %163, !prof !423

163:                                              ; preds = %157
  %164 = tail call ptr @single_set_2(ptr noundef nonnull %131, ptr noundef nonnull %159) #24
  br label %165

165:                                              ; preds = %163, %157, %152
  %166 = phi ptr [ %164, %163 ], [ null, %152 ], [ %159, %157 ]
  %167 = icmp eq ptr %166, null
  %168 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !169
  br i1 %167, label %170, label %171, !prof !424

170:                                              ; preds = %165
  tail call void @note_stores(ptr noundef %169, ptr noundef nonnull @no_equiv, ptr noundef null) #24
  br label %470

171:                                              ; preds = %165
  %172 = load i32, ptr %169, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 15
  br i1 %174, label %175, label %194, !prof !425

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !169
  %178 = load i32, ptr %177, align 8, !tbaa !426
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %194, !prof !428

180:                                              ; preds = %175
  %181 = zext nneg i32 %178 to i64
  br label %182

182:                                              ; preds = %180, %192
  %183 = phi i64 [ %181, %180 ], [ %184, %192 ]
  %184 = add nsw i64 %183, -1
  %185 = load ptr, ptr %168, align 8, !tbaa !169
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !169
  %188 = getelementptr inbounds %struct.rtvec_def, ptr %187, i64 0, i32 1, i64 %184
  %189 = load ptr, ptr %188, align 8, !tbaa !158
  %190 = icmp eq ptr %189, %166
  br i1 %190, label %192, label %191, !prof !429

191:                                              ; preds = %182
  tail call void @note_stores(ptr noundef %189, ptr noundef nonnull @no_equiv, ptr noundef null) #24
  br label %192

192:                                              ; preds = %191, %182
  %193 = icmp sgt i64 %183, 1
  br i1 %193, label %182, label %194, !prof !430, !llvm.loop !431

194:                                              ; preds = %192, %175, %171
  %195 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !169
  %197 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !169
  %199 = tail call ptr @find_reg_note(ptr noundef nonnull %131, i32 noundef 3, ptr noundef null) #24
  %200 = icmp eq ptr %199, null
  br i1 %200, label %223, label %201, !prof !432

201:                                              ; preds = %194
  %202 = load i32, ptr %196, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 37
  br i1 %204, label %206, label %205, !prof !433

205:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2390, ptr noundef nonnull @.str.41) #24
  br label %206

206:                                              ; preds = %205, %201
  %207 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !169
  %209 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds %struct.equivalence, ptr %209, i64 %210, i32 4
  store i32 1, ptr %211, align 4, !tbaa !434
  %212 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !169
  %214 = tail call i32 @rtx_equal_p(ptr noundef %198, ptr noundef %213) #24
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %223, label %216, !prof !436

216:                                              ; preds = %206
  %217 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %218 = getelementptr inbounds ptr, ptr %217, i64 %210
  %219 = load ptr, ptr %218, align 8, !tbaa !158
  %220 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %131, ptr noundef %219) #24
  %221 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %222 = getelementptr inbounds ptr, ptr %221, i64 %210
  store ptr %220, ptr %222, align 8, !tbaa !158
  br label %223

223:                                              ; preds = %216, %206, %194
  %224 = load i32, ptr @optimize, align 4, !tbaa !173
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %470, label %226, !prof !437

226:                                              ; preds = %223
  %227 = load i32, ptr %196, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 37
  br i1 %229, label %230, label %280, !prof !438

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %232 = load i32, ptr %231, align 8, !tbaa !169
  %233 = icmp slt i32 %232, 53
  br i1 %233, label %280, label %234, !prof !439

234:                                              ; preds = %230
  %235 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %236 = zext nneg i32 %232 to i64
  %237 = getelementptr inbounds %struct.equivalence, ptr %235, i64 %236, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !440
  %239 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !158
  %240 = icmp eq ptr %238, %239
  br i1 %240, label %280, label %241, !prof !441

241:                                              ; preds = %234
  %242 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %271, label %244, !prof !442

244:                                              ; preds = %241
  %245 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %271, label %247, !prof !442

247:                                              ; preds = %244
  %248 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %249 = icmp eq i32 %248, 3
  br i1 %249, label %271, label %250, !prof !442

250:                                              ; preds = %247
  %251 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %252 = icmp eq i32 %251, 4
  br i1 %252, label %271, label %253, !prof !442

253:                                              ; preds = %250
  %254 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %255 = icmp eq i32 %254, 7
  br i1 %255, label %271, label %256, !prof !442

256:                                              ; preds = %253
  %257 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %258 = icmp eq i32 %257, 5
  br i1 %258, label %271, label %259, !prof !442

259:                                              ; preds = %256
  %260 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %261 = icmp eq i32 %260, 6
  br i1 %261, label %271, label %262, !prof !442

262:                                              ; preds = %259
  %263 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %264 = icmp eq i32 %263, 17
  br i1 %264, label %271, label %265, !prof !442

265:                                              ; preds = %262
  %266 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %267 = icmp eq i32 %266, 14
  br i1 %267, label %271, label %268, !prof !442

268:                                              ; preds = %265
  %269 = tail call i32 @reg_preferred_class(i32 noundef %232) #24
  %270 = icmp eq i32 %269, 15
  br i1 %270, label %271, label %281, !prof !442

271:                                              ; preds = %268, %265, %262, %259, %256, %253, %250, %247, %244, %241
  %272 = load i32, ptr %198, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 43
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %277 = getelementptr inbounds %struct.equivalence, ptr %276, i64 %236, i32 4
  %278 = load i32, ptr %277, align 4, !tbaa !434
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275, %234, %230, %226
  tail call void @note_stores(ptr noundef nonnull %166, ptr noundef nonnull @no_equiv, ptr noundef null) #24
  br label %470

281:                                              ; preds = %268, %275, %271
  %282 = tail call ptr @find_reg_note(ptr noundef nonnull %131, i32 noundef 4, ptr noundef null) #24
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %290, !prof !443

284:                                              ; preds = %281
  %285 = tail call zeroext i8 @rtx_varies_p(ptr noundef %198, i8 noundef zeroext 0) #24
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %290, !prof !444

287:                                              ; preds = %284
  %288 = tail call ptr @copy_rtx(ptr noundef %198) #24
  %289 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %131, i32 noundef 4, ptr noundef %288) #24
  br label %290

290:                                              ; preds = %287, %284, %281
  %291 = phi ptr [ %282, %281 ], [ null, %284 ], [ %289, %287 ]
  %292 = icmp eq ptr %291, null
  br i1 %292, label %300, label %293, !prof !445

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.rtx_def, ptr %291, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !169
  %296 = load i32, ptr %295, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 3
  %299 = select i1 %298, ptr null, ptr %291, !prof !446
  br label %300

300:                                              ; preds = %293, %290
  %301 = phi ptr [ %299, %293 ], [ null, %290 ]
  %302 = load ptr, ptr @df, align 8, !tbaa !158
  %303 = getelementptr inbounds %struct.df, ptr %302, i64 0, i32 5
  %304 = load ptr, ptr %303, align 8, !tbaa !447
  %305 = getelementptr inbounds ptr, ptr %304, i64 %236
  %306 = load ptr, ptr %305, align 8, !tbaa !158
  %307 = getelementptr inbounds %struct.df_reg_info, ptr %306, i64 0, i32 1
  %308 = load i32, ptr %307, align 8, !tbaa !448
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %355, label %310, !prof !450

310:                                              ; preds = %300
  %311 = icmp eq ptr %301, null
  br i1 %311, label %326, label %312, !prof !451

312:                                              ; preds = %310
  %313 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !169
  %315 = tail call zeroext i8 @rtx_varies_p(ptr noundef %314, i8 noundef zeroext 0) #24
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %326, !prof !452

317:                                              ; preds = %312
  %318 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %319 = getelementptr inbounds %struct.equivalence, ptr %318, i64 %236
  %320 = load ptr, ptr %319, align 8, !tbaa !453
  %321 = icmp eq ptr %320, null
  br i1 %321, label %355, label %322, !prof !454

322:                                              ; preds = %317
  %323 = load ptr, ptr %313, align 8, !tbaa !169
  %324 = tail call i32 @rtx_equal_p(ptr noundef %323, ptr noundef nonnull %320) #24
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %355

326:                                              ; preds = %322, %312, %310
  %327 = load i32, ptr %196, align 8
  %328 = and i32 %327, 65535
  %329 = icmp eq i32 %328, 37
  br i1 %329, label %330, label %470, !prof !455

330:                                              ; preds = %326
  %331 = load i32, ptr %231, align 8, !tbaa !169
  %332 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds %struct.equivalence, ptr %332, i64 %333, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !440
  %336 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !158
  %337 = icmp eq ptr %335, %336
  br i1 %337, label %470, label %338, !prof !456

338:                                              ; preds = %330
  store ptr %336, ptr %334, align 8, !tbaa !440
  %339 = getelementptr inbounds %struct.equivalence, ptr %332, i64 %333
  store ptr null, ptr %339, align 8, !tbaa !453
  %340 = getelementptr inbounds %struct.equivalence, ptr %332, i64 %333, i32 4
  %341 = load i32, ptr %340, align 4, !tbaa !434
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %470, !prof !457

343:                                              ; preds = %338
  %344 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %345 = getelementptr inbounds ptr, ptr %344, i64 %333
  store ptr null, ptr %345, align 8, !tbaa !158
  %346 = icmp eq ptr %335, null
  br i1 %346, label %470, label %347, !prof !458

347:                                              ; preds = %343, %347
  %348 = phi ptr [ %353, %347 ], [ %335, %343 ]
  %349 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !169
  %351 = tail call ptr @find_reg_note(ptr noundef %350, i32 noundef 3, ptr noundef null) #24
  tail call void @remove_note(ptr noundef %350, ptr noundef %351) #24
  %352 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !169
  %354 = icmp eq ptr %353, null
  br i1 %354, label %470, label %347, !prof !459, !llvm.loop !460

355:                                              ; preds = %322, %317, %300
  %356 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %357 = getelementptr inbounds %struct.equivalence, ptr %356, i64 %236, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !440
  %359 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %131, ptr noundef %358) #24
  %360 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %361 = getelementptr inbounds %struct.equivalence, ptr %360, i64 %236, i32 2
  store ptr %359, ptr %361, align 8, !tbaa !440
  %362 = load ptr, ptr @df, align 8, !tbaa !158
  %363 = getelementptr inbounds %struct.df, ptr %362, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !447
  %365 = getelementptr inbounds ptr, ptr %364, i64 %236
  %366 = load ptr, ptr %365, align 8, !tbaa !158
  %367 = getelementptr inbounds %struct.df_reg_info, ptr %366, i64 0, i32 1
  %368 = load i32, ptr %367, align 8, !tbaa !448
  %369 = icmp eq i32 %368, 1
  %370 = icmp ne ptr %301, null
  %371 = select i1 %369, i1 %370, i1 false, !prof !461
  br i1 %371, label %372, label %380, !prof !462

372:                                              ; preds = %355
  %373 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !169
  %375 = tail call zeroext i8 @rtx_varies_p(ptr noundef %374, i8 noundef zeroext 0) #24
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %380, !prof !463

377:                                              ; preds = %372
  %378 = load ptr, ptr %373, align 8, !tbaa !169
  tail call void @remove_note(ptr noundef nonnull %131, ptr noundef nonnull %301) #24
  %379 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %131, i32 noundef 3, ptr noundef %378) #24
  br label %380

380:                                              ; preds = %377, %372, %355
  %381 = tail call ptr @find_reg_note(ptr noundef nonnull %131, i32 noundef 3, ptr noundef null) #24
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %400, !prof !464

383:                                              ; preds = %380
  %384 = load ptr, ptr @reg_info_p, align 8, !tbaa !158
  %385 = getelementptr inbounds %struct.reg_info_t, ptr %384, i64 %236, i32 6
  %386 = load i32, ptr %385, align 4, !tbaa !465
  %387 = icmp sgt i32 %386, 1
  br i1 %387, label %388, label %400, !prof !467

388:                                              ; preds = %383
  %389 = load ptr, ptr %197, align 8, !tbaa !169
  %390 = load i32, ptr %389, align 8
  %391 = and i32 %390, 65535
  %392 = icmp eq i32 %391, 43
  br i1 %392, label %393, label %400, !prof !468

393:                                              ; preds = %388
  %394 = tail call fastcc i32 @validate_equiv_mem(ptr noundef nonnull %131, ptr noundef nonnull %196, ptr noundef nonnull %389), !range !469
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %400, label %396, !prof !470

396:                                              ; preds = %393
  %397 = load ptr, ptr %197, align 8, !tbaa !169
  %398 = tail call ptr @copy_rtx(ptr noundef %397) #24
  %399 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %131, i32 noundef 3, ptr noundef %398) #24
  br label %400

400:                                              ; preds = %396, %393, %388, %383, %380
  %401 = phi ptr [ %399, %396 ], [ null, %393 ], [ null, %388 ], [ null, %383 ], [ %381, %380 ]
  %402 = icmp eq ptr %401, null
  br i1 %402, label %470, label %403, !prof !471

403:                                              ; preds = %400
  %404 = load i32, ptr %231, align 8, !tbaa !169
  %405 = getelementptr inbounds %struct.rtx_def, ptr %401, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !169
  %407 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %408 = sext i32 %404 to i64
  %409 = getelementptr inbounds %struct.equivalence, ptr %407, i64 %408, i32 4
  %410 = load i32, ptr %409, align 4, !tbaa !434
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %419, !prof !472

412:                                              ; preds = %403
  %413 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %414 = getelementptr inbounds ptr, ptr %413, i64 %408
  %415 = load ptr, ptr %414, align 8, !tbaa !158
  %416 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %131, ptr noundef %415) #24
  %417 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %418 = getelementptr inbounds ptr, ptr %417, i64 %408
  store ptr %416, ptr %418, align 8, !tbaa !158
  br label %419

419:                                              ; preds = %412, %403
  %420 = load i32, ptr %406, align 8
  %421 = trunc i32 %420 to i16
  switch i16 %421, label %435 [
    i16 44, label %434
    i16 35, label %422
  ], !prof !473

422:                                              ; preds = %419
  %423 = getelementptr inbounds %struct.rtx_def, ptr %406, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !169
  %425 = load i32, ptr %424, align 8
  %426 = and i32 %425, 65535
  %427 = icmp eq i32 %426, 49
  br i1 %427, label %428, label %435

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !169
  %431 = load i32, ptr %430, align 8
  %432 = and i32 %431, 65535
  %433 = icmp eq i32 %432, 44
  br i1 %433, label %434, label %435

434:                                              ; preds = %428, %419
  store i1 true, ptr @recorded_label_ref, align 4
  br label %435

435:                                              ; preds = %428, %434, %422, %419
  %436 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %437 = getelementptr inbounds %struct.equivalence, ptr %436, i64 %408
  store ptr %406, ptr %437, align 8, !tbaa !453
  %438 = getelementptr inbounds %struct.equivalence, ptr %436, i64 %408, i32 1
  store ptr %197, ptr %438, align 8, !tbaa !474
  %439 = getelementptr inbounds %struct.equivalence, ptr %436, i64 %408, i32 3
  store i32 %121, ptr %439, align 8, !tbaa !475
  %440 = load ptr, ptr @reg_info_p, align 8, !tbaa !158
  %441 = getelementptr inbounds %struct.reg_info_t, ptr %440, i64 %408, i32 2
  %442 = load i32, ptr %441, align 4, !tbaa !476
  %443 = icmp sgt i32 %442, -1
  %444 = load i32, ptr @optimize, align 4
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %443, i1 %445, i1 false, !prof !477
  br i1 %446, label %447, label %470, !prof !477

447:                                              ; preds = %435
  %448 = shl nuw nsw i32 %442, 1
  store i32 %448, ptr %441, align 4, !tbaa !476
  %449 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !158
  %450 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %449, i64 %408, i32 1
  %451 = load i32, ptr %450, align 4, !tbaa !478
  %452 = icmp eq i32 %451, 2
  br i1 %452, label %453, label %470, !prof !480

453:                                              ; preds = %447
  %454 = tail call i32 @rtx_equal_p(ptr noundef nonnull %406, ptr noundef %198) #24
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %459, !prof !481

456:                                              ; preds = %453
  %457 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %198)
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %456, %453
  %460 = load i32, ptr %131, align 8
  %461 = and i32 %460, 65535
  %462 = icmp eq i32 %461, 8
  br i1 %462, label %463, label %470, !prof !482

463:                                              ; preds = %459
  %464 = load ptr, ptr %168, align 8, !tbaa !169
  %465 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %464, i32 noundef %404), !range !469
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %470, label %467, !prof !483

467:                                              ; preds = %463
  %468 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %469 = getelementptr inbounds %struct.equivalence, ptr %468, i64 %408, i32 5
  store i8 1, ptr %469, align 8, !tbaa !484
  br label %470

470:                                              ; preds = %347, %343, %338, %330, %326, %467, %463, %459, %456, %447, %435, %400, %280, %223, %170, %130
  %471 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 2
  %472 = load ptr, ptr %471, align 8, !tbaa !169
  %473 = load ptr, ptr %122, align 8, !tbaa !169
  %474 = getelementptr inbounds %struct.rtl_bb_info, ptr %473, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !415
  %476 = getelementptr inbounds %struct.rtx_def, ptr %475, i64 0, i32 1, i32 0, i32 0, i64 2
  %477 = load ptr, ptr %476, align 8, !tbaa !169
  %478 = icmp eq ptr %472, %477
  br i1 %478, label %109, label %130, !prof !485, !llvm.loop !486

479:                                              ; preds = %109, %91
  %480 = load i32, ptr @optimize, align 4, !tbaa !173
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %879, label %482, !prof !406

482:                                              ; preds = %479
  %483 = tail call ptr @get_insns() #24
  %484 = icmp eq ptr %483, null
  br i1 %484, label %574, label %485, !prof !361

485:                                              ; preds = %482, %570
  %486 = phi ptr [ %572, %570 ], [ %483, %482 ]
  %487 = load i32, ptr %486, align 8
  %488 = and i32 %487, 65535
  %489 = add nsw i32 %488, -7
  %490 = icmp ult i32 %489, 4
  br i1 %490, label %491, label %570, !prof !487

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.rtx_def, ptr %486, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !169
  %494 = load i32, ptr %493, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 23
  br i1 %496, label %499, label %497, !prof !488

497:                                              ; preds = %491
  %498 = tail call ptr @single_set_2(ptr noundef nonnull %486, ptr noundef nonnull %493) #24
  br label %499

499:                                              ; preds = %497, %491
  %500 = phi ptr [ %498, %497 ], [ %493, %491 ]
  %501 = icmp eq ptr %500, null
  br i1 %501, label %570, label %502, !prof !489

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !169
  %505 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1, i32 0, i32 0, i64 1
  %506 = load ptr, ptr %505, align 8, !tbaa !169
  %507 = load i32, ptr %504, align 8
  %508 = and i32 %507, 65535
  %509 = icmp eq i32 %508, 43
  br i1 %509, label %510, label %570, !prof !490

510:                                              ; preds = %502
  %511 = load i32, ptr %506, align 8
  %512 = and i32 %511, 65535
  %513 = icmp eq i32 %512, 37
  br i1 %513, label %514, label %570, !prof !491

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1
  %516 = load i32, ptr %515, align 8, !tbaa !169
  %517 = icmp ugt i32 %516, 52
  br i1 %517, label %518, label %570, !prof !492

518:                                              ; preds = %514
  %519 = load ptr, ptr @reg_info_p, align 8, !tbaa !158
  %520 = zext i32 %516 to i64
  %521 = getelementptr inbounds %struct.reg_info_t, ptr %519, i64 %520, i32 6
  %522 = load i32, ptr %521, align 4, !tbaa !465
  %523 = icmp sgt i32 %522, 1
  br i1 %523, label %524, label %570, !prof !493

524:                                              ; preds = %518
  %525 = load ptr, ptr @df, align 8, !tbaa !158
  %526 = getelementptr inbounds %struct.df, ptr %525, i64 0, i32 5
  %527 = load ptr, ptr %526, align 8, !tbaa !447
  %528 = getelementptr inbounds ptr, ptr %527, i64 %520
  %529 = load ptr, ptr %528, align 8, !tbaa !158
  %530 = getelementptr inbounds %struct.df_reg_info, ptr %529, i64 0, i32 1
  %531 = load i32, ptr %530, align 8, !tbaa !448
  %532 = icmp eq i32 %531, 1
  br i1 %532, label %533, label %570, !prof !494

533:                                              ; preds = %524
  %534 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %535 = getelementptr inbounds %struct.equivalence, ptr %534, i64 %520, i32 2
  %536 = load ptr, ptr %535, align 8, !tbaa !440
  %537 = icmp eq ptr %536, null
  %538 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %539 = icmp eq ptr %536, %538
  %540 = select i1 %537, i1 true, i1 %539, !prof !495
  br i1 %540, label %570, label %541, !prof !495

541:                                              ; preds = %533
  %542 = getelementptr inbounds %struct.rtx_def, ptr %536, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !169
  %544 = tail call ptr @find_reg_note(ptr noundef %543, i32 noundef 3, ptr noundef null) #24
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %570, !prof !496

546:                                              ; preds = %541
  %547 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !169
  %549 = tail call fastcc i32 @contains_replace_regs(ptr noundef %548), !range !497
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %570, !prof !498

551:                                              ; preds = %546
  %552 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %553 = getelementptr inbounds %struct.equivalence, ptr %552, i64 %520, i32 2
  %554 = load ptr, ptr %553, align 8, !tbaa !440
  %555 = getelementptr inbounds %struct.rtx_def, ptr %554, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !169
  %557 = tail call fastcc i32 @validate_equiv_mem(ptr noundef %556, ptr noundef nonnull %506, ptr noundef nonnull %504), !range !469
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %570, label %559, !prof !499

559:                                              ; preds = %551
  %560 = tail call fastcc i32 @memref_used_between_p(ptr noundef nonnull %504, ptr noundef %556, ptr noundef nonnull %486), !range !469
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %570, !prof !498

562:                                              ; preds = %559
  %563 = tail call ptr @copy_rtx(ptr noundef nonnull %504) #24
  %564 = tail call ptr @set_unique_reg_note(ptr noundef %556, i32 noundef 3, ptr noundef %563) #24
  %565 = icmp eq ptr %564, null
  br i1 %565, label %570, label %566, !prof !499

566:                                              ; preds = %562
  %567 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %486, ptr noundef null) #24
  %568 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %569 = getelementptr inbounds ptr, ptr %568, i64 %520
  store ptr %567, ptr %569, align 8, !tbaa !158
  tail call void @df_notes_rescan(ptr noundef %556) #24
  br label %570

570:                                              ; preds = %566, %562, %559, %551, %546, %541, %533, %524, %518, %514, %510, %502, %499, %485
  %571 = getelementptr inbounds %struct.rtx_def, ptr %486, i64 0, i32 1, i32 0, i32 0, i64 2
  %572 = load ptr, ptr %571, align 8, !tbaa !169
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %485, !prof !500, !llvm.loop !501

574:                                              ; preds = %570, %482
  %575 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  %576 = load ptr, ptr @cfun, align 8, !tbaa !158
  %577 = getelementptr inbounds %struct.function, ptr %576, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !354
  %579 = getelementptr inbounds %struct.control_flow_graph, ptr %578, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !360
  %581 = getelementptr inbounds %struct.basic_block_def, ptr %580, i64 0, i32 5
  %582 = load ptr, ptr %581, align 8, !tbaa !502
  %583 = load ptr, ptr @cfun, align 8, !tbaa !158
  %584 = getelementptr inbounds %struct.function, ptr %583, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !354
  %586 = load ptr, ptr %585, align 8, !tbaa !356
  %587 = icmp eq ptr %582, %586
  br i1 %587, label %765, label %596, !prof !361

588:                                              ; preds = %757, %596
  %589 = getelementptr inbounds %struct.basic_block_def, ptr %597, i64 0, i32 5
  %590 = load ptr, ptr %589, align 8, !tbaa !502
  %591 = load ptr, ptr @cfun, align 8, !tbaa !158
  %592 = getelementptr inbounds %struct.function, ptr %591, i64 0, i32 1
  %593 = load ptr, ptr %592, align 8, !tbaa !354
  %594 = load ptr, ptr %593, align 8, !tbaa !356
  %595 = icmp eq ptr %590, %594
  br i1 %595, label %765, label %596, !prof !375, !llvm.loop !503

596:                                              ; preds = %574, %588
  %597 = phi ptr [ %590, %588 ], [ %582, %574 ]
  %598 = getelementptr inbounds %struct.basic_block_def, ptr %597, i64 0, i32 10
  %599 = load i32, ptr %598, align 4, !tbaa !414
  %600 = getelementptr inbounds %struct.basic_block_def, ptr %597, i64 0, i32 7
  %601 = load ptr, ptr %600, align 8, !tbaa !169
  %602 = getelementptr inbounds %struct.rtl_bb_info, ptr %601, i64 0, i32 1
  %603 = load ptr, ptr %602, align 8, !tbaa !169
  %604 = load ptr, ptr %601, align 8, !tbaa !362
  %605 = getelementptr inbounds %struct.rtx_def, ptr %604, i64 0, i32 1, i32 0, i32 0, i64 1
  %606 = load ptr, ptr %605, align 8, !tbaa !169
  %607 = icmp eq ptr %603, %606
  br i1 %607, label %588, label %608, !prof !416

608:                                              ; preds = %596, %757
  %609 = phi ptr [ %759, %757 ], [ %603, %596 ]
  %610 = load i32, ptr %609, align 8
  %611 = and i32 %610, 65535
  %612 = add nsw i32 %611, -7
  %613 = icmp ult i32 %612, 4
  br i1 %613, label %614, label %757, !prof !417

614:                                              ; preds = %608
  %615 = icmp eq i32 %611, 9
  br i1 %615, label %616, label %619, !prof !504

616:                                              ; preds = %614
  %617 = tail call ptr @find_reg_note(ptr noundef nonnull %609, i32 noundef 28, ptr noundef null) #24
  %618 = icmp eq ptr %617, null
  br i1 %618, label %619, label %757, !prof !505

619:                                              ; preds = %616, %614
  %620 = getelementptr inbounds %struct.rtx_def, ptr %609, i64 1, i32 1, i32 0, i32 0, i64 1
  %621 = load ptr, ptr %620, align 8, !tbaa !169
  %622 = icmp eq ptr %621, null
  br i1 %622, label %757, label %623, !prof !506

623:                                              ; preds = %619, %753
  %624 = phi ptr [ %755, %753 ], [ %621, %619 ]
  %625 = load i32, ptr %624, align 8
  %626 = and i32 %625, 16711680
  %627 = icmp eq i32 %626, 65536
  br i1 %627, label %628, label %753, !prof !507

628:                                              ; preds = %623
  %629 = getelementptr inbounds %struct.rtx_def, ptr %609, i64 1
  %630 = getelementptr inbounds %struct.rtx_def, ptr %624, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !169
  %632 = load ptr, ptr %629, align 8, !tbaa !169
  %633 = tail call i32 @reg_mentioned_p(ptr noundef %631, ptr noundef %632) #24
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %753, label %635, !prof !508

635:                                              ; preds = %628
  %636 = load ptr, ptr %630, align 8, !tbaa !169
  %637 = getelementptr inbounds %struct.rtx_def, ptr %636, i64 0, i32 1
  %638 = load i32, ptr %637, align 8, !tbaa !169
  %639 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %640 = sext i32 %638 to i64
  %641 = getelementptr inbounds %struct.equivalence, ptr %639, i64 %640, i32 5
  %642 = load i8, ptr %641, align 8, !tbaa !484
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %753, label %644, !prof !509

644:                                              ; preds = %635
  %645 = getelementptr inbounds %struct.equivalence, ptr %639, i64 %640, i32 3
  %646 = load i32, ptr %645, align 8, !tbaa !475
  %647 = icmp slt i32 %646, %599
  br i1 %647, label %753, label %648, !prof !510

648:                                              ; preds = %644
  %649 = getelementptr inbounds %struct.equivalence, ptr %639, i64 %640, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !440
  %651 = icmp eq ptr %650, null
  br i1 %651, label %656, label %652, !prof !510

652:                                              ; preds = %648
  %653 = getelementptr inbounds %struct.rtx_def, ptr %650, i64 0, i32 1, i32 0, i32 0, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !169
  %655 = icmp eq ptr %654, null
  br i1 %655, label %657, label %656, !prof !511

656:                                              ; preds = %652, %648
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2653, ptr noundef nonnull @.str.41) #24
  br label %657

657:                                              ; preds = %656, %652
  %658 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %659 = getelementptr inbounds %struct.equivalence, ptr %658, i64 %640, i32 2
  %660 = load ptr, ptr %659, align 8, !tbaa !440
  %661 = getelementptr inbounds %struct.rtx_def, ptr %660, i64 0, i32 1
  %662 = load ptr, ptr %661, align 8, !tbaa !169
  %663 = tail call zeroext i8 @can_throw_internal(ptr noundef %662) #24
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %665, label %753, !prof !511

665:                                              ; preds = %657
  %666 = getelementptr inbounds %struct.rtx_def, ptr %662, i64 1
  %667 = load ptr, ptr %666, align 8, !tbaa !169
  %668 = tail call i32 @asm_noperands(ptr noundef %667) #24
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %714, !prof !511

670:                                              ; preds = %665
  %671 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !158
  %672 = getelementptr inbounds ptr, ptr %671, i64 %640
  %673 = load ptr, ptr %672, align 8, !tbaa !158
  %674 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %675 = getelementptr inbounds %struct.equivalence, ptr %674, i64 %640, i32 1
  %676 = load ptr, ptr %675, align 8, !tbaa !474
  %677 = load ptr, ptr %676, align 8, !tbaa !158
  %678 = tail call i32 @validate_replace_rtx(ptr noundef %673, ptr noundef %677, ptr noundef nonnull %609) #24
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %714, label %680, !prof !511

680:                                              ; preds = %670, %680
  %681 = phi ptr [ %683, %680 ], [ %624, %670 ]
  %682 = getelementptr inbounds %struct.rtx_def, ptr %681, i64 0, i32 1, i32 0, i32 0, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !169
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %680, !llvm.loop !512

685:                                              ; preds = %680
  %686 = getelementptr inbounds %struct.rtx_def, ptr %662, i64 1, i32 1, i32 0, i32 0, i64 1
  %687 = load ptr, ptr %686, align 8, !tbaa !169
  %688 = icmp eq ptr %687, null
  br i1 %688, label %702, label %689

689:                                              ; preds = %685, %699
  %690 = phi ptr [ %700, %699 ], [ %681, %685 ]
  %691 = phi ptr [ %693, %699 ], [ %687, %685 ]
  %692 = getelementptr inbounds %struct.rtx_def, ptr %691, i64 0, i32 1, i32 0, i32 0, i64 1
  %693 = load ptr, ptr %692, align 8, !tbaa !169
  %694 = load i32, ptr %691, align 8
  %695 = and i32 %694, 16711680
  %696 = icmp eq i32 %695, 65536
  br i1 %696, label %697, label %699

697:                                              ; preds = %689
  tail call void @remove_note(ptr noundef %662, ptr noundef nonnull %691) #24
  %698 = getelementptr inbounds %struct.rtx_def, ptr %690, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %691, ptr %698, align 8, !tbaa !169
  store ptr null, ptr %692, align 8, !tbaa !169
  br label %699

699:                                              ; preds = %697, %689
  %700 = phi ptr [ %691, %697 ], [ %690, %689 ]
  %701 = icmp eq ptr %693, null
  br i1 %701, label %702, label %689, !llvm.loop !513

702:                                              ; preds = %699, %685
  %703 = tail call ptr @remove_death(i32 noundef %638, ptr noundef nonnull %609) #24
  %704 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !158
  %705 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %704, i64 %640, i32 1
  store i32 0, ptr %705, align 4, !tbaa !478
  %706 = load ptr, ptr @reg_info_p, align 8, !tbaa !158
  %707 = getelementptr inbounds %struct.reg_info_t, ptr %706, i64 %640
  store i32 0, ptr %707, align 4, !tbaa !514
  %708 = tail call ptr @delete_insn(ptr noundef %662) #24
  %709 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %710 = getelementptr inbounds %struct.equivalence, ptr %709, i64 %640, i32 2
  %711 = load ptr, ptr %710, align 8, !tbaa !440
  %712 = getelementptr inbounds %struct.rtx_def, ptr %711, i64 0, i32 1, i32 0, i32 0, i64 1
  %713 = load ptr, ptr %712, align 8, !tbaa !169
  store ptr %713, ptr %710, align 8, !tbaa !440
  br label %748

714:                                              ; preds = %670, %665
  %715 = tail call ptr @prev_nondebug_insn(ptr noundef nonnull %609) #24
  %716 = icmp eq ptr %715, %662
  br i1 %716, label %753, label %717, !prof !515

717:                                              ; preds = %714
  %718 = getelementptr inbounds %struct.basic_block_def, ptr %597, i64 0, i32 9
  %719 = load ptr, ptr %666, align 8, !tbaa !169
  %720 = tail call ptr @emit_insn_before(ptr noundef %719, ptr noundef nonnull %609) #24
  %721 = getelementptr inbounds %struct.rtx_def, ptr %662, i64 1, i32 1, i32 0, i32 0, i64 1
  %722 = load ptr, ptr %721, align 8, !tbaa !169
  %723 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %722, ptr %723, align 8, !tbaa !169
  store ptr null, ptr %721, align 8, !tbaa !169
  %724 = tail call zeroext i8 @df_insn_rescan(ptr noundef %720) #24
  %725 = getelementptr inbounds %struct.rtx_def, ptr %662, i64 1, i32 1
  %726 = load i32, ptr %725, align 8, !tbaa !169
  %727 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 1, i32 1
  store i32 %726, ptr %727, align 8, !tbaa !169
  %728 = tail call ptr @delete_insn(ptr noundef %662) #24
  %729 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %730 = getelementptr inbounds %struct.equivalence, ptr %729, i64 %640, i32 2
  %731 = load ptr, ptr %730, align 8, !tbaa !440
  %732 = getelementptr inbounds %struct.rtx_def, ptr %731, i64 0, i32 1
  store ptr %720, ptr %732, align 8, !tbaa !169
  %733 = load i32, ptr %718, align 8, !tbaa !388
  %734 = load ptr, ptr @reg_info_p, align 8, !tbaa !158
  %735 = getelementptr inbounds %struct.reg_info_t, ptr %734, i64 %640, i32 6
  store i32 %733, ptr %735, align 4, !tbaa !465
  %736 = getelementptr inbounds %struct.reg_info_t, ptr %734, i64 %640, i32 3
  store i32 0, ptr %736, align 4, !tbaa !516
  %737 = getelementptr inbounds %struct.reg_info_t, ptr %734, i64 %640, i32 4
  store i32 0, ptr %737, align 4, !tbaa !517
  %738 = getelementptr inbounds %struct.reg_info_t, ptr %734, i64 %640, i32 5
  store i32 0, ptr %738, align 4, !tbaa !518
  %739 = getelementptr inbounds %struct.reg_info_t, ptr %734, i64 %640, i32 2
  store i32 2, ptr %739, align 4, !tbaa !476
  %740 = load ptr, ptr %600, align 8, !tbaa !169
  %741 = load ptr, ptr %740, align 8, !tbaa !362
  %742 = icmp eq ptr %609, %741
  br i1 %742, label %743, label %746, !prof !519

743:                                              ; preds = %717
  %744 = getelementptr inbounds %struct.rtx_def, ptr %609, i64 0, i32 1, i32 0, i32 0, i64 1
  %745 = load ptr, ptr %744, align 8, !tbaa !169
  store ptr %745, ptr %740, align 8, !tbaa !362
  br label %746

746:                                              ; preds = %743, %717
  %747 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef %720, ptr noundef null) #24
  br label %748

748:                                              ; preds = %702, %746
  %749 = phi ptr [ %747, %746 ], [ null, %702 ]
  %750 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %751 = getelementptr inbounds ptr, ptr %750, i64 %640
  store ptr %749, ptr %751, align 8, !tbaa !158
  %752 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %575, i32 noundef %638) #24
  br label %753

753:                                              ; preds = %748, %714, %657, %644, %635, %628, %623
  %754 = getelementptr inbounds %struct.rtx_def, ptr %624, i64 0, i32 1, i32 0, i32 0, i64 1
  %755 = load ptr, ptr %754, align 8, !tbaa !169
  %756 = icmp eq ptr %755, null
  br i1 %756, label %757, label %623, !prof !520, !llvm.loop !521

757:                                              ; preds = %753, %619, %616, %608
  %758 = getelementptr inbounds %struct.rtx_def, ptr %609, i64 0, i32 1, i32 0, i32 0, i64 1
  %759 = load ptr, ptr %758, align 8, !tbaa !169
  %760 = load ptr, ptr %600, align 8, !tbaa !169
  %761 = load ptr, ptr %760, align 8, !tbaa !362
  %762 = getelementptr inbounds %struct.rtx_def, ptr %761, i64 0, i32 1, i32 0, i32 0, i64 1
  %763 = load ptr, ptr %762, align 8, !tbaa !169
  %764 = icmp eq ptr %759, %763
  br i1 %764, label %588, label %608, !prof !485, !llvm.loop !522

765:                                              ; preds = %588, %574
  %766 = phi ptr [ %586, %574 ], [ %594, %588 ]
  %767 = load ptr, ptr %575, align 8, !tbaa !523
  %768 = icmp eq ptr %767, null
  br i1 %768, label %878, label %769, !prof !525

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.basic_block_def, ptr %766, i64 0, i32 6
  %771 = load ptr, ptr %770, align 8, !tbaa !358
  %772 = load ptr, ptr @cfun, align 8, !tbaa !158
  %773 = getelementptr inbounds %struct.function, ptr %772, i64 0, i32 1
  %774 = load ptr, ptr %773, align 8, !tbaa !354
  %775 = getelementptr inbounds %struct.control_flow_graph, ptr %774, i64 0, i32 1
  %776 = load ptr, ptr %775, align 8, !tbaa !360
  %777 = icmp eq ptr %771, %776
  br i1 %777, label %849, label %778, !prof !526

778:                                              ; preds = %769, %778
  %779 = phi ptr [ %842, %778 ], [ %771, %769 ]
  %780 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 9
  %781 = load i32, ptr %780, align 8, !tbaa !388
  %782 = load ptr, ptr @df, align 8, !tbaa !158
  %783 = getelementptr inbounds %struct.df, ptr %782, i64 0, i32 1, i64 2
  %784 = load ptr, ptr %783, align 8, !tbaa !158
  %785 = getelementptr inbounds %struct.dataflow, ptr %784, i64 0, i32 2
  %786 = load i32, ptr %785, align 8, !tbaa !389
  %787 = icmp ugt i32 %786, %781
  tail call void @llvm.assume(i1 %787)
  %788 = getelementptr inbounds %struct.dataflow, ptr %784, i64 0, i32 1
  %789 = load ptr, ptr %788, align 8, !tbaa !391
  %790 = zext i32 %781 to i64
  %791 = getelementptr inbounds ptr, ptr %789, i64 %790
  %792 = load ptr, ptr %791, align 8, !tbaa !158
  %793 = getelementptr inbounds %struct.df_live_bb_info, ptr %792, i64 0, i32 2
  %794 = load ptr, ptr %793, align 8, !tbaa !527
  %795 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %794, ptr noundef nonnull %575) #24
  %796 = load i32, ptr %780, align 8, !tbaa !388
  %797 = load ptr, ptr @df, align 8, !tbaa !158
  %798 = getelementptr inbounds %struct.df, ptr %797, i64 0, i32 1, i64 2
  %799 = load ptr, ptr %798, align 8, !tbaa !158
  %800 = getelementptr inbounds %struct.dataflow, ptr %799, i64 0, i32 2
  %801 = load i32, ptr %800, align 8, !tbaa !389
  %802 = icmp ugt i32 %801, %796
  tail call void @llvm.assume(i1 %802)
  %803 = getelementptr inbounds %struct.dataflow, ptr %799, i64 0, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !391
  %805 = zext i32 %796 to i64
  %806 = getelementptr inbounds ptr, ptr %804, i64 %805
  %807 = load ptr, ptr %806, align 8, !tbaa !158
  %808 = getelementptr inbounds %struct.df_live_bb_info, ptr %807, i64 0, i32 3
  %809 = load ptr, ptr %808, align 8, !tbaa !529
  %810 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %809, ptr noundef nonnull %575) #24
  %811 = load i32, ptr %780, align 8, !tbaa !388
  %812 = load ptr, ptr @df, align 8, !tbaa !158
  %813 = getelementptr inbounds %struct.df, ptr %812, i64 0, i32 1, i64 1
  %814 = load ptr, ptr %813, align 8, !tbaa !158
  %815 = getelementptr inbounds %struct.dataflow, ptr %814, i64 0, i32 2
  %816 = load i32, ptr %815, align 8, !tbaa !389
  %817 = icmp ugt i32 %816, %811
  tail call void @llvm.assume(i1 %817)
  %818 = getelementptr inbounds %struct.dataflow, ptr %814, i64 0, i32 1
  %819 = load ptr, ptr %818, align 8, !tbaa !391
  %820 = zext i32 %811 to i64
  %821 = getelementptr inbounds ptr, ptr %819, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !158
  %823 = getelementptr inbounds %struct.df_lr_bb_info, ptr %822, i64 0, i32 2
  %824 = load ptr, ptr %823, align 8, !tbaa !392
  %825 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %824, ptr noundef nonnull %575) #24
  %826 = load i32, ptr %780, align 8, !tbaa !388
  %827 = load ptr, ptr @df, align 8, !tbaa !158
  %828 = getelementptr inbounds %struct.df, ptr %827, i64 0, i32 1, i64 1
  %829 = load ptr, ptr %828, align 8, !tbaa !158
  %830 = getelementptr inbounds %struct.dataflow, ptr %829, i64 0, i32 2
  %831 = load i32, ptr %830, align 8, !tbaa !389
  %832 = icmp ugt i32 %831, %826
  tail call void @llvm.assume(i1 %832)
  %833 = getelementptr inbounds %struct.dataflow, ptr %829, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !391
  %835 = zext i32 %826 to i64
  %836 = getelementptr inbounds ptr, ptr %834, i64 %835
  %837 = load ptr, ptr %836, align 8, !tbaa !158
  %838 = getelementptr inbounds %struct.df_lr_bb_info, ptr %837, i64 0, i32 3
  %839 = load ptr, ptr %838, align 8, !tbaa !530
  %840 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %839, ptr noundef nonnull %575) #24
  %841 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 6
  %842 = load ptr, ptr %841, align 8, !tbaa !358
  %843 = load ptr, ptr @cfun, align 8, !tbaa !158
  %844 = getelementptr inbounds %struct.function, ptr %843, i64 0, i32 1
  %845 = load ptr, ptr %844, align 8, !tbaa !354
  %846 = getelementptr inbounds %struct.control_flow_graph, ptr %845, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !360
  %848 = icmp eq ptr %842, %847
  br i1 %848, label %849, label %778, !prof !531, !llvm.loop !532

849:                                              ; preds = %778, %769
  %850 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !173
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %878, label %852, !prof !533

852:                                              ; preds = %849
  %853 = tail call ptr @get_insns() #24
  %854 = icmp eq ptr %853, null
  br i1 %854, label %878, label %855

855:                                              ; preds = %852, %874
  %856 = phi ptr [ %876, %874 ], [ %853, %852 ]
  %857 = load i32, ptr %856, align 8
  %858 = and i32 %857, 65535
  %859 = icmp eq i32 %858, 7
  br i1 %859, label %860, label %874

860:                                              ; preds = %855
  %861 = getelementptr inbounds %struct.rtx_def, ptr %856, i64 1
  %862 = load ptr, ptr %861, align 8, !tbaa !169
  %863 = getelementptr inbounds %struct.rtx_def, ptr %862, i64 0, i32 1, i32 0, i32 0, i64 1
  %864 = load ptr, ptr %863, align 8, !tbaa !169
  %865 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %864, ptr noundef null, ptr noundef nonnull @adjust_cleared_regs, ptr noundef nonnull %575) #24
  %866 = load ptr, ptr %861, align 8, !tbaa !169
  %867 = getelementptr inbounds %struct.rtx_def, ptr %866, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %865, ptr %867, align 8, !tbaa !169
  %868 = load ptr, ptr %861, align 8, !tbaa !169
  %869 = getelementptr inbounds %struct.rtx_def, ptr %868, i64 0, i32 1, i32 0, i32 0, i64 1
  %870 = load ptr, ptr %869, align 8, !tbaa !169
  %871 = icmp eq ptr %864, %870
  br i1 %871, label %874, label %872

872:                                              ; preds = %860
  %873 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %856) #24
  br label %874

874:                                              ; preds = %872, %860, %855
  %875 = getelementptr inbounds %struct.rtx_def, ptr %856, i64 0, i32 1, i32 0, i32 0, i64 2
  %876 = load ptr, ptr %875, align 8, !tbaa !169
  %877 = icmp eq ptr %876, null
  br i1 %877, label %878, label %855, !llvm.loop !534

878:                                              ; preds = %874, %852, %849, %765
  tail call void @bitmap_obstack_free(ptr noundef nonnull %575) #24
  br label %879

879:                                              ; preds = %479, %878
  tail call void @end_alias_analysis() #24
  %880 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  tail call void @free(ptr noundef %880)
  %881 = load i1, ptr @recorded_label_ref, align 4
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @ira_bitmap_obstack) #24
  %882 = load i32, ptr @optimize, align 4, !tbaa !173
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %982, label %884, !prof !406

884:                                              ; preds = %879
  %885 = tail call i32 @max_reg_num() #24
  store i32 %885, ptr @max_regno, align 4, !tbaa !173
  store i32 %885, ptr @ira_reg_equiv_len, align 4, !tbaa !173
  %886 = sext i32 %885 to i64
  %887 = tail call ptr @xmalloc(i64 noundef %886) #24
  store ptr %887, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !158
  %888 = load i32, ptr @max_regno, align 4, !tbaa !173
  %889 = sext i32 %888 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %887, i8 0, i64 %889, i1 false), !prof !535
  %890 = load i32, ptr @max_regno, align 4, !tbaa !173
  %891 = sext i32 %890 to i64
  %892 = shl nsw i64 %891, 3
  %893 = tail call ptr @xmalloc(i64 noundef %892) #24
  store ptr %893, ptr @ira_reg_equiv_const, align 8, !tbaa !158
  %894 = load i32, ptr @max_regno, align 4, !tbaa !173
  %895 = sext i32 %894 to i64
  %896 = shl nsw i64 %895, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %893, i8 0, i64 %896, i1 false), !prof !536
  %897 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !173
  %898 = icmp sgt i32 %897, 53
  br i1 %898, label %899, label %971, !prof !537

899:                                              ; preds = %884, %960
  %900 = phi i64 [ %967, %960 ], [ 53, %884 ]
  %901 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %902 = getelementptr inbounds ptr, ptr %901, i64 %900
  %903 = load ptr, ptr %902, align 8, !tbaa !169
  %904 = icmp eq ptr %903, null
  br i1 %904, label %960, label %905, !prof !538

905:                                              ; preds = %899, %954
  %906 = phi ptr [ %958, %954 ], [ %903, %899 ]
  %907 = phi ptr [ %956, %954 ], [ null, %899 ]
  %908 = phi i8 [ %955, %954 ], [ 0, %899 ]
  %909 = getelementptr inbounds %struct.rtx_def, ptr %906, i64 0, i32 1
  %910 = load ptr, ptr %909, align 8, !tbaa !169
  %911 = tail call ptr @find_reg_note(ptr noundef %910, i32 noundef 3, ptr noundef null) #24
  %912 = icmp eq ptr %911, null
  br i1 %912, label %954, label %913, !prof !539

913:                                              ; preds = %905
  %914 = getelementptr inbounds %struct.rtx_def, ptr %911, i64 0, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !169
  %916 = tail call i32 @function_invariant_p(ptr noundef %915) #24
  %917 = icmp ne i32 %916, 0
  %918 = load i32, ptr @flag_pic, align 4
  %919 = icmp ne i32 %918, 0
  %920 = select i1 %917, i1 %919, i1 false, !prof !540
  br i1 %920, label %921, label %931, !prof !541

921:                                              ; preds = %913
  %922 = load i32, ptr %915, align 8
  %923 = and i32 %922, 65535
  %924 = zext nneg i32 %923 to i64
  %925 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %924
  %926 = load i32, ptr %925, align 4, !tbaa !173
  %927 = icmp eq i32 %926, 9
  br i1 %927, label %928, label %954

928:                                              ; preds = %921
  %929 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %915) #24
  %930 = icmp eq i8 %929, 0
  br i1 %930, label %954, label %931

931:                                              ; preds = %928, %913
  %932 = tail call i32 @memory_operand(ptr noundef %915, i32 noundef 0) #24
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %939, label %934, !prof !540

934:                                              ; preds = %931
  %935 = load i32, ptr %915, align 8
  %936 = lshr i32 %935, 26
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  br label %954

939:                                              ; preds = %931
  %940 = tail call i32 @function_invariant_p(ptr noundef %915) #24
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %954, label %942, !prof !542

942:                                              ; preds = %939
  %943 = load i32, ptr %915, align 8
  %944 = and i32 %943, 65535
  %945 = icmp eq i32 %944, 49
  %946 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %947 = icmp eq ptr %915, %946
  %948 = select i1 %945, i1 true, i1 %947, !prof !542
  %949 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %950 = icmp eq ptr %915, %949
  %951 = select i1 %948, i1 true, i1 %950, !prof !542
  %952 = select i1 %951, i8 1, i8 %908, !prof !542
  %953 = select i1 %951, ptr %907, ptr %915, !prof !542
  br label %954

954:                                              ; preds = %942, %939, %934, %928, %921, %905
  %955 = phi i8 [ %908, %905 ], [ %938, %934 ], [ %908, %939 ], [ %908, %928 ], [ %908, %921 ], [ %952, %942 ]
  %956 = phi ptr [ %907, %905 ], [ %907, %934 ], [ %907, %939 ], [ %907, %928 ], [ %907, %921 ], [ %953, %942 ]
  %957 = getelementptr inbounds %struct.rtx_def, ptr %906, i64 0, i32 1, i32 0, i32 0, i64 1
  %958 = load ptr, ptr %957, align 8, !tbaa !169
  %959 = icmp eq ptr %958, null
  br i1 %959, label %960, label %905, !prof !543, !llvm.loop !544

960:                                              ; preds = %954, %899
  %961 = phi i8 [ 0, %899 ], [ %955, %954 ]
  %962 = phi ptr [ null, %899 ], [ %956, %954 ]
  %963 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !158
  %964 = getelementptr inbounds i8, ptr %963, i64 %900
  store i8 %961, ptr %964, align 1, !tbaa !169
  %965 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !158
  %966 = getelementptr inbounds ptr, ptr %965, i64 %900
  store ptr %962, ptr %966, align 8, !tbaa !158
  %967 = add nuw nsw i64 %900, 1
  %968 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !173
  %969 = sext i32 %968 to i64
  %970 = icmp slt i64 %967, %969
  br i1 %970, label %899, label %971, !prof !545, !llvm.loop !546

971:                                              ; preds = %960, %884
  br i1 %881, label %972, label %982, !prof !406

972:                                              ; preds = %971
  %973 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %974 = icmp eq i8 %973, 0
  br i1 %974, label %976, label %975

975:                                              ; preds = %972
  tail call void @timevar_push_1(i32 noundef 119) #24
  br label %976

976:                                              ; preds = %975, %972
  %977 = tail call ptr @get_insns() #24
  tail call void @rebuild_jump_labels(ptr noundef %977) #24
  %978 = tail call zeroext i8 @purge_all_dead_edges() #24
  %979 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %982, label %981

981:                                              ; preds = %976
  tail call void @timevar_pop_1(i32 noundef 119) #24
  br label %982

982:                                              ; preds = %971, %981, %976, %879
  %983 = tail call i32 @max_reg_num() #24
  tail call void @ira_setup_eliminable_regset()
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_shuffle_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_store_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_load_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_additional_jumps_num, align 4, !tbaa !173
  store i32 0, ptr @ira_move_loops_num, align 4, !tbaa !173
  %984 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #24
  tail call void @record_loop_exits() #24
  %985 = load ptr, ptr @cfun, align 8, !tbaa !158
  %986 = getelementptr inbounds %struct.function, ptr %985, i64 0, i32 4
  store ptr @ira_loops, ptr %986, align 8, !tbaa !547
  %987 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  %988 = icmp sgt i32 %987, 0
  %989 = load ptr, ptr @ira_dump_file, align 8
  %990 = icmp ne ptr %989, null
  %991 = select i1 %988, i1 %990, i1 false, !prof !343
  br i1 %991, label %992, label %994, !prof !406

992:                                              ; preds = %982
  %993 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 16, i64 1, ptr nonnull %989)
  br label %994

994:                                              ; preds = %992, %982
  %995 = load i32, ptr @optimize, align 4, !tbaa !173
  %996 = icmp ne i32 %995, 0
  %997 = load i32, ptr @flag_ira_region, align 4
  %998 = add i32 %997, -1
  %999 = icmp ult i32 %998, 2
  %1000 = select i1 %996, i1 %999, i1 false, !prof !343
  %1001 = zext i1 %1000 to i8
  %1002 = tail call zeroext i8 @ira_build(i8 noundef zeroext %1001) #24
  %1003 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !173
  %1004 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !173
  %1005 = icmp sgt i32 %1004, 0
  br i1 %1005, label %1006, label %1031, !prof !537

1006:                                             ; preds = %994
  %1007 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !158
  %1008 = zext nneg i32 %1004 to i64
  %1009 = zext nneg i32 %1004 to i64
  %1010 = load i32, ptr @ira_reg_class_cover, align 16, !tbaa !173
  %1011 = zext i32 %1010 to i64
  %1012 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1007, i64 0, i32 11, i64 %1011
  %1013 = load i32, ptr %1012, align 4, !tbaa !173
  %1014 = icmp sgt i32 %1013, 10000
  br i1 %1014, label %1028, label %1015, !prof !247

1015:                                             ; preds = %1006, %1019
  %1016 = phi i64 [ %1017, %1019 ], [ 0, %1006 ]
  %1017 = add nuw nsw i64 %1016, 1
  %1018 = icmp eq i64 %1017, %1009
  br i1 %1018, label %1031, label %1019, !prof !548, !llvm.loop !549

1019:                                             ; preds = %1015
  %1020 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1017
  %1021 = load i32, ptr %1020, align 4, !tbaa !173
  %1022 = zext i32 %1021 to i64
  %1023 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1007, i64 0, i32 11, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !173
  %1025 = icmp sgt i32 %1024, 10000
  br i1 %1025, label %1026, label %1015, !prof !383, !llvm.loop !549

1026:                                             ; preds = %1019
  %1027 = icmp ult i64 %1017, %1008
  br label %1028

1028:                                             ; preds = %1026, %1006
  %1029 = phi i1 [ %1027, %1026 ], [ %1005, %1006 ]
  br i1 %1029, label %1030, label %1031, !prof !406

1030:                                             ; preds = %1028
  store i32 0, ptr @flag_ira_share_spill_slots, align 4, !tbaa !173
  br label %1031

1031:                                             ; preds = %1015, %994, %1030, %1028
  tail call void @ira_color() #24
  %1032 = load i32, ptr @ira_max_point, align 4, !tbaa !173
  tail call void @ira_emit(i8 noundef zeroext %1002) #24
  %1033 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %1034 = icmp eq i8 %1033, 0
  br i1 %1034, label %1158, label %1035, !prof !406

1035:                                             ; preds = %1031
  %1036 = tail call i32 @max_reg_num() #24
  store i32 %1036, ptr @max_regno, align 4, !tbaa !173
  %1037 = icmp eq i8 %1002, 0
  br i1 %1037, label %1038, label %1039, !prof !343

1038:                                             ; preds = %1035
  tail call void @ira_initiate_assign() #24
  br label %1158

1039:                                             ; preds = %1035
  %1040 = tail call i32 @max_reg_num() #24
  %1041 = tail call zeroext i8 @resize_reg_info() #24
  %1042 = icmp slt i32 %983, %1040
  br i1 %1042, label %1043, label %1047

1043:                                             ; preds = %1039, %1043
  %1044 = phi i32 [ %1045, %1043 ], [ %983, %1039 ]
  tail call void @setup_reg_classes(i32 noundef %1044, i32 noundef 13, i32 noundef 26, i32 noundef 13) #24
  %1045 = add i32 %1044, 1
  %1046 = icmp eq i32 %1045, %1040
  br i1 %1046, label %1047, label %1043, !llvm.loop !550

1047:                                             ; preds = %1043, %1039
  %1048 = tail call i32 @max_reg_num() #24
  %1049 = icmp slt i32 %983, %1048
  br i1 %1049, label %1050, label %1083

1050:                                             ; preds = %1047
  %1051 = sext i32 %983 to i64
  br label %1052

1052:                                             ; preds = %1050, %1079
  %1053 = phi i64 [ %1051, %1050 ], [ %1080, %1079 ]
  %1054 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !158
  %1055 = getelementptr inbounds ptr, ptr %1054, i64 %1053
  %1056 = load ptr, ptr %1055, align 8, !tbaa !158
  %1057 = getelementptr inbounds %struct.rtx_def, ptr %1056, i64 0, i32 1, i32 0, i32 0, i64 1
  %1058 = load i32, ptr %1057, align 8, !tbaa !169
  %1059 = tail call i32 @reg_preferred_class(i32 noundef %1058) #24
  %1060 = tail call i32 @reg_alternate_class(i32 noundef %1058) #24
  %1061 = tail call i32 @reg_cover_class(i32 noundef %1058) #24
  %1062 = trunc i64 %1053 to i32
  tail call void @setup_reg_classes(i32 noundef %1062, i32 noundef %1059, i32 noundef %1060, i32 noundef %1061) #24
  %1063 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  %1064 = icmp sgt i32 %1063, 2
  %1065 = load ptr, ptr @ira_dump_file, align 8
  %1066 = icmp ne ptr %1065, null
  %1067 = select i1 %1064, i1 %1066, i1 false
  br i1 %1067, label %1068, label %1079

1068:                                             ; preds = %1052
  %1069 = tail call i32 @reg_preferred_class(i32 noundef %1058) #24
  %1070 = zext i32 %1069 to i64
  %1071 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %1070
  %1072 = load ptr, ptr %1071, align 8, !tbaa !158
  %1073 = tail call i32 @reg_alternate_class(i32 noundef %1058) #24
  %1074 = zext i32 %1073 to i64
  %1075 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %1074
  %1076 = load ptr, ptr %1075, align 8, !tbaa !158
  %1077 = trunc i64 %1053 to i32
  %1078 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1065, ptr noundef nonnull @.str.45, i32 noundef %1077, ptr noundef %1072, ptr noundef %1076)
  br label %1079

1079:                                             ; preds = %1068, %1052
  %1080 = add nsw i64 %1053, 1
  %1081 = trunc i64 %1080 to i32
  %1082 = icmp eq i32 %1048, %1081
  br i1 %1082, label %1083, label %1052, !llvm.loop !551

1083:                                             ; preds = %1079, %1047
  %1084 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  %1085 = icmp sgt i32 %1084, 0
  %1086 = load ptr, ptr @ira_dump_file, align 8
  %1087 = icmp ne ptr %1086, null
  %1088 = select i1 %1085, i1 %1087, i1 false
  br i1 %1088, label %1089, label %1091

1089:                                             ; preds = %1083
  %1090 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 14, i64 1, ptr nonnull %1086)
  br label %1091

1091:                                             ; preds = %1089, %1083
  tail call void @ira_flattening(i32 noundef %983, i32 noundef %1032) #24
  tail call void @df_analyze() #24
  %1092 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #24
  tail call void @record_loop_exits() #24
  %1093 = load ptr, ptr @cfun, align 8, !tbaa !158
  %1094 = getelementptr inbounds %struct.function, ptr %1093, i64 0, i32 4
  store ptr @ira_loops, ptr %1094, align 8, !tbaa !547
  br label %1095

1095:                                             ; preds = %1150, %1091
  %1096 = phi ptr [ undef, %1091 ], [ %1128, %1150 ]
  %1097 = phi i32 [ 0, %1091 ], [ %1129, %1150 ]
  %1098 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !173
  %1099 = icmp slt i32 %1097, %1098
  br i1 %1099, label %1100, label %1126

1100:                                             ; preds = %1095
  %1101 = load ptr, ptr @ira_allocnos, align 8, !tbaa !158
  %1102 = sext i32 %1097 to i64
  %1103 = sext i32 %1098 to i64
  %1104 = getelementptr inbounds ptr, ptr %1101, i64 %1102
  %1105 = load ptr, ptr %1104, align 8, !tbaa !158
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1119, label %1113

1107:                                             ; preds = %1119
  %1108 = getelementptr inbounds ptr, ptr %1101, i64 %1121
  %1109 = load ptr, ptr %1108, align 8, !tbaa !158
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1119, label %1111, !llvm.loop !552

1111:                                             ; preds = %1107
  %1112 = icmp slt i64 %1121, %1103
  br label %1113

1113:                                             ; preds = %1111, %1100
  %1114 = phi i64 [ %1102, %1100 ], [ %1121, %1111 ]
  %1115 = phi i1 [ %1099, %1100 ], [ %1112, %1111 ]
  %1116 = phi ptr [ %1105, %1100 ], [ %1109, %1111 ]
  %1117 = trunc i64 %1114 to i32
  %1118 = add nsw i32 %1117, 1
  br label %1126

1119:                                             ; preds = %1100, %1107
  %1120 = phi i64 [ %1121, %1107 ], [ %1102, %1100 ]
  %1121 = add nsw i64 %1120, 1
  %1122 = trunc i64 %1121 to i32
  %1123 = icmp eq i32 %1098, %1122
  br i1 %1123, label %1124, label %1107, !llvm.loop !552

1124:                                             ; preds = %1119
  %1125 = icmp slt i64 %1121, %1103
  br label %1126

1126:                                             ; preds = %1124, %1095, %1113
  %1127 = phi i1 [ %1115, %1113 ], [ %1099, %1095 ], [ %1125, %1124 ]
  %1128 = phi ptr [ %1116, %1113 ], [ %1096, %1095 ], [ %1096, %1124 ]
  %1129 = phi i32 [ %1118, %1113 ], [ %1097, %1095 ], [ %1097, %1124 ]
  br i1 %1127, label %1130, label %1156

1130:                                             ; preds = %1126
  %1131 = getelementptr inbounds %struct.ira_allocno, ptr %1128, i64 0, i32 31
  %1132 = load i16, ptr %1131, align 4
  %1133 = and i16 %1132, 256
  %1134 = icmp eq i16 %1133, 0
  br i1 %1134, label %1135, label %1136

1135:                                             ; preds = %1130
  tail call void @ira_free_allocno_updated_costs(ptr noundef %1128) #24
  br label %1136

1136:                                             ; preds = %1135, %1130
  %1137 = getelementptr inbounds %struct.ira_allocno, ptr %1128, i64 0, i32 3
  %1138 = load i32, ptr %1137, align 4, !tbaa !186
  %1139 = icmp sgt i32 %1138, -1
  br i1 %1139, label %1150, label %1140

1140:                                             ; preds = %1136
  %1141 = load i16, ptr %1131, align 4
  %1142 = and i16 %1141, 1
  %1143 = icmp eq i16 %1142, 0
  br i1 %1143, label %1144, label %1150

1144:                                             ; preds = %1140
  %1145 = getelementptr inbounds %struct.ira_allocno, ptr %1128, i64 0, i32 12
  %1146 = load i32, ptr %1145, align 4, !tbaa !553
  %1147 = getelementptr inbounds %struct.ira_allocno, ptr %1128, i64 0, i32 10
  %1148 = load i32, ptr %1147, align 4, !tbaa !554
  %1149 = icmp slt i32 %1146, %1148
  br label %1150

1150:                                             ; preds = %1144, %1140, %1136
  %1151 = phi i1 [ true, %1140 ], [ true, %1136 ], [ %1149, %1144 ]
  %1152 = load i16, ptr %1131, align 4
  %1153 = select i1 %1151, i16 256, i16 0
  %1154 = and i16 %1152, -257
  %1155 = or disjoint i16 %1154, %1153
  store i16 %1155, ptr %1131, align 4
  br label %1095, !llvm.loop !555

1156:                                             ; preds = %1126
  tail call void @ira_initiate_assign() #24
  %1157 = load i32, ptr @max_regno, align 4, !tbaa !173
  tail call void @ira_reassign_conflict_allocnos(i32 noundef %1157) #24
  br label %1158

1158:                                             ; preds = %1038, %1156, %1031
  br label %1159

1159:                                             ; preds = %1158, %1242
  %1160 = phi i32 [ 1, %1242 ], [ 0, %1158 ]
  %1161 = phi ptr [ %1196, %1242 ], [ undef, %1158 ]
  %1162 = phi i32 [ %1197, %1242 ], [ 0, %1158 ]
  store i32 %1160, ptr @caller_save_needed, align 4, !tbaa !173
  br label %1163

1163:                                             ; preds = %1222, %1159
  %1164 = phi ptr [ %1161, %1159 ], [ %1196, %1222 ]
  %1165 = phi i32 [ %1162, %1159 ], [ %1197, %1222 ]
  %1166 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !173
  %1167 = icmp slt i32 %1165, %1166
  br i1 %1167, label %1168, label %1194, !prof !537

1168:                                             ; preds = %1163
  %1169 = load ptr, ptr @ira_allocnos, align 8, !tbaa !158
  %1170 = sext i32 %1165 to i64
  %1171 = sext i32 %1166 to i64
  %1172 = getelementptr inbounds ptr, ptr %1169, i64 %1170
  %1173 = load ptr, ptr %1172, align 8, !tbaa !158
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1187, label %1181, !prof !247

1175:                                             ; preds = %1187
  %1176 = getelementptr inbounds ptr, ptr %1169, i64 %1189
  %1177 = load ptr, ptr %1176, align 8, !tbaa !158
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1187, label %1179, !prof !247, !llvm.loop !552

1179:                                             ; preds = %1175
  %1180 = icmp slt i64 %1189, %1171
  br label %1181

1181:                                             ; preds = %1179, %1168
  %1182 = phi i64 [ %1170, %1168 ], [ %1189, %1179 ]
  %1183 = phi i1 [ %1167, %1168 ], [ %1180, %1179 ]
  %1184 = phi ptr [ %1173, %1168 ], [ %1177, %1179 ]
  %1185 = trunc i64 %1182 to i32
  %1186 = add nsw i32 %1185, 1
  br label %1194

1187:                                             ; preds = %1168, %1175
  %1188 = phi i64 [ %1189, %1175 ], [ %1170, %1168 ]
  %1189 = add nsw i64 %1188, 1
  %1190 = trunc i64 %1189 to i32
  %1191 = icmp eq i32 %1166, %1190
  br i1 %1191, label %1192, label %1175, !prof !556, !llvm.loop !552

1192:                                             ; preds = %1187
  %1193 = icmp slt i64 %1189, %1171
  br label %1194

1194:                                             ; preds = %1192, %1163, %1181
  %1195 = phi i1 [ %1183, %1181 ], [ %1167, %1163 ], [ %1193, %1192 ]
  %1196 = phi ptr [ %1184, %1181 ], [ %1164, %1163 ], [ %1164, %1192 ]
  %1197 = phi i32 [ %1186, %1181 ], [ %1165, %1163 ], [ %1165, %1192 ]
  br i1 %1195, label %1198, label %1243, !prof !557

1198:                                             ; preds = %1194
  %1199 = getelementptr inbounds %struct.ira_allocno, ptr %1196, i64 0, i32 31
  %1200 = load i16, ptr %1199, align 4
  %1201 = and i16 %1200, 256
  %1202 = icmp eq i16 %1201, 0
  br i1 %1202, label %1203, label %1205, !prof !558

1203:                                             ; preds = %1198
  %1204 = or disjoint i16 %1200, 256
  store i16 %1204, ptr %1199, align 4
  br label %1205

1205:                                             ; preds = %1203, %1198
  tail call void @ira_free_allocno_updated_costs(ptr noundef %1196) #24
  %1206 = getelementptr inbounds %struct.ira_allocno, ptr %1196, i64 0, i32 3
  %1207 = load i32, ptr %1206, align 4, !tbaa !186
  %1208 = getelementptr inbounds %struct.ira_allocno, ptr %1196, i64 0, i32 4
  %1209 = load ptr, ptr %1208, align 8, !tbaa !559
  %1210 = getelementptr inbounds %struct.rtx_def, ptr %1209, i64 0, i32 1
  %1211 = load i32, ptr %1210, align 8, !tbaa !169
  %1212 = tail call i32 @llvm.smax.i32(i32 %1207, i32 -1)
  %1213 = trunc i32 %1212 to i16
  %1214 = load ptr, ptr @reg_renumber, align 8, !tbaa !158
  %1215 = sext i32 %1211 to i64
  %1216 = getelementptr inbounds i16, ptr %1214, i64 %1215
  store i16 %1213, ptr %1216, align 2, !tbaa !194
  %1217 = icmp sgt i32 %1207, -1
  br i1 %1217, label %1218, label %1222, !prof !560

1218:                                             ; preds = %1205
  %1219 = getelementptr inbounds %struct.ira_allocno, ptr %1196, i64 0, i32 30
  %1220 = load i32, ptr %1219, align 8, !tbaa !561
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1222, label %1223, !prof !562

1222:                                             ; preds = %1233, %1218, %1205
  br label %1163, !llvm.loop !563

1223:                                             ; preds = %1218
  %1224 = getelementptr inbounds %struct.ira_allocno, ptr %1196, i64 0, i32 2
  %1225 = load i32, ptr %1224, align 8, !tbaa !564
  %1226 = load i64, ptr @call_used_reg_set, align 8, !tbaa !200
  %1227 = zext nneg i32 %1207 to i64
  %1228 = zext i32 %1225 to i64
  %1229 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1227, i64 %1228
  %1230 = load i8, ptr %1229, align 1, !tbaa !169
  %1231 = zext i8 %1230 to i64
  %1232 = zext nneg i32 %1207 to i64
  br label %1233

1233:                                             ; preds = %1236, %1223
  %1234 = phi i64 [ %1237, %1236 ], [ %1231, %1223 ]
  %1235 = icmp sgt i64 %1234, 0
  br i1 %1235, label %1236, label %1222, !prof !565, !llvm.loop !563

1236:                                             ; preds = %1233
  %1237 = add nsw i64 %1234, -1
  %1238 = add nuw nsw i64 %1237, %1232
  %1239 = shl nuw i64 1, %1238
  %1240 = and i64 %1239, %1226
  %1241 = icmp eq i64 %1240, 0
  br i1 %1241, label %1233, label %1242, !prof !566, !llvm.loop !567

1242:                                             ; preds = %1236
  br label %1159, !llvm.loop !563

1243:                                             ; preds = %1194
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !173
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !173
  %1244 = load ptr, ptr @ira_allocnos, align 8
  br label %1245

1245:                                             ; preds = %1308, %1243
  %1246 = phi i32 [ 0, %1243 ], [ %1309, %1308 ]
  %1247 = phi i32 [ 0, %1243 ], [ %1310, %1308 ]
  %1248 = phi i32 [ 0, %1243 ], [ %1312, %1308 ]
  %1249 = phi ptr [ undef, %1243 ], [ %1279, %1308 ]
  %1250 = phi i32 [ 0, %1243 ], [ %1280, %1308 ]
  store i32 %1248, ptr @ira_overall_cost, align 4, !tbaa !173
  %1251 = icmp slt i32 %1250, %1166
  br i1 %1251, label %1252, label %1277, !prof !537

1252:                                             ; preds = %1245
  %1253 = sext i32 %1250 to i64
  %1254 = getelementptr inbounds ptr, ptr %1244, i64 %1253
  %1255 = load ptr, ptr %1254, align 8, !tbaa !158
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1269, label %1263, !prof !247

1257:                                             ; preds = %1269
  %1258 = getelementptr inbounds ptr, ptr %1244, i64 %1272
  %1259 = load ptr, ptr %1258, align 8, !tbaa !158
  %1260 = icmp eq ptr %1259, null
  br i1 %1260, label %1269, label %1261, !prof !247, !llvm.loop !552

1261:                                             ; preds = %1257
  %1262 = icmp slt i64 %1272, %1271
  br label %1263

1263:                                             ; preds = %1261, %1252
  %1264 = phi i64 [ %1253, %1252 ], [ %1272, %1261 ]
  %1265 = phi i1 [ %1251, %1252 ], [ %1262, %1261 ]
  %1266 = phi ptr [ %1255, %1252 ], [ %1259, %1261 ]
  %1267 = trunc i64 %1264 to i32
  %1268 = add nsw i32 %1267, 1
  br label %1277

1269:                                             ; preds = %1252, %1257
  %1270 = phi i64 [ %1272, %1257 ], [ %1253, %1252 ]
  %1271 = sext i32 %1166 to i64
  %1272 = add nsw i64 %1270, 1
  %1273 = trunc i64 %1272 to i32
  %1274 = icmp eq i32 %1166, %1273
  br i1 %1274, label %1275, label %1257, !prof !556, !llvm.loop !552

1275:                                             ; preds = %1269
  %1276 = icmp slt i64 %1272, %1271
  br label %1277

1277:                                             ; preds = %1275, %1245, %1263
  %1278 = phi i1 [ %1265, %1263 ], [ %1251, %1245 ], [ %1276, %1275 ]
  %1279 = phi ptr [ %1266, %1263 ], [ %1249, %1245 ], [ %1249, %1275 ]
  %1280 = phi i32 [ %1268, %1263 ], [ %1250, %1245 ], [ %1250, %1275 ]
  br i1 %1278, label %1281, label %1313, !prof !557

1281:                                             ; preds = %1277
  %1282 = getelementptr inbounds %struct.ira_allocno, ptr %1279, i64 0, i32 3
  %1283 = load i32, ptr %1282, align 4, !tbaa !186
  %1284 = icmp slt i32 %1283, 0
  br i1 %1284, label %1285, label %1289, !prof !568

1285:                                             ; preds = %1281
  %1286 = getelementptr inbounds %struct.ira_allocno, ptr %1279, i64 0, i32 12
  %1287 = load i32, ptr %1286, align 4, !tbaa !553
  %1288 = add nsw i32 %1246, %1287
  store i32 %1288, ptr @ira_mem_cost, align 4, !tbaa !173
  br label %1308

1289:                                             ; preds = %1281
  %1290 = getelementptr inbounds %struct.ira_allocno, ptr %1279, i64 0, i32 33
  %1291 = load ptr, ptr %1290, align 8, !tbaa !569
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1304, label %1293, !prof !570

1293:                                             ; preds = %1289
  %1294 = getelementptr inbounds %struct.ira_allocno, ptr %1279, i64 0, i32 9
  %1295 = load i32, ptr %1294, align 8, !tbaa !571
  %1296 = zext i32 %1295 to i64
  %1297 = zext nneg i32 %1283 to i64
  %1298 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %1296, i64 %1297
  %1299 = load i16, ptr %1298, align 2, !tbaa !194
  %1300 = sext i16 %1299 to i64
  %1301 = getelementptr inbounds i32, ptr %1291, i64 %1300
  %1302 = load i32, ptr %1301, align 4, !tbaa !173
  %1303 = add nsw i32 %1247, %1302
  store i32 %1303, ptr @ira_reg_cost, align 4, !tbaa !173
  br label %1308

1304:                                             ; preds = %1289
  %1305 = getelementptr inbounds %struct.ira_allocno, ptr %1279, i64 0, i32 10
  %1306 = load i32, ptr %1305, align 4, !tbaa !554
  %1307 = add nsw i32 %1247, %1306
  store i32 %1307, ptr @ira_reg_cost, align 4, !tbaa !173
  br label %1308

1308:                                             ; preds = %1304, %1293, %1285
  %1309 = phi i32 [ %1288, %1285 ], [ %1246, %1293 ], [ %1246, %1304 ]
  %1310 = phi i32 [ %1247, %1285 ], [ %1303, %1293 ], [ %1307, %1304 ]
  %1311 = phi i32 [ %1287, %1285 ], [ %1302, %1293 ], [ %1306, %1304 ]
  %1312 = add nsw i32 %1311, %1248
  br label %1245, !llvm.loop !572

1313:                                             ; preds = %1277
  %1314 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  %1315 = icmp sgt i32 %1314, 0
  %1316 = load ptr, ptr @ira_dump_file, align 8
  %1317 = icmp ne ptr %1316, null
  %1318 = select i1 %1315, i1 %1317, i1 false, !prof !343
  br i1 %1318, label %1319, label %1330, !prof !406

1319:                                             ; preds = %1313
  %1320 = load i32, ptr @ira_reg_cost, align 4, !tbaa !173
  %1321 = load i32, ptr @ira_mem_cost, align 4, !tbaa !173
  %1322 = load i32, ptr @ira_load_cost, align 4, !tbaa !173
  %1323 = load i32, ptr @ira_store_cost, align 4, !tbaa !173
  %1324 = load i32, ptr @ira_shuffle_cost, align 4, !tbaa !173
  %1325 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1316, ptr noundef nonnull @.str.46, i32 noundef %1248, i32 noundef %1320, i32 noundef %1321, i32 noundef %1322, i32 noundef %1323, i32 noundef %1324)
  %1326 = load ptr, ptr @ira_dump_file, align 8, !tbaa !158
  %1327 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !173
  %1328 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !173
  %1329 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1326, ptr noundef nonnull @.str.47, i32 noundef %1327, i32 noundef %1328)
  br label %1330

1330:                                             ; preds = %1313, %1319
  %1331 = tail call ptr @get_insns() #24
  %1332 = tail call i32 @max_reg_num() #24
  %1333 = tail call i32 @delete_trivially_dead_insns(ptr noundef %1331, i32 noundef %1332) #24
  %1334 = tail call i32 @max_reg_num() #24
  store i32 %1334, ptr @max_regno, align 4, !tbaa !173
  %1335 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !158
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1339, label %1337, !prof !343

1337:                                             ; preds = %1330
  %1338 = load i32, ptr %1335, align 8, !tbaa !573
  br label %1339

1339:                                             ; preds = %1337, %1330
  %1340 = phi i32 [ %1338, %1337 ], [ 0, %1330 ]
  %1341 = sub nsw i32 %1334, %1340
  br i1 %1336, label %1348, label %1342, !prof !343

1342:                                             ; preds = %1339
  %1343 = getelementptr inbounds %struct.VEC_rtx_base, ptr %1335, i64 0, i32 1
  %1344 = load i32, ptr %1343, align 4, !tbaa !575
  %1345 = load i32, ptr %1335, align 8, !tbaa !573
  %1346 = sub i32 %1344, %1345
  %1347 = icmp uge i32 %1346, %1341
  br label %1350

1348:                                             ; preds = %1339
  %1349 = icmp eq i32 %1340, %1334
  br label %1350

1350:                                             ; preds = %1348, %1342
  %1351 = phi i1 [ %1347, %1342 ], [ %1349, %1348 ]
  br i1 %1351, label %1354, label %1352, !prof !406

1352:                                             ; preds = %1350
  %1353 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %1335, i32 noundef %1341) #24
  store ptr %1353, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !158
  br label %1354

1354:                                             ; preds = %1350, %1352
  %1355 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !158, !nonnull !576, !noundef !576
  store i32 %1334, ptr %1355, align 8, !tbaa !573
  %1356 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %1357 = icmp eq ptr %1356, null
  %1358 = getelementptr inbounds %struct.VEC_rtx_base, ptr %1356, i64 0, i32 2
  %1359 = select i1 %1357, ptr null, ptr %1358, !prof !406
  %1360 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1361 = sext i32 %1360 to i64
  %1362 = shl nsw i64 %1361, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1359, i8 0, i64 %1362, i1 false), !prof !536
  store ptr %1359, ptr @reg_equiv_memory_loc, align 8, !tbaa !158
  %1363 = icmp eq i32 %1360, %983
  br i1 %1363, label %1365, label %1364, !prof !343

1364:                                             ; preds = %1354
  tail call void @regstat_free_n_sets_and_refs() #24
  tail call void @regstat_free_ri() #24
  tail call void @regstat_init_n_sets_and_refs() #24
  tail call void @regstat_compute_ri() #24
  br label %1365

1365:                                             ; preds = %1364, %1354
  %1366 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !158
  tail call void @allocate_initial_values(ptr noundef %1366) #24
  %1367 = load i32, ptr @ira_overall_cost, align 4, !tbaa !173
  %1368 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %1369 = icmp eq i8 %1368, 0
  br i1 %1369, label %1487, label %1370, !prof !406

1370:                                             ; preds = %1365
  %1371 = tail call i32 @max_reg_num() #24
  %1372 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !173
  %1373 = icmp slt i32 %1372, %1371
  br i1 %1373, label %1374, label %1479, !prof !406

1374:                                             ; preds = %1370
  %1375 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %1376 = sext i32 %1371 to i64
  %1377 = shl nsw i64 %1376, 3
  %1378 = tail call ptr @ggc_realloc_stat(ptr noundef %1375, i64 noundef %1377) #24
  store ptr %1378, ptr @reg_equiv_init, align 8, !tbaa !158
  %1379 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !173
  %1380 = icmp slt i32 %1379, %1371
  br i1 %1380, label %1381, label %1386

1381:                                             ; preds = %1374
  %1382 = sext i32 %1379 to i64
  %1383 = sext i32 %1371 to i64
  br label %1389

1384:                                             ; preds = %1389
  %1385 = trunc i64 %1392 to i32
  store i32 %1385, ptr @reg_equiv_init_size, align 4, !tbaa !173
  br label %1386

1386:                                             ; preds = %1384, %1374
  %1387 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !173
  %1388 = icmp sgt i32 %1387, 53
  br i1 %1388, label %1395, label %1479

1389:                                             ; preds = %1381, %1389
  %1390 = phi i64 [ %1382, %1381 ], [ %1392, %1389 ]
  %1391 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %1392 = add nsw i64 %1390, 1
  %1393 = getelementptr inbounds ptr, ptr %1391, i64 %1390
  store ptr null, ptr %1393, align 8, !tbaa !158
  %1394 = icmp eq i64 %1392, %1383
  br i1 %1394, label %1384, label %1389, !llvm.loop !577

1395:                                             ; preds = %1386, %1473
  %1396 = phi i64 [ %1475, %1473 ], [ 53, %1386 ]
  %1397 = phi i32 [ %1474, %1473 ], [ undef, %1386 ]
  %1398 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %1399 = getelementptr inbounds ptr, ptr %1398, i64 %1396
  %1400 = load ptr, ptr %1399, align 8, !tbaa !158
  %1401 = icmp eq ptr %1400, null
  br i1 %1401, label %1473, label %1402

1402:                                             ; preds = %1395, %1470
  %1403 = phi i32 [ %1457, %1470 ], [ %1397, %1395 ]
  %1404 = phi ptr [ %1408, %1470 ], [ %1400, %1395 ]
  %1405 = phi ptr [ %1471, %1470 ], [ null, %1395 ]
  %1406 = getelementptr inbounds %struct.rtx_def, ptr %1404, i64 0, i32 1
  %1407 = getelementptr inbounds %struct.rtx_def, ptr %1404, i64 0, i32 1, i32 0, i32 0, i64 1
  %1408 = load ptr, ptr %1407, align 8, !tbaa !169
  %1409 = load ptr, ptr %1406, align 8, !tbaa !169
  %1410 = load i32, ptr %1409, align 8
  %1411 = and i32 %1410, 65535
  %1412 = add nsw i32 %1411, -7
  %1413 = icmp ult i32 %1412, 4
  br i1 %1413, label %1414, label %1422

1414:                                             ; preds = %1402
  %1415 = getelementptr inbounds %struct.rtx_def, ptr %1409, i64 1
  %1416 = load ptr, ptr %1415, align 8, !tbaa !169
  %1417 = load i32, ptr %1416, align 8
  %1418 = and i32 %1417, 65535
  %1419 = icmp eq i32 %1418, 23
  br i1 %1419, label %1422, label %1420

1420:                                             ; preds = %1414
  %1421 = tail call ptr @single_set_2(ptr noundef nonnull %1409, ptr noundef nonnull %1416) #24
  br label %1422

1422:                                             ; preds = %1420, %1414, %1402
  %1423 = phi ptr [ %1421, %1420 ], [ null, %1402 ], [ %1416, %1414 ]
  %1424 = getelementptr inbounds %struct.rtx_def, ptr %1423, i64 0, i32 1
  %1425 = load ptr, ptr %1424, align 8, !tbaa !169
  %1426 = load i32, ptr %1425, align 8
  %1427 = and i32 %1426, 65535
  %1428 = icmp eq i32 %1427, 37
  br i1 %1428, label %1429, label %1439

1429:                                             ; preds = %1422
  %1430 = getelementptr inbounds %struct.rtx_def, ptr %1425, i64 0, i32 1
  %1431 = load i32, ptr %1430, align 8, !tbaa !169
  %1432 = zext i32 %1431 to i64
  %1433 = icmp eq i64 %1396, %1432
  br i1 %1433, label %1456, label %1434

1434:                                             ; preds = %1429
  %1435 = getelementptr inbounds %struct.rtx_def, ptr %1425, i64 0, i32 1, i32 0, i32 0, i64 1
  %1436 = load i32, ptr %1435, align 8, !tbaa !169
  %1437 = zext i32 %1436 to i64
  %1438 = icmp eq i64 %1396, %1437
  br i1 %1438, label %1456, label %1439

1439:                                             ; preds = %1434, %1422
  %1440 = getelementptr inbounds %struct.rtx_def, ptr %1423, i64 0, i32 1, i32 0, i32 0, i64 1
  %1441 = load ptr, ptr %1440, align 8, !tbaa !169
  %1442 = load i32, ptr %1441, align 8
  %1443 = and i32 %1442, 65535
  %1444 = icmp eq i32 %1443, 37
  br i1 %1444, label %1445, label %1455

1445:                                             ; preds = %1439
  %1446 = getelementptr inbounds %struct.rtx_def, ptr %1441, i64 0, i32 1
  %1447 = load i32, ptr %1446, align 8, !tbaa !169
  %1448 = zext i32 %1447 to i64
  %1449 = icmp eq i64 %1396, %1448
  br i1 %1449, label %1456, label %1450

1450:                                             ; preds = %1445
  %1451 = getelementptr inbounds %struct.rtx_def, ptr %1441, i64 0, i32 1, i32 0, i32 0, i64 1
  %1452 = load i32, ptr %1451, align 8, !tbaa !169
  %1453 = zext i32 %1452 to i64
  %1454 = icmp eq i64 %1396, %1453
  br i1 %1454, label %1456, label %1455

1455:                                             ; preds = %1450, %1439
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1774, ptr noundef nonnull @.str.41) #24
  br label %1456

1456:                                             ; preds = %1445, %1450, %1429, %1434, %1455
  %1457 = phi i32 [ %1403, %1455 ], [ %1431, %1434 ], [ %1431, %1429 ], [ %1447, %1450 ], [ %1447, %1445 ]
  %1458 = zext i32 %1457 to i64
  %1459 = icmp eq i64 %1396, %1458
  br i1 %1459, label %1470, label %1460

1460:                                             ; preds = %1456
  %1461 = icmp eq ptr %1405, null
  %1462 = getelementptr inbounds %struct.rtx_def, ptr %1405, i64 0, i32 1, i32 0, i32 0, i64 1
  %1463 = load ptr, ptr @reg_equiv_init, align 8
  %1464 = getelementptr inbounds ptr, ptr %1463, i64 %1396
  %1465 = select i1 %1461, ptr %1464, ptr %1462
  store ptr %1408, ptr %1465, align 8, !tbaa !169
  %1466 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %1467 = sext i32 %1457 to i64
  %1468 = getelementptr inbounds ptr, ptr %1466, i64 %1467
  %1469 = load ptr, ptr %1468, align 8, !tbaa !158
  store ptr %1469, ptr %1407, align 8, !tbaa !169
  store ptr %1404, ptr %1468, align 8, !tbaa !158
  br label %1470

1470:                                             ; preds = %1460, %1456
  %1471 = phi ptr [ %1405, %1460 ], [ %1404, %1456 ]
  %1472 = icmp eq ptr %1408, null
  br i1 %1472, label %1473, label %1402, !llvm.loop !578

1473:                                             ; preds = %1470, %1395
  %1474 = phi i32 [ %1397, %1395 ], [ %1457, %1470 ]
  %1475 = add nuw nsw i64 %1396, 1
  %1476 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !173
  %1477 = sext i32 %1476 to i64
  %1478 = icmp slt i64 %1475, %1477
  br i1 %1478, label %1395, label %1479, !llvm.loop !579

1479:                                             ; preds = %1473, %1386, %1370
  store i32 0, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !173
  %1480 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1481 = sext i32 %1480 to i64
  %1482 = mul nsw i64 %1481, 48
  %1483 = tail call ptr @xmalloc(i64 noundef %1482) #24
  store ptr %1483, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !158
  %1484 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1485 = sext i32 %1484 to i64
  %1486 = mul nsw i64 %1485, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %1483, i8 0, i64 %1486, i1 false), !prof !536
  br label %1487

1487:                                             ; preds = %1365, %1479
  %1488 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %1489 = icmp eq i8 %1488, 0
  br i1 %1489, label %1491, label %1490, !prof !343

1490:                                             ; preds = %1487
  tail call void @timevar_pop_1(i32 noundef 148) #24
  br label %1491

1491:                                             ; preds = %1487, %1490
  %1492 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %1493 = icmp eq i8 %1492, 0
  br i1 %1493, label %1495, label %1494, !prof !343

1494:                                             ; preds = %1491
  tail call void @timevar_push_1(i32 noundef 149) #24
  br label %1495

1495:                                             ; preds = %1494, %1491
  %1496 = tail call i32 @df_set_flags(i32 noundef 16) #24
  %1497 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  %1498 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  %1499 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1500 = sext i32 %1499 to i64
  %1501 = tail call ptr @xcalloc(i64 noundef %1500, i64 noundef 8) #24
  %1502 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1503 = sext i32 %1502 to i64
  %1504 = shl nsw i64 %1503, 2
  %1505 = tail call ptr @xmalloc(i64 noundef %1504) #24
  br label %1506

1506:                                             ; preds = %1495, %1515
  %1507 = phi i64 [ 0, %1495 ], [ %1516, %1515 ]
  %1508 = load i64, ptr @eliminable_regset, align 8, !tbaa !200
  %1509 = shl nuw nsw i64 1, %1507
  %1510 = and i64 %1508, %1509
  %1511 = icmp eq i64 %1510, 0
  br i1 %1511, label %1515, label %1512, !prof !580

1512:                                             ; preds = %1506
  %1513 = trunc i64 %1507 to i32
  %1514 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1498, i32 noundef %1513) #24
  br label %1515

1515:                                             ; preds = %1512, %1506
  %1516 = add nuw nsw i64 %1507, 1
  %1517 = icmp eq i64 %1516, 53
  br i1 %1517, label %1518, label %1506, !prof !581, !llvm.loop !582

1518:                                             ; preds = %1515
  %1519 = load ptr, ptr @cfun, align 8, !tbaa !158
  %1520 = getelementptr inbounds %struct.function, ptr %1519, i64 0, i32 1
  %1521 = load ptr, ptr %1520, align 8, !tbaa !354
  %1522 = getelementptr inbounds %struct.control_flow_graph, ptr %1521, i64 0, i32 1
  %1523 = load ptr, ptr %1522, align 8, !tbaa !360
  %1524 = getelementptr inbounds %struct.basic_block_def, ptr %1523, i64 0, i32 5
  %1525 = load ptr, ptr %1524, align 8, !tbaa !502
  %1526 = load ptr, ptr @cfun, align 8, !tbaa !158
  %1527 = getelementptr inbounds %struct.function, ptr %1526, i64 0, i32 1
  %1528 = load ptr, ptr %1527, align 8, !tbaa !354
  %1529 = load ptr, ptr %1528, align 8, !tbaa !356
  %1530 = icmp eq ptr %1525, %1529
  br i1 %1530, label %1531, label %1536, !prof !361

1531:                                             ; preds = %2158, %1518
  %1532 = phi ptr [ null, %1518 ], [ %2160, %2158 ]
  %1533 = phi ptr [ @reload_insn_chain, %1518 ], [ %2161, %2158 ]
  %1534 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %2180, label %2169, !prof !361

1536:                                             ; preds = %1518, %2158
  %1537 = phi ptr [ %2163, %2158 ], [ %1525, %1518 ]
  %1538 = phi ptr [ %2161, %2158 ], [ @reload_insn_chain, %1518 ]
  %1539 = phi ptr [ %2160, %2158 ], [ null, %1518 ]
  %1540 = phi ptr [ %2159, %2158 ], [ null, %1518 ]
  tail call void @bitmap_clear(ptr noundef %1497) #24
  %1541 = load i32, ptr @max_regno, align 4, !tbaa !173
  %1542 = sext i32 %1541 to i64
  %1543 = shl nsw i64 %1542, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1505, i8 0, i64 %1543, i1 false), !prof !583
  %1544 = getelementptr inbounds %struct.basic_block_def, ptr %1537, i64 0, i32 9
  %1545 = load i32, ptr %1544, align 8, !tbaa !388
  %1546 = load ptr, ptr @df, align 8, !tbaa !158
  %1547 = getelementptr inbounds %struct.df, ptr %1546, i64 0, i32 1, i64 1
  %1548 = load ptr, ptr %1547, align 8, !tbaa !158
  %1549 = getelementptr inbounds %struct.dataflow, ptr %1548, i64 0, i32 2
  %1550 = load i32, ptr %1549, align 8, !tbaa !389
  %1551 = icmp ugt i32 %1550, %1545
  tail call void @llvm.assume(i1 %1551)
  %1552 = getelementptr inbounds %struct.dataflow, ptr %1548, i64 0, i32 1
  %1553 = load ptr, ptr %1552, align 8, !tbaa !391
  %1554 = zext i32 %1545 to i64
  %1555 = getelementptr inbounds ptr, ptr %1553, i64 %1554
  %1556 = load ptr, ptr %1555, align 8, !tbaa !158
  %1557 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1556, i64 0, i32 3
  %1558 = load ptr, ptr %1557, align 8, !tbaa !530
  %1559 = load ptr, ptr %1558, align 8, !tbaa !523
  %1560 = icmp eq ptr %1559, null
  %1561 = select i1 %1560, ptr @bitmap_zero_bits, ptr %1559, !prof !584
  %1562 = getelementptr inbounds %struct.bitmap_element_def, ptr %1561, i64 0, i32 2
  %1563 = load i32, ptr %1562, align 8, !tbaa !585
  %1564 = shl i32 %1563, 7
  %1565 = getelementptr inbounds %struct.bitmap_element_def, ptr %1561, i64 0, i32 3, i64 0
  %1566 = load i64, ptr %1565, align 8, !tbaa !200
  %1567 = icmp eq i64 %1566, 0
  %1568 = zext i1 %1567 to i32
  %1569 = or disjoint i32 %1564, %1568
  br label %1570

1570:                                             ; preds = %1633, %1536
  %1571 = phi i64 [ %1566, %1536 ], [ %1635, %1633 ]
  %1572 = phi i32 [ %1569, %1536 ], [ %1636, %1633 ]
  %1573 = phi i32 [ 0, %1536 ], [ %1628, %1633 ]
  %1574 = phi ptr [ %1561, %1536 ], [ %1629, %1633 ]
  %1575 = icmp eq i64 %1571, 0
  br i1 %1575, label %1590, label %1576, !prof !587

1576:                                             ; preds = %1604, %1570
  %1577 = phi i64 [ %1571, %1570 ], [ %1609, %1604 ]
  %1578 = phi i32 [ %1572, %1570 ], [ %1606, %1604 ]
  %1579 = phi i32 [ %1573, %1570 ], [ %1605, %1604 ]
  %1580 = phi ptr [ %1574, %1570 ], [ %1597, %1604 ]
  %1581 = and i64 %1577, 1
  %1582 = icmp eq i64 %1581, 0
  br i1 %1582, label %1583, label %1625, !prof !588

1583:                                             ; preds = %1576, %1583
  %1584 = phi i32 [ %1587, %1583 ], [ %1578, %1576 ]
  %1585 = phi i64 [ %1586, %1583 ], [ %1577, %1576 ]
  %1586 = lshr exact i64 %1585, 1
  %1587 = add i32 %1584, 1
  %1588 = and i64 %1585, 2
  %1589 = icmp eq i64 %1588, 0
  br i1 %1589, label %1583, label %1625, !prof !589, !llvm.loop !590

1590:                                             ; preds = %1570
  %1591 = add i32 %1572, 63
  %1592 = and i32 %1591, -64
  %1593 = add i32 %1573, 1
  br label %1594

1594:                                             ; preds = %1621, %1590
  %1595 = phi i64 [ %1571, %1590 ], [ %1616, %1621 ]
  %1596 = phi i32 [ %1592, %1590 ], [ %1624, %1621 ]
  %1597 = phi ptr [ %1574, %1590 ], [ %1619, %1621 ]
  %1598 = phi i32 [ %1593, %1590 ], [ 0, %1621 ]
  %1599 = icmp eq i32 %1598, 2
  br i1 %1599, label %1615, label %1600, !prof !591

1600:                                             ; preds = %1594
  %1601 = add i32 %1596, 128
  %1602 = shl i32 %1598, 6
  %1603 = sub i32 %1601, %1602
  br label %1604

1604:                                             ; preds = %1600, %1611
  %1605 = phi i32 [ %1613, %1611 ], [ %1598, %1600 ]
  %1606 = phi i32 [ %1612, %1611 ], [ %1596, %1600 ]
  %1607 = zext i32 %1605 to i64
  %1608 = getelementptr inbounds %struct.bitmap_element_def, ptr %1597, i64 0, i32 3, i64 %1607
  %1609 = load i64, ptr %1608, align 8, !tbaa !200
  %1610 = icmp eq i64 %1609, 0
  br i1 %1610, label %1611, label %1576, !prof !592

1611:                                             ; preds = %1604
  %1612 = add i32 %1606, 64
  %1613 = add i32 %1605, 1
  %1614 = icmp eq i32 %1613, 2
  br i1 %1614, label %1615, label %1604, !prof !593, !llvm.loop !594

1615:                                             ; preds = %1611, %1594
  %1616 = phi i64 [ %1595, %1594 ], [ %1609, %1611 ]
  %1617 = phi i32 [ %1596, %1594 ], [ %1603, %1611 ]
  %1618 = phi i32 [ %1598, %1594 ], [ 2, %1611 ]
  %1619 = load ptr, ptr %1597, align 8, !tbaa !595
  %1620 = icmp eq ptr %1619, null
  br i1 %1620, label %1625, label %1621, !prof !596

1621:                                             ; preds = %1615
  %1622 = getelementptr inbounds %struct.bitmap_element_def, ptr %1619, i64 0, i32 2
  %1623 = load i32, ptr %1622, align 8, !tbaa !585
  %1624 = shl i32 %1623, 7
  br label %1594, !llvm.loop !597

1625:                                             ; preds = %1615, %1583, %1576
  %1626 = phi i64 [ %1577, %1576 ], [ %1586, %1583 ], [ %1616, %1615 ]
  %1627 = phi i32 [ %1578, %1576 ], [ %1587, %1583 ], [ %1617, %1615 ]
  %1628 = phi i32 [ %1579, %1576 ], [ %1579, %1583 ], [ %1618, %1615 ]
  %1629 = phi ptr [ %1580, %1576 ], [ %1580, %1583 ], [ %1619, %1615 ]
  %1630 = phi i1 [ false, %1576 ], [ false, %1583 ], [ true, %1615 ]
  %1631 = icmp ugt i32 %1627, 52
  %1632 = select i1 %1630, i1 true, i1 %1631, !prof !598
  br i1 %1632, label %1637, label %1633, !prof !599

1633:                                             ; preds = %1625
  %1634 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1497, i32 noundef %1627) #24
  %1635 = lshr i64 %1626, 1
  %1636 = add i32 %1627, 1
  br label %1570, !llvm.loop !600

1637:                                             ; preds = %1625
  %1638 = load i32, ptr %1544, align 8, !tbaa !388
  %1639 = load ptr, ptr @df, align 8, !tbaa !158
  %1640 = getelementptr inbounds %struct.df, ptr %1639, i64 0, i32 1, i64 1
  %1641 = load ptr, ptr %1640, align 8, !tbaa !158
  %1642 = getelementptr inbounds %struct.dataflow, ptr %1641, i64 0, i32 2
  %1643 = load i32, ptr %1642, align 8, !tbaa !389
  %1644 = icmp ugt i32 %1643, %1638
  tail call void @llvm.assume(i1 %1644)
  %1645 = getelementptr inbounds %struct.dataflow, ptr %1641, i64 0, i32 1
  %1646 = load ptr, ptr %1645, align 8, !tbaa !391
  %1647 = zext i32 %1638 to i64
  %1648 = getelementptr inbounds ptr, ptr %1646, i64 %1647
  %1649 = load ptr, ptr %1648, align 8, !tbaa !158
  %1650 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1649, i64 0, i32 3
  %1651 = load ptr, ptr %1650, align 8, !tbaa !530
  %1652 = load ptr, ptr %1651, align 8, !tbaa !523
  %1653 = icmp eq ptr %1652, null
  %1654 = select i1 %1653, ptr @bitmap_zero_bits, ptr %1652, !prof !584
  %1655 = getelementptr inbounds %struct.bitmap_element_def, ptr %1654, i64 0, i32 2
  %1656 = load i32, ptr %1655, align 8, !tbaa !585
  %1657 = icmp eq i32 %1656, 0
  %1658 = shl i32 %1656, 7
  %1659 = select i1 %1657, i32 53, i32 %1658, !prof !601
  %1660 = getelementptr inbounds %struct.bitmap_element_def, ptr %1654, i64 0, i32 3, i64 0
  %1661 = load i64, ptr %1660, align 8, !tbaa !200
  %1662 = and i32 %1659, 53
  %1663 = zext nneg i32 %1662 to i64
  %1664 = lshr i64 %1661, %1663
  %1665 = icmp eq i64 %1664, 0
  %1666 = zext i1 %1665 to i32
  %1667 = add nuw nsw i32 %1659, %1666
  br label %1668

1668:                                             ; preds = %1747, %1637
  %1669 = phi i64 [ %1664, %1637 ], [ %1748, %1747 ]
  %1670 = phi i32 [ %1667, %1637 ], [ %1749, %1747 ]
  %1671 = phi i32 [ 0, %1637 ], [ %1726, %1747 ]
  %1672 = phi ptr [ %1654, %1637 ], [ %1727, %1747 ]
  %1673 = icmp eq i64 %1669, 0
  br i1 %1673, label %1688, label %1674, !prof !602

1674:                                             ; preds = %1702, %1668
  %1675 = phi i64 [ %1669, %1668 ], [ %1707, %1702 ]
  %1676 = phi i32 [ %1670, %1668 ], [ %1704, %1702 ]
  %1677 = phi i32 [ %1671, %1668 ], [ %1703, %1702 ]
  %1678 = phi ptr [ %1672, %1668 ], [ %1695, %1702 ]
  %1679 = and i64 %1675, 1
  %1680 = icmp eq i64 %1679, 0
  br i1 %1680, label %1681, label %1723, !prof !603

1681:                                             ; preds = %1674, %1681
  %1682 = phi i32 [ %1685, %1681 ], [ %1676, %1674 ]
  %1683 = phi i64 [ %1684, %1681 ], [ %1675, %1674 ]
  %1684 = lshr exact i64 %1683, 1
  %1685 = add i32 %1682, 1
  %1686 = and i64 %1683, 2
  %1687 = icmp eq i64 %1686, 0
  br i1 %1687, label %1681, label %1723, !prof !604, !llvm.loop !590

1688:                                             ; preds = %1668
  %1689 = add i32 %1670, 63
  %1690 = and i32 %1689, -64
  %1691 = add i32 %1671, 1
  br label %1692

1692:                                             ; preds = %1719, %1688
  %1693 = phi i64 [ %1669, %1688 ], [ %1714, %1719 ]
  %1694 = phi i32 [ %1690, %1688 ], [ %1722, %1719 ]
  %1695 = phi ptr [ %1672, %1688 ], [ %1717, %1719 ]
  %1696 = phi i32 [ %1691, %1688 ], [ 0, %1719 ]
  %1697 = icmp eq i32 %1696, 2
  br i1 %1697, label %1713, label %1698, !prof !605

1698:                                             ; preds = %1692
  %1699 = add i32 %1694, 128
  %1700 = shl i32 %1696, 6
  %1701 = sub i32 %1699, %1700
  br label %1702

1702:                                             ; preds = %1698, %1709
  %1703 = phi i32 [ %1711, %1709 ], [ %1696, %1698 ]
  %1704 = phi i32 [ %1710, %1709 ], [ %1694, %1698 ]
  %1705 = zext i32 %1703 to i64
  %1706 = getelementptr inbounds %struct.bitmap_element_def, ptr %1695, i64 0, i32 3, i64 %1705
  %1707 = load i64, ptr %1706, align 8, !tbaa !200
  %1708 = icmp eq i64 %1707, 0
  br i1 %1708, label %1709, label %1674, !prof !606

1709:                                             ; preds = %1702
  %1710 = add i32 %1704, 64
  %1711 = add i32 %1703, 1
  %1712 = icmp eq i32 %1711, 2
  br i1 %1712, label %1713, label %1702, !prof !607, !llvm.loop !594

1713:                                             ; preds = %1709, %1692
  %1714 = phi i64 [ %1693, %1692 ], [ %1707, %1709 ]
  %1715 = phi i32 [ %1694, %1692 ], [ %1701, %1709 ]
  %1716 = phi i32 [ %1696, %1692 ], [ 2, %1709 ]
  %1717 = load ptr, ptr %1695, align 8, !tbaa !595
  %1718 = icmp eq ptr %1717, null
  br i1 %1718, label %1723, label %1719, !prof !608

1719:                                             ; preds = %1713
  %1720 = getelementptr inbounds %struct.bitmap_element_def, ptr %1717, i64 0, i32 2
  %1721 = load i32, ptr %1720, align 8, !tbaa !585
  %1722 = shl i32 %1721, 7
  br label %1692, !llvm.loop !597

1723:                                             ; preds = %1713, %1681, %1674
  %1724 = phi i64 [ %1675, %1674 ], [ %1684, %1681 ], [ %1714, %1713 ]
  %1725 = phi i32 [ %1676, %1674 ], [ %1685, %1681 ], [ %1715, %1713 ]
  %1726 = phi i32 [ %1677, %1674 ], [ %1677, %1681 ], [ %1716, %1713 ]
  %1727 = phi ptr [ %1678, %1674 ], [ %1678, %1681 ], [ %1717, %1713 ]
  %1728 = phi i1 [ false, %1674 ], [ false, %1681 ], [ true, %1713 ]
  br i1 %1728, label %1750, label %1729, !prof !609

1729:                                             ; preds = %1723
  %1730 = load ptr, ptr @reg_renumber, align 8, !tbaa !158
  %1731 = sext i32 %1725 to i64
  %1732 = getelementptr inbounds i16, ptr %1730, i64 %1731
  %1733 = load i16, ptr %1732, align 2, !tbaa !194
  %1734 = icmp sgt i16 %1733, -1
  br i1 %1734, label %1742, label %1735, !prof !610

1735:                                             ; preds = %1729
  %1736 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %1737 = icmp ne i8 %1736, 0
  %1738 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %1739 = icmp ne i32 %1738, 0
  %1740 = select i1 %1737, i1 %1739, i1 false
  %1741 = zext i1 %1740 to i8
  br label %1742

1742:                                             ; preds = %1735, %1729
  %1743 = phi i8 [ 1, %1729 ], [ %1741, %1735 ]
  %1744 = icmp eq i8 %1743, 0
  br i1 %1744, label %1747, label %1745, !prof !611

1745:                                             ; preds = %1742
  %1746 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1497, i32 noundef %1725) #24
  br label %1747

1747:                                             ; preds = %1745, %1742
  %1748 = lshr i64 %1724, 1
  %1749 = add i32 %1725, 1
  br label %1668, !llvm.loop !612

1750:                                             ; preds = %1723
  %1751 = getelementptr inbounds %struct.basic_block_def, ptr %1537, i64 0, i32 7
  %1752 = load ptr, ptr %1751, align 8, !tbaa !169
  %1753 = getelementptr inbounds %struct.rtl_bb_info, ptr %1752, i64 0, i32 1
  %1754 = load ptr, ptr %1753, align 8, !tbaa !169
  %1755 = icmp eq ptr %1754, null
  br i1 %1755, label %2111, label %1756, !prof !247

1756:                                             ; preds = %1750, %2104
  %1757 = phi ptr [ %2109, %2104 ], [ %1754, %1750 ]
  %1758 = phi ptr [ %2107, %2104 ], [ %1538, %1750 ]
  %1759 = phi ptr [ %2106, %2104 ], [ %1539, %1750 ]
  %1760 = phi ptr [ %2105, %2104 ], [ %1540, %1750 ]
  %1761 = load ptr, ptr %1751, align 8, !tbaa !169
  %1762 = load ptr, ptr %1761, align 8, !tbaa !362
  %1763 = getelementptr inbounds %struct.rtx_def, ptr %1762, i64 0, i32 1, i32 0, i32 0, i64 1
  %1764 = load ptr, ptr %1763, align 8, !tbaa !169
  %1765 = icmp eq ptr %1757, %1764
  br i1 %1765, label %2111, label %1766, !prof !364

1766:                                             ; preds = %1756
  %1767 = load i32, ptr %1757, align 8
  %1768 = trunc i32 %1767 to i16
  switch i16 %1768, label %1769 [
    i16 13, label %2104
    i16 11, label %2104
  ], !prof !613

1769:                                             ; preds = %1766
  %1770 = getelementptr inbounds %struct.rtx_def, ptr %1757, i64 0, i32 1
  %1771 = load i32, ptr %1770, align 8, !tbaa !169
  %1772 = tail call ptr @new_insn_chain() #24
  store ptr %1760, ptr %1772, align 8, !tbaa !614
  store ptr %1772, ptr %1758, align 8, !tbaa !158
  %1773 = getelementptr inbounds %struct.insn_chain, ptr %1772, i64 0, i32 1
  %1774 = getelementptr inbounds %struct.insn_chain, ptr %1772, i64 0, i32 3
  store ptr %1757, ptr %1774, align 8, !tbaa !616
  %1775 = load i32, ptr %1544, align 8, !tbaa !388
  %1776 = getelementptr inbounds %struct.insn_chain, ptr %1772, i64 0, i32 4
  store i32 %1775, ptr %1776, align 8, !tbaa !617
  %1777 = load i32, ptr %1757, align 8
  %1778 = and i32 %1777, 65535
  %1779 = add nsw i32 %1778, -7
  %1780 = icmp ult i32 %1779, 4
  br i1 %1780, label %1781, label %1928, !prof !618

1781:                                             ; preds = %1769
  %1782 = load ptr, ptr @df, align 8, !tbaa !158
  %1783 = getelementptr inbounds %struct.df, ptr %1782, i64 0, i32 10
  %1784 = load ptr, ptr %1783, align 8, !tbaa !366
  %1785 = zext i32 %1771 to i64
  %1786 = getelementptr inbounds ptr, ptr %1784, i64 %1785
  %1787 = load ptr, ptr %1786, align 8, !tbaa !158
  %1788 = getelementptr inbounds %struct.df_insn_info, ptr %1787, i64 0, i32 1
  %1789 = load ptr, ptr %1788, align 8, !tbaa !369
  %1790 = load ptr, ptr %1789, align 8, !tbaa !158
  %1791 = icmp eq ptr %1790, null
  br i1 %1791, label %1928, label %1792, !prof !619

1792:                                             ; preds = %1781, %1924
  %1793 = phi ptr [ %1926, %1924 ], [ %1790, %1781 ]
  %1794 = phi ptr [ %1925, %1924 ], [ %1789, %1781 ]
  %1795 = getelementptr inbounds %struct.df_base_ref, ptr %1793, i64 0, i32 6
  %1796 = load i32, ptr %1795, align 8, !tbaa !169
  %1797 = load i32, ptr %1793, align 8
  %1798 = and i32 %1797, 4194304
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1800, label %1826, !prof !620

1800:                                             ; preds = %1792
  %1801 = icmp ult i32 %1796, 53
  br i1 %1801, label %1802, label %1807, !prof !621

1802:                                             ; preds = %1800
  %1803 = zext nneg i32 %1796 to i64
  %1804 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1803
  %1805 = load i8, ptr %1804, align 1, !tbaa !169
  %1806 = icmp eq i8 %1805, 0
  br i1 %1806, label %1823, label %1826, !prof !622

1807:                                             ; preds = %1800
  %1808 = load ptr, ptr @reg_renumber, align 8, !tbaa !158
  %1809 = sext i32 %1796 to i64
  %1810 = getelementptr inbounds i16, ptr %1808, i64 %1809
  %1811 = load i16, ptr %1810, align 2, !tbaa !194
  %1812 = icmp sgt i16 %1811, -1
  br i1 %1812, label %1820, label %1813, !prof !623

1813:                                             ; preds = %1807
  %1814 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %1815 = icmp ne i8 %1814, 0
  %1816 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1815, i1 %1817, i1 false, !prof !624
  %1819 = zext i1 %1818 to i8
  br label %1820

1820:                                             ; preds = %1813, %1807
  %1821 = phi i8 [ 1, %1807 ], [ %1819, %1813 ]
  %1822 = icmp eq i8 %1821, 0
  br i1 %1822, label %1826, label %1823, !prof !625

1823:                                             ; preds = %1820, %1802
  %1824 = getelementptr inbounds %struct.insn_chain, ptr %1772, i64 0, i32 7
  %1825 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %1824, i32 noundef %1796) #24
  br label %1826

1826:                                             ; preds = %1823, %1820, %1802, %1792
  %1827 = icmp ult i32 %1796, 53
  br i1 %1827, label %1837, label %1828, !prof !626

1828:                                             ; preds = %1826
  %1829 = load ptr, ptr @reg_renumber, align 8, !tbaa !158
  %1830 = zext i32 %1796 to i64
  %1831 = getelementptr inbounds i16, ptr %1829, i64 %1830
  %1832 = load i16, ptr %1831, align 2, !tbaa !194
  %1833 = icmp sgt i16 %1832, -1
  %1834 = load i8, ptr @ira_conflicts_p, align 1
  %1835 = icmp ne i8 %1834, 0
  %1836 = select i1 %1833, i1 true, i1 %1835, !prof !623
  br i1 %1836, label %1837, label %1924, !prof !627

1837:                                             ; preds = %1828, %1826
  %1838 = load i32, ptr %1793, align 8
  %1839 = and i32 %1838, 65536
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1841, label %1924, !prof !628

1841:                                             ; preds = %1837
  %1842 = getelementptr inbounds %struct.df_base_ref, ptr %1793, i64 0, i32 1
  %1843 = load ptr, ptr %1842, align 8, !tbaa !169
  %1844 = load i32, ptr %1843, align 8
  %1845 = and i32 %1844, 65535
  %1846 = icmp eq i32 %1845, 39
  %1847 = and i32 %1838, 33554432
  %1848 = icmp eq i32 %1847, 0
  %1849 = and i1 %1848, %1846
  br i1 %1849, label %1850, label %1917, !prof !629

1850:                                             ; preds = %1841
  %1851 = getelementptr inbounds %struct.rtx_def, ptr %1843, i64 0, i32 1, i32 0, i32 0, i64 1
  %1852 = load i32, ptr %1851, align 8, !tbaa !169
  %1853 = lshr i32 %1844, 16
  %1854 = and i32 %1853, 255
  %1855 = zext nneg i32 %1854 to i64
  %1856 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1855
  %1857 = load i8, ptr %1856, align 1, !tbaa !169
  %1858 = zext i8 %1857 to i32
  %1859 = add i32 %1852, %1858
  %1860 = tail call i32 @bitmap_bit_p(ptr noundef %1497, i32 noundef %1796) #24
  %1861 = trunc i32 %1860 to i8
  tail call fastcc void @init_live_subregs(i8 noundef zeroext %1861, ptr noundef %1501, ptr noundef %1505, i32 noundef %1796, ptr noundef nonnull %1843)
  %1862 = load i32, ptr %1793, align 8
  %1863 = and i32 %1862, 67108864
  %1864 = icmp eq i32 %1863, 0
  %1865 = and i32 %1852, -4
  %1866 = add i32 %1859, 3
  %1867 = and i32 %1866, -4
  %1868 = select i1 %1864, i32 %1865, i32 %1852
  %1869 = select i1 %1864, i32 %1867, i32 %1859
  %1870 = zext i32 %1796 to i64
  %1871 = getelementptr inbounds i32, ptr %1505, i64 %1870
  %1872 = load i32, ptr %1871, align 4, !tbaa !173
  %1873 = tail call i32 @llvm.smin.i32(i32 %1869, i32 %1872)
  %1874 = icmp ult i32 %1868, %1873
  br i1 %1874, label %1875, label %1908

1875:                                             ; preds = %1850
  %1876 = getelementptr inbounds ptr, ptr %1501, i64 %1870
  br label %1877

1877:                                             ; preds = %1875, %1896
  %1878 = phi i32 [ %1868, %1875 ], [ %1906, %1896 ]
  %1879 = load ptr, ptr %1876, align 8, !tbaa !158
  %1880 = load ptr, ptr %1879, align 8, !tbaa !630
  %1881 = icmp eq ptr %1880, null
  br i1 %1881, label %1896, label %1882

1882:                                             ; preds = %1877
  %1883 = lshr i32 %1878, 6
  %1884 = zext nneg i32 %1883 to i64
  %1885 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1879, i64 0, i32 3, i64 %1884
  %1886 = load i64, ptr %1885, align 8, !tbaa !200
  %1887 = and i32 %1878, 63
  %1888 = zext nneg i32 %1887 to i64
  %1889 = shl nuw i64 1, %1888
  %1890 = and i64 %1886, %1889
  %1891 = icmp eq i64 %1890, 0
  br i1 %1891, label %1896, label %1892

1892:                                             ; preds = %1882
  %1893 = getelementptr inbounds i8, ptr %1880, i64 %1884
  %1894 = load i8, ptr %1893, align 1, !tbaa !169
  %1895 = add i8 %1894, -1
  store i8 %1895, ptr %1893, align 1, !tbaa !169
  br label %1896

1896:                                             ; preds = %1892, %1882, %1877
  %1897 = and i32 %1878, 63
  %1898 = zext nneg i32 %1897 to i64
  %1899 = shl nuw i64 1, %1898
  %1900 = xor i64 %1899, -1
  %1901 = lshr i32 %1878, 6
  %1902 = zext nneg i32 %1901 to i64
  %1903 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1879, i64 0, i32 3, i64 %1902
  %1904 = load i64, ptr %1903, align 8, !tbaa !200
  %1905 = and i64 %1904, %1900
  store i64 %1905, ptr %1903, align 8, !tbaa !200
  %1906 = add nuw i32 %1878, 1
  %1907 = icmp eq i32 %1906, %1873
  br i1 %1907, label %1908, label %1877, !llvm.loop !632

1908:                                             ; preds = %1896, %1850
  %1909 = getelementptr inbounds ptr, ptr %1501, i64 %1870
  %1910 = load ptr, ptr %1909, align 8, !tbaa !158
  %1911 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %1910) #24
  %1912 = icmp eq i8 %1911, 0
  br i1 %1912, label %1915, label %1913

1913:                                             ; preds = %1908
  store i32 0, ptr %1871, align 4, !tbaa !173
  %1914 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1497, i32 noundef %1796) #24
  br label %1924

1915:                                             ; preds = %1908
  %1916 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1497, i32 noundef %1796) #24
  br label %1924

1917:                                             ; preds = %1841
  %1918 = and i32 %1838, 1048576
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %1920, label %1924, !prof !628

1920:                                             ; preds = %1917
  %1921 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1497, i32 noundef %1796) #24
  %1922 = zext i32 %1796 to i64
  %1923 = getelementptr inbounds i32, ptr %1505, i64 %1922
  store i32 0, ptr %1923, align 4, !tbaa !173
  br label %1924

1924:                                             ; preds = %1828, %1920, %1917, %1915, %1913, %1837
  %1925 = getelementptr inbounds ptr, ptr %1794, i64 1
  %1926 = load ptr, ptr %1925, align 8, !tbaa !158
  %1927 = icmp eq ptr %1926, null
  br i1 %1927, label %1928, label %1792, !prof !633, !llvm.loop !634

1928:                                             ; preds = %1924, %1781, %1769
  %1929 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1497, ptr noundef %1498) #24
  %1930 = getelementptr inbounds %struct.insn_chain, ptr %1772, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %1930, ptr noundef %1497) #24
  %1931 = load i32, ptr %1757, align 8
  %1932 = and i32 %1931, 65535
  %1933 = add nsw i32 %1932, -7
  %1934 = icmp ult i32 %1933, 4
  br i1 %1934, label %1935, label %2104, !prof !618

1935:                                             ; preds = %1928
  %1936 = load ptr, ptr @df, align 8, !tbaa !158
  %1937 = getelementptr inbounds %struct.df, ptr %1936, i64 0, i32 10
  %1938 = load ptr, ptr %1937, align 8, !tbaa !366
  %1939 = zext i32 %1771 to i64
  %1940 = getelementptr inbounds ptr, ptr %1938, i64 %1939
  %1941 = load ptr, ptr %1940, align 8, !tbaa !158
  %1942 = getelementptr inbounds %struct.df_insn_info, ptr %1941, i64 0, i32 2
  %1943 = load ptr, ptr %1942, align 8, !tbaa !635
  %1944 = load ptr, ptr %1943, align 8, !tbaa !158
  %1945 = icmp eq ptr %1944, null
  br i1 %1945, label %2104, label %1946, !prof !636

1946:                                             ; preds = %1935, %2100
  %1947 = phi ptr [ %2102, %2100 ], [ %1944, %1935 ]
  %1948 = phi ptr [ %2101, %2100 ], [ %1943, %1935 ]
  %1949 = getelementptr inbounds %struct.df_base_ref, ptr %1947, i64 0, i32 6
  %1950 = load i32, ptr %1949, align 8, !tbaa !169
  %1951 = getelementptr inbounds %struct.df_base_ref, ptr %1947, i64 0, i32 1
  %1952 = load ptr, ptr %1951, align 8, !tbaa !169
  %1953 = load i32, ptr %1947, align 8
  %1954 = and i32 %1953, 169869312
  %1955 = icmp eq i32 %1954, 136314880
  br i1 %1955, label %2100, label %1956, !prof !637

1956:                                             ; preds = %1946
  %1957 = tail call i32 @bitmap_bit_p(ptr noundef %1497, i32 noundef %1950) #24
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1959, label %1985, !prof !638

1959:                                             ; preds = %1956
  %1960 = icmp ult i32 %1950, 53
  br i1 %1960, label %1961, label %1966, !prof !639

1961:                                             ; preds = %1959
  %1962 = zext nneg i32 %1950 to i64
  %1963 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1962
  %1964 = load i8, ptr %1963, align 1, !tbaa !169
  %1965 = icmp eq i8 %1964, 0
  br i1 %1965, label %1982, label %1985, !prof !640

1966:                                             ; preds = %1959
  %1967 = load ptr, ptr @reg_renumber, align 8, !tbaa !158
  %1968 = sext i32 %1950 to i64
  %1969 = getelementptr inbounds i16, ptr %1967, i64 %1968
  %1970 = load i16, ptr %1969, align 2, !tbaa !194
  %1971 = icmp sgt i16 %1970, -1
  br i1 %1971, label %1979, label %1972, !prof !641

1972:                                             ; preds = %1966
  %1973 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %1974 = icmp ne i8 %1973, 0
  %1975 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %1976 = icmp ne i32 %1975, 0
  %1977 = select i1 %1974, i1 %1976, i1 false, !prof !624
  %1978 = zext i1 %1977 to i8
  br label %1979

1979:                                             ; preds = %1972, %1966
  %1980 = phi i8 [ 1, %1966 ], [ %1978, %1972 ]
  %1981 = icmp eq i8 %1980, 0
  br i1 %1981, label %1985, label %1982, !prof !642

1982:                                             ; preds = %1979, %1961
  %1983 = getelementptr inbounds %struct.insn_chain, ptr %1772, i64 0, i32 7
  %1984 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %1983, i32 noundef %1950) #24
  br label %1985

1985:                                             ; preds = %1982, %1979, %1961, %1956
  %1986 = icmp ult i32 %1950, 53
  br i1 %1986, label %2003, label %1987, !prof !643

1987:                                             ; preds = %1985
  %1988 = load ptr, ptr @reg_renumber, align 8, !tbaa !158
  %1989 = sext i32 %1950 to i64
  %1990 = getelementptr inbounds i16, ptr %1988, i64 %1989
  %1991 = load i16, ptr %1990, align 2, !tbaa !194
  %1992 = icmp sgt i16 %1991, -1
  br i1 %1992, label %2000, label %1993, !prof !644

1993:                                             ; preds = %1987
  %1994 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %1995 = icmp ne i8 %1994, 0
  %1996 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %1997 = icmp ne i32 %1996, 0
  %1998 = select i1 %1995, i1 %1997, i1 false, !prof !624
  %1999 = zext i1 %1998 to i8
  br label %2000

2000:                                             ; preds = %1993, %1987
  %2001 = phi i8 [ 1, %1987 ], [ %1999, %1993 ]
  %2002 = icmp eq i8 %2001, 0
  br i1 %2002, label %2100, label %2003, !prof !645

2003:                                             ; preds = %2000, %1985
  %2004 = load i32, ptr %1952, align 8
  %2005 = and i32 %2004, 65535
  %2006 = icmp eq i32 %2005, 39
  br i1 %2006, label %2007, label %2095, !prof !646

2007:                                             ; preds = %2003
  %2008 = load i32, ptr %1947, align 8
  %2009 = and i32 %2008, 50331648
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2011, label %2095, !prof !647

2011:                                             ; preds = %2007
  %2012 = getelementptr inbounds %struct.rtx_def, ptr %1952, i64 0, i32 1, i32 0, i32 0, i64 1
  %2013 = load i32, ptr %2012, align 8, !tbaa !169
  %2014 = lshr i32 %2004, 16
  %2015 = and i32 %2014, 255
  %2016 = zext nneg i32 %2015 to i64
  %2017 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2016
  %2018 = load i8, ptr %2017, align 1, !tbaa !169
  %2019 = zext i8 %2018 to i32
  %2020 = add i32 %2013, %2019
  %2021 = tail call i32 @bitmap_bit_p(ptr noundef %1497, i32 noundef %1950) #24
  %2022 = getelementptr inbounds %struct.rtx_def, ptr %1952, i64 0, i32 1
  %2023 = load ptr, ptr %2022, align 8, !tbaa !169
  %2024 = getelementptr inbounds %struct.rtx_def, ptr %2023, i64 0, i32 1
  %2025 = load i32, ptr %2024, align 8, !tbaa !169
  %2026 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !158
  %2027 = zext i32 %2025 to i64
  %2028 = getelementptr inbounds ptr, ptr %2026, i64 %2027
  %2029 = load ptr, ptr %2028, align 8, !tbaa !158
  %2030 = load i32, ptr %2029, align 8
  %2031 = lshr i32 %2030, 16
  %2032 = and i32 %2031, 255
  %2033 = zext nneg i32 %2032 to i64
  %2034 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2033
  %2035 = load i8, ptr %2034, align 1, !tbaa !169
  %2036 = zext i8 %2035 to i32
  %2037 = icmp eq i8 %2035, 0
  br i1 %2037, label %2038, label %2039, !prof !648

2038:                                             ; preds = %2011
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2817, ptr noundef nonnull @.str.41) #24
  br label %2039

2039:                                             ; preds = %2038, %2011
  %2040 = sext i32 %1950 to i64
  %2041 = getelementptr inbounds i32, ptr %1505, i64 %2040
  %2042 = load i32, ptr %2041, align 4, !tbaa !173
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2044, label %2057, !prof !647

2044:                                             ; preds = %2039
  %2045 = getelementptr inbounds ptr, ptr %1501, i64 %2040
  %2046 = load ptr, ptr %2045, align 8, !tbaa !158
  %2047 = icmp eq ptr %2046, null
  br i1 %2047, label %2048, label %2050, !prof !647

2048:                                             ; preds = %2044
  %2049 = tail call ptr @sbitmap_alloc(i32 noundef %2036) #24
  store ptr %2049, ptr %2045, align 8, !tbaa !158
  br label %2050

2050:                                             ; preds = %2048, %2044
  %2051 = and i32 %2021, 255
  %2052 = icmp eq i32 %2051, 0
  %2053 = load ptr, ptr %2045, align 8, !tbaa !158
  br i1 %2052, label %2055, label %2054, !prof !647

2054:                                             ; preds = %2050
  tail call void @sbitmap_ones(ptr noundef %2053) #24
  br label %2056

2055:                                             ; preds = %2050
  tail call void @sbitmap_zero(ptr noundef %2053) #24
  br label %2056

2056:                                             ; preds = %2055, %2054
  store i32 %2036, ptr %2041, align 4, !tbaa !173
  br label %2057

2057:                                             ; preds = %2039, %2056
  %2058 = zext i32 %1950 to i64
  %2059 = getelementptr inbounds i32, ptr %1505, i64 %2058
  %2060 = load i32, ptr %2059, align 4, !tbaa !173
  %2061 = tail call i32 @llvm.smin.i32(i32 %2020, i32 %2060)
  %2062 = icmp ult i32 %2013, %2061
  br i1 %2062, label %2063, label %2098, !prof !649

2063:                                             ; preds = %2057
  %2064 = getelementptr inbounds ptr, ptr %1501, i64 %2058
  br label %2065

2065:                                             ; preds = %2063, %2084
  %2066 = phi i32 [ %2013, %2063 ], [ %2093, %2084 ]
  %2067 = load ptr, ptr %2064, align 8, !tbaa !158
  %2068 = load ptr, ptr %2067, align 8, !tbaa !630
  %2069 = icmp eq ptr %2068, null
  br i1 %2069, label %2084, label %2070, !prof !647

2070:                                             ; preds = %2065
  %2071 = lshr i32 %2066, 6
  %2072 = zext nneg i32 %2071 to i64
  %2073 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2067, i64 0, i32 3, i64 %2072
  %2074 = load i64, ptr %2073, align 8, !tbaa !200
  %2075 = and i32 %2066, 63
  %2076 = zext nneg i32 %2075 to i64
  %2077 = shl nuw i64 1, %2076
  %2078 = and i64 %2074, %2077
  %2079 = icmp eq i64 %2078, 0
  br i1 %2079, label %2080, label %2084

2080:                                             ; preds = %2070
  %2081 = getelementptr inbounds i8, ptr %2068, i64 %2072
  %2082 = load i8, ptr %2081, align 1, !tbaa !169
  %2083 = add i8 %2082, 1
  store i8 %2083, ptr %2081, align 1, !tbaa !169
  br label %2084

2084:                                             ; preds = %2080, %2070, %2065
  %2085 = and i32 %2066, 63
  %2086 = zext nneg i32 %2085 to i64
  %2087 = shl nuw i64 1, %2086
  %2088 = lshr i32 %2066, 6
  %2089 = zext nneg i32 %2088 to i64
  %2090 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2067, i64 0, i32 3, i64 %2089
  %2091 = load i64, ptr %2090, align 8, !tbaa !200
  %2092 = or i64 %2091, %2087
  store i64 %2092, ptr %2090, align 8, !tbaa !200
  %2093 = add nuw i32 %2066, 1
  %2094 = icmp eq i32 %2093, %2061
  br i1 %2094, label %2098, label %2065, !prof !649, !llvm.loop !650

2095:                                             ; preds = %2007, %2003
  %2096 = zext i32 %1950 to i64
  %2097 = getelementptr inbounds i32, ptr %1505, i64 %2096
  store i32 0, ptr %2097, align 4, !tbaa !173
  br label %2098

2098:                                             ; preds = %2084, %2057, %2095
  %2099 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1497, i32 noundef %1950) #24
  br label %2100

2100:                                             ; preds = %2098, %2000, %1946
  %2101 = getelementptr inbounds ptr, ptr %1948, i64 1
  %2102 = load ptr, ptr %2101, align 8, !tbaa !158
  %2103 = icmp eq ptr %2102, null
  br i1 %2103, label %2104, label %1946, !prof !651, !llvm.loop !652

2104:                                             ; preds = %2100, %1935, %1766, %1928, %1766
  %2105 = phi ptr [ %1760, %1766 ], [ %1772, %1928 ], [ %1760, %1766 ], [ %1772, %1935 ], [ %1772, %2100 ]
  %2106 = phi ptr [ %1759, %1766 ], [ %1772, %1928 ], [ %1759, %1766 ], [ %1772, %1935 ], [ %1772, %2100 ]
  %2107 = phi ptr [ %1758, %1766 ], [ %1773, %1928 ], [ %1758, %1766 ], [ %1773, %1935 ], [ %1773, %2100 ]
  %2108 = getelementptr inbounds %struct.rtx_def, ptr %1757, i64 0, i32 1, i32 0, i32 0, i64 1
  %2109 = load ptr, ptr %2108, align 8, !tbaa !169
  %2110 = icmp eq ptr %2109, null
  br i1 %2110, label %2111, label %1756, !prof !373, !llvm.loop !653

2111:                                             ; preds = %2104, %1756, %1750
  %2112 = phi ptr [ %1540, %1750 ], [ %2105, %2104 ], [ %1760, %1756 ]
  %2113 = phi ptr [ %1539, %1750 ], [ %2106, %2104 ], [ %1759, %1756 ]
  %2114 = phi ptr [ %1538, %1750 ], [ %2107, %2104 ], [ %1758, %1756 ]
  %2115 = load ptr, ptr %1751, align 8, !tbaa !169
  %2116 = load ptr, ptr %2115, align 8, !tbaa !169
  %2117 = icmp eq ptr %2116, null
  br i1 %2117, label %2130, label %2118, !prof !361

2118:                                             ; preds = %2111, %2126
  %2119 = phi ptr [ %2128, %2126 ], [ %2116, %2111 ]
  %2120 = load i32, ptr %2119, align 8
  %2121 = trunc i32 %2120 to i16
  switch i16 %2121, label %2122 [
    i16 11, label %2126
    i16 13, label %2126
  ], !prof !654

2122:                                             ; preds = %2118
  %2123 = getelementptr inbounds %struct.rtx_def, ptr %2119, i64 0, i32 1, i32 0, i32 1
  %2124 = load ptr, ptr %2123, align 8, !tbaa !169
  %2125 = icmp eq ptr %2124, %1537
  br i1 %2125, label %2126, label %2130, !prof !655

2126:                                             ; preds = %2118, %2122, %2118
  %2127 = getelementptr inbounds %struct.rtx_def, ptr %2119, i64 0, i32 1, i32 0, i32 0, i64 1
  %2128 = load ptr, ptr %2127, align 8, !tbaa !169
  %2129 = icmp eq ptr %2128, null
  br i1 %2129, label %2130, label %2118, !prof !656, !llvm.loop !657

2130:                                             ; preds = %2126, %2122, %2111
  %2131 = phi ptr [ %2116, %2111 ], [ %2128, %2126 ], [ %2119, %2122 ]
  %2132 = icmp eq ptr %2131, null
  br i1 %2132, label %2158, label %2133, !prof !361

2133:                                             ; preds = %2130, %2151
  %2134 = phi ptr [ %2154, %2151 ], [ %2114, %2130 ]
  %2135 = phi ptr [ %2153, %2151 ], [ %2113, %2130 ]
  %2136 = phi ptr [ %2152, %2151 ], [ %2112, %2130 ]
  %2137 = phi ptr [ %2156, %2151 ], [ %2131, %2130 ]
  %2138 = load i32, ptr %2137, align 8
  %2139 = trunc i32 %2138 to i16
  switch i16 %2139, label %2140 [
    i16 13, label %2151
    i16 11, label %2151
  ], !prof !658

2140:                                             ; preds = %2133
  %2141 = getelementptr inbounds %struct.rtx_def, ptr %2137, i64 0, i32 1, i32 0, i32 1
  %2142 = load ptr, ptr %2141, align 8, !tbaa !169
  %2143 = icmp eq ptr %2142, null
  br i1 %2143, label %2144, label %2158, !prof !659

2144:                                             ; preds = %2140
  %2145 = tail call ptr @new_insn_chain() #24
  store ptr %2136, ptr %2145, align 8, !tbaa !614
  store ptr %2145, ptr %2134, align 8, !tbaa !158
  %2146 = getelementptr inbounds %struct.insn_chain, ptr %2145, i64 0, i32 1
  %2147 = load i32, ptr %1544, align 8, !tbaa !388
  %2148 = getelementptr inbounds %struct.insn_chain, ptr %2145, i64 0, i32 4
  store i32 %2147, ptr %2148, align 8, !tbaa !617
  %2149 = getelementptr inbounds %struct.insn_chain, ptr %2145, i64 0, i32 3
  store ptr %2137, ptr %2149, align 8, !tbaa !616
  %2150 = getelementptr inbounds %struct.insn_chain, ptr %2145, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %2150, ptr noundef %1497) #24
  br label %2151

2151:                                             ; preds = %2133, %2144, %2133
  %2152 = phi ptr [ %2145, %2144 ], [ %2136, %2133 ], [ %2136, %2133 ]
  %2153 = phi ptr [ %2145, %2144 ], [ %2135, %2133 ], [ %2135, %2133 ]
  %2154 = phi ptr [ %2146, %2144 ], [ %2134, %2133 ], [ %2134, %2133 ]
  %2155 = getelementptr inbounds %struct.rtx_def, ptr %2137, i64 0, i32 1, i32 0, i32 0, i64 1
  %2156 = load ptr, ptr %2155, align 8, !tbaa !169
  %2157 = icmp eq ptr %2156, null
  br i1 %2157, label %2158, label %2133, !prof !660, !llvm.loop !661

2158:                                             ; preds = %2151, %2140, %2130
  %2159 = phi ptr [ %2112, %2130 ], [ %2152, %2151 ], [ %2136, %2140 ]
  %2160 = phi ptr [ %2113, %2130 ], [ %2153, %2151 ], [ %2135, %2140 ]
  %2161 = phi ptr [ %2114, %2130 ], [ %2154, %2151 ], [ %2134, %2140 ]
  %2162 = getelementptr inbounds %struct.basic_block_def, ptr %1537, i64 0, i32 5
  %2163 = load ptr, ptr %2162, align 8, !tbaa !502
  %2164 = load ptr, ptr @cfun, align 8, !tbaa !158
  %2165 = getelementptr inbounds %struct.function, ptr %2164, i64 0, i32 1
  %2166 = load ptr, ptr %2165, align 8, !tbaa !354
  %2167 = load ptr, ptr %2166, align 8, !tbaa !356
  %2168 = icmp eq ptr %2163, %2167
  br i1 %2168, label %1531, label %1536, !prof !375, !llvm.loop !662

2169:                                             ; preds = %1531, %2175
  %2170 = phi i64 [ %2176, %2175 ], [ 0, %1531 ]
  %2171 = getelementptr inbounds ptr, ptr %1501, i64 %2170
  %2172 = load ptr, ptr %2171, align 8, !tbaa !158
  %2173 = icmp eq ptr %2172, null
  br i1 %2173, label %2175, label %2174, !prof !663

2174:                                             ; preds = %2169
  tail call void @free(ptr noundef %2172)
  br label %2175

2175:                                             ; preds = %2174, %2169
  %2176 = add nuw nsw i64 %2170, 1
  %2177 = load i32, ptr @max_regno, align 4, !tbaa !173
  %2178 = zext i32 %2177 to i64
  %2179 = icmp ult i64 %2176, %2178
  br i1 %2179, label %2169, label %2180, !prof !664, !llvm.loop !665

2180:                                             ; preds = %2175, %1531
  store ptr %1532, ptr @reload_insn_chain, align 8, !tbaa !158
  store ptr null, ptr %1533, align 8, !tbaa !158
  tail call void @free(ptr noundef %1501)
  tail call void @free(ptr noundef %1505)
  tail call void @bitmap_obstack_free(ptr noundef %1497) #24
  tail call void @bitmap_obstack_free(ptr noundef %1498) #24
  %2181 = load ptr, ptr @dump_file, align 8, !tbaa !158
  %2182 = icmp eq ptr %2181, null
  br i1 %2182, label %2197, label %2183, !prof !343

2183:                                             ; preds = %2180
  %2184 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !158
  %2185 = icmp eq ptr %2184, null
  br i1 %2185, label %2197, label %2186

2186:                                             ; preds = %2183, %2186
  %2187 = phi ptr [ %2195, %2186 ], [ %2184, %2183 ]
  %2188 = getelementptr inbounds %struct.insn_chain, ptr %2187, i64 0, i32 3
  %2189 = load ptr, ptr %2188, align 8, !tbaa !616
  %2190 = getelementptr inbounds %struct.rtx_def, ptr %2189, i64 0, i32 1
  %2191 = load i32, ptr %2190, align 8, !tbaa !169
  %2192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2181, ptr noundef nonnull @.str.48, i32 noundef %2191)
  %2193 = getelementptr inbounds %struct.insn_chain, ptr %2187, i64 0, i32 6
  tail call void @bitmap_print(ptr noundef nonnull %2181, ptr noundef nonnull %2193, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #24
  %2194 = getelementptr inbounds %struct.insn_chain, ptr %2187, i64 0, i32 7
  tail call void @bitmap_print(ptr noundef nonnull %2181, ptr noundef nonnull %2194, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1) #24
  %2195 = load ptr, ptr %2187, align 8, !tbaa !158
  %2196 = icmp eq ptr %2195, null
  br i1 %2196, label %2197, label %2186, !llvm.loop !666

2197:                                             ; preds = %2186, %2183, %2180
  %2198 = tail call ptr @get_insns() #24
  %2199 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %2200 = zext i8 %2199 to i32
  %2201 = tail call i32 @reload(ptr noundef %2198, i32 noundef %2200) #24
  %2202 = icmp eq i32 %2201, 0
  %2203 = zext i1 %2202 to i32
  store i32 %2203, ptr @reload_completed, align 4, !tbaa !173
  tail call void @finish_subregs_of_mode() #24
  %2204 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %2205 = icmp eq i8 %2204, 0
  br i1 %2205, label %2207, label %2206, !prof !343

2206:                                             ; preds = %2197
  tail call void @timevar_pop_1(i32 noundef 149) #24
  br label %2207

2207:                                             ; preds = %2197, %2206
  %2208 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %2209 = icmp eq i8 %2208, 0
  br i1 %2209, label %2211, label %2210, !prof !343

2210:                                             ; preds = %2207
  tail call void @timevar_push_1(i32 noundef 148) #24
  br label %2211

2211:                                             ; preds = %2210, %2207
  %2212 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !169
  %2213 = icmp eq i8 %2212, 0
  br i1 %2213, label %2216, label %2214, !prof !406

2214:                                             ; preds = %2211
  %2215 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !158
  tail call void @free(ptr noundef %2215)
  tail call void @ira_finish_assign() #24
  br label %2216

2216:                                             ; preds = %2214, %2211
  %2217 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !173
  %2218 = icmp sgt i32 %2217, 0
  %2219 = load ptr, ptr @ira_dump_file, align 8
  %2220 = icmp ne ptr %2219, null
  %2221 = select i1 %2218, i1 %2220, i1 false, !prof !343
  br i1 %2221, label %2222, label %2227, !prof !406

2222:                                             ; preds = %2216
  %2223 = load i32, ptr @ira_overall_cost, align 4, !tbaa !173
  %2224 = icmp eq i32 %1367, %2223
  br i1 %2224, label %2227, label %2225

2225:                                             ; preds = %2222
  %2226 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2219, ptr noundef nonnull @.str.44, i32 noundef %2223)
  br label %2227

2227:                                             ; preds = %2225, %2222, %2216
  tail call void @ira_destroy() #24
  store i32 %1003, ptr @flag_ira_share_spill_slots, align 4, !tbaa !173
  tail call void @flow_loops_free(ptr noundef nonnull @ira_loops) #24
  tail call void @free_dominance_info(i32 noundef 1) #24
  %2228 = load ptr, ptr @cfun, align 8, !tbaa !158
  %2229 = getelementptr inbounds %struct.function, ptr %2228, i64 0, i32 1
  %2230 = load ptr, ptr %2229, align 8, !tbaa !354
  %2231 = load ptr, ptr %2230, align 8, !tbaa !158
  %2232 = icmp eq ptr %2231, null
  br i1 %2232, label %2239, label %2233, !prof !361

2233:                                             ; preds = %2227, %2233
  %2234 = phi ptr [ %2237, %2233 ], [ %2231, %2227 ]
  %2235 = getelementptr inbounds %struct.basic_block_def, ptr %2234, i64 0, i32 3
  store ptr null, ptr %2235, align 8, !tbaa !667
  %2236 = getelementptr inbounds %struct.basic_block_def, ptr %2234, i64 0, i32 6
  %2237 = load ptr, ptr %2236, align 8, !tbaa !158
  %2238 = icmp eq ptr %2237, null
  br i1 %2238, label %2239, label %2233, !prof !668, !llvm.loop !669

2239:                                             ; preds = %2233, %2227
  %2240 = getelementptr inbounds %struct.function, ptr %2228, i64 0, i32 4
  store ptr null, ptr %2240, align 8, !tbaa !547
  tail call void @regstat_free_ri() #24
  tail call void @regstat_free_n_sets_and_refs() #24
  %2241 = load i32, ptr @optimize, align 4, !tbaa !173
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2247, label %2243, !prof !406

2243:                                             ; preds = %2239
  %2244 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #24
  %2245 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !158
  tail call void @free(ptr noundef %2245)
  %2246 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !158
  tail call void @free(ptr noundef %2246)
  br label %2247

2247:                                             ; preds = %2243, %2239
  tail call void @bitmap_obstack_release(ptr noundef nonnull @ira_bitmap_obstack) #24
  tail call void @df_finish_pass(i8 noundef zeroext 1) #24
  %2248 = load i32, ptr @optimize, align 4, !tbaa !173
  %2249 = icmp sgt i32 %2248, 1
  br i1 %2249, label %2250, label %2251, !prof !343

2250:                                             ; preds = %2247
  tail call void @df_live_add_problem() #24
  br label %2251

2251:                                             ; preds = %2250, %2247
  tail call void @df_scan_alloc(ptr noundef null) #24
  tail call void @df_scan_blocks() #24
  %2252 = load i32, ptr @optimize, align 4, !tbaa !173
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2255, label %2254, !prof !406

2254:                                             ; preds = %2251
  tail call void @df_analyze() #24
  br label %2255

2255:                                             ; preds = %2251, %2254
  %2256 = load i8, ptr @timevar_enable, align 1, !tbaa !169
  %2257 = icmp eq i8 %2256, 0
  br i1 %2257, label %2259, label %2258, !prof !343

2258:                                             ; preds = %2255
  tail call void @timevar_pop_1(i32 noundef 148) #24
  br label %2259

2259:                                             ; preds = %2258, %2255
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @init_caller_save() local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_live_add_problem() local_unnamed_addr #3

declare void @df_live_set_all_dirty() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #3

declare void @regstat_init_n_sets_and_refs() local_unnamed_addr #3

declare void @regstat_compute_ri() local_unnamed_addr #3

declare void @generate_setjmp_warnings() local_unnamed_addr #3

declare i32 @leaf_function_p() local_unnamed_addr #3

declare zeroext i8 @resize_reg_info() local_unnamed_addr #3

declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare i32 @flow_loops_find(ptr noundef) local_unnamed_addr #3

declare void @record_loop_exits() local_unnamed_addr #3

declare zeroext i8 @ira_build(i8 noundef zeroext) local_unnamed_addr #3

declare void @ira_color() local_unnamed_addr #3

declare void @ira_emit(i8 noundef zeroext) local_unnamed_addr #3

declare void @ira_initiate_assign() local_unnamed_addr #3

declare void @ira_flattening(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_reassign_conflict_allocnos(i32 noundef) local_unnamed_addr #3

declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @regstat_free_n_sets_and_refs() local_unnamed_addr #3

declare void @regstat_free_ri() local_unnamed_addr #3

declare void @allocate_initial_values(ptr noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare i32 @reload(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @finish_subregs_of_mode() local_unnamed_addr #3

declare void @ira_finish_assign() local_unnamed_addr #3

declare void @ira_destroy() local_unnamed_addr #3

declare void @flow_loops_free(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @df_finish_pass(i8 noundef zeroext) local_unnamed_addr #3

declare void @df_scan_alloc(ptr noundef) local_unnamed_addr #3

declare void @df_scan_blocks() local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare void @init_alias_analysis() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @no_equiv(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !prof !670 !PGOFuncName !671 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %33, !prof !455

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !169
  %10 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.equivalence, ptr %10, i64 %11, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !440
  %14 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !158
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %33, label %16, !prof !456

16:                                               ; preds = %7
  store ptr %14, ptr %12, align 8, !tbaa !440
  %17 = getelementptr inbounds %struct.equivalence, ptr %10, i64 %11
  store ptr null, ptr %17, align 8, !tbaa !453
  %18 = getelementptr inbounds %struct.equivalence, ptr %10, i64 %11, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !434
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33, !prof !457

21:                                               ; preds = %16
  %22 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !158
  %23 = getelementptr inbounds ptr, ptr %22, i64 %11
  store ptr null, ptr %23, align 8, !tbaa !158
  %24 = icmp eq ptr %13, null
  br i1 %24, label %33, label %25, !prof !458

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %31, %25 ], [ %13, %21 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = tail call ptr @find_reg_note(ptr noundef %28, i32 noundef 3, ptr noundef null) #24
  tail call void @remove_note(ptr noundef %28, ptr noundef %29) #24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !169
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25, !prof !459, !llvm.loop !460

33:                                               ; preds = %25, %21, %16, %7, %3
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ue_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @validate_equiv_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 !prof !672 !PGOFuncName !673 {
  store ptr %2, ptr @equiv_mem, align 8, !tbaa !158
  store i1 false, ptr @equiv_mem_modified, align 4
  %4 = tail call i32 @side_effects_p(ptr noundef %2) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %62, !prof !674

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = load i1, ptr @equiv_mem_modified, align 4
  %9 = select i1 %7, i1 true, i1 %8, !prof !675
  br i1 %9, label %62, label %10, !prof !247

10:                                               ; preds = %6, %56
  %11 = phi ptr [ %58, %56 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %56, !prof !676

16:                                               ; preds = %10
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %1) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %62, !prof !677

19:                                               ; preds = %16
  %20 = load i32, ptr %11, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %30, !prof !678

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 8
  %25 = or i32 %24, %20
  %26 = and i32 %25, 67108864
  %27 = icmp eq i32 %26, 0
  %28 = icmp sgt i32 %20, -1
  %29 = and i1 %28, %27
  br i1 %29, label %62, label %30

30:                                               ; preds = %23, %19
  %31 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !169
  tail call void @note_stores(ptr noundef %32, ptr noundef nonnull @validate_equiv_mem_from_store, ptr noundef null) #24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !169
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36, !prof !679

36:                                               ; preds = %30, %52
  %37 = phi ptr [ %54, %52 ], [ %34, %30 ]
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %52, !prof !680

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !169
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %52, !prof !680

49:                                               ; preds = %43
  %50 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %45, ptr noundef %2) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62, !prof !681

52:                                               ; preds = %36, %43, %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !169
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %36, !prof !680, !llvm.loop !682

56:                                               ; preds = %52, %30, %10
  %57 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !169
  %59 = icmp eq ptr %58, null
  %60 = load i1, ptr @equiv_mem_modified, align 4
  %61 = select i1 %59, i1 true, i1 %60, !prof !675
  br i1 %61, label %62, label %10, !prof !675, !llvm.loop !683

62:                                               ; preds = %16, %23, %56, %49, %6, %3
  %63 = phi i32 [ 0, %3 ], [ 0, %6 ], [ 0, %49 ], [ 0, %56 ], [ 0, %23 ], [ 1, %16 ]
  ret i32 %63
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @equiv_init_varies_p(ptr noundef %0) unnamed_addr #10 !prof !157 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %27 [
    i16 43, label %5
    i16 35, label %68
    i16 30, label %68
    i16 32, label %68
    i16 31, label %68
    i16 33, label %68
    i16 45, label %68
    i16 44, label %68
    i16 37, label %13
    i16 17, label %24
  ]

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br label %68

13:                                               ; preds = %1
  %14 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !169
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.equivalence, ptr %14, i64 %17, i32 5
  %19 = load i8, ptr %18, align 8, !tbaa !484
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %13
  %22 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %0, i8 noundef zeroext 0) #24
  %23 = icmp ne i8 %22, 0
  br label %68

24:                                               ; preds = %1
  %25 = and i32 %2, 134217728
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %1, %24
  %28 = zext nneg i32 %3 to i64
  %29 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !158
  %31 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %28
  %32 = load i8, ptr %31, align 1, !tbaa !169
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = zext i8 %32 to i64
  br label %37

37:                                               ; preds = %34, %66
  %38 = phi i64 [ %36, %34 ], [ %39, %66 ]
  %39 = add nsw i64 %38, -1
  %40 = getelementptr inbounds i8, ptr %30, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !169
  switch i8 %41, label %66 [
    i8 101, label %47
    i8 69, label %42
  ]

42:                                               ; preds = %37
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %35, i64 0, i64 %39
  %44 = load ptr, ptr %43, align 8, !tbaa !169
  %45 = load i32, ptr %44, align 8, !tbaa !426
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %59, label %66

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %48, i64 0, i64 %39
  %50 = load ptr, ptr %49, align 8, !tbaa !169
  %51 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %68

53:                                               ; preds = %59
  %54 = add nuw nsw i64 %60, 1
  %55 = load ptr, ptr %43, align 8, !tbaa !169
  %56 = load i32, ptr %55, align 8, !tbaa !426
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %66, !llvm.loop !684

59:                                               ; preds = %42, %53
  %60 = phi i64 [ %54, %53 ], [ 0, %42 ]
  %61 = phi ptr [ %55, %53 ], [ %44, %42 ]
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !158
  %64 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %53, label %68

66:                                               ; preds = %53, %42, %37, %47
  %67 = icmp sgt i64 %38, 1
  br i1 %67, label %37, label %68, !llvm.loop !685

68:                                               ; preds = %47, %66, %59, %27, %24, %1, %1, %1, %1, %1, %1, %13, %21, %1, %5, %8
  %69 = phi i1 [ true, %5 ], [ %12, %8 ], [ false, %1 ], [ false, %13 ], [ %23, %21 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ true, %24 ], [ false, %27 ], [ true, %59 ], [ false, %66 ], [ true, %47 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @equiv_init_movable_p(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !686 !PGOFuncName !687 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = trunc i32 %5 to i16
  switch i16 %7, label %38 [
    i16 23, label %8
    i16 46, label %78
    i16 25, label %78
    i16 75, label %78
    i16 74, label %78
    i16 77, label %78
    i16 76, label %78
    i16 78, label %78
    i16 79, label %78
    i16 37, label %11
    i16 19, label %78
    i16 17, label %35
  ], !prof !688

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  br label %3

11:                                               ; preds = %3
  %12 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !169
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.equivalence, ptr %12, i64 %15, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !475
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds %struct.equivalence, ptr %12, i64 %18, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !475
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %26, label %22, !prof !689

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.equivalence, ptr %12, i64 %15, i32 5
  %24 = load i8, ptr %23, align 8, !tbaa !484
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %78, !prof !690

26:                                               ; preds = %22, %11
  %27 = load ptr, ptr @reg_info_p, align 8, !tbaa !158
  %28 = getelementptr inbounds %struct.reg_info_t, ptr %27, i64 %15, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !465
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %78, !prof !690

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %33 = icmp eq i8 %32, 0
  %34 = zext i1 %33 to i32
  br label %78

35:                                               ; preds = %3
  %36 = and i32 %5, 134217728
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %3, %35
  %39 = zext nneg i32 %6 to i64
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !158
  %42 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %39
  %43 = load i8, ptr %42, align 1, !tbaa !169
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %78, label %45, !prof !691

45:                                               ; preds = %38
  %46 = zext i8 %43 to i64
  br label %47

47:                                               ; preds = %45, %76
  %48 = phi i64 [ %46, %45 ], [ %49, %76 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %41, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !169
  switch i8 %51, label %76 [
    i8 101, label %52
    i8 69, label %58
  ], !prof !692

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %53, i64 0, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !169
  %56 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %55, i32 noundef %1), !range !469
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %76, !prof !693

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %49
  %61 = load ptr, ptr %60, align 8, !tbaa !169
  %62 = load i32, ptr %61, align 8, !tbaa !426
  %63 = zext i32 %62 to i64
  br label %64

64:                                               ; preds = %68, %58
  %65 = phi i64 [ %70, %68 ], [ %63, %58 ]
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = add nsw i64 %65, -1
  %70 = add nsw i64 %65, -1
  %71 = load ptr, ptr %60, align 8, !tbaa !169
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !158
  %74 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %73, i32 noundef %1), !range !469
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %64, !llvm.loop !694

76:                                               ; preds = %64, %47, %52
  %77 = icmp sgt i64 %48, 1
  br i1 %77, label %47, label %78, !prof !695, !llvm.loop !696

78:                                               ; preds = %76, %52, %68, %38, %35, %3, %3, %3, %3, %3, %3, %3, %3, %3, %22, %31, %26
  %79 = phi i32 [ 1, %22 ], [ 0, %26 ], [ %34, %31 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %35 ], [ 1, %38 ], [ 0, %68 ], [ 0, %52 ], [ 1, %76 ]
  ret i32 %79
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @contains_replace_regs(ptr nocapture noundef readonly %0) unnamed_addr #20 !prof !697 !PGOFuncName !698 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %12 [
    i16 30, label %52
    i16 35, label %52
    i16 44, label %52
    i16 45, label %52
    i16 32, label %52
    i16 31, label %52
    i16 33, label %52
    i16 36, label %52
    i16 46, label %52
    i16 121, label %52
    i16 37, label %4
  ], !prof !699

4:                                                ; preds = %1
  %5 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !169
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.equivalence, ptr %5, i64 %8, i32 5
  %10 = load i8, ptr %9, align 8, !tbaa !484
  %11 = sext i8 %10 to i32
  br label %52

12:                                               ; preds = %1
  %13 = and i32 %2, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !169
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %52, label %20, !prof !526

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %50
  %24 = phi i64 [ %22, %20 ], [ %25, %50 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !169
  switch i8 %27, label %50 [
    i8 101, label %28
    i8 69, label %33
  ], !prof !700

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !169
  %31 = tail call fastcc i32 @contains_replace_regs(ptr noundef %30), !range !497
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %52, !prof !701

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %25
  %36 = load ptr, ptr %35, align 8, !tbaa !169
  %37 = load i32, ptr %36, align 8, !tbaa !426
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %43, %33
  %40 = phi i64 [ %45, %43 ], [ %38, %33 ]
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %40, -1
  %45 = add nsw i64 %40, -1
  %46 = getelementptr inbounds %struct.rtvec_def, ptr %36, i64 0, i32 1, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !158
  %48 = tail call fastcc i32 @contains_replace_regs(ptr noundef %47), !range !497
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %39, label %52, !llvm.loop !702

50:                                               ; preds = %39, %23, %28
  %51 = icmp sgt i64 %24, 1
  br i1 %51, label %23, label %52, !prof !703, !llvm.loop !704

52:                                               ; preds = %50, %28, %43, %12, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %53 = phi i32 [ %11, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %12 ], [ 1, %43 ], [ 1, %28 ], [ 0, %50 ]
  ret i32 %53
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @memref_used_between_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !prof !705 !PGOFuncName !706 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = load ptr, ptr %4, align 8, !tbaa !169
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %29, label %9, !prof !526

9:                                                ; preds = %3, %24
  %10 = phi ptr [ %26, %24 ], [ %6, %3 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %24, label %15, !prof !499

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !169
  %18 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %17), !range !469
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29, !prof !498

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8
  %22 = and i32 %21, 67174399
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %29, label %24, !prof !499

24:                                               ; preds = %9, %20
  %25 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !169
  %27 = load ptr, ptr %4, align 8, !tbaa !169
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %9, !prof !707, !llvm.loop !708

29:                                               ; preds = %15, %20, %24, %3
  %30 = phi i32 [ 0, %3 ], [ 1, %15 ], [ 1, %20 ], [ 0, %24 ]
  ret i32 %30
}

declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare i32 @validate_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @remove_death(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare ptr @prev_nondebug_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_replace_fn_rtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @adjust_cleared_regs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #10 !prof !157 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !169
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %9) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %14 = load i32, ptr %8, align 8, !tbaa !169
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.equivalence, ptr %13, i64 %15, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !474
  %18 = load ptr, ptr %17, align 8, !tbaa !158
  %19 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %18, ptr noundef null, ptr noundef nonnull @adjust_cleared_regs, ptr noundef %2) #24
  br label %20

20:                                               ; preds = %7, %12
  %21 = phi ptr [ %19, %12 ], [ undef, %7 ]
  br i1 %11, label %22, label %23

22:                                               ; preds = %20, %3
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi ptr [ %21, %20 ], [ null, %22 ]
  ret ptr %24
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @end_alias_analysis() local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @validate_equiv_mem_from_store(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #13 !prof !709 !PGOFuncName !710 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %11, !prof !711

7:                                                ; preds = %3
  %8 = load ptr, ptr @equiv_mem, align 8, !tbaa !158
  %9 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %0, ptr noundef %8) #24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !711

11:                                               ; preds = %7, %3
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %15, label %20, !prof !678

15:                                               ; preds = %11
  %16 = load ptr, ptr @equiv_mem, align 8, !tbaa !158
  %17 = tail call i32 @true_dependence(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %16, ptr noundef nonnull @rtx_varies_p) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %7
  store i1 true, ptr @equiv_mem_modified, align 4
  br label %20

20:                                               ; preds = %15, %19, %11
  ret void
}

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !712 !PGOFuncName !713 {
  br label %3

3:                                                ; preds = %8, %33, %2
  %4 = phi ptr [ %1, %2 ], [ %35, %33 ], [ %14, %8 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = trunc i32 %5 to i16
  switch i16 %7, label %36 [
    i16 30, label %76
    i16 35, label %76
    i16 44, label %76
    i16 45, label %76
    i16 32, label %76
    i16 31, label %76
    i16 33, label %76
    i16 36, label %76
    i16 46, label %76
    i16 121, label %76
    i16 122, label %76
    i16 37, label %8
    i16 43, label %16
    i16 23, label %19
  ], !prof !714

8:                                                ; preds = %3
  %9 = load ptr, ptr @reg_equiv, align 8, !tbaa !158
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !169
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !453
  %15 = icmp eq ptr %14, null
  br i1 %15, label %76, label %3, !prof !715

16:                                               ; preds = %3
  %17 = tail call i32 @true_dependence(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @rtx_varies_p) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %76, !prof !498

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !169
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 43
  br i1 %24, label %25, label %30, !prof !498

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !169
  %28 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %27), !range !469
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %76, !prof !498

30:                                               ; preds = %19
  %31 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef nonnull %21), !range !469
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  br label %3

36:                                               ; preds = %16, %3
  %37 = zext nneg i32 %6 to i64
  %38 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !158
  %40 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !169
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %76, label %43, !prof !526

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %45 = zext i8 %41 to i64
  br label %46

46:                                               ; preds = %43, %74
  %47 = phi i64 [ %45, %43 ], [ %48, %74 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds i8, ptr %39, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !169
  switch i8 %50, label %74 [
    i8 101, label %51
    i8 69, label %56
  ], !prof !716

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !169
  %54 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %53), !range !469
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %76, !prof !717

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %57, i64 0, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !169
  %60 = load i32, ptr %59, align 8, !tbaa !426
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %56
  %63 = phi i64 [ %68, %66 ], [ %61, %56 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = add nsw i64 %63, -1
  %69 = load ptr, ptr %58, align 8, !tbaa !169
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !158
  %72 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %71), !range !469
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %62, label %76, !llvm.loop !718

74:                                               ; preds = %62, %46, %51
  %75 = icmp sgt i64 %47, 1
  br i1 %75, label %46, label %76, !prof !703, !llvm.loop !719

76:                                               ; preds = %74, %51, %66, %36, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %30, %25, %16, %8, %3
  %77 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 1, %16 ], [ 1, %25 ], [ 1, %30 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %36 ], [ 1, %66 ], [ 1, %51 ], [ 0, %74 ]
  ret i32 %77
}

declare i32 @function_invariant_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #3

declare i32 @reg_cover_class(i32 noundef) local_unnamed_addr #3

declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare ptr @new_insn_chain() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_live_subregs(i8 noundef zeroext %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #13 !prof !157 !PGOFuncName !720 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !169
  %10 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !158
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !158
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !169
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %22, label %23, !prof !648

22:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2817, ptr noundef nonnull @.str.41) #24
  br label %23

23:                                               ; preds = %5, %22
  %24 = sext i32 %3 to i64
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !173
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40, !prof !647

28:                                               ; preds = %23
  %29 = getelementptr inbounds ptr, ptr %1, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !158
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34, !prof !647

32:                                               ; preds = %28
  %33 = tail call ptr @sbitmap_alloc(i32 noundef %20) #24
  store ptr %33, ptr %29, align 8, !tbaa !158
  br label %34

34:                                               ; preds = %32, %28
  %35 = icmp eq i8 %0, 0
  %36 = load ptr, ptr %29, align 8, !tbaa !158
  br i1 %35, label %38, label %37, !prof !647

37:                                               ; preds = %34
  tail call void @sbitmap_ones(ptr noundef %36) #24
  br label %39

38:                                               ; preds = %34
  tail call void @sbitmap_zero(ptr noundef %36) #24
  br label %39

39:                                               ; preds = %38, %37
  store i32 %20, ptr %25, align 4, !tbaa !173
  br label %40

40:                                               ; preds = %23, %39
  ret void
}

declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!156}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!35 = !{ptr @ira_allocate, ptr @xmalloc, i64 214307}
!36 = !{ptr @ira_free, ptr @free, i64 214307}
!37 = !{ptr @ira_allocate_bitmap, ptr @bitmap_obstack_alloc_stat, i64 418}
!38 = !{ptr @ira_init_register_move_cost, ptr @init_move_cost, i64 2}
!39 = !{ptr @ira_init_register_move_cost, ptr @xmalloc, i64 4}
!40 = !{ptr @ira_init_once, ptr @ira_init_costs_once, i64 1}
!41 = !{ptr @ira_init, ptr @free_register_move_costs, i64 1}
!42 = !{ptr @ira_init, ptr @ix86_memory_move_cost, i64 4524}
!43 = !{ptr @ira_init, ptr @reg_classes_intersect_p, i64 2355}
!44 = !{ptr @ira_init, ptr @spec_qsort, i64 1}
!45 = !{ptr @ira_init, ptr @reg_class_subset_p, i64 4}
!46 = !{ptr @ira_init, ptr @ix86_hard_regno_mode_ok, i64 1218}
!47 = !{ptr @ira_init, ptr @ira_init_costs, i64 1}
!48 = !{ptr @free_register_move_costs, ptr @free, i64 4}
!49 = !{ptr @ira_finish_once, ptr @ira_finish_costs_once, i64 1}
!50 = !{ptr @ira_finish_once, ptr @free_register_move_costs, i64 1}
!51 = !{ptr @ira_setup_eliminable_regset, ptr @for_each_rtx, i64 893502}
!52 = !{ptr @mark_elimination, ptr @bitmap_bit_p, i64 311308}
!53 = !{ptr @mark_elimination, ptr @bitmap_clear_bit, i64 311308}
!54 = !{ptr @mark_elimination, ptr @bitmap_set_bit, i64 311308}
!55 = !{ptr @rest_of_handle_ira, ptr @ira, i64 38}
!56 = !{ptr @ira, ptr @init_caller_save, i64 38}
!57 = !{ptr @ira, ptr @gen_rtx_REG, i64 2}
!58 = !{ptr @ira, ptr @gen_rtx_fmt_ee_stat, i64 1}
!59 = !{ptr @ira, ptr @gen_rtx_fmt_iuuBieie_stat, i64 1}
!60 = !{ptr @ira, ptr @ix86_hard_regno_mode_ok, i64 4611}
!61 = !{ptr @ira, ptr @df_ref_change_reg_with_loc, i64 1872}
!62 = !{ptr @ira, ptr @recog, i64 936}
!63 = !{ptr @ira, ptr @extract_insn, i64 238}
!64 = !{ptr @ira, ptr @constrain_operands, i64 238}
!65 = !{ptr @ira, ptr @df_note_add_problem, i64 38}
!66 = !{ptr @ira, ptr @df_analyze, i64 76}
!67 = !{ptr @ira, ptr @df_clear_flags, i64 38}
!68 = !{ptr @ira, ptr @regstat_init_n_sets_and_refs, i64 38}
!69 = !{ptr @ira, ptr @regstat_compute_ri, i64 38}
!70 = !{ptr @ira, ptr @leaf_function_p, i64 38}
!71 = !{ptr @ira, ptr @resize_reg_info, i64 38}
!72 = !{ptr @ira, ptr @xcalloc, i64 76}
!73 = !{ptr @ira, ptr @ggc_alloc_cleared_stat, i64 38}
!74 = !{ptr @ira, ptr @init_alias_analysis, i64 38}
!75 = !{ptr @ira, ptr @single_set_2, i64 21341}
!76 = !{ptr @ira, ptr @note_stores, i64 524013}
!77 = !{ptr @ira, ptr @find_reg_note, i64 1030194}
!78 = !{ptr @ira, ptr @rtx_equal_p, i64 25083}
!79 = !{ptr @ira, ptr @gen_rtx_fmt_ue_stat, i64 142609}
!80 = !{ptr @ira, ptr @reg_preferred_class, i64 1079300}
!81 = !{ptr @ira, ptr @rtx_varies_p, i64 115037}
!82 = !{ptr @ira, ptr @copy_rtx, i64 26076}
!83 = !{ptr @ira, ptr @set_unique_reg_note, i64 32525}
!84 = !{ptr @ira, ptr @remove_note, i64 6451}
!85 = !{ptr @ira, ptr @validate_equiv_mem, i64 18975}
!86 = !{ptr @ira, ptr @equiv_init_movable_p, i64 25046}
!87 = !{ptr @ira, ptr @get_insns, i64 114}
!88 = !{ptr @ira, ptr @contains_replace_regs, i64 7}
!89 = !{ptr @ira, ptr @memref_used_between_p, i64 7}
!90 = !{ptr @ira, ptr @df_notes_rescan, i64 7}
!91 = !{ptr @ira, ptr @bitmap_obstack_alloc_stat, i64 114}
!92 = !{ptr @ira, ptr @reg_mentioned_p, i64 328355}
!93 = !{ptr @ira, ptr @can_throw_internal, i64 24999}
!94 = !{ptr @ira, ptr @asm_noperands, i64 24999}
!95 = !{ptr @ira, ptr @validate_replace_rtx, i64 24999}
!96 = !{ptr @ira, ptr @prev_nondebug_insn, i64 24999}
!97 = !{ptr @ira, ptr @emit_insn_before, i64 10963}
!98 = !{ptr @ira, ptr @df_insn_rescan, i64 10963}
!99 = !{ptr @ira, ptr @delete_insn, i64 10963}
!100 = !{ptr @ira, ptr @bitmap_set_bit, i64 1842443}
!101 = !{ptr @ira, ptr @bitmap_and_compl_into, i64 1297876}
!102 = !{ptr @ira, ptr @bitmap_obstack_free, i64 114}
!103 = !{ptr @ira, ptr @end_alias_analysis, i64 38}
!104 = !{ptr @ira, ptr @free, i64 430}
!105 = !{ptr @ira, ptr @bitmap_obstack_initialize, i64 38}
!106 = !{ptr @ira, ptr @max_reg_num, i64 228}
!107 = !{ptr @ira, ptr @xmalloc, i64 152}
!108 = !{ptr @ira, ptr @function_invariant_p, i64 31897}
!109 = !{ptr @ira, ptr @memory_operand, i64 25448}
!110 = !{ptr @ira, ptr @ira_setup_eliminable_regset, i64 38}
!111 = !{ptr @ira, ptr @flow_loops_find, i64 38}
!112 = !{ptr @ira, ptr @record_loop_exits, i64 38}
!113 = !{ptr @ira, ptr @ira_build, i64 38}
!114 = !{ptr @ira, ptr @ira_color, i64 38}
!115 = !{ptr @ira, ptr @ira_emit, i64 38}
!116 = !{ptr @ira, ptr @ira_initiate_assign, i64 38}
!117 = !{ptr @ira, ptr @ira_free_allocno_updated_costs, i64 107433}
!118 = !{ptr @ira, ptr @delete_trivially_dead_insns, i64 38}
!119 = !{ptr @ira, ptr @vec_gc_p_reserve_exact, i64 38}
!120 = !{ptr @ira, ptr @allocate_initial_values, i64 38}
!121 = !{ptr @ira, ptr @df_set_flags, i64 38}
!122 = !{ptr @ira, ptr @bitmap_clear, i64 155654}
!123 = !{ptr @ira, ptr @new_insn_chain, i64 676350}
!124 = !{ptr @ira, ptr @bitmap_clear_bit, i64 3498107}
!125 = !{ptr @ira, ptr @bitmap_copy, i64 676350}
!126 = !{ptr @ira, ptr @bitmap_bit_p, i64 559379}
!127 = !{ptr @ira, ptr @sbitmap_alloc, i64 202}
!128 = !{ptr @ira, ptr @sbitmap_zero, i64 202}
!129 = !{ptr @ira, ptr @reload, i64 38}
!130 = !{ptr @ira, ptr @finish_subregs_of_mode, i64 38}
!131 = !{ptr @ira, ptr @ira_finish_assign, i64 38}
!132 = !{ptr @ira, ptr @ira_destroy, i64 38}
!133 = !{ptr @ira, ptr @flow_loops_free, i64 38}
!134 = !{ptr @ira, ptr @free_dominance_info, i64 38}
!135 = !{ptr @ira, ptr @regstat_free_ri, i64 38}
!136 = !{ptr @ira, ptr @regstat_free_n_sets_and_refs, i64 38}
!137 = !{ptr @ira, ptr @cleanup_cfg, i64 38}
!138 = !{ptr @ira, ptr @bitmap_obstack_release, i64 38}
!139 = !{ptr @ira, ptr @df_finish_pass, i64 38}
!140 = !{ptr @ira, ptr @df_live_add_problem, i64 38}
!141 = !{ptr @ira, ptr @df_scan_alloc, i64 38}
!142 = !{ptr @ira, ptr @df_scan_blocks, i64 38}
!143 = !{ptr @no_equiv, ptr @find_reg_note, i64 606}
!144 = !{ptr @no_equiv, ptr @remove_note, i64 606}
!145 = !{ptr @validate_equiv_mem, ptr @side_effects_p, i64 18975}
!146 = !{ptr @validate_equiv_mem, ptr @find_reg_note, i64 43644}
!147 = !{ptr @validate_equiv_mem, ptr @note_stores, i64 24675}
!148 = !{ptr @validate_equiv_mem, ptr @reg_overlap_mentioned_p, i64 69}
!149 = !{ptr @equiv_init_movable_p, ptr @rtx_varies_p, i64 64}
!150 = !{ptr @equiv_init_movable_p, ptr @equiv_init_movable_p, i64 61753}
!151 = !{ptr @contains_replace_regs, ptr @contains_replace_regs, i64 14}
!152 = !{ptr @memref_used_between_p, ptr @memref_referenced_p, i64 7}
!153 = !{ptr @validate_equiv_mem_from_store, ptr @reg_overlap_mentioned_p, i64 24675}
!154 = !{ptr @memref_referenced_p, ptr @true_dependence, i64 10}
!155 = !{ptr @memref_referenced_p, ptr @memref_referenced_p, i64 39}
!156 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!157 = !{!"function_entry_count", i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"any pointer", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !{!163, !159, i64 8}
!163 = !{!"_IO_FILE", !164, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !159, i64 80, !159, i64 88, !159, i64 96, !159, i64 104, !164, i64 112, !164, i64 116, !165, i64 120, !166, i64 128, !160, i64 130, !160, i64 131, !159, i64 136, !165, i64 144, !159, i64 152, !159, i64 160, !159, i64 168, !159, i64 176, !165, i64 184, !164, i64 192, !160, i64 196}
!164 = !{!"int", !160, i64 0}
!165 = !{!"long", !160, i64 0}
!166 = !{!"short", !160, i64 0}
!167 = !{!163, !159, i64 16}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{!160, !160, i64 0}
!170 = !{!163, !159, i64 40}
!171 = !{!163, !159, i64 48}
!172 = !{!163, !164, i64 0}
!173 = !{!164, !164, i64 0}
!174 = distinct !{!174, !175, !176}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !{!"llvm.loop.unroll.disable"}
!177 = !{!"function_entry_count", i64 214307}
!178 = !{!"function_entry_count", i64 418}
!179 = !{!180, !164, i64 0}
!180 = !{!"ira_allocno", !164, i64 0, !164, i64 4, !164, i64 8, !164, i64 12, !159, i64 16, !159, i64 24, !159, i64 32, !164, i64 40, !164, i64 44, !164, i64 48, !164, i64 52, !164, i64 56, !164, i64 60, !164, i64 64, !164, i64 68, !159, i64 72, !159, i64 80, !159, i64 88, !159, i64 96, !159, i64 104, !159, i64 112, !164, i64 120, !164, i64 124, !159, i64 128, !164, i64 136, !164, i64 140, !165, i64 144, !165, i64 152, !164, i64 160, !164, i64 164, !164, i64 168, !164, i64 172, !164, i64 172, !164, i64 172, !164, i64 172, !164, i64 172, !164, i64 172, !164, i64 172, !164, i64 172, !164, i64 173, !164, i64 173, !164, i64 173, !164, i64 173, !159, i64 176, !159, i64 184, !159, i64 192, !159, i64 200, !159, i64 208, !164, i64 216, !164, i64 220, !159, i64 224, !159, i64 232, !164, i64 240}
!181 = !{!180, !164, i64 4}
!182 = !{!180, !159, i64 32}
!183 = !{!184, !159, i64 0}
!184 = !{!"ira_loop_tree_node", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !164, i64 56, !160, i64 60, !159, i64 64, !160, i64 72, !160, i64 76, !159, i64 184, !159, i64 192, !159, i64 200, !159, i64 208}
!185 = !{!184, !159, i64 8}
!186 = !{!180, !164, i64 12}
!187 = distinct !{!187, !175, !176}
!188 = distinct !{!188, !175, !176}
!189 = distinct !{!189, !175, !176}
!190 = distinct !{!190, !175, !176}
!191 = !{!"function_entry_count", i64 2}
!192 = !{!"branch_weights", i32 2, i32 0}
!193 = !{!"branch_weights", i32 904, i32 554}
!194 = !{!166, !166, i64 0}
!195 = !{!"branch_weights", i32 54, i32 1404}
!196 = distinct !{!196, !175, !176}
!197 = !{!"branch_weights", i32 2, i32 52}
!198 = distinct !{!198, !175, !176}
!199 = !{!"function_entry_count", i64 1}
!200 = !{!165, !165, i64 0}
!201 = !{!"branch_weights", i32 1, i32 4610}
!202 = !{!"branch_weights", i32 10528, i32 262}
!203 = !{!"branch_weights", i32 6180, i32 4610}
!204 = distinct !{!204, !175, !176}
!205 = !{!"branch_weights", i32 87, i32 4524}
!206 = distinct !{!206, !175, !176}
!207 = !{!"branch_weights", i32 1, i32 86}
!208 = distinct !{!208, !175, !176}
!209 = !{!"branch_weights", i32 1, i32 0}
!210 = !{!"branch_weights", i32 1431, i32 0}
!211 = !{!"branch_weights", i32 1328, i32 103}
!212 = !{!"branch_weights", i32 27, i32 1404}
!213 = distinct !{!213, !175, !176}
!214 = !{!"branch_weights", i32 1, i32 26}
!215 = distinct !{!215, !175, !176}
!216 = distinct !{!216, !175, !176}
!217 = distinct !{!217, !175, !176}
!218 = distinct !{!218, !175, !176}
!219 = !{!"branch_weights", i32 109, i32 2153}
!220 = !{!"branch_weights", i32 103, i32 2159}
!221 = !{!"branch_weights", i32 26, i32 2236}
!222 = distinct !{!222, !175, !176}
!223 = !{!"branch_weights", i32 27, i32 702}
!224 = distinct !{!224, !175, !176}
!225 = distinct !{!225, !175, !176}
!226 = distinct !{!226, !175, !176}
!227 = distinct !{!227, !175, !176}
!228 = !{!"branch_weights", i32 3, i32 23}
!229 = !{!"branch_weights", i32 23, i32 598}
!230 = !{!"branch_weights", i32 146, i32 452}
!231 = !{!"branch_weights", i32 146, i32 1048}
!232 = distinct !{!232, !175, !176}
!233 = distinct !{!233, !175, !176}
!234 = distinct !{!234, !175, !176}
!235 = !{!236, !159, i64 1720}
!236 = !{!"gcc_target", !237, i64 0, !239, i64 368, !240, i64 664, !164, i64 744, !159, i64 752, !159, i64 760, !159, i64 768, !159, i64 776, !159, i64 784, !159, i64 792, !159, i64 800, !159, i64 808, !159, i64 816, !159, i64 824, !159, i64 832, !159, i64 840, !159, i64 848, !159, i64 856, !159, i64 864, !159, i64 872, !159, i64 880, !159, i64 888, !159, i64 896, !159, i64 904, !159, i64 912, !159, i64 920, !159, i64 928, !159, i64 936, !159, i64 944, !159, i64 952, !159, i64 960, !159, i64 968, !159, i64 976, !159, i64 984, !159, i64 992, !159, i64 1000, !159, i64 1008, !159, i64 1016, !159, i64 1024, !159, i64 1032, !159, i64 1040, !159, i64 1048, !159, i64 1056, !165, i64 1064, !165, i64 1072, !159, i64 1080, !159, i64 1088, !159, i64 1096, !159, i64 1104, !159, i64 1112, !159, i64 1120, !159, i64 1128, !159, i64 1136, !159, i64 1144, !159, i64 1152, !159, i64 1160, !159, i64 1168, !241, i64 1176, !159, i64 1232, !159, i64 1240, !159, i64 1248, !159, i64 1256, !159, i64 1264, !159, i64 1272, !159, i64 1280, !159, i64 1288, !159, i64 1296, !159, i64 1304, !159, i64 1312, !159, i64 1320, !159, i64 1328, !159, i64 1336, !159, i64 1344, !159, i64 1352, !159, i64 1360, !159, i64 1368, !159, i64 1376, !159, i64 1384, !159, i64 1392, !159, i64 1400, !159, i64 1408, !159, i64 1416, !159, i64 1424, !159, i64 1432, !159, i64 1440, !159, i64 1448, !159, i64 1456, !165, i64 1464, !242, i64 1472, !159, i64 1664, !159, i64 1672, !159, i64 1680, !159, i64 1688, !159, i64 1696, !159, i64 1704, !159, i64 1712, !159, i64 1720, !159, i64 1728, !159, i64 1736, !159, i64 1744, !159, i64 1752, !159, i64 1760, !159, i64 1768, !159, i64 1776, !243, i64 1784, !244, i64 1792, !245, i64 1896, !246, i64 1968, !159, i64 2016, !160, i64 2024, !160, i64 2025, !160, i64 2026, !160, i64 2027, !160, i64 2028, !160, i64 2029, !160, i64 2030, !160, i64 2031, !160, i64 2032, !160, i64 2033, !160, i64 2034, !160, i64 2035}
!237 = !{!"asm_out", !159, i64 0, !159, i64 8, !159, i64 16, !238, i64 24, !238, i64 56, !159, i64 88, !159, i64 96, !159, i64 104, !159, i64 112, !159, i64 120, !159, i64 128, !159, i64 136, !159, i64 144, !159, i64 152, !159, i64 160, !159, i64 168, !159, i64 176, !159, i64 184, !159, i64 192, !159, i64 200, !159, i64 208, !159, i64 216, !159, i64 224, !159, i64 232, !159, i64 240, !159, i64 248, !159, i64 256, !159, i64 264, !159, i64 272, !159, i64 280, !159, i64 288, !159, i64 296, !159, i64 304, !159, i64 312, !159, i64 320, !159, i64 328, !159, i64 336, !159, i64 344, !159, i64 352, !159, i64 360}
!238 = !{!"asm_int_op", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24}
!239 = !{!"sched", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !159, i64 80, !159, i64 88, !159, i64 96, !159, i64 104, !159, i64 112, !159, i64 120, !159, i64 128, !159, i64 136, !159, i64 144, !159, i64 152, !159, i64 160, !159, i64 168, !159, i64 176, !159, i64 184, !159, i64 192, !159, i64 200, !159, i64 208, !159, i64 216, !159, i64 224, !159, i64 232, !159, i64 240, !159, i64 248, !159, i64 256, !159, i64 264, !159, i64 272, !159, i64 280, !159, i64 288}
!240 = !{!"vectorize", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72}
!241 = !{!"addr_space", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48}
!242 = !{!"calls", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !159, i64 80, !159, i64 88, !159, i64 96, !159, i64 104, !159, i64 112, !159, i64 120, !159, i64 128, !159, i64 136, !159, i64 144, !159, i64 152, !159, i64 160, !159, i64 168, !159, i64 176, !159, i64 184}
!243 = !{!"c", !159, i64 0}
!244 = !{!"cxx", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !159, i64 80, !159, i64 88, !159, i64 96}
!245 = !{!"emutls", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !160, i64 64, !160, i64 65}
!246 = !{!"target_option_hooks", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40}
!247 = !{!"branch_weights", i32 0, i32 1}
!248 = !{!"VP", i32 0, i64 1, i64 -6852507243234749607, i64 1}
!249 = !{!"branch_weights", i32 1, i32 127}
!250 = !{!"branch_weights", i32 127, i32 385}
!251 = distinct !{!251, !175, !176}
!252 = distinct !{!252, !175, !176}
!253 = distinct !{!253, !175, !176}
!254 = distinct !{!254, !175, !176}
!255 = !{!"branch_weights", i32 0, i32 6}
!256 = !{!"branch_weights", i32 6, i32 0}
!257 = !{!"branch_weights", i32 127, i32 65}
!258 = distinct !{!258, !175, !176}
!259 = !{!"branch_weights", i32 2, i32 2}
!260 = distinct !{!260, !175, !176}
!261 = !{!"branch_weights", i32 127, i32 1}
!262 = !{!"branch_weights", i32 4, i32 23}
!263 = !{!"branch_weights", i32 135, i32 1}
!264 = !{!"branch_weights", i32 2, i32 40}
!265 = !{!"branch_weights", i32 1, i32 191}
!266 = !{!"branch_weights", i32 191, i32 961}
!267 = distinct !{!267, !175, !176}
!268 = !{!"branch_weights", i32 14, i32 22}
!269 = !{!"branch_weights", i32 135, i32 201}
!270 = !{!"branch_weights", i32 9, i32 14}
!271 = distinct !{!271, !175, !176}
!272 = distinct !{!272, !175, !176}
!273 = distinct !{!273, !175, !176}
!274 = !{!"branch_weights", i32 0, i32 2}
!275 = !{!"branch_weights", i32 18, i32 0}
!276 = !{!"branch_weights", i32 127, i32 1025}
!277 = distinct !{!277, !175, !176}
!278 = !{!"branch_weights", i32 127, i32 129}
!279 = distinct !{!279, !175, !176}
!280 = !{!"branch_weights", i32 6, i32 20}
!281 = !{!"branch_weights", i32 191, i32 1}
!282 = !{!"branch_weights", i32 6, i32 6}
!283 = !{!"branch_weights", i32 6, i32 516}
!284 = distinct !{!284, !175, !176}
!285 = !{!"branch_weights", i32 3, i32 3}
!286 = !{!"branch_weights", i32 191, i32 193}
!287 = distinct !{!287, !175, !176}
!288 = distinct !{!288, !175, !176}
!289 = distinct !{!289, !175, !176}
!290 = !{!"branch_weights", i32 127, i32 1921}
!291 = distinct !{!291, !175, !176}
!292 = distinct !{!292, !175, !176}
!293 = !{!"branch_weights", i32 108, i32 621}
!294 = !{!"branch_weights", i32 16, i32 713}
!295 = !{!"branch_weights", i32 12, i32 4}
!296 = !{!"branch_weights", i32 0, i32 4}
!297 = !{!"branch_weights", i32 4, i32 0}
!298 = distinct !{!298, !176}
!299 = !{!"branch_weights", i32 281, i32 432}
!300 = !{!"branch_weights", i32 176, i32 256}
!301 = !{!"branch_weights", i32 48, i32 208}
!302 = !{!"branch_weights", i32 48, i32 58}
!303 = distinct !{!303, !175, !176}
!304 = !{!"branch_weights", i32 712, i32 1}
!305 = !{!"branch_weights", i32 1164, i32 10244}
!306 = !{!"branch_weights", i32 73, i32 1091}
!307 = !{!"branch_weights", i32 48, i32 25}
!308 = !{!"branch_weights", i32 24, i32 24}
!309 = !{!"branch_weights", i32 6082, i32 5326}
!310 = !{!"branch_weights", i32 713, i32 5369}
!311 = !{!"branch_weights", i32 1697, i32 3672}
!312 = !{!"branch_weights", i32 84, i32 1613}
!313 = !{!"branch_weights", i32 20, i32 64}
!314 = !{!"branch_weights", i32 712, i32 10696}
!315 = distinct !{!315, !175, !176}
!316 = distinct !{!316, !175, !176}
!317 = distinct !{!317, !175, !176}
!318 = !{!"branch_weights", i32 155, i32 1}
!319 = !{!"branch_weights", i32 155, i32 245}
!320 = distinct !{!320, !175, !176}
!321 = !{!"branch_weights", i32 14, i32 86}
!322 = !{!"branch_weights", i32 1, i32 52}
!323 = distinct !{!323, !175, !176}
!324 = !{!"branch_weights", i32 870, i32 1479}
!325 = !{!"branch_weights", i32 100, i32 770}
!326 = !{!"branch_weights", i32 17, i32 1462}
!327 = !{!"branch_weights", i32 5, i32 2344}
!328 = !{!"branch_weights", i32 27, i32 2322}
!329 = distinct !{!329, !175, !176}
!330 = distinct !{!330, !175, !176}
!331 = !{!"branch_weights", i32 173, i32 1}
!332 = !{!"branch_weights", i32 1038, i32 180}
!333 = !{!"branch_weights", i32 1045, i32 173}
!334 = distinct !{!334, !175, !176}
!335 = !{!"branch_weights", i32 2, i32 172}
!336 = distinct !{!336, !175, !176}
!337 = !{!"branch_weights", i32 129, i32 127}
!338 = distinct !{!338, !175, !176}
!339 = !{!"ira.c;free_register_move_costs"}
!340 = !{!"branch_weights", i32 172, i32 2}
!341 = distinct !{!341, !175, !176}
!342 = !{!"function_entry_count", i64 38}
!343 = !{!"branch_weights", i32 38, i32 0}
!344 = !{!236, !159, i64 1768}
!345 = !{!346, !160, i64 477}
!346 = !{!"rtl_data", !347, i64 0, !348, i64 40, !349, i64 96, !350, i64 112, !352, i64 208, !353, i64 248, !164, i64 312, !159, i64 320, !159, i64 328, !159, i64 336, !159, i64 344, !159, i64 352, !159, i64 360, !159, i64 368, !159, i64 376, !159, i64 384, !159, i64 392, !165, i64 400, !159, i64 408, !159, i64 416, !159, i64 424, !164, i64 432, !164, i64 436, !164, i64 440, !164, i64 444, !164, i64 448, !164, i64 452, !159, i64 456, !160, i64 464, !160, i64 465, !160, i64 466, !160, i64 467, !160, i64 468, !160, i64 469, !160, i64 470, !160, i64 471, !160, i64 472, !160, i64 473, !160, i64 474, !160, i64 475, !160, i64 476, !160, i64 477, !160, i64 478, !160, i64 479, !160, i64 480, !160, i64 481, !160, i64 482, !160, i64 483, !160, i64 484, !160, i64 485}
!347 = !{!"expr_status", !164, i64 0, !164, i64 4, !164, i64 8, !159, i64 16, !159, i64 24, !159, i64 32}
!348 = !{!"emit_status", !164, i64 0, !164, i64 4, !159, i64 8, !159, i64 16, !159, i64 24, !164, i64 32, !164, i64 36, !164, i64 40, !164, i64 44, !159, i64 48}
!349 = !{!"varasm_status", !159, i64 0, !164, i64 8}
!350 = !{!"incoming_args", !164, i64 0, !164, i64 4, !164, i64 8, !159, i64 16, !351, i64 24, !159, i64 88}
!351 = !{!"ix86_args", !164, i64 0, !164, i64 4, !164, i64 8, !164, i64 12, !164, i64 16, !164, i64 20, !164, i64 24, !164, i64 28, !164, i64 32, !164, i64 36, !164, i64 40, !164, i64 44, !164, i64 48, !164, i64 52, !164, i64 56, !164, i64 60}
!352 = !{!"function_subsections", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32}
!353 = !{!"rtl_eh", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !160, i64 48}
!354 = !{!355, !159, i64 8}
!355 = !{!"function", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !159, i64 80, !159, i64 88, !159, i64 96, !164, i64 104, !164, i64 108, !164, i64 112, !164, i64 116, !164, i64 120, !164, i64 124, !159, i64 128, !164, i64 136, !164, i64 137, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139}
!356 = !{!357, !159, i64 0}
!357 = !{!"control_flow_graph", !159, i64 0, !159, i64 8, !159, i64 16, !164, i64 24, !164, i64 28, !164, i64 32, !159, i64 40, !164, i64 48, !160, i64 52, !160, i64 60, !164, i64 68, !164, i64 72}
!358 = !{!359, !159, i64 56}
!359 = !{!"basic_block_def", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !160, i64 32, !159, i64 48, !159, i64 56, !160, i64 64, !165, i64 72, !164, i64 80, !164, i64 84, !164, i64 88, !164, i64 92, !164, i64 96}
!360 = !{!357, !159, i64 8}
!361 = !{!"branch_weights", i32 1, i32 151}
!362 = !{!363, !159, i64 0}
!363 = !{!"rtl_bb_info", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !164, i64 32}
!364 = !{!"branch_weights", i32 155654, i32 893503}
!365 = !{!"branch_weights", i32 893503, i32 0}
!366 = !{!367, !159, i64 248}
!367 = !{!"df", !160, i64 0, !160, i64 64, !159, i64 128, !368, i64 136, !368, i64 176, !159, i64 216, !159, i64 224, !159, i64 232, !164, i64 240, !164, i64 244, !159, i64 248, !164, i64 256, !164, i64 260, !159, i64 264, !159, i64 272, !159, i64 280, !159, i64 288, !159, i64 296, !159, i64 304, !159, i64 312, !159, i64 320, !159, i64 328, !159, i64 336, !164, i64 344, !164, i64 348, !159, i64 352, !164, i64 360, !164, i64 364, !160, i64 365, !160, i64 366}
!368 = !{!"df_ref_info", !159, i64 0, !159, i64 8, !159, i64 16, !164, i64 24, !164, i64 28, !164, i64 32, !164, i64 36}
!369 = !{!370, !159, i64 8}
!370 = !{!"df_insn_info", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !164, i64 40}
!371 = distinct !{!371, !175, !176}
!372 = distinct !{!372, !175, !176}
!373 = !{!"branch_weights", i32 0, i32 1049157}
!374 = distinct !{!374, !175, !176}
!375 = !{!"branch_weights", i32 151, i32 622465}
!376 = distinct !{!376, !175, !176}
!377 = !{!236, !159, i64 1776}
!378 = !{!379, !164, i64 0}
!379 = !{!"", !164, i64 0, !164, i64 4}
!380 = !{!379, !164, i64 4}
!381 = !{!"VP", i32 0, i64 152, i64 3369311583685979598, i64 152}
!382 = !{!"branch_weights", i32 76, i32 76}
!383 = !{!"branch_weights", i32 0, i32 76}
!384 = !{!"branch_weights", i32 152, i32 0}
!385 = !{!"branch_weights", i32 38, i32 114}
!386 = distinct !{!386, !175, !176}
!387 = !{!"function_entry_count", i64 76}
!388 = !{!359, !164, i64 80}
!389 = !{!390, !164, i64 16}
!390 = !{!"dataflow", !159, i64 0, !159, i64 8, !164, i64 16, !159, i64 24, !159, i64 32, !159, i64 40, !164, i64 48, !160, i64 52, !160, i64 53, !160, i64 54}
!391 = !{!390, !159, i64 8}
!392 = !{!393, !159, i64 16}
!393 = !{!"df_lr_bb_info", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24}
!394 = !{!"branch_weights", i32 0, i32 311308}
!395 = distinct !{!395, !175, !176}
!396 = !{!"ira.c;gate_ira"}
!397 = !{!"ira.c;rest_of_handle_ira"}
!398 = !{!"function_entry_count", i64 23}
!399 = !{!"ira.c;comp_reg_classes_func"}
!400 = !{!"branch_weights", i32 23, i32 0}
!401 = !{!"branch_weights", i32 15, i32 8}
!402 = !{!"function_entry_count", i64 6172023}
!403 = !{!"ira.c;insn_contains_asm_1"}
!404 = !{!"branch_weights", i32 692634, i32 5479389}
!405 = !{!"ira.c;ira"}
!406 = !{!"branch_weights", i32 0, i32 38}
!407 = !{!"branch_weights", i32 37, i32 1}
!408 = !{!"branch_weights", i32 3675, i32 936}
!409 = !{!"branch_weights", i32 698, i32 238}
!410 = !{!"branch_weights", i32 102, i32 136}
!411 = distinct !{!411, !175, !176}
!412 = distinct !{!412, !175, !176}
!413 = distinct !{!413, !175, !176}
!414 = !{!359, !164, i64 84}
!415 = !{!363, !159, i64 8}
!416 = !{!"branch_weights", i32 1, i32 155653}
!417 = !{!"branch_weights", i32 623676, i32 269827}
!418 = !{!"branch_weights", i32 85842, i32 537834}
!419 = !{!"branch_weights", i32 0, i32 537834}
!420 = !{!"branch_weights", i32 537834, i32 0}
!421 = distinct !{!421, !175, !176}
!422 = !{!"branch_weights", i32 623676, i32 0}
!423 = !{!"branch_weights", i32 613017, i32 10659}
!424 = !{!"branch_weights", i32 2392, i32 621284}
!425 = !{!"branch_weights", i32 8267, i32 613017}
!426 = !{!427, !164, i64 0}
!427 = !{!"rtvec_def", !164, i64 0, !160, i64 8}
!428 = !{!"branch_weights", i32 8266, i32 1}
!429 = !{!"branch_weights", i32 8267, i32 8267}
!430 = !{!"branch_weights", i32 8268, i32 8266}
!431 = distinct !{!431, !175, !176}
!432 = !{!"branch_weights", i32 621247, i32 37}
!433 = !{!"branch_weights", i32 37, i32 0}
!434 = !{!435, !164, i64 28}
!435 = !{!"equivalence", !159, i64 0, !159, i64 8, !159, i64 16, !164, i64 24, !164, i64 28, !160, i64 32}
!436 = !{!"branch_weights", i32 0, i32 37}
!437 = !{!"branch_weights", i32 0, i32 621284}
!438 = !{!"branch_weights", i32 384247, i32 237037}
!439 = !{!"branch_weights", i32 217769, i32 166478}
!440 = !{!435, !159, i64 16}
!441 = !{!"branch_weights", i32 58548, i32 107930}
!442 = !{!"branch_weights", i32 0, i32 107930}
!443 = !{!"branch_weights", i32 107761, i32 169}
!444 = !{!"branch_weights", i32 7107, i32 100654}
!445 = !{!"branch_weights", i32 100654, i32 7276}
!446 = !{!"branch_weights", i32 0, i32 7276}
!447 = !{!367, !159, i64 216}
!448 = !{!449, !164, i64 8}
!449 = !{!"df_reg_info", !159, i64 0, !164, i64 8}
!450 = !{!"branch_weights", i32 105533, i32 2397}
!451 = !{!"branch_weights", i32 1640, i32 757}
!452 = !{!"branch_weights", i32 658, i32 99}
!453 = !{!435, !159, i64 0}
!454 = !{!"branch_weights", i32 658, i32 0}
!455 = !{!"branch_weights", i32 286608, i32 237037}
!456 = !{!"branch_weights", i32 284639, i32 1969}
!457 = !{!"branch_weights", i32 1969, i32 0}
!458 = !{!"branch_weights", i32 1361, i32 608}
!459 = !{!"branch_weights", i32 608, i32 0}
!460 = distinct !{!460, !175, !176}
!461 = !{!"branch_weights", i32 105533, i32 658}
!462 = !{!"branch_weights", i32 6519, i32 99672}
!463 = !{!"branch_weights", i32 6449, i32 70}
!464 = !{!"branch_weights", i32 99705, i32 6486}
!465 = !{!466, !164, i64 24}
!466 = !{!"reg_info_t", !164, i64 0, !164, i64 4, !164, i64 8, !164, i64 12, !164, i64 16, !164, i64 20, !164, i64 24}
!467 = !{!"branch_weights", i32 89173, i32 10532}
!468 = !{!"branch_weights", i32 18968, i32 70205}
!469 = !{i32 0, i32 2}
!470 = !{!"branch_weights", i32 6, i32 18962}
!471 = !{!"branch_weights", i32 80743, i32 25448}
!472 = !{!"branch_weights", i32 25411, i32 37}
!473 = !{!"branch_weights", i32 25448, i32 0, i32 0}
!474 = !{!435, !159, i64 8}
!475 = !{!435, !164, i64 24}
!476 = !{!466, !164, i64 8}
!477 = !{!"branch_weights", i32 25448, i32 0}
!478 = !{!479, !164, i64 4}
!479 = !{!"regstat_n_sets_and_refs_t", !164, i64 0, !164, i64 4}
!480 = !{!"branch_weights", i32 25046, i32 402}
!481 = !{!"branch_weights", i32 0, i32 25046}
!482 = !{!"branch_weights", i32 25046, i32 0}
!483 = !{!"branch_weights", i32 47, i32 24999}
!484 = !{!435, !160, i64 32}
!485 = !{!"branch_weights", i32 155653, i32 737850}
!486 = distinct !{!486, !175, !176}
!487 = !{!"branch_weights", i32 623699, i32 277143}
!488 = !{!"branch_weights", i32 613017, i32 10682}
!489 = !{!"branch_weights", i32 2415, i32 621284}
!490 = !{!"branch_weights", i32 81708, i32 539576}
!491 = !{!"branch_weights", i32 69015, i32 12693}
!492 = !{!"branch_weights", i32 69015, i32 0}
!493 = !{!"branch_weights", i32 14003, i32 55012}
!494 = !{!"branch_weights", i32 14003, i32 0}
!495 = !{!"branch_weights", i32 0, i32 14003}
!496 = !{!"branch_weights", i32 7, i32 13996}
!497 = !{i32 -128, i32 128}
!498 = !{!"branch_weights", i32 7, i32 0}
!499 = !{!"branch_weights", i32 0, i32 7}
!500 = !{!"branch_weights", i32 151, i32 3603217}
!501 = distinct !{!501, !175, !176}
!502 = !{!359, !159, i64 48}
!503 = distinct !{!503, !175, !176}
!504 = !{!"branch_weights", i32 155329, i32 468347}
!505 = !{!"branch_weights", i32 155329, i32 0}
!506 = !{!"branch_weights", i32 59766, i32 563910}
!507 = !{!"branch_weights", i32 328355, i32 235555}
!508 = !{!"branch_weights", i32 0, i32 328355}
!509 = !{!"branch_weights", i32 303356, i32 24999}
!510 = !{!"branch_weights", i32 0, i32 24999}
!511 = !{!"branch_weights", i32 24999, i32 0}
!512 = distinct !{!512, !175, !176}
!513 = distinct !{!513, !175, !176}
!514 = !{!466, !164, i64 0}
!515 = !{!"branch_weights", i32 14036, i32 10963}
!516 = !{!466, !164, i64 12}
!517 = !{!466, !164, i64 16}
!518 = !{!466, !164, i64 20}
!519 = !{!"branch_weights", i32 0, i32 10963}
!520 = !{!"branch_weights", i32 563910, i32 0}
!521 = distinct !{!521, !175, !176}
!522 = distinct !{!522, !175, !176}
!523 = !{!524, !159, i64 0}
!524 = !{!"bitmap_head_def", !159, i64 0, !159, i64 8, !164, i64 16, !159, i64 24}
!525 = !{!"branch_weights", i32 10, i32 28}
!526 = !{!"branch_weights", i32 1, i32 223}
!527 = !{!528, !159, i64 16}
!528 = !{!"df_live_bb_info", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24}
!529 = !{!528, !159, i64 24}
!530 = !{!393, !159, i64 24}
!531 = !{!"branch_weights", i32 223, i32 1242921}
!532 = distinct !{!532, !175, !176}
!533 = !{!"branch_weights", i32 28, i32 0}
!534 = distinct !{!534, !175, !176}
!535 = !{!"VP", i32 1, i64 38, i64 513, i64 16, i64 65, i64 11, i64 129, i64 6, i64 257, i64 5}
!536 = !{!"VP", i32 1, i64 38, i64 513, i64 38}
!537 = !{!"branch_weights", i32 151, i32 1}
!538 = !{!"branch_weights", i32 264533, i32 25455}
!539 = !{!"branch_weights", i32 7, i32 25448}
!540 = !{!"branch_weights", i32 6449, i32 18999}
!541 = !{!"branch_weights", i32 0, i32 25448}
!542 = !{!"branch_weights", i32 0, i32 6449}
!543 = !{!"branch_weights", i32 25455, i32 0}
!544 = distinct !{!544, !175, !176}
!545 = !{!"branch_weights", i32 1159801, i32 151}
!546 = distinct !{!546, !175, !176}
!547 = !{!355, !159, i64 32}
!548 = !{!"branch_weights", i32 151, i32 153}
!549 = distinct !{!549, !175, !176}
!550 = distinct !{!550, !175, !176}
!551 = distinct !{!551, !175, !176}
!552 = distinct !{!552, !175, !176}
!553 = !{!180, !164, i64 60}
!554 = !{!180, !164, i64 52}
!555 = distinct !{!555, !175, !176}
!556 = !{!"branch_weights", i32 151, i32 429581}
!557 = !{!"branch_weights", i32 107433, i32 38}
!558 = !{!"branch_weights", i32 0, i32 107433}
!559 = !{!180, !159, i64 16}
!560 = !{!"branch_weights", i32 107131, i32 302}
!561 = !{!180, !164, i64 168}
!562 = !{!"branch_weights", i32 106401, i32 730}
!563 = distinct !{!563, !175, !176}
!564 = !{!180, !164, i64 8}
!565 = !{!"branch_weights", i32 730, i32 664}
!566 = !{!"branch_weights", i32 664, i32 66}
!567 = distinct !{!567, !175, !176}
!568 = !{!"branch_weights", i32 302, i32 107131}
!569 = !{!180, !159, i64 184}
!570 = !{!"branch_weights", i32 39559, i32 67572}
!571 = !{!180, !164, i64 48}
!572 = distinct !{!572, !175, !176}
!573 = !{!574, !164, i64 0}
!574 = !{!"VEC_rtx_base", !164, i64 0, !164, i64 4, !160, i64 8}
!575 = !{!574, !164, i64 4}
!576 = !{}
!577 = distinct !{!577, !175, !176}
!578 = distinct !{!578, !175, !176}
!579 = distinct !{!579, !175, !176}
!580 = !{!"branch_weights", i32 1900, i32 114}
!581 = !{!"branch_weights", i32 38, i32 1976}
!582 = distinct !{!582, !175, !176}
!583 = !{!"VP", i32 1, i64 155654, i64 513, i64 155238, i64 257, i64 416}
!584 = !{!"branch_weights", i32 0, i32 155654}
!585 = !{!586, !164, i64 16}
!586 = !{!"bitmap_element_def", !159, i64 0, !159, i64 8, !164, i64 16, !160, i64 24}
!587 = !{!"branch_weights", i32 88819, i32 689512}
!588 = !{!"branch_weights", i32 776450, i32 1}
!589 = !{!"branch_weights", i32 6077526, i32 776450}
!590 = distinct !{!590, !175, !176}
!591 = !{!"branch_weights", i32 1, i32 88306}
!592 = !{!"branch_weights", i32 131756, i32 86939}
!593 = !{!"branch_weights", i32 88306, i32 130389}
!594 = distinct !{!594, !175, !176}
!595 = !{!586, !159, i64 0}
!596 = !{!"branch_weights", i32 1880, i32 86427}
!597 = distinct !{!597, !176}
!598 = !{!"branch_weights", i32 1880, i32 776451}
!599 = !{!"branch_weights", i32 155654, i32 622677}
!600 = distinct !{!600, !175, !176}
!601 = !{!"branch_weights", i32 155654, i32 0}
!602 = !{!"branch_weights", i32 321454, i32 68899}
!603 = !{!"branch_weights", i32 234698, i32 1}
!604 = !{!"branch_weights", i32 3210814, i32 234698}
!605 = !{!"branch_weights", i32 1, i32 320579}
!606 = !{!"branch_weights", i32 319706, i32 165800}
!607 = !{!"branch_weights", i32 320579, i32 164927}
!608 = !{!"branch_weights", i32 155654, i32 164926}
!609 = !{!"branch_weights", i32 155654, i32 234699}
!610 = !{!"branch_weights", i32 234699, i32 0}
!611 = !{!"branch_weights", i32 0, i32 234699}
!612 = distinct !{!612, !175, !176}
!613 = !{!"branch_weights", i32 676304, i32 217199, i32 0}
!614 = !{!615, !159, i64 0}
!615 = !{!"insn_chain", !159, i64 0, !159, i64 8, !159, i64 16, !159, i64 24, !164, i64 32, !164, i64 36, !164, i64 36, !164, i64 36, !164, i64 36, !524, i64 40, !524, i64 72, !159, i64 104, !164, i64 112, !165, i64 120}
!616 = !{!615, !159, i64 24}
!617 = !{!615, !164, i64 32}
!618 = !{!"branch_weights", i32 623676, i32 52628}
!619 = !{!"branch_weights", i32 1, i32 623675}
!620 = !{!"branch_weights", i32 392799, i32 3105310}
!621 = !{!"branch_weights", i32 226167, i32 166632}
!622 = !{!"branch_weights", i32 66796, i32 159371}
!623 = !{!"branch_weights", i32 166330, i32 302}
!624 = !{!"branch_weights", i32 302, i32 0}
!625 = !{!"branch_weights", i32 0, i32 166632}
!626 = !{!"branch_weights", i32 3331477, i32 166632}
!627 = !{!"branch_weights", i32 166632, i32 0}
!628 = !{!"branch_weights", i32 3498109, i32 0}
!629 = !{!"branch_weights", i32 0, i32 3498109}
!630 = !{!631, !159, i64 0}
!631 = !{!"simple_bitmap_def", !159, i64 0, !164, i64 8, !164, i64 12, !160, i64 16}
!632 = distinct !{!632, !175, !176}
!633 = !{!"branch_weights", i32 623675, i32 2874434}
!634 = distinct !{!634, !175, !176}
!635 = !{!370, !159, i64 16}
!636 = !{!"branch_weights", i32 64499, i32 559177}
!637 = !{!"branch_weights", i32 0, i32 559177}
!638 = !{!"branch_weights", i32 332569, i32 226608}
!639 = !{!"branch_weights", i32 217849, i32 114720}
!640 = !{!"branch_weights", i32 66665, i32 151184}
!641 = !{!"branch_weights", i32 114418, i32 302}
!642 = !{!"branch_weights", i32 0, i32 114720}
!643 = !{!"branch_weights", i32 368561, i32 190616}
!644 = !{!"branch_weights", i32 190314, i32 302}
!645 = !{!"branch_weights", i32 0, i32 190616}
!646 = !{!"branch_weights", i32 202, i32 558975}
!647 = !{!"branch_weights", i32 202, i32 0}
!648 = !{!"branch_weights", i32 0, i32 202}
!649 = !{!"branch_weights", i32 201, i32 1}
!650 = distinct !{!650, !175, !176}
!651 = !{!"branch_weights", i32 559177, i32 0}
!652 = distinct !{!652, !175, !176}
!653 = distinct !{!653, !175, !176}
!654 = !{!"branch_weights", i32 208244, i32 7225, i32 103064}
!655 = !{!"branch_weights", i32 52628, i32 155616}
!656 = !{!"branch_weights", i32 151, i32 1273981}
!657 = distinct !{!657, !175, !176}
!658 = !{!"branch_weights", i32 155662, i32 0, i32 23}
!659 = !{!"branch_weights", i32 46, i32 155616}
!660 = !{!"branch_weights", i32 151, i32 622589}
!661 = distinct !{!661, !175, !176}
!662 = distinct !{!662, !175, !176}
!663 = !{!"branch_weights", i32 291800, i32 202}
!664 = !{!"branch_weights", i32 1167857, i32 151}
!665 = distinct !{!665, !175, !176}
!666 = distinct !{!666, !175, !176}
!667 = !{!359, !159, i64 24}
!668 = !{!"branch_weights", i32 151, i32 622769}
!669 = distinct !{!669, !175, !176}
!670 = !{!"function_entry_count", i64 521906}
!671 = !{!"ira.c;no_equiv"}
!672 = !{!"function_entry_count", i64 18975}
!673 = !{!"ira.c;validate_equiv_mem"}
!674 = !{!"branch_weights", i32 18975, i32 0}
!675 = !{!"branch_weights", i32 0, i32 57540}
!676 = !{!"branch_weights", i32 43644, i32 13896}
!677 = !{!"branch_weights", i32 24675, i32 18969}
!678 = !{!"branch_weights", i32 0, i32 24675}
!679 = !{!"branch_weights", i32 24600, i32 69}
!680 = !{!"branch_weights", i32 69, i32 0}
!681 = !{!"branch_weights", i32 63, i32 6}
!682 = distinct !{!682, !175, !176}
!683 = distinct !{!683, !175, !176}
!684 = distinct !{!684, !175, !176}
!685 = distinct !{!685, !175, !176}
!686 = !{!"function_entry_count", i64 95642}
!687 = !{!"ira.c;equiv_init_movable_p"}
!688 = !{!"branch_weights", i32 70549, i32 25046, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 0, i32 0}
!689 = !{!"branch_weights", i32 0, i32 47}
!690 = !{!"branch_weights", i32 47, i32 0}
!691 = !{!"branch_weights", i32 1, i32 70454}
!692 = !{!"branch_weights", i32 90520, i32 45550, i32 0}
!693 = !{!"branch_weights", i32 94, i32 45456}
!694 = distinct !{!694, !175, !176}
!695 = !{!"branch_weights", i32 65616, i32 70454}
!696 = distinct !{!696, !175, !176}
!697 = !{!"function_entry_count", i64 21}
!698 = !{!"ira.c;contains_replace_regs"}
!699 = !{!"branch_weights", i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7}
!700 = !{!"branch_weights", i32 0, i32 14, i32 0}
!701 = !{!"branch_weights", i32 14, i32 0}
!702 = distinct !{!702, !175, !176}
!703 = !{!"branch_weights", i32 225, i32 223}
!704 = distinct !{!704, !175, !176}
!705 = !{!"function_entry_count", i64 7}
!706 = !{!"ira.c;memref_used_between_p"}
!707 = !{!"branch_weights", i32 223, i32 1}
!708 = distinct !{!708, !175, !176}
!709 = !{!"function_entry_count", i64 24675}
!710 = !{!"ira.c;validate_equiv_mem_from_store"}
!711 = !{!"branch_weights", i32 24675, i32 0}
!712 = !{!"function_entry_count", i64 49}
!713 = !{!"ira.c;memref_referenced_p"}
!714 = !{!"branch_weights", i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 21, i32 7, i32 7}
!715 = !{!"branch_weights", i32 14, i32 7}
!716 = !{!"branch_weights", i32 7, i32 21, i32 0}
!717 = !{!"branch_weights", i32 21, i32 0}
!718 = distinct !{!718, !175, !176}
!719 = distinct !{!719, !175, !176}
!720 = !{!"ira.c;init_live_subregs"}
