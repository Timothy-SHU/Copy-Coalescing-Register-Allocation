; ModuleID = 'ira.c'
source_filename = "ira.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.loops = type { i32, ptr, ptr, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
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
%struct.anon = type { i32, i32 }
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.equivalence = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.df_reg_info = type { ptr, i32 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.df_live_bb_info = type { ptr, ptr, ptr, ptr }
%struct.ira_allocno_iterator = type { i32 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.insn_chain = type { ptr, ptr, ptr, ptr, i32, i8, %struct.bitmap_head_def, %struct.bitmap_head_def, ptr, i32, i64 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

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
@eliminable_regset = dso_local local_unnamed_addr global i64 0, align 8
@ira_reg_mode_hard_regset = dso_local local_unnamed_addr global [53 x [87 x i64]] zeroinitializer, align 16
@ira_memory_move_cost = dso_local local_unnamed_addr global [87 x [27 x [2 x i16]]] zeroinitializer, align 16
@ira_register_move_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@ira_may_move_in_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@ira_may_move_out_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@ira_class_subset_p = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
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
@ira_no_alloc_regs = dso_local local_unnamed_addr global i64 0, align 8
@ira_reg_equiv_len = dso_local local_unnamed_addr global i32 0, align 4
@ira_reg_equiv_invariant_p = dso_local local_unnamed_addr global ptr null, align 8
@ira_reg_equiv_const = dso_local local_unnamed_addr global ptr null, align 8
@reg_renumber = dso_local local_unnamed_addr global ptr null, align 8
@ira_loops = dso_local global %struct.loops zeroinitializer, align 8
@ira_conflicts_p = dso_local local_unnamed_addr global i8 0, align 1
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
@print_class_cover.reg_class_names = internal unnamed_addr constant [27 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"CLOBBERED_REGS\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"SSE_FIRST_REG\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Class cover:\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"\0AClass translation:\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c" %s -> %s\0A\00", align 1
@move_cost = external local_unnamed_addr global [87 x ptr], align 16
@may_move_in_cost = external local_unnamed_addr global [87 x ptr], align 16
@may_move_out_cost = external local_unnamed_addr global [87 x ptr], align 16
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@fixed_reg_set = external local_unnamed_addr global i64, align 8
@no_unit_alloc_regs = internal unnamed_addr global i64 0, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@alloc_reg_class_subclasses = internal unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@setup_cover_and_important_classes.classes = internal unnamed_addr global [28 x i32] zeroinitializer, align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"ira.c\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cover_class_order = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@reg_class_subclasses = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@ira_setup_eliminable_regset.eliminables = internal unnamed_addr constant [4 x %struct.anon] [%struct.anon { i32 16, i32 7 }, %struct.anon { i32 16, i32 6 }, %struct.anon { i32 20, i32 7 }, %struct.anon { i32 20, i32 6 }], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.40 = private unnamed_addr constant [30 x i8] c"%s cannot be used in asm here\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@df = external local_unnamed_addr global ptr, align 8
@pass_ira = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.41, ptr @gate_ira, ptr @rest_of_handle_ira, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str.41 = private unnamed_addr constant [4 x i8] c"ira\00", align 1
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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.48 = private unnamed_addr constant [10 x i8] c"insn=%d, \00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"live_throughout: \00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"dead_or_set: \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate(i64 noundef %0) local_unnamed_addr #0 !prof !280 {
  %2 = tail call ptr @xmalloc(i64 noundef %0) #26
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_reallocate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !281 {
  %3 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %1) #26
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @ira_free(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !282 {
  tail call void @free(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate_bitmap() local_unnamed_addr #0 !prof !283 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ira_bitmap_obstack) #26
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ira_free_bitmap(ptr nocapture noundef readnone %0) local_unnamed_addr #5 !prof !284 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_print_disposition(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !281 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 12, i64 1, ptr %0)
  %3 = tail call i32 @max_reg_num() #26
  %4 = icmp sgt i32 %3, 53
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %52
  %8 = phi i64 [ 53, %5 ], [ %54, %52 ]
  %9 = phi i32 [ 0, %5 ], [ %53, %52 ]
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !285
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !285
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
  %23 = load i32, ptr %15, align 8, !tbaa !289
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !293
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %25) #27
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !294
  %29 = load ptr, ptr %28, align 8, !tbaa !295
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  br label %36

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !297
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %35, %33 ], [ %32, %31 ]
  %38 = phi ptr [ @.str.4, %33 ], [ @.str.3, %31 ]
  %39 = load i32, ptr %37, align 8, !tbaa !298
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %39) #27
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !299
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %42) #27
  br label %48

46:                                               ; preds = %36
  %47 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 4, i64 1, ptr %0)
  br label %48

48:                                               ; preds = %44, %46
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !285
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !300

52:                                               ; preds = %48, %7
  %53 = phi i32 [ %9, %7 ], [ %22, %48 ]
  %54 = add nuw nsw i64 %8, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %7, !llvm.loop !302

56:                                               ; preds = %52, %1
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_debug_disposition() local_unnamed_addr #0 !prof !281 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !285
  tail call void @ira_print_disposition(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_class_cover() local_unnamed_addr #7 !prof !281 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !285
  tail call fastcc void @print_class_cover(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_class_cover(ptr nocapture noundef %0) unnamed_addr #7 !prof !281 !PGOFuncName !303 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 13, i64 1, ptr %0)
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %13, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !298
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !285
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %11) #27
  %13 = add nuw nsw i64 %6, 1
  %14 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !304

17:                                               ; preds = %5, %1
  %18 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 20, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !285
  %23 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !298
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !285
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %22, ptr noundef %27) #27
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 27
  br i1 %30, label %31, label %19, !llvm.loop !305

31:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_register_move_cost(i32 noundef %0) local_unnamed_addr #0 !prof !306 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !307

6:                                                ; preds = %1
  tail call void @init_move_cost(i32 noundef %0) #26
  %7 = load ptr, ptr %3, align 8, !tbaa !285
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr %9, ptr %10, align 8, !tbaa !285
  %11 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %12 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  store ptr %11, ptr %12, align 8, !tbaa !285
  %13 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  %14 = load ptr, ptr %13, align 8, !tbaa !285
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %11, ptr noundef nonnull align 2 dereferenceable(1458) %14, i64 1458, i1 false)
  %15 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %16 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  store ptr %15, ptr %16, align 8, !tbaa !285
  %17 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  %18 = load ptr, ptr %17, align 8, !tbaa !285
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %15, ptr noundef nonnull align 2 dereferenceable(1458) %18, i64 1458, i1 false)
  br label %19

19:                                               ; preds = %8, %38
  %20 = phi i64 [ 0, %8 ], [ %39, %38 ]
  br label %21

21:                                               ; preds = %19, %35
  %22 = phi i64 [ 0, %19 ], [ %36, %35 ]
  %23 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %20, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !298
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !308

26:                                               ; preds = %21
  %27 = load ptr, ptr %12, align 8, !tbaa !285
  %28 = getelementptr inbounds [27 x i16], ptr %27, i64 %20, i64 %22
  store i16 0, ptr %28, align 2, !tbaa !309
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %22, i64 %20
  %31 = load i32, ptr %30, align 4, !tbaa !298
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !308

33:                                               ; preds = %29
  %34 = getelementptr inbounds [27 x i16], ptr %15, i64 %20, i64 %22
  store i16 0, ptr %34, align 2, !tbaa !309
  br label %35

35:                                               ; preds = %29, %33
  %36 = add nuw nsw i64 %22, 1
  %37 = icmp eq i64 %36, 27
  br i1 %37, label %38, label %21, !prof !311, !llvm.loop !312

38:                                               ; preds = %35
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, 27
  br i1 %40, label %41, label %19, !prof !313, !llvm.loop !314

41:                                               ; preds = %38
  ret void
}

; Function Attrs: optsize
declare void @init_move_cost(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_once() local_unnamed_addr #0 !prof !315 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_register_move_cost, i8 0, i64 696, i1 false), !tbaa !285
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_in_cost, i8 0, i64 696, i1 false), !tbaa !285
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_out_cost, i8 0, i64 696, i1 false), !tbaa !285
  tail call void @ira_init_costs_once() #26
  ret void
}

; Function Attrs: optsize
declare void @ira_init_costs_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init() local_unnamed_addr #0 !prof !315 {
  tail call fastcc void @free_register_move_costs() #27
  tail call fastcc void @setup_reg_mode_hard_regset() #27
  %1 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !298
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  tail call fastcc void @setup_alloc_regs(i8 noundef zeroext %3) #27
  tail call fastcc void @setup_class_subset_and_memory_move_costs() #27
  tail call fastcc void @find_reg_class_closure() #27
  tail call fastcc void @setup_hard_regno_cover_class() #27
  tail call fastcc void @setup_reg_class_nregs() #27
  tail call fastcc void @setup_prohibited_class_mode_regs() #27
  tail call void @ira_init_costs() #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_register_move_costs() unnamed_addr #0 !prof !316 !PGOFuncName !317 {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %14, %12 ]
  %3 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !318

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #27
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  %9 = load ptr, ptr %8, align 8, !tbaa !285
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !318

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #27
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr null, ptr %13, align 8, !tbaa !285
  store ptr null, ptr %3, align 8, !tbaa !285
  store ptr null, ptr %8, align 8, !tbaa !285
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 87
  br i1 %15, label %16, label %1, !prof !319, !llvm.loop !320

16:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_reg_mode_hard_regset() unnamed_addr #9 !prof !315 !PGOFuncName !321 {
  br label %1

1:                                                ; preds = %0, %26
  %2 = phi i64 [ 0, %0 ], [ %27, %26 ]
  br label %3

3:                                                ; preds = %1, %23
  %4 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %5 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %4, i64 %2
  store i64 0, ptr %5, align 8, !tbaa !322
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %2
  %7 = load i8, ptr %6, align 1, !tbaa !323
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9, !prof !324

9:                                                ; preds = %3
  %10 = zext i8 %7 to i64
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ 0, %9 ], [ %21, %20 ]
  %13 = phi i64 [ %10, %9 ], [ %14, %20 ]
  %14 = add nsw i64 %13, -1
  %15 = add nsw i64 %14, %4
  %16 = icmp slt i64 %15, 53
  br i1 %16, label %17, label %20, !prof !325

17:                                               ; preds = %11
  %18 = shl nuw nsw i64 1, %15
  %19 = or i64 %12, %18
  store i64 %19, ptr %5, align 8, !tbaa !322
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i64 [ %12, %11 ], [ %19, %17 ]
  %22 = icmp ugt i64 %13, 1
  br i1 %22, label %11, label %23, !prof !326, !llvm.loop !327

23:                                               ; preds = %20, %3
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 53
  br i1 %25, label %26, label %3, !prof !328, !llvm.loop !329

26:                                               ; preds = %23
  %27 = add nuw nsw i64 %2, 1
  %28 = icmp eq i64 %27, 87
  br i1 %28, label %29, label %1, !prof !330, !llvm.loop !331

29:                                               ; preds = %26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_alloc_regs(i8 noundef zeroext %0) unnamed_addr #10 !prof !315 !PGOFuncName !332 {
  %2 = load i64, ptr @fixed_reg_set, align 8, !tbaa !322
  %3 = icmp eq i8 %0, 0
  %4 = or i64 %2, 64
  %5 = select i1 %3, i64 %4, i64 %2, !prof !333
  store i64 %5, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  tail call fastcc void @setup_class_hard_regs() #27
  tail call fastcc void @setup_available_class_regs() #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_class_subset_and_memory_move_costs() unnamed_addr #0 !prof !315 !PGOFuncName !334 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2
  %4 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  store i16 32767, ptr %4, align 2, !tbaa !309
  store i16 32767, ptr %3, align 4, !tbaa !309
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 87
  br i1 %6, label %7, label %1, !prof !330, !llvm.loop !335

7:                                                ; preds = %1, %50
  %8 = phi i64 [ %51, %50 ], [ 26, %1 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %34, label %10, !prof !336

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i32
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi i64 [ 0, %10 ], [ %32, %31 ]
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 @ix86_memory_move_cost(i32 noundef %14, i32 noundef %11, i32 noundef 0) #26
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %13
  %18 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %13, i64 %8
  store i16 %16, ptr %18, align 4, !tbaa !309
  %19 = tail call i32 @ix86_memory_move_cost(i32 noundef %14, i32 noundef %11, i32 noundef 1) #26
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %13, i64 %8, i64 1
  store i16 %20, ptr %21, align 2, !tbaa !309
  %22 = load i16, ptr %17, align 4, !tbaa !309
  %23 = load i16, ptr %18, align 4, !tbaa !309
  %24 = icmp sgt i16 %22, %23
  br i1 %24, label %25, label %26, !prof !337

25:                                               ; preds = %12
  store i16 %23, ptr %17, align 4, !tbaa !309
  br label %26

26:                                               ; preds = %25, %12
  %27 = getelementptr inbounds [2 x i16], ptr %17, i64 0, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !309
  %29 = icmp sgt i16 %28, %20
  br i1 %29, label %30, label %31, !prof !338

30:                                               ; preds = %26
  store i16 %20, ptr %27, align 2, !tbaa !309
  br label %31

31:                                               ; preds = %26, %30
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, 87
  br i1 %33, label %34, label %12, !prof !339, !llvm.loop !340

34:                                               ; preds = %31, %7
  %35 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %8
  %36 = load i64, ptr %35, align 8, !tbaa !322
  %37 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  br label %40

40:                                               ; preds = %34, %40
  %41 = phi i64 [ 26, %34 ], [ %48, %40 ]
  %42 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !322
  %44 = and i64 %43, %38
  %45 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %39, i64 noundef %44) #27, !range !341
  %46 = zext nneg i8 %45 to i32
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %8, i64 %41
  store i32 %46, ptr %47, align 4, !tbaa !298
  %48 = add nsw i64 %41, -1
  %49 = icmp eq i64 %41, 0
  br i1 %49, label %50, label %40, !prof !342, !llvm.loop !343

50:                                               ; preds = %40
  %51 = add nsw i64 %8, -1
  %52 = icmp eq i64 %8, 0
  br i1 %52, label %53, label %7, !prof !344, !llvm.loop !345

53:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reg_class_closure() unnamed_addr #0 !prof !315 !PGOFuncName !346 {
  tail call fastcc void @setup_reg_subclasses() #27
  tail call fastcc void @setup_cover_and_important_classes() #27
  tail call fastcc void @setup_class_translate() #27
  tail call fastcc void @reorder_important_classes() #27
  tail call fastcc void @setup_reg_class_relations() #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_hard_regno_cover_class() unnamed_addr #9 !prof !315 !PGOFuncName !347 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %2 = icmp sgt i32 %1, 0
  %3 = zext nneg i32 %1 to i64
  br label %4

4:                                                ; preds = %0, %19
  %5 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %6 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %5
  store i32 0, ptr %6, align 4, !tbaa !298
  br i1 %2, label %10, label %19, !prof !348

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %19, label %10, !prof !349, !llvm.loop !350

10:                                               ; preds = %4, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %12 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !298
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %14, i64 %5
  %16 = load i16, ptr %15, align 2, !tbaa !309
  %17 = icmp sgt i16 %16, -1
  br i1 %17, label %18, label %7, !prof !351

18:                                               ; preds = %10
  store i32 %13, ptr %6, align 4, !tbaa !298
  br label %19

19:                                               ; preds = %7, %4, %18
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %4, !prof !352, !llvm.loop !353

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_class_nregs() unnamed_addr #0 !prof !315 !PGOFuncName !354 {
  store i32 -1, ptr @ira_max_nregs, align 4, !tbaa !298
  br label %1

1:                                                ; preds = %0, %33
  %2 = phi i64 [ 0, %0 ], [ %34, %33 ]
  %3 = trunc i64 %2 to i32
  br label %4

4:                                                ; preds = %1, %30
  %5 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %3, i32 noundef 13) #26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !355

8:                                                ; preds = %4
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %10 = load i8, ptr %9, align 1, !tbaa !323
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 10
  %13 = select i1 %12, i32 2, i32 1
  br label %24

14:                                               ; preds = %4
  %15 = icmp eq i64 %5, 40
  br i1 %15, label %20, label %16, !prof !356

16:                                               ; preds = %14
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %18 = load i8, ptr %17, align 1, !tbaa !323
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %14, %16
  %21 = phi i32 [ %19, %16 ], [ 12, %14 ]
  %22 = add nuw nsw i32 %21, 3
  %23 = lshr i32 %22, 2
  br label %24

24:                                               ; preds = %20, %8
  %25 = phi i32 [ %13, %8 ], [ %23, %20 ]
  %26 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %2, i64 %5
  store i32 %25, ptr %26, align 4, !tbaa !298
  %27 = load i32, ptr @ira_max_nregs, align 4, !tbaa !298
  %28 = icmp slt i32 %27, %25
  br i1 %28, label %29, label %30, !prof !357

29:                                               ; preds = %24
  store i32 %25, ptr @ira_max_nregs, align 4, !tbaa !298
  br label %30

30:                                               ; preds = %24, %29
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 87
  br i1 %32, label %33, label %4, !prof !358, !llvm.loop !359

33:                                               ; preds = %30
  %34 = add nuw nsw i64 %2, 1
  %35 = icmp eq i64 %34, 27
  br i1 %35, label %36, label %1, !prof !344, !llvm.loop !360

36:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_prohibited_class_mode_regs() unnamed_addr #0 !prof !315 !PGOFuncName !361 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %40, !prof !362

3:                                                ; preds = %0, %35
  %4 = phi i64 [ %36, %35 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !298
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  br label %9

9:                                                ; preds = %3, %32
  %10 = phi i64 [ 0, %3 ], [ %33, %32 ]
  %11 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %7, i64 %10
  store i64 0, ptr %11, align 8, !tbaa !322
  %12 = load i32, ptr %8, align 4, !tbaa !298
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32, !prof !363

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  %16 = trunc i64 %10 to i32
  br label %17

17:                                               ; preds = %14, %30
  %18 = phi i64 [ %15, %14 ], [ %19, %30 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !309
  %22 = sext i16 %21 to i32
  %23 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %22, i32 noundef %16) #26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30, !prof !364

25:                                               ; preds = %17
  %26 = zext nneg i32 %22 to i64
  %27 = shl nuw i64 1, %26
  %28 = load i64, ptr %11, align 8, !tbaa !322
  %29 = or i64 %28, %27
  store i64 %29, ptr %11, align 8, !tbaa !322
  br label %30

30:                                               ; preds = %17, %25
  %31 = icmp ugt i64 %18, 1
  br i1 %31, label %17, label %32, !prof !365, !llvm.loop !366

32:                                               ; preds = %30, %9
  %33 = add nuw nsw i64 %10, 1
  %34 = icmp eq i64 %33, 87
  br i1 %34, label %35, label %9, !prof !319, !llvm.loop !367

35:                                               ; preds = %32
  %36 = add nuw nsw i64 %4, 1
  %37 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %3, label %40, !prof !368, !llvm.loop !369

40:                                               ; preds = %35, %0
  ret void
}

; Function Attrs: optsize
declare void @ira_init_costs() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @setup_class_hard_regs() unnamed_addr #11 !prof !315 !PGOFuncName !370 {
  %1 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %2 = xor i64 %1, -1
  br label %3

3:                                                ; preds = %0, %41
  %4 = phi i64 [ 26, %0 ], [ %43, %41 ]
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !322
  %7 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %4
  store i16 -1, ptr %7, align 2, !tbaa !309
  %8 = and i64 %6, %2
  br label %9

9:                                                ; preds = %3, %36
  %10 = phi i64 [ 0, %3 ], [ %39, %36 ]
  %11 = phi i64 [ 0, %3 ], [ %38, %36 ]
  %12 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %13 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !298
  %15 = zext nneg i32 %14 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36, !prof !371

19:                                               ; preds = %9
  %20 = or i64 %16, %11
  %21 = and i64 %16, %8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23, !prof !372

23:                                               ; preds = %19
  %24 = trunc i32 %12 to i16
  %25 = sext i32 %14 to i64
  %26 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %4, i64 %25
  store i16 %24, ptr %26, align 2, !tbaa !309
  %27 = trunc i32 %14 to i16
  %28 = add nsw i32 %12, 1
  br label %29

29:                                               ; preds = %19, %23
  %30 = phi i32 [ %12, %23 ], [ %14, %19 ]
  %31 = phi ptr [ @ira_class_hard_regs, %23 ], [ @ira_class_hard_reg_index, %19 ]
  %32 = phi i16 [ %27, %23 ], [ -1, %19 ]
  %33 = phi i32 [ %28, %23 ], [ %12, %19 ]
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds [27 x [53 x i16]], ptr %31, i64 0, i64 %4, i64 %34
  store i16 %32, ptr %35, align 2, !tbaa !309
  br label %36

36:                                               ; preds = %29, %9
  %37 = phi i32 [ %12, %9 ], [ %33, %29 ]
  %38 = phi i64 [ %11, %9 ], [ %20, %29 ]
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, 53
  br i1 %40, label %41, label %9, !prof !373, !llvm.loop !374

41:                                               ; preds = %36
  %42 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %4
  store i32 %37, ptr %42, align 4, !tbaa !298
  %43 = add nsw i64 %4, -1
  %44 = icmp eq i64 %4, 0
  br i1 %44, label %45, label %3, !prof !344, !llvm.loop !375

45:                                               ; preds = %41
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_available_class_regs() unnamed_addr #9 !prof !315 !PGOFuncName !376 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_available_class_regs, i8 0, i64 108, i1 false)
  %1 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %2 = xor i64 %1, -1
  br label %3

3:                                                ; preds = %0, %20
  %4 = phi i64 [ 0, %0 ], [ %21, %20 ]
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !322
  %7 = and i64 %6, %2
  %8 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %4
  br label %9

9:                                                ; preds = %3, %17
  %10 = phi i64 [ 0, %3 ], [ %18, %17 ]
  %11 = shl nuw nsw i64 1, %10
  %12 = and i64 %11, %7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14, !prof !372

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4, !tbaa !298
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %8, align 4, !tbaa !298
  br label %17

17:                                               ; preds = %9, %14
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, 53
  br i1 %19, label %20, label %9, !prof !373, !llvm.loop !377

20:                                               ; preds = %17
  %21 = add nuw nsw i64 %4, 1
  %22 = icmp eq i64 %21, 27
  br i1 %22, label %23, label %3, !prof !344, !llvm.loop !378

23:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !379 !PGOFuncName !380 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_reg_subclasses() unnamed_addr #10 !prof !315 !PGOFuncName !381 {
  br label %1

1:                                                ; preds = %32, %0
  %2 = phi i64 [ 0, %0 ], [ %33, %32 ]
  br label %3

3:                                                ; preds = %25, %1
  %4 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %5 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %27, %25 ]
  %6 = icmp ult <4 x i64> %5, <i64 27, i64 27, i64 27, i64 27>
  %7 = extractelement <4 x i1> %6, i64 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %4
  store i32 27, ptr %9, align 4, !tbaa !298
  br label %10

10:                                               ; preds = %8, %3
  %11 = extractelement <4 x i1> %6, i64 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %13
  store i32 27, ptr %14, align 4, !tbaa !298
  br label %15

15:                                               ; preds = %12, %10
  %16 = extractelement <4 x i1> %6, i64 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = or disjoint i64 %4, 2
  %19 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %18
  store i32 27, ptr %19, align 4, !tbaa !298
  br label %20

20:                                               ; preds = %17, %15
  %21 = extractelement <4 x i1> %6, i64 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or disjoint i64 %4, 3
  %24 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %23
  store i32 27, ptr %24, align 4, !tbaa !298
  br label %25

25:                                               ; preds = %22, %20
  %26 = add i64 %4, 4
  %27 = add <4 x i64> %5, <i64 4, i64 4, i64 4, i64 4>
  %28 = icmp eq i64 %26, 28
  br i1 %28, label %32, label %3, !prof !382, !llvm.loop !383

29:                                               ; preds = %32
  %30 = load i64, ptr @no_unit_alloc_regs, align 8
  %31 = xor i64 %30, -1
  br label %35

32:                                               ; preds = %25
  %33 = add nuw nsw i64 %2, 1
  %34 = icmp eq i64 %33, 27
  br i1 %34, label %29, label %1, !prof !344, !llvm.loop !386

35:                                               ; preds = %29, %66
  %36 = phi i64 [ 0, %29 ], [ %67, %66 ]
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %66, label %38, !prof !336

38:                                               ; preds = %35
  %39 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !322
  %41 = and i64 %40, %31
  %42 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %41) #27, !range !341
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %66, !prof !387

44:                                               ; preds = %38
  %45 = trunc i64 %36 to i32
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i64 [ 0, %44 ], [ %64, %63 ]
  %48 = icmp eq i64 %36, %47
  br i1 %48, label %63, label %49, !prof !388

49:                                               ; preds = %46
  %50 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %47
  %51 = load i64, ptr %50, align 8, !tbaa !322
  %52 = and i64 %51, %31
  %53 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %41, i64 noundef %52) #27, !range !341
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55, !prof !389

55:                                               ; preds = %49
  %56 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %47
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi ptr [ %56, %55 ], [ %61, %57 ]
  %59 = load i32, ptr %58, align 4, !tbaa !298
  %60 = icmp eq i32 %59, 27
  %61 = getelementptr inbounds i32, ptr %58, i64 1
  br i1 %60, label %62, label %57, !prof !390, !llvm.loop !391

62:                                               ; preds = %57
  store i32 %45, ptr %58, align 4, !tbaa !298
  br label %63

63:                                               ; preds = %62, %49, %46
  %64 = add nuw nsw i64 %47, 1
  %65 = icmp eq i64 %64, 27
  br i1 %65, label %66, label %46, !prof !392, !llvm.loop !393

66:                                               ; preds = %63, %38, %35
  %67 = add nuw nsw i64 %36, 1
  %68 = icmp eq i64 %67, 27
  br i1 %68, label %69, label %35, !prof !344, !llvm.loop !394

69:                                               ; preds = %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_cover_and_important_classes() unnamed_addr #0 !prof !315 !PGOFuncName !395 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !396
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3, !prof !408

3:                                                ; preds = %0
  %4 = tail call ptr %1() #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !409

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4, !tbaa !298
  %8 = icmp eq i32 %7, 27
  br i1 %8, label %17, label %9, !prof !410

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %6 ]
  %11 = phi i32 [ %15, %9 ], [ %7, %6 ]
  %12 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %10
  store i32 %11, ptr %12, align 4, !tbaa !298
  %13 = add nuw nsw i64 %10, 1
  %14 = getelementptr inbounds i32, ptr %4, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !298
  %16 = icmp eq i32 %15, 27
  br i1 %16, label %17, label %9, !prof !411, !llvm.loop !412

17:                                               ; preds = %9, %6
  %18 = phi i64 [ 0, %6 ], [ %13, %9 ]
  %19 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %18
  store i32 27, ptr %19, align 4, !tbaa !298
  br label %20

20:                                               ; preds = %0, %3, %17
  %21 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !298
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %69, !prof !408

23:                                               ; preds = %20, %62
  %24 = phi i64 [ %64, %62 ], [ 0, %20 ]
  %25 = phi i32 [ %63, %62 ], [ 0, %20 ]
  %26 = icmp eq i64 %24, 0
  br i1 %26, label %62, label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i32 %31, 1
  %29 = icmp eq i32 %28, 33
  br i1 %29, label %35, label %30, !llvm.loop !413

30:                                               ; preds = %23, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %32 = tail call i32 @regclass_for_constraint(i32 noundef %31) #26
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %24, %33
  br i1 %34, label %57, label %27

35:                                               ; preds = %27
  %36 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %24
  %37 = load i64, ptr %36, align 8, !tbaa !322
  %38 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  br label %41

41:                                               ; preds = %35, %50
  %42 = phi i64 [ 0, %35 ], [ %51, %50 ]
  %43 = icmp eq i64 %24, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %42
  %46 = load i64, ptr %45, align 8, !tbaa !322
  %47 = and i64 %46, %39
  %48 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %40, i64 noundef %47) #27, !range !341
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %41
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, 27
  br i1 %52, label %53, label %41, !llvm.loop !414

53:                                               ; preds = %44, %50
  %54 = phi i64 [ %42, %44 ], [ 27, %50 ]
  %55 = and i64 %54, 4294967295
  %56 = icmp ult i64 %55, %24
  br i1 %56, label %62, label %57

57:                                               ; preds = %30, %53
  %58 = add nsw i32 %25, 1
  %59 = sext i32 %25 to i64
  %60 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %59
  %61 = trunc i64 %24 to i32
  store i32 %61, ptr %60, align 4, !tbaa !298
  br label %62

62:                                               ; preds = %57, %53, %23
  %63 = phi i32 [ %25, %23 ], [ %25, %53 ], [ %58, %57 ]
  %64 = add nuw nsw i64 %24, 1
  %65 = icmp eq i64 %64, 28
  br i1 %65, label %66, label %23, !llvm.loop !415

66:                                               ; preds = %62
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %67
  store i32 27, ptr %68, align 4, !tbaa !298
  br label %69

69:                                               ; preds = %66, %20
  store i32 0, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %70 = load i32, ptr @setup_cover_and_important_classes.classes, align 16, !tbaa !298
  %71 = icmp eq i32 %70, 27
  br i1 %71, label %72, label %75, !prof !410

72:                                               ; preds = %69
  %73 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %74 = xor i64 %73, -1
  br label %113

75:                                               ; preds = %69, %106
  %76 = phi i64 [ %107, %106 ], [ 0, %69 ]
  %77 = phi i32 [ %109, %106 ], [ %70, %69 ]
  %78 = icmp eq i64 %76, 0
  br i1 %78, label %92, label %79, !prof !416

79:                                               ; preds = %75, %89
  %80 = phi i64 [ %90, %89 ], [ 0, %75 ]
  %81 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !298
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %89, label %83, !prof !417

83:                                               ; preds = %79
  %84 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !298
  %86 = tail call i32 @reg_classes_intersect_p(i32 noundef %77, i32 noundef %85) #26
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !307

88:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 792, ptr noundef nonnull @.str.39) #26
  br label %89

89:                                               ; preds = %79, %83, %88
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %79, !prof !418, !llvm.loop !419

92:                                               ; preds = %89, %75
  %93 = sext i32 %77 to i64
  %94 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !322
  %96 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %98) #27, !range !341
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %106, !prof !420

101:                                              ; preds = %92
  %102 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %104
  store i32 %77, ptr %105, align 4, !tbaa !298
  br label %106

106:                                              ; preds = %92, %101
  %107 = add nuw i64 %76, 1
  %108 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !298
  %110 = icmp eq i32 %109, 27
  br i1 %110, label %111, label %75, !prof !411, !llvm.loop !421

111:                                              ; preds = %106
  %112 = load i32, ptr @ira_reg_class_cover_size, align 4
  br label %113

113:                                              ; preds = %72, %111
  %114 = phi i64 [ %74, %72 ], [ %97, %111 ]
  %115 = phi i32 [ 0, %72 ], [ %112, %111 ]
  store i32 0, ptr @ira_important_classes_num, align 4, !tbaa !298
  %116 = icmp sgt i32 %115, 0
  %117 = zext nneg i32 %115 to i64
  br label %164

118:                                              ; preds = %160
  br i1 %116, label %119, label %170, !prof !422

119:                                              ; preds = %118
  %120 = sext i32 %161 to i64
  %121 = shl nsw i64 %120, 2
  %122 = getelementptr i8, ptr @ira_important_classes, i64 %121
  %123 = zext nneg i32 %115 to i64
  %124 = shl nuw nsw i64 %123, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %122, ptr nonnull align 16 @ira_reg_class_cover, i64 %124, i1 false), !tbaa !298
  %125 = add i32 %161, %115
  store i32 %125, ptr @ira_important_classes_num, align 4, !tbaa !298
  br label %170

126:                                              ; preds = %164, %167
  %127 = phi i64 [ %168, %167 ], [ %165, %164 ]
  %128 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !322
  %130 = and i64 %129, %114
  %131 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %130) #27, !range !341
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %160, !prof !423

133:                                              ; preds = %126
  br i1 %116, label %134, label %167, !prof !424

134:                                              ; preds = %133, %147
  %135 = phi i64 [ %151, %147 ], [ 0, %133 ]
  %136 = phi i8 [ %150, %147 ], [ 0, %133 ]
  %137 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %135
  %138 = load i32, ptr %137, align 4, !tbaa !298
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !322
  %142 = and i64 %141, %114
  %143 = icmp eq i64 %127, %139
  br i1 %143, label %160, label %144, !prof !425

144:                                              ; preds = %134
  %145 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %130, i64 noundef %142) #27, !range !341
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %160, !prof !426

147:                                              ; preds = %144
  %148 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %130, i64 noundef %142) #27, !range !341
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i8 %136, i8 1, !prof !427
  %151 = add nuw nsw i64 %135, 1
  %152 = icmp eq i64 %151, %117
  br i1 %152, label %153, label %134, !prof !428, !llvm.loop !429

153:                                              ; preds = %147
  %154 = icmp eq i8 %150, 0
  br i1 %154, label %160, label %155, !prof !430

155:                                              ; preds = %153
  %156 = add nsw i32 %166, 1
  store i32 %156, ptr @ira_important_classes_num, align 4, !tbaa !298
  %157 = sext i32 %166 to i64
  %158 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %157
  %159 = trunc i64 %127 to i32
  store i32 %159, ptr %158, align 4, !tbaa !298
  br label %160

160:                                              ; preds = %126, %144, %134, %155, %153
  %161 = phi i32 [ %156, %155 ], [ %166, %153 ], [ %166, %134 ], [ %166, %144 ], [ %166, %126 ]
  %162 = add nuw nsw i64 %127, 1
  %163 = icmp eq i64 %162, 27
  br i1 %163, label %118, label %164, !prof !344, !llvm.loop !431

164:                                              ; preds = %160, %113
  %165 = phi i64 [ %162, %160 ], [ 0, %113 ]
  %166 = phi i32 [ %161, %160 ], [ 0, %113 ]
  br label %126

167:                                              ; preds = %133
  %168 = add nuw nsw i64 %127, 1
  %169 = icmp eq i64 %168, 27
  br i1 %169, label %170, label %126, !prof !344, !llvm.loop !431

170:                                              ; preds = %167, %119, %118
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @setup_class_translate() unnamed_addr #13 !prof !315 !PGOFuncName !432 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_class_translate, i8 0, i64 108, i1 false), !tbaa !298
  %1 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !298
  %2 = icmp eq i32 %1, 1
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  br i1 %2, label %4, label %33, !prof !408

4:                                                ; preds = %0
  %5 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %6 = xor i64 %5, -1
  %7 = icmp sgt i32 %3, 0
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %4, %30
  %10 = phi i64 [ 0, %4 ], [ %31, %30 ]
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !322
  %13 = and i64 %12, %6
  br i1 %7, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %10
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %18 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !298
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !322
  %23 = and i64 %22, %6
  %24 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %13, i64 noundef %23) #27, !range !341
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 %19, ptr %15, align 4, !tbaa !298
  br label %27

27:                                               ; preds = %26, %16
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %30, label %16, !llvm.loop !433

30:                                               ; preds = %27, %9
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, 27
  br i1 %32, label %33, label %9, !llvm.loop !434

33:                                               ; preds = %30, %0
  %34 = icmp sgt i32 %3, 0
  br i1 %34, label %35, label %37, !prof !362

35:                                               ; preds = %33
  %36 = zext nneg i32 %3 to i64
  br label %41

37:                                               ; preds = %62, %33
  %38 = load i64, ptr @no_unit_alloc_regs, align 8
  %39 = xor i64 %38, -1
  %40 = zext nneg i32 %3 to i64
  br label %66

41:                                               ; preds = %35, %62
  %42 = phi i64 [ 0, %35 ], [ %64, %62 ]
  %43 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !298
  %45 = zext i32 %44 to i64
  br i1 %2, label %62, label %46, !prof !435

46:                                               ; preds = %41
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !298
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %62, label %50, !prof !436

50:                                               ; preds = %46, %58
  %51 = phi i32 [ %60, %58 ], [ %48, %46 ]
  %52 = phi ptr [ %59, %58 ], [ %47, %46 ]
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !298
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58, !prof !437

57:                                               ; preds = %50
  store i32 %44, ptr %54, align 4, !tbaa !298
  br label %58

58:                                               ; preds = %50, %57
  %59 = getelementptr inbounds i32, ptr %52, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !298
  %61 = icmp eq i32 %60, 27
  br i1 %61, label %62, label %50, !prof !438, !llvm.loop !439

62:                                               ; preds = %58, %41, %46
  %63 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %45
  store i32 %44, ptr %63, align 4, !tbaa !298
  %64 = add nuw nsw i64 %42, 1
  %65 = icmp eq i64 %64, %36
  br i1 %65, label %37, label %41, !prof !440, !llvm.loop !441

66:                                               ; preds = %37, %116
  %67 = phi i64 [ 0, %37 ], [ %117, %116 ]
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %116, label %69, !prof !336

69:                                               ; preds = %66
  %70 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %67
  %71 = load i32, ptr %70, align 4, !tbaa !298
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %116, !prof !442

73:                                               ; preds = %69
  br i1 %34, label %74, label %114, !prof !443

74:                                               ; preds = %73
  %75 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %67
  %76 = load i64, ptr %75, align 8, !tbaa !322
  br label %77

77:                                               ; preds = %74, %109
  %78 = phi i64 [ 0, %74 ], [ %112, %109 ]
  %79 = phi i32 [ 2147483647, %74 ], [ %111, %109 ]
  %80 = phi i32 [ 0, %74 ], [ %110, %109 ]
  %81 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %78
  %82 = load i32, ptr %81, align 4, !tbaa !298
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !322
  %86 = and i64 %76, %85
  %87 = and i64 %86, %39
  %88 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %87) #27, !range !341
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %109, !prof !444

90:                                               ; preds = %77, %90
  %91 = phi i64 [ %101, %90 ], [ 0, %77 ]
  %92 = phi i32 [ %100, %90 ], [ 2147483647, %77 ]
  %93 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %91, i64 %67
  %94 = load i16, ptr %93, align 4, !tbaa !309
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %91, i64 %67, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !309
  %98 = sext i16 %97 to i32
  %99 = add nsw i32 %98, %95
  %100 = tail call i32 @llvm.smin.i32(i32 %92, i32 %99)
  %101 = add nuw nsw i64 %91, 1
  %102 = icmp eq i64 %101, 87
  br i1 %102, label %103, label %90, !prof !445, !llvm.loop !446

103:                                              ; preds = %90
  %104 = icmp eq i32 %80, 0
  %105 = icmp sgt i32 %79, %100
  %106 = select i1 %104, i1 true, i1 %105
  %107 = select i1 %106, i32 %82, i32 %80, !prof !447
  %108 = select i1 %106, i32 %100, i32 %79, !prof !447
  br label %109

109:                                              ; preds = %103, %77
  %110 = phi i32 [ %80, %77 ], [ %107, %103 ]
  %111 = phi i32 [ %79, %77 ], [ %108, %103 ]
  %112 = add nuw nsw i64 %78, 1
  %113 = icmp eq i64 %112, %40
  br i1 %113, label %114, label %77, !prof !448, !llvm.loop !449

114:                                              ; preds = %109, %73
  %115 = phi i32 [ 0, %73 ], [ %110, %109 ]
  store i32 %115, ptr %70, align 4, !tbaa !298
  br label %116

116:                                              ; preds = %66, %69, %114
  %117 = add nuw nsw i64 %67, 1
  %118 = icmp eq i64 %117, 27
  br i1 %118, label %119, label %66, !prof !344, !llvm.loop !450

119:                                              ; preds = %116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reorder_important_classes() unnamed_addr #0 !prof !315 !PGOFuncName !451 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cover_class_order, i8 -1, i64 108, i1 false), !tbaa !298
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14, !prof !362

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %12, %5 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !298
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %9
  %11 = trunc i64 %6 to i32
  store i32 %11, ptr %10, align 4, !tbaa !298
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, %4
  br i1 %13, label %14, label %5, !prof !440, !llvm.loop !452

14:                                               ; preds = %5, %0
  %15 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !298
  %16 = sext i32 %15 to i64
  tail call void @spec_qsort(ptr noundef nonnull @ira_important_classes, i64 noundef %16, i64 noundef 4, ptr noundef nonnull @comp_reg_classes_func) #26
  %17 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !298
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30, !prof !362

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !298
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x i32], ptr @ira_important_class_nums, i64 0, i64 %25
  %27 = trunc i64 %22 to i32
  store i32 %27, ptr %26, align 4, !tbaa !298
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !prof !453, !llvm.loop !454

30:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_class_relations() unnamed_addr #0 !prof !315 !PGOFuncName !455 {
  %1 = alloca [27 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %1, i8 0, i64 27, i1 false)
  %2 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !298
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14, !prof !362

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %12, %6 ]
  %8 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !298
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %10
  store i8 1, ptr %11, align 1, !tbaa !323
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !prof !453, !llvm.loop !456

14:                                               ; preds = %6, %0
  br label %15

15:                                               ; preds = %14, %136
  %16 = phi i64 [ %137, %136 ], [ 0, %14 ]
  %17 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %16
  store i32 27, ptr %17, align 4, !tbaa !298
  %18 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %16
  %19 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %16
  br label %20

20:                                               ; preds = %15, %133
  %21 = phi i64 [ 0, %15 ], [ %134, %133 ]
  %22 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %16, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !323
  %23 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %16, i64 %21
  store i32 0, ptr %23, align 4, !tbaa !298
  %24 = load i64, ptr %18, align 8, !tbaa !322
  %25 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %21
  %29 = load i64, ptr %28, align 8, !tbaa !322
  %30 = and i64 %29, %26
  %31 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %27) #27, !range !341
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33, !prof !457

33:                                               ; preds = %20
  %34 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %30) #27, !range !341
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36, !prof !458

36:                                               ; preds = %33
  %37 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %16, i64 0
  %38 = load i32, ptr %37, align 4, !tbaa !298
  %39 = icmp eq i32 %38, 27
  br i1 %39, label %52, label %40, !prof !459

40:                                               ; preds = %36, %47
  %41 = phi i64 [ %48, %47 ], [ 0, %36 ]
  %42 = phi i32 [ %50, %47 ], [ %38, %36 ]
  %43 = load i32, ptr %23, align 4, !tbaa !298
  %44 = tail call i32 @reg_class_subset_p(i32 noundef %43, i32 noundef %42) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !460

46:                                               ; preds = %40
  store i32 %42, ptr %23, align 4, !tbaa !298
  br label %47

47:                                               ; preds = %40, %46
  %48 = add nuw i64 %41, 1
  %49 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %16, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !298
  %51 = icmp eq i32 %50, 27
  br i1 %51, label %52, label %40, !prof !461

52:                                               ; preds = %47, %36
  %53 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %16, i64 %21
  %54 = load i32, ptr %53, align 4, !tbaa !298
  %55 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %16, i64 %21
  store i32 %54, ptr %55, align 4, !tbaa !298
  br label %133

56:                                               ; preds = %33, %20
  %57 = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 noundef %27, i64 noundef %30) #27, !range !341
  store i8 %57, ptr %22, align 1, !tbaa !323
  %58 = load i8, ptr %19, align 1, !tbaa !323
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60, !prof !462

60:                                               ; preds = %56
  %61 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %21
  %62 = load i8, ptr %61, align 1, !tbaa !323
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %74, label %64, !prof !463

64:                                               ; preds = %60
  %65 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %27, i64 noundef %30) #27, !range !341
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67, !prof !464

67:                                               ; preds = %64, %67
  %68 = phi ptr [ %71, %67 ], [ %17, %64 ]
  %69 = load i32, ptr %68, align 4, !tbaa !298
  %70 = icmp eq i32 %69, 27
  %71 = getelementptr inbounds i32, ptr %68, i64 1
  br i1 %70, label %72, label %67, !prof !465, !llvm.loop !466

72:                                               ; preds = %67
  %73 = trunc i64 %21 to i32
  store i32 %73, ptr %68, align 4, !tbaa !298
  store i32 27, ptr %71, align 4, !tbaa !298
  br label %74

74:                                               ; preds = %72, %64, %60, %56
  %75 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %16, i64 %21
  store i32 0, ptr %75, align 4, !tbaa !298
  %76 = and i64 %27, %29
  %77 = or i64 %29, %24
  %78 = and i64 %77, %26
  %79 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !298
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %133, !prof !467

81:                                               ; preds = %74
  %82 = zext nneg i32 %79 to i64
  br label %83

83:                                               ; preds = %81, %129
  %84 = phi i32 [ 0, %81 ], [ %130, %129 ]
  %85 = phi i32 [ 0, %81 ], [ %110, %129 ]
  %86 = phi i64 [ 0, %81 ], [ %131, %129 ]
  %87 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !298
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !322
  %92 = and i64 %91, %26
  %93 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %76) #27, !range !341
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %109, label %95, !prof !468

95:                                               ; preds = %83
  %96 = sext i32 %85 to i64
  %97 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !322
  %99 = and i64 %98, %26
  %100 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %99) #27, !range !341
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %108, label %102, !prof !469

102:                                              ; preds = %95
  %103 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %92, i64 noundef %99) #27, !range !341
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105, !prof !470

105:                                              ; preds = %102
  %106 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %91, i64 noundef %98) #27, !range !341
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108, !prof !471

108:                                              ; preds = %105, %95
  store i32 %88, ptr %23, align 4, !tbaa !298
  br label %109

109:                                              ; preds = %102, %105, %108, %83
  %110 = phi i32 [ %85, %102 ], [ %85, %105 ], [ %88, %108 ], [ %85, %83 ]
  %111 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %78) #27, !range !341
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %129, label %113, !prof !472

113:                                              ; preds = %109
  %114 = sext i32 %84 to i64
  %115 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !322
  %117 = and i64 %116, %26
  %118 = icmp eq i32 %84, 0
  br i1 %118, label %128, label %119, !prof !473

119:                                              ; preds = %113
  %120 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %117, i64 noundef %92) #27, !range !341
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %129, label %122, !prof !474

122:                                              ; preds = %119
  %123 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %117, i64 noundef %92) #27, !range !341
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125, !prof !475

125:                                              ; preds = %122
  %126 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %91, i64 noundef %116) #27, !range !341
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128, !prof !476

128:                                              ; preds = %125, %122, %113
  store i32 %88, ptr %75, align 4, !tbaa !298
  br label %129

129:                                              ; preds = %109, %128, %125, %119
  %130 = phi i32 [ %84, %109 ], [ %88, %128 ], [ %84, %125 ], [ %84, %119 ]
  %131 = add nuw nsw i64 %86, 1
  %132 = icmp eq i64 %131, %82
  br i1 %132, label %133, label %83, !prof !477, !llvm.loop !478

133:                                              ; preds = %129, %74, %52
  %134 = add nuw nsw i64 %21, 1
  %135 = icmp eq i64 %134, 27
  br i1 %135, label %136, label %20, !prof !342, !llvm.loop !479

136:                                              ; preds = %133
  %137 = add nuw nsw i64 %16, 1
  %138 = icmp eq i64 %137, 27
  br i1 %138, label %139, label %15, !prof !344, !llvm.loop !480

139:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_empty_p(i64 noundef %0) unnamed_addr #5 !prof !481 !PGOFuncName !482 {
  %2 = icmp eq i64 %0, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !483 !PGOFuncName !484 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @comp_reg_classes_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !485 !PGOFuncName !486 {
  %3 = load i32, ptr %0, align 4, !tbaa !298
  %4 = load i32, ptr %1, align 4, !tbaa !298
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !298
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !298
  %11 = icmp ne i32 %7, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %23, !prof !487

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !298
  %18 = zext i32 %10 to i64
  %19 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !298
  %21 = sub nsw i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !488

23:                                               ; preds = %14, %2
  %24 = sub nsw i32 %7, %10
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi i32 [ %24, %23 ], [ %21, %14 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_intersect_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !489 !PGOFuncName !490 {
  %3 = and i64 %1, %0
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_once() local_unnamed_addr #0 !prof !315 {
  tail call void @ira_finish_costs_once() #26
  tail call fastcc void @free_register_move_costs() #27
  ret void
}

; Function Attrs: optsize
declare void @ira_finish_costs_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_setup_eliminable_regset() local_unnamed_addr #0 !prof !491 {
  %1 = alloca [53 x i8], align 16
  %2 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !298
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4, !prof !492

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !285
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 20
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 524288
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr @flag_stack_check, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 28), align 8
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !493
  %21 = tail call zeroext i8 %20() #26
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %19, %4, %0
  %24 = phi i1 [ true, %4 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i8
  store i8 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !494
  %26 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !322
  store i64 %26, ptr @ira_no_alloc_regs, align 8, !tbaa !322
  store i64 0, ptr @eliminable_regset, align 8, !tbaa !322
  call fastcc void @compute_regs_asm_clobbered(ptr noundef nonnull %1) #27
  br label %27

27:                                               ; preds = %23, %75
  %28 = phi i64 [ 0, %23 ], [ %76, %75 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !503
  %30 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %28
  %31 = load i32, ptr %30, align 8, !tbaa !504
  %32 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %28, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !506
  %34 = tail call zeroext i8 %29(i32 noundef %31, i32 noundef %33) #26
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36, !prof !507

36:                                               ; preds = %27
  %37 = and i64 %28, 1
  %38 = icmp eq i64 %37, 0
  %39 = sext i32 %31 to i64
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !323
  %42 = icmp eq i8 %41, 0
  br i1 %38, label %43, label %54, !prof !508

43:                                               ; preds = %36
  br i1 %42, label %60, label %69, !prof !509

44:                                               ; preds = %27
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !323
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %70, !prof !509

49:                                               ; preds = %44
  %50 = zext nneg i32 %31 to i64
  %51 = shl nuw i64 1, %50
  %52 = load i64, ptr @eliminable_regset, align 8, !tbaa !322
  %53 = or i64 %52, %51
  store i64 %53, ptr @eliminable_regset, align 8, !tbaa !322
  br label %65

54:                                               ; preds = %36
  br i1 %42, label %55, label %74, !prof !509

55:                                               ; preds = %54
  %56 = zext nneg i32 %31 to i64
  %57 = shl nuw i64 1, %56
  %58 = load i64, ptr @eliminable_regset, align 8, !tbaa !322
  %59 = or i64 %58, %57
  store i64 %59, ptr @eliminable_regset, align 8, !tbaa !322
  br label %75

60:                                               ; preds = %43
  %61 = zext nneg i32 %31 to i64
  %62 = shl nuw i64 1, %61
  %63 = load i64, ptr @eliminable_regset, align 8, !tbaa !322
  %64 = or i64 %63, %62
  store i64 %64, ptr @eliminable_regset, align 8, !tbaa !322
  br i1 %24, label %65, label %75, !prof !510

65:                                               ; preds = %49, %60
  %66 = phi i64 [ %51, %49 ], [ %62, %60 ]
  %67 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !322
  %68 = or i64 %67, %66
  store i64 %68, ptr @ira_no_alloc_regs, align 8, !tbaa !322
  br label %75

69:                                               ; preds = %43
  br i1 %24, label %70, label %74

70:                                               ; preds = %44, %69
  %71 = phi i64 [ %39, %69 ], [ %45, %44 ]
  %72 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !285
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef %73) #26
  br label %75

74:                                               ; preds = %54, %69
  tail call void @df_set_regs_ever_live(i32 noundef %31, i8 noundef zeroext 1) #26
  br label %75

75:                                               ; preds = %55, %70, %74, %60, %65
  %76 = add nuw nsw i64 %28, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %27, !prof !511, !llvm.loop !512

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %1, i64 6
  %80 = load i8, ptr %79, align 2, !tbaa !323
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88, !prof !492

82:                                               ; preds = %78
  %83 = load i64, ptr @eliminable_regset, align 8, !tbaa !322
  %84 = or i64 %83, 64
  store i64 %84, ptr @eliminable_regset, align 8, !tbaa !322
  br i1 %24, label %85, label %92, !prof !492

85:                                               ; preds = %82
  %86 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !322
  %87 = or i64 %86, 64
  store i64 %87, ptr @ira_no_alloc_regs, align 8, !tbaa !322
  br label %92

88:                                               ; preds = %78
  br i1 %24, label %89, label %91

89:                                               ; preds = %88
  %90 = load ptr, ptr getelementptr inbounds ([53 x ptr], ptr @reg_names, i64 0, i64 6), align 16, !tbaa !285
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef %90) #26
  br label %92

91:                                               ; preds = %88
  tail call void @df_set_regs_ever_live(i32 noundef 6, i8 noundef zeroext 1) #26
  br label %92

92:                                               ; preds = %89, %91, %82, %85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_regs_asm_clobbered(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !491 !PGOFuncName !513 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %0, i8 0, i64 53, i1 false)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !285
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !514
  %5 = load ptr, ptr %4, align 8, !tbaa !516
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !518
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !520
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %95, label %11, !prof !521

11:                                               ; preds = %1, %86
  %12 = phi ptr [ %87, %86 ], [ %2, %1 ]
  %13 = phi ptr [ %89, %86 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !323
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !323
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19, !prof !410

19:                                               ; preds = %11, %80
  %20 = phi ptr [ %82, %80 ], [ %17, %11 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !323
  %22 = load ptr, ptr %21, align 8, !tbaa !522
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !323
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %84, label %26, !prof !524

26:                                               ; preds = %19
  %27 = tail call fastcc zeroext i8 @insn_contains_asm(ptr noundef nonnull %20) #27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29, !prof !525

29:                                               ; preds = %26
  %30 = load ptr, ptr @df, align 8, !tbaa !285
  %31 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !526
  %33 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !323
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !285
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !529
  %40 = load ptr, ptr %39, align 8, !tbaa !285
  %41 = icmp eq ptr %40, null
  br i1 %41, label %80, label %42

42:                                               ; preds = %29, %76
  %43 = phi ptr [ %78, %76 ], [ %40, %29 ]
  %44 = phi ptr [ %77, %76 ], [ %39, %29 ]
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !323
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !323
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 39
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !323
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %48, %54
  %59 = phi i32 [ %57, %54 ], [ %51, %48 ]
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %46 to i64
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %62, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !323
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %46, -1
  %68 = add nsw i32 %67, %66
  %69 = icmp ugt i32 %46, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %58, %70
  %71 = phi i32 [ %74, %70 ], [ %46, %58 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  store i8 1, ptr %73, align 1, !tbaa !323
  %74 = add i32 %71, 1
  %75 = icmp ugt i32 %74, %68
  br i1 %75, label %76, label %70, !llvm.loop !531

76:                                               ; preds = %70, %58, %42
  %77 = getelementptr inbounds ptr, ptr %44, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !285
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %42, !llvm.loop !532

80:                                               ; preds = %76, %29, %26
  %81 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !323
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %19, !prof !533, !llvm.loop !534

84:                                               ; preds = %80, %19
  %85 = load ptr, ptr @cfun, align 8, !tbaa !285
  br label %86

86:                                               ; preds = %84, %11
  %87 = phi ptr [ %85, %84 ], [ %12, %11 ]
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !518
  %90 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !514
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !520
  %94 = icmp eq ptr %89, %93
  br i1 %94, label %95, label %11, !prof !535, !llvm.loop !536

95:                                               ; preds = %86, %1
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insn_contains_asm(ptr noundef %0) unnamed_addr #0 !prof !537 !PGOFuncName !538 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !285
  %3 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @insn_contains_asm_1, ptr noundef null) #26
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @insn_contains_asm_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #14 !prof !539 !PGOFuncName !540 {
  %3 = load ptr, ptr %0, align 8, !tbaa !285
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !541

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_elimination(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !542 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !285
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !514
  %6 = load ptr, ptr %5, align 8, !tbaa !516
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !518
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !520
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %33, label %12, !prof !543

12:                                               ; preds = %2, %24
  %13 = phi ptr [ %26, %24 ], [ %8, %2 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !544
  %16 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %15) #27
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !545
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %0) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !547

21:                                               ; preds = %12
  %22 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %18, i32 noundef %0) #26
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %1) #26
  br label %24

24:                                               ; preds = %21, %12
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !518
  %27 = load ptr, ptr @cfun, align 8, !tbaa !285
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !514
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !520
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %33, label %12, !prof !548, !llvm.loop !549

33:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #14 !prof !550 !PGOFuncName !551 {
  %2 = load ptr, ptr @df, align 8, !tbaa !285
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !552
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !554

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !555
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_ira() #5 !prof !491 !PGOFuncName !556 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_ira() #0 !prof !491 !PGOFuncName !557 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !285
  tail call fastcc void @ira(ptr noundef %1) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira(ptr noundef %0) unnamed_addr #0 !prof !491 !PGOFuncName !558 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !492

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 148) #26
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i32, ptr @flag_caller_saves, align 4, !tbaa !298
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !559

8:                                                ; preds = %5
  tail call void @init_caller_save() #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !298
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %15, label %12, !prof !492

12:                                               ; preds = %9
  %13 = add i32 %10, -10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !285
  br label %15

15:                                               ; preds = %9, %12
  %16 = phi i32 [ %13, %12 ], [ %10, %9 ]
  %17 = phi ptr [ %14, %12 ], [ %0, %9 ]
  store i32 %16, ptr @internal_flag_ira_verbose, align 4
  store ptr %17, ptr @ira_dump_file, align 8, !tbaa !285
  %18 = load i32, ptr @optimize, align 4, !tbaa !298
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr @ira_conflicts_p, align 1, !tbaa !323
  tail call fastcc void @setup_prohibited_mode_move_regs() #27
  tail call void @df_note_add_problem() #26
  %21 = load i32, ptr @optimize, align 4, !tbaa !298
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24, !prof !559

23:                                               ; preds = %15
  tail call void @df_live_add_problem() #26
  tail call void @df_live_set_all_dirty() #26
  br label %24

24:                                               ; preds = %23, %15
  tail call void @df_analyze() #26
  %25 = tail call i32 @df_clear_flags(i32 noundef 16) #26
  tail call void @regstat_init_n_sets_and_refs() #26
  tail call void @regstat_compute_ri() #26
  %26 = load i32, ptr @warn_clobbered, align 4, !tbaa !298
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !492

28:                                               ; preds = %24
  tail call void @generate_setjmp_warnings() #26
  br label %29

29:                                               ; preds = %28, %24
  %30 = tail call i32 @leaf_function_p() #26
  store i32 %30, ptr @current_function_is_leaf, align 4, !tbaa !298
  %31 = tail call zeroext i8 @resize_reg_info() #26
  %32 = icmp ne i8 %31, 0
  %33 = load i32, ptr @flag_ira_loop_pressure, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %38, !prof !560

36:                                               ; preds = %29
  %37 = load ptr, ptr @ira_dump_file, align 8, !tbaa !285
  tail call void @ira_set_pseudo_classes(ptr noundef %37) #26
  br label %38

38:                                               ; preds = %36, %29
  %39 = tail call fastcc i32 @update_equiv_regs() #27, !range !561
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @ira_bitmap_obstack) #26
  %40 = load i32, ptr @optimize, align 4, !tbaa !298
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42, !prof !559

42:                                               ; preds = %38
  %43 = tail call i32 @max_reg_num() #26
  store i32 %43, ptr @max_regno, align 4, !tbaa !298
  store i32 %43, ptr @ira_reg_equiv_len, align 4, !tbaa !298
  %44 = sext i32 %43 to i64
  %45 = tail call ptr @ira_allocate(i64 noundef %44) #27
  store ptr %45, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !285
  %46 = load i32, ptr @max_regno, align 4, !tbaa !298
  %47 = sext i32 %46 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 0, i64 %47, i1 false)
  %48 = load i32, ptr @max_regno, align 4, !tbaa !298
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 3
  %51 = tail call ptr @ira_allocate(i64 noundef %50) #27
  store ptr %51, ptr @ira_reg_equiv_const, align 8, !tbaa !285
  %52 = load i32, ptr @max_regno, align 4, !tbaa !298
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 %54, i1 false)
  tail call fastcc void @find_reg_equiv_invariant_const() #27
  %55 = icmp eq i32 %39, 0
  br i1 %55, label %66, label %56, !prof !492

56:                                               ; preds = %42
  %57 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @timevar_push_1(i32 noundef 119) #26
  br label %60

60:                                               ; preds = %59, %56
  %61 = tail call ptr @get_insns() #26
  tail call void @rebuild_jump_labels(ptr noundef %61) #26
  %62 = tail call zeroext i8 @purge_all_dead_edges() #26
  %63 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void @timevar_pop_1(i32 noundef 119) #26
  br label %66

66:                                               ; preds = %42, %65, %60, %38
  %67 = tail call i32 @max_reg_num() #26
  tail call void @ira_setup_eliminable_regset() #27
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_shuffle_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_store_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_load_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_additional_jumps_num, align 4, !tbaa !298
  store i32 0, ptr @ira_move_loops_num, align 4, !tbaa !298
  %68 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #26
  tail call void @record_loop_exits() #26
  %69 = load ptr, ptr @cfun, align 8, !tbaa !285
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 4
  store ptr @ira_loops, ptr %70, align 8, !tbaa !562
  %71 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !298
  %72 = icmp sgt i32 %71, 0
  %73 = load ptr, ptr @ira_dump_file, align 8
  %74 = icmp ne ptr %73, null
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %78, !prof !560

76:                                               ; preds = %66
  %77 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 16, i64 1, ptr nonnull %73)
  br label %78

78:                                               ; preds = %76, %66
  %79 = load i32, ptr @optimize, align 4, !tbaa !298
  %80 = icmp ne i32 %79, 0
  %81 = load i32, ptr @flag_ira_region, align 4
  %82 = add i32 %81, -1
  %83 = icmp ult i32 %82, 2
  %84 = select i1 %80, i1 %83, i1 false
  %85 = zext i1 %84 to i8
  %86 = tail call zeroext i8 @ira_build(i8 noundef zeroext %85) #26
  %87 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !298
  %88 = tail call fastcc zeroext i8 @too_high_register_pressure_p() #27, !range !341
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90, !prof !492

90:                                               ; preds = %78
  store i32 0, ptr @flag_ira_share_spill_slots, align 4, !tbaa !298
  br label %91

91:                                               ; preds = %90, %78
  tail call void @ira_color() #26
  %92 = load i32, ptr @ira_max_point, align 4, !tbaa !298
  tail call void @ira_emit(i8 noundef zeroext %86) #26
  %93 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !323
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %112, label %95, !prof !559

95:                                               ; preds = %91
  %96 = tail call i32 @max_reg_num() #26
  store i32 %96, ptr @max_regno, align 4, !tbaa !298
  %97 = icmp eq i8 %86, 0
  br i1 %97, label %98, label %99, !prof !563

98:                                               ; preds = %95
  tail call void @ira_initiate_assign() #26
  br label %112

99:                                               ; preds = %95
  tail call fastcc void @expand_reg_info(i32 noundef %67) #27
  tail call fastcc void @setup_preferred_alternate_classes_for_new_pseudos(i32 noundef %67) #27
  %100 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !298
  %101 = icmp sgt i32 %100, 0
  %102 = load ptr, ptr @ira_dump_file, align 8
  %103 = icmp ne ptr %102, null
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %107, !prof !564

105:                                              ; preds = %99
  %106 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 14, i64 1, ptr nonnull %102)
  br label %107

107:                                              ; preds = %105, %99
  tail call void @ira_flattening(i32 noundef %67, i32 noundef %92) #26
  tail call void @df_analyze() #26
  %108 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #26
  tail call void @record_loop_exits() #26
  %109 = load ptr, ptr @cfun, align 8, !tbaa !285
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 4
  store ptr @ira_loops, ptr %110, align 8, !tbaa !562
  tail call fastcc void @setup_allocno_assignment_flags() #27
  tail call void @ira_initiate_assign() #26
  %111 = load i32, ptr @max_regno, align 4, !tbaa !298
  tail call void @ira_reassign_conflict_allocnos(i32 noundef %111) #26
  br label %112

112:                                              ; preds = %98, %107, %91
  tail call fastcc void @setup_reg_renumber() #27
  tail call fastcc void @calculate_allocation_cost() #27
  %113 = tail call ptr @get_insns() #26
  %114 = tail call i32 @max_reg_num() #26
  %115 = tail call i32 @delete_trivially_dead_insns(ptr noundef %113, i32 noundef %114) #26
  %116 = tail call i32 @max_reg_num() #26
  store i32 %116, ptr @max_regno, align 4, !tbaa !298
  tail call fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %116) #27
  %117 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %118 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %117) #27
  %119 = load i32, ptr @max_regno, align 4, !tbaa !298
  %120 = sext i32 %119 to i64
  %121 = shl nsw i64 %120, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %118, i8 0, i64 %121, i1 false)
  %122 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %123 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %122) #27
  store ptr %123, ptr @reg_equiv_memory_loc, align 8, !tbaa !285
  %124 = load i32, ptr @max_regno, align 4, !tbaa !298
  %125 = icmp eq i32 %124, %67
  br i1 %125, label %128, label %126, !prof !563

126:                                              ; preds = %112
  tail call void @regstat_free_n_sets_and_refs() #26
  tail call void @regstat_free_ri() #26
  tail call void @regstat_init_n_sets_and_refs() #26
  tail call void @regstat_compute_ri() #26
  %127 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !285
  br label %128

128:                                              ; preds = %126, %112
  %129 = phi ptr [ %127, %126 ], [ %123, %112 ]
  tail call void @allocate_initial_values(ptr noundef %129) #26
  %130 = load i32, ptr @ira_overall_cost, align 4, !tbaa !298
  %131 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !323
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %141, label %133, !prof !559

133:                                              ; preds = %128
  tail call fastcc void @fix_reg_equiv_init() #27
  store i32 0, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !298
  %134 = load i32, ptr @max_regno, align 4, !tbaa !298
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 48
  %137 = tail call ptr @ira_allocate(i64 noundef %136) #27
  store ptr %137, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !285
  %138 = load i32, ptr @max_regno, align 4, !tbaa !298
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %137, i8 0, i64 %140, i1 false)
  br label %141

141:                                              ; preds = %128, %133
  %142 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %148, label %144, !prof !492

144:                                              ; preds = %141
  tail call void @timevar_pop_1(i32 noundef 148) #26
  %145 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %148, label %147, !prof !409

147:                                              ; preds = %144
  tail call void @timevar_push_1(i32 noundef 149) #26
  br label %148

148:                                              ; preds = %141, %147, %144
  %149 = tail call i32 @df_set_flags(i32 noundef 16) #26
  tail call fastcc void @build_insn_chain() #27
  %150 = tail call ptr @get_insns() #26
  %151 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !323
  %152 = zext i8 %151 to i32
  %153 = tail call i32 @reload(ptr noundef %150, i32 noundef %152) #26
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  store i32 %155, ptr @reload_completed, align 4, !tbaa !298
  tail call void @finish_subregs_of_mode() #26
  %156 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %162, label %158, !prof !492

158:                                              ; preds = %148
  tail call void @timevar_pop_1(i32 noundef 149) #26
  %159 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %162, label %161, !prof !409

161:                                              ; preds = %158
  tail call void @timevar_push_1(i32 noundef 148) #26
  br label %162

162:                                              ; preds = %148, %161, %158
  %163 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !323
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165, !prof !559

165:                                              ; preds = %162
  %166 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !285
  tail call void @ira_free(ptr noundef %166) #27
  tail call void @ira_finish_assign() #26
  br label %167

167:                                              ; preds = %165, %162
  %168 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !298
  %169 = icmp sgt i32 %168, 0
  %170 = load ptr, ptr @ira_dump_file, align 8
  %171 = icmp ne ptr %170, null
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %178, !prof !560

173:                                              ; preds = %167
  %174 = load i32, ptr @ira_overall_cost, align 4, !tbaa !298
  %175 = icmp eq i32 %130, %174
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %170, ptr noundef nonnull @.str.44, i32 noundef %174) #27
  br label %178

178:                                              ; preds = %176, %173, %167
  tail call void @ira_destroy() #26
  store i32 %87, ptr @flag_ira_share_spill_slots, align 4, !tbaa !298
  tail call void @flow_loops_free(ptr noundef nonnull @ira_loops) #26
  tail call void @free_dominance_info(i32 noundef 1) #26
  %179 = load ptr, ptr @cfun, align 8, !tbaa !285
  %180 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !514
  %182 = load ptr, ptr %181, align 8, !tbaa !285
  %183 = icmp eq ptr %182, null
  br i1 %183, label %190, label %184, !prof !521

184:                                              ; preds = %178, %184
  %185 = phi ptr [ %188, %184 ], [ %182, %178 ]
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 3
  store ptr null, ptr %186, align 8, !tbaa !565
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !285
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %184, !prof !566, !llvm.loop !567

190:                                              ; preds = %184, %178
  %191 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 4
  store ptr null, ptr %191, align 8, !tbaa !562
  tail call void @regstat_free_ri() #26
  tail call void @regstat_free_n_sets_and_refs() #26
  %192 = load i32, ptr @optimize, align 4, !tbaa !298
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194, !prof !559

194:                                              ; preds = %190
  %195 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #26
  %196 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !285
  tail call void @ira_free(ptr noundef %196) #27
  %197 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !285
  tail call void @ira_free(ptr noundef %197) #27
  br label %198

198:                                              ; preds = %194, %190
  tail call void @bitmap_obstack_release(ptr noundef nonnull @ira_bitmap_obstack) #26
  tail call void @df_finish_pass(i8 noundef zeroext 1) #26
  %199 = load i32, ptr @optimize, align 4, !tbaa !298
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %201, label %202, !prof !492

201:                                              ; preds = %198
  tail call void @df_live_add_problem() #26
  br label %202

202:                                              ; preds = %201, %198
  tail call void @df_scan_alloc(ptr noundef null) #26
  tail call void @df_scan_blocks() #26
  %203 = load i32, ptr @optimize, align 4, !tbaa !298
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %206, label %205, !prof !559

205:                                              ; preds = %202
  tail call void @df_analyze() #26
  br label %206

206:                                              ; preds = %202, %205
  %207 = load i8, ptr @timevar_enable, align 1, !tbaa !323
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %210, label %209, !prof !492

209:                                              ; preds = %206
  tail call void @timevar_pop_1(i32 noundef 148) #26
  br label %210

210:                                              ; preds = %209, %206
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_caller_save() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_prohibited_mode_move_regs() unnamed_addr #0 !prof !491 !PGOFuncName !568 {
  %1 = load i1, ptr @ira_prohibited_mode_move_regs_initialized_p, align 1
  br i1 %1, label %46, label %2, !prof !569

2:                                                ; preds = %0
  store i1 true, ptr @ira_prohibited_mode_move_regs_initialized_p, align 1
  %3 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #26
  %4 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #26
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %3, ptr noundef %4) #26
  %6 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %5, i32 noundef -1, ptr noundef null) #26
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1
  br label %10

10:                                               ; preds = %2, %43
  %11 = phi i64 [ 0, %2 ], [ %44, %43 ]
  %12 = getelementptr inbounds [87 x i64], ptr @ira_prohibited_mode_move_regs, i64 0, i64 %11
  store i64 -1, ptr %12, align 8, !tbaa !322
  %13 = trunc i64 %11 to i32
  %14 = trunc i64 %11 to i32
  %15 = shl i32 %14, 16
  br label %16

16:                                               ; preds = %10, %40
  %17 = phi i64 [ 0, %10 ], [ %41, %40 ]
  %18 = trunc i64 %17 to i32
  %19 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %18, i32 noundef %13) #26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21, !prof !570

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #27
  tail call void @df_ref_change_reg_with_loc(i32 noundef %22, i32 noundef %18, ptr noundef %3) #26
  store i32 %18, ptr %7, align 8, !tbaa !323
  %23 = load i32, ptr %3, align 8
  %24 = and i32 %23, -16711681
  %25 = or disjoint i32 %24, %15
  store i32 %25, ptr %3, align 8
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %4) #27
  tail call void @df_ref_change_reg_with_loc(i32 noundef %26, i32 noundef %18, ptr noundef %4) #26
  store i32 %18, ptr %8, align 8, !tbaa !323
  %27 = load i32, ptr %4, align 8
  %28 = and i32 %27, -16711681
  %29 = or disjoint i32 %28, %15
  store i32 %29, ptr %4, align 8
  store i32 -1, ptr %9, align 8, !tbaa !323
  tail call fastcc void @recog_memoized(ptr noundef %6) #27
  %30 = load i32, ptr %9, align 8, !tbaa !323
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %40, label %32, !prof !571

32:                                               ; preds = %21
  tail call void @extract_insn(ptr noundef nonnull %6) #26
  %33 = tail call i32 @constrain_operands(i32 noundef 1) #26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35, !prof !572

35:                                               ; preds = %32
  %36 = shl nuw nsw i64 1, %17
  %37 = xor i64 %36, -1
  %38 = load i64, ptr %12, align 8, !tbaa !322
  %39 = and i64 %38, %37
  store i64 %39, ptr %12, align 8, !tbaa !322
  br label %40

40:                                               ; preds = %32, %21, %16, %35
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, 53
  br i1 %42, label %43, label %16, !prof !328, !llvm.loop !573

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 1
  %45 = icmp eq i64 %44, 87
  br i1 %45, label %46, label %10, !prof !330, !llvm.loop !574

46:                                               ; preds = %43, %0
  ret void
}

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_live_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_live_set_all_dirty() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @regstat_init_n_sets_and_refs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @regstat_compute_ri() local_unnamed_addr #2

; Function Attrs: optsize
declare void @generate_setjmp_warnings() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @leaf_function_p() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @resize_reg_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @update_equiv_regs() unnamed_addr #0 !prof !491 !PGOFuncName !575 {
  store i1 false, ptr @recorded_label_ref, align 4
  %1 = load i32, ptr @max_regno, align 4, !tbaa !298
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 40) #26
  store ptr %3, ptr @reg_equiv, align 8, !tbaa !285
  %4 = load i32, ptr @max_regno, align 4, !tbaa !298
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %6) #26
  store ptr %7, ptr @reg_equiv_init, align 8, !tbaa !285
  %8 = load i32, ptr @max_regno, align 4, !tbaa !298
  store i32 %8, ptr @reg_equiv_init_size, align 4, !tbaa !298
  tail call void @init_alias_analysis() #26
  %9 = load ptr, ptr @cfun, align 8, !tbaa !285
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !514
  %12 = load ptr, ptr %11, align 8, !tbaa !516
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !518
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !520
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %360, label %29, !prof !521

18:                                               ; preds = %351
  %19 = load ptr, ptr @cfun, align 8, !tbaa !285
  br label %20

20:                                               ; preds = %18, %29
  %21 = phi ptr [ %19, %18 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !518
  %24 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !514
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !520
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %360, label %29, !prof !535, !llvm.loop !576

29:                                               ; preds = %0, %20
  %30 = phi ptr [ %21, %20 ], [ %9, %0 ]
  %31 = phi ptr [ %23, %20 ], [ %14, %0 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !577
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !323
  %36 = load ptr, ptr %35, align 8, !tbaa !323
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !578
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !323
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %20, label %42, !prof !579

42:                                               ; preds = %29, %351
  %43 = phi ptr [ %353, %351 ], [ %36, %29 ]
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %351, !prof !580

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !323
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !581

52:                                               ; preds = %48, %60
  %53 = phi ptr [ %62, %60 ], [ %50, %48 ]
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 16711680
  %56 = icmp eq i32 %55, 131072
  br i1 %56, label %57, label %60, !prof !582

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !323
  tail call void @no_equiv(ptr noundef %59, ptr nonnull poison, ptr poison) #27
  br label %60

60:                                               ; preds = %52, %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !323
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %52, !prof !583, !llvm.loop !584

64:                                               ; preds = %60
  %65 = load i32, ptr %43, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %81, !prof !585

69:                                               ; preds = %48, %64
  %70 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !323
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %84, label %75, !prof !586

75:                                               ; preds = %69
  %76 = tail call ptr @single_set_2(ptr noundef nonnull %43, ptr noundef nonnull %71) #26
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78, !prof !422

78:                                               ; preds = %75
  %79 = load ptr, ptr %70, align 8, !tbaa !323
  %80 = load i32, ptr %79, align 8
  br label %84

81:                                               ; preds = %64, %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !323
  tail call void @note_stores(ptr noundef %83, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %351

84:                                               ; preds = %78, %69
  %85 = phi i32 [ %80, %78 ], [ %72, %69 ]
  %86 = phi ptr [ %79, %78 ], [ %71, %69 ]
  %87 = phi ptr [ %76, %78 ], [ %71, %69 ]
  %88 = and i32 %85, 65535
  %89 = icmp eq i32 %88, 15
  br i1 %89, label %90, label %109, !prof !587

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !323
  %93 = load i32, ptr %92, align 8, !tbaa !588
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %109, !prof !590

95:                                               ; preds = %90
  %96 = zext nneg i32 %93 to i64
  br label %97

97:                                               ; preds = %95, %107
  %98 = phi i64 [ %96, %95 ], [ %99, %107 ]
  %99 = add nsw i64 %98, -1
  %100 = load ptr, ptr %70, align 8, !tbaa !323
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !323
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %102, i64 0, i32 1, i64 %99
  %104 = load ptr, ptr %103, align 8, !tbaa !285
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %107, label %106, !prof !591

106:                                              ; preds = %97
  tail call void @note_stores(ptr noundef %104, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %107

107:                                              ; preds = %106, %97
  %108 = icmp ugt i64 %98, 1
  br i1 %108, label %97, label %109, !prof !592, !llvm.loop !593

109:                                              ; preds = %107, %90, %84
  %110 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !323
  %112 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !323
  %114 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef null) #26
  %115 = icmp eq ptr %114, null
  br i1 %115, label %137, label %116, !prof !594

116:                                              ; preds = %109
  %117 = load i32, ptr %111, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %121, label %120, !prof !595

120:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2390, ptr noundef nonnull @.str.39) #26
  br label %121

121:                                              ; preds = %116, %120
  %122 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %123 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.equivalence, ptr %123, i64 %124, i32 4
  store i32 1, ptr %125, align 4, !tbaa !596
  %126 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !323
  %128 = tail call i32 @rtx_equal_p(ptr noundef %113, ptr noundef %127) #26
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130, !prof !598

130:                                              ; preds = %121
  %131 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %132 = getelementptr inbounds ptr, ptr %131, i64 %124
  %133 = load ptr, ptr %132, align 8, !tbaa !285
  %134 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %133) #26
  %135 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %136 = getelementptr inbounds ptr, ptr %135, i64 %124
  store ptr %134, ptr %136, align 8, !tbaa !285
  br label %137

137:                                              ; preds = %121, %130, %109
  %138 = load i32, ptr @optimize, align 4, !tbaa !298
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %351, label %140, !prof !599

140:                                              ; preds = %137
  %141 = load i32, ptr %111, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %193, !prof !600

144:                                              ; preds = %140
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %146 = icmp slt i32 %145, 53
  br i1 %146, label %193, label %147, !prof !601

147:                                              ; preds = %144
  %148 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %149 = zext nneg i32 %145 to i64
  %150 = getelementptr inbounds %struct.equivalence, ptr %148, i64 %149, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !602
  %152 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !285
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %193, label %154, !prof !603

154:                                              ; preds = %147
  %155 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %184, label %157, !prof !604

157:                                              ; preds = %154
  %158 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %184, label %160, !prof !604

160:                                              ; preds = %157
  %161 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %184, label %163, !prof !604

163:                                              ; preds = %160
  %164 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %184, label %166, !prof !604

166:                                              ; preds = %163
  %167 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %168 = icmp eq i32 %167, 7
  br i1 %168, label %184, label %169, !prof !604

169:                                              ; preds = %166
  %170 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %171 = icmp eq i32 %170, 5
  br i1 %171, label %184, label %172, !prof !604

172:                                              ; preds = %169
  %173 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %184, label %175, !prof !604

175:                                              ; preds = %172
  %176 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %177 = icmp eq i32 %176, 17
  br i1 %177, label %184, label %178, !prof !604

178:                                              ; preds = %175
  %179 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %180 = icmp eq i32 %179, 14
  br i1 %180, label %184, label %181, !prof !604

181:                                              ; preds = %178
  %182 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %183 = icmp eq i32 %182, 15
  br i1 %183, label %184, label %194, !prof !604

184:                                              ; preds = %181, %178, %175, %172, %169, %166, %163, %160, %157, %154
  %185 = load i32, ptr %113, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 43
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %190 = getelementptr inbounds %struct.equivalence, ptr %189, i64 %149, i32 4
  %191 = load i32, ptr %190, align 4, !tbaa !596
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %147, %144, %140
  tail call void @note_stores(ptr noundef nonnull %87, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %351

194:                                              ; preds = %188, %184, %181
  %195 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 4, ptr noundef null) #26
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %204, !prof !605

197:                                              ; preds = %194
  %198 = tail call zeroext i8 @rtx_varies_p(ptr noundef %113, i8 noundef zeroext 0) #26
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %212, !prof !606

200:                                              ; preds = %197
  %201 = tail call ptr @copy_rtx(ptr noundef %113) #26
  %202 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 4, ptr noundef %201) #26
  %203 = icmp eq ptr %202, null
  br i1 %203, label %212, label %204, !prof !607

204:                                              ; preds = %194, %200
  %205 = phi ptr [ %202, %200 ], [ %195, %194 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !323
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %211, label %212, !prof !608

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %197, %211, %204, %200
  %213 = phi ptr [ null, %211 ], [ %205, %204 ], [ null, %200 ], [ null, %197 ]
  %214 = load ptr, ptr @df, align 8, !tbaa !285
  %215 = getelementptr inbounds %struct.df, ptr %214, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !609
  %217 = getelementptr inbounds ptr, ptr %216, i64 %149
  %218 = load ptr, ptr %217, align 8, !tbaa !285
  %219 = getelementptr inbounds %struct.df_reg_info, ptr %218, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !610
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %239, label %222, !prof !612

222:                                              ; preds = %212
  %223 = icmp eq ptr %213, null
  br i1 %223, label %238, label %224, !prof !613

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !323
  %227 = tail call zeroext i8 @rtx_varies_p(ptr noundef %226, i8 noundef zeroext 0) #26
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %238, !prof !614

229:                                              ; preds = %224
  %230 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %231 = getelementptr inbounds %struct.equivalence, ptr %230, i64 %149
  %232 = load ptr, ptr %231, align 8, !tbaa !615
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234, !prof !616

234:                                              ; preds = %229
  %235 = load ptr, ptr %225, align 8, !tbaa !323
  %236 = tail call i32 @rtx_equal_p(ptr noundef %235, ptr noundef nonnull %232) #26
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %224, %222
  tail call void @no_equiv(ptr noundef nonnull %111, ptr nonnull poison, ptr poison) #27
  br label %351

239:                                              ; preds = %234, %229, %212
  %240 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %241 = getelementptr inbounds %struct.equivalence, ptr %240, i64 %149, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !602
  %243 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %242) #26
  %244 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %245 = getelementptr inbounds %struct.equivalence, ptr %244, i64 %149, i32 2
  store ptr %243, ptr %245, align 8, !tbaa !602
  %246 = load ptr, ptr @df, align 8, !tbaa !285
  %247 = getelementptr inbounds %struct.df, ptr %246, i64 0, i32 5
  %248 = load ptr, ptr %247, align 8, !tbaa !609
  %249 = getelementptr inbounds ptr, ptr %248, i64 %149
  %250 = load ptr, ptr %249, align 8, !tbaa !285
  %251 = getelementptr inbounds %struct.df_reg_info, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !610
  %253 = icmp eq i32 %252, 1
  %254 = icmp ne ptr %213, null
  %255 = and i1 %254, %253
  br i1 %255, label %256, label %264, !prof !617

256:                                              ; preds = %239
  %257 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !323
  %259 = tail call zeroext i8 @rtx_varies_p(ptr noundef %258, i8 noundef zeroext 0) #26
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %264, !prof !618

261:                                              ; preds = %256
  %262 = load ptr, ptr %257, align 8, !tbaa !323
  tail call void @remove_note(ptr noundef nonnull %43, ptr noundef nonnull %213) #26
  %263 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef %262) #26
  br label %264

264:                                              ; preds = %261, %256, %239
  %265 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef null) #26
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %285, !prof !619

267:                                              ; preds = %264
  %268 = load ptr, ptr @reg_info_p, align 8, !tbaa !285
  %269 = getelementptr inbounds %struct.reg_info_t, ptr %268, i64 %149, i32 6
  %270 = load i32, ptr %269, align 4, !tbaa !620
  %271 = icmp sgt i32 %270, 1
  br i1 %271, label %272, label %351, !prof !622

272:                                              ; preds = %267
  %273 = load ptr, ptr %112, align 8, !tbaa !323
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 65535
  %276 = icmp eq i32 %275, 43
  br i1 %276, label %277, label %351, !prof !623

277:                                              ; preds = %272
  %278 = tail call fastcc i32 @validate_equiv_mem(ptr noundef nonnull %43, ptr noundef nonnull %111, ptr noundef nonnull %273) #27, !range !561
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %351, label %280, !prof !624

280:                                              ; preds = %277
  %281 = load ptr, ptr %112, align 8, !tbaa !323
  %282 = tail call ptr @copy_rtx(ptr noundef %281) #26
  %283 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef %282) #26
  %284 = icmp eq ptr %283, null
  br i1 %284, label %351, label %285, !prof !409

285:                                              ; preds = %264, %280
  %286 = phi ptr [ %283, %280 ], [ %265, %264 ]
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %288 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !323
  %290 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %291 = sext i32 %287 to i64
  %292 = getelementptr inbounds %struct.equivalence, ptr %290, i64 %291, i32 4
  %293 = load i32, ptr %292, align 4, !tbaa !596
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %302, !prof !625

295:                                              ; preds = %285
  %296 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %297 = getelementptr inbounds ptr, ptr %296, i64 %291
  %298 = load ptr, ptr %297, align 8, !tbaa !285
  %299 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %298) #26
  %300 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %301 = getelementptr inbounds ptr, ptr %300, i64 %291
  store ptr %299, ptr %301, align 8, !tbaa !285
  br label %302

302:                                              ; preds = %295, %285
  %303 = load i32, ptr %289, align 8
  %304 = trunc i32 %303 to i16
  switch i16 %304, label %318 [
    i16 44, label %317
    i16 35, label %305
  ], !prof !626

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !323
  %308 = load i32, ptr %307, align 8
  %309 = and i32 %308, 65535
  %310 = icmp eq i32 %309, 49
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !323
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 44
  br i1 %316, label %317, label %318

317:                                              ; preds = %302, %311
  store i1 true, ptr @recorded_label_ref, align 4
  br label %318

318:                                              ; preds = %302, %317, %311, %305
  %319 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %320 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291
  store ptr %289, ptr %320, align 8, !tbaa !615
  %321 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291, i32 1
  store ptr %112, ptr %321, align 8, !tbaa !627
  %322 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291, i32 3
  store i32 %33, ptr %322, align 8, !tbaa !628
  %323 = load ptr, ptr @reg_info_p, align 8, !tbaa !285
  %324 = getelementptr inbounds %struct.reg_info_t, ptr %323, i64 %291, i32 2
  %325 = load i32, ptr %324, align 4, !tbaa !629
  %326 = icmp sgt i32 %325, -1
  %327 = load i32, ptr @optimize, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %330, label %351, !prof !630

330:                                              ; preds = %318
  %331 = shl nuw nsw i32 %325, 1
  store i32 %331, ptr %324, align 4, !tbaa !629
  %332 = tail call fastcc i32 @REG_N_REFS(i32 noundef %287) #27
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %351, !prof !631

334:                                              ; preds = %330
  %335 = tail call i32 @rtx_equal_p(ptr noundef nonnull %289, ptr noundef %113) #26
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340, !prof !632

337:                                              ; preds = %334
  %338 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %113) #27
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %351, !prof !633

340:                                              ; preds = %337, %334
  %341 = load i32, ptr %43, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 8
  br i1 %343, label %344, label %351, !prof !634

344:                                              ; preds = %340
  %345 = load ptr, ptr %70, align 8, !tbaa !323
  %346 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %345, i32 noundef %287) #27, !range !561
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %351, label %348, !prof !635

348:                                              ; preds = %344
  %349 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %350 = getelementptr inbounds %struct.equivalence, ptr %349, i64 %291, i32 5
  store i8 1, ptr %350, align 8, !tbaa !636
  br label %351

351:                                              ; preds = %267, %272, %277, %42, %280, %330, %337, %340, %344, %348, %318, %137, %238, %193, %81
  %352 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %353 = load ptr, ptr %352, align 8, !tbaa !323
  %354 = load ptr, ptr %34, align 8, !tbaa !323
  %355 = getelementptr inbounds %struct.rtl_bb_info, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !578
  %357 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1, i32 0, i32 0, i64 2
  %358 = load ptr, ptr %357, align 8, !tbaa !323
  %359 = icmp eq ptr %353, %358
  br i1 %359, label %18, label %42, !prof !637, !llvm.loop !638

360:                                              ; preds = %20, %0
  %361 = load i32, ptr @optimize, align 4, !tbaa !298
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %713, label %363, !prof !559

363:                                              ; preds = %360
  %364 = tail call ptr @get_insns() #26
  %365 = icmp eq ptr %364, null
  br i1 %365, label %453, label %366, !prof !521

366:                                              ; preds = %363, %449
  %367 = phi ptr [ %451, %449 ], [ %364, %363 ]
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = add nsw i32 %369, -7
  %371 = icmp ult i32 %370, 4
  br i1 %371, label %372, label %449, !prof !639

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !323
  %375 = load i32, ptr %374, align 8
  %376 = and i32 %375, 65535
  %377 = icmp eq i32 %376, 23
  br i1 %377, label %381, label %378, !prof !586

378:                                              ; preds = %372
  %379 = tail call ptr @single_set_2(ptr noundef nonnull %367, ptr noundef nonnull %374) #26
  %380 = icmp eq ptr %379, null
  br i1 %380, label %449, label %381, !prof !422

381:                                              ; preds = %372, %378
  %382 = phi ptr [ %379, %378 ], [ %374, %372 ]
  %383 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !323
  %385 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1, i32 0, i32 0, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !323
  %387 = load i32, ptr %384, align 8
  %388 = and i32 %387, 65535
  %389 = icmp eq i32 %388, 43
  br i1 %389, label %390, label %449, !prof !640

390:                                              ; preds = %381
  %391 = load i32, ptr %386, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 37
  br i1 %393, label %394, label %449, !prof !641

394:                                              ; preds = %390
  %395 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %386) #27
  %396 = icmp ugt i32 %395, 52
  br i1 %396, label %397, label %449, !prof !642

397:                                              ; preds = %394
  %398 = load ptr, ptr @reg_info_p, align 8, !tbaa !285
  %399 = zext i32 %395 to i64
  %400 = getelementptr inbounds %struct.reg_info_t, ptr %398, i64 %399, i32 6
  %401 = load i32, ptr %400, align 4, !tbaa !620
  %402 = icmp sgt i32 %401, 1
  br i1 %402, label %403, label %449, !prof !643

403:                                              ; preds = %397
  %404 = load ptr, ptr @df, align 8, !tbaa !285
  %405 = getelementptr inbounds %struct.df, ptr %404, i64 0, i32 5
  %406 = load ptr, ptr %405, align 8, !tbaa !609
  %407 = getelementptr inbounds ptr, ptr %406, i64 %399
  %408 = load ptr, ptr %407, align 8, !tbaa !285
  %409 = getelementptr inbounds %struct.df_reg_info, ptr %408, i64 0, i32 1
  %410 = load i32, ptr %409, align 8, !tbaa !610
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %449, !prof !644

412:                                              ; preds = %403
  %413 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %414 = getelementptr inbounds %struct.equivalence, ptr %413, i64 %399, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !602
  %416 = icmp eq ptr %415, null
  %417 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %418 = icmp eq ptr %415, %417
  %419 = select i1 %416, i1 true, i1 %418
  br i1 %419, label %449, label %420, !prof !645

420:                                              ; preds = %412
  %421 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !323
  %423 = tail call ptr @find_reg_note(ptr noundef %422, i32 noundef 3, ptr noundef null) #26
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %449, !prof !646

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.rtx_def, ptr %384, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !323
  %428 = tail call fastcc i32 @contains_replace_regs(ptr noundef %427) #27, !range !647
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %449, !prof !648

430:                                              ; preds = %425
  %431 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %432 = getelementptr inbounds %struct.equivalence, ptr %431, i64 %399, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !602
  %434 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !323
  %436 = tail call fastcc i32 @validate_equiv_mem(ptr noundef %435, ptr noundef nonnull %386, ptr noundef nonnull %384) #27, !range !561
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %449, label %438, !prof !649

438:                                              ; preds = %430
  %439 = tail call fastcc i32 @memref_used_between_p(ptr noundef nonnull %384, ptr noundef %435, ptr noundef nonnull %367) #27, !range !561
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %449, !prof !650

441:                                              ; preds = %438
  %442 = tail call ptr @copy_rtx(ptr noundef nonnull %384) #26
  %443 = tail call ptr @set_unique_reg_note(ptr noundef %435, i32 noundef 3, ptr noundef %442) #26
  %444 = icmp eq ptr %443, null
  br i1 %444, label %449, label %445, !prof !651

445:                                              ; preds = %441
  %446 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %367, ptr noundef null) #26
  %447 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %448 = getelementptr inbounds ptr, ptr %447, i64 %399
  store ptr %446, ptr %448, align 8, !tbaa !285
  tail call void @df_notes_rescan(ptr noundef %435) #26
  br label %449

449:                                              ; preds = %366, %381, %390, %394, %397, %403, %412, %420, %425, %445, %441, %438, %430, %378
  %450 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 0, i64 2
  %451 = load ptr, ptr %450, align 8, !tbaa !323
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %366, !prof !652, !llvm.loop !653

453:                                              ; preds = %449, %363
  %454 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %455 = load ptr, ptr @cfun, align 8, !tbaa !285
  %456 = getelementptr inbounds %struct.function, ptr %455, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !514
  %458 = getelementptr inbounds %struct.control_flow_graph, ptr %457, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !520
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 5
  %461 = load ptr, ptr %460, align 8, !tbaa !654
  %462 = load ptr, ptr %457, align 8, !tbaa !516
  %463 = icmp eq ptr %461, %462
  br i1 %463, label %641, label %474, !prof !521

464:                                              ; preds = %633
  %465 = load ptr, ptr @cfun, align 8, !tbaa !285
  br label %466

466:                                              ; preds = %464, %474
  %467 = phi ptr [ %465, %464 ], [ %475, %474 ]
  %468 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 5
  %469 = load ptr, ptr %468, align 8, !tbaa !654
  %470 = getelementptr inbounds %struct.function, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !514
  %472 = load ptr, ptr %471, align 8, !tbaa !516
  %473 = icmp eq ptr %469, %472
  br i1 %473, label %641, label %474, !prof !535, !llvm.loop !655

474:                                              ; preds = %453, %466
  %475 = phi ptr [ %467, %466 ], [ %455, %453 ]
  %476 = phi ptr [ %469, %466 ], [ %461, %453 ]
  %477 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 10
  %478 = load i32, ptr %477, align 4, !tbaa !577
  %479 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 7
  %480 = load ptr, ptr %479, align 8, !tbaa !323
  %481 = getelementptr inbounds %struct.rtl_bb_info, ptr %480, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !323
  %483 = load ptr, ptr %480, align 8, !tbaa !522
  %484 = getelementptr inbounds %struct.rtx_def, ptr %483, i64 0, i32 1, i32 0, i32 0, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !323
  %486 = icmp eq ptr %482, %485
  br i1 %486, label %466, label %487, !prof !579

487:                                              ; preds = %474, %633
  %488 = phi ptr [ %635, %633 ], [ %482, %474 ]
  %489 = load i32, ptr %488, align 8
  %490 = and i32 %489, 65535
  %491 = add nsw i32 %490, -7
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %493, label %633, !prof !656

493:                                              ; preds = %487
  %494 = icmp eq i32 %490, 9
  br i1 %494, label %495, label %498, !prof !657

495:                                              ; preds = %493
  %496 = tail call ptr @find_reg_note(ptr noundef nonnull %488, i32 noundef 28, ptr noundef null) #26
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %633, !prof !658

498:                                              ; preds = %495, %493
  %499 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 1, i32 1, i32 0, i32 0, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !323
  %501 = icmp eq ptr %500, null
  br i1 %501, label %633, label %502, !prof !659

502:                                              ; preds = %498, %629
  %503 = phi ptr [ %631, %629 ], [ %500, %498 ]
  %504 = load i32, ptr %503, align 8
  %505 = and i32 %504, 16711680
  %506 = icmp eq i32 %505, 65536
  br i1 %506, label %507, label %629, !prof !660

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 1
  %509 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !323
  %511 = load ptr, ptr %508, align 8, !tbaa !323
  %512 = tail call i32 @reg_mentioned_p(ptr noundef %510, ptr noundef %511) #26
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %629, label %514, !prof !661

514:                                              ; preds = %507
  %515 = load ptr, ptr %509, align 8, !tbaa !323
  %516 = tail call fastcc i32 @rhs_regno(ptr noundef %515) #27
  %517 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %518 = sext i32 %516 to i64
  %519 = getelementptr inbounds %struct.equivalence, ptr %517, i64 %518, i32 5
  %520 = load i8, ptr %519, align 8, !tbaa !636
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %629, label %522, !prof !662

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.equivalence, ptr %517, i64 %518, i32 3
  %524 = load i32, ptr %523, align 8, !tbaa !628
  %525 = icmp slt i32 %524, %478
  br i1 %525, label %629, label %526, !prof !663

526:                                              ; preds = %522
  %527 = getelementptr inbounds %struct.equivalence, ptr %517, i64 %518, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !602
  %529 = icmp eq ptr %528, null
  br i1 %529, label %534, label %530, !prof !663

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.rtx_def, ptr %528, i64 0, i32 1, i32 0, i32 0, i64 1
  %532 = load ptr, ptr %531, align 8, !tbaa !323
  %533 = icmp eq ptr %532, null
  br i1 %533, label %538, label %534, !prof !664

534:                                              ; preds = %530, %526
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2653, ptr noundef nonnull @.str.39) #26
  %535 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %536 = getelementptr inbounds %struct.equivalence, ptr %535, i64 %518, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !602
  br label %538

538:                                              ; preds = %530, %534
  %539 = phi ptr [ %528, %530 ], [ %537, %534 ]
  %540 = getelementptr inbounds %struct.rtx_def, ptr %539, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !323
  %542 = tail call zeroext i8 @can_throw_internal(ptr noundef %541) #26
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %544, label %629, !prof !664

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1
  %546 = load ptr, ptr %545, align 8, !tbaa !323
  %547 = tail call i32 @asm_noperands(ptr noundef %546) #26
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %593, !prof !664

549:                                              ; preds = %544
  %550 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !285
  %551 = getelementptr inbounds ptr, ptr %550, i64 %518
  %552 = load ptr, ptr %551, align 8, !tbaa !285
  %553 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %554 = getelementptr inbounds %struct.equivalence, ptr %553, i64 %518, i32 1
  %555 = load ptr, ptr %554, align 8, !tbaa !627
  %556 = load ptr, ptr %555, align 8, !tbaa !285
  %557 = tail call i32 @validate_replace_rtx(ptr noundef %552, ptr noundef %556, ptr noundef nonnull %488) #26
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %593, label %559, !prof !665

559:                                              ; preds = %549, %559
  %560 = phi ptr [ %562, %559 ], [ %503, %549 ]
  %561 = getelementptr inbounds %struct.rtx_def, ptr %560, i64 0, i32 1, i32 0, i32 0, i64 1
  %562 = load ptr, ptr %561, align 8, !tbaa !323
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %559, !prof !666, !llvm.loop !667

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1, i32 1, i32 0, i32 0, i64 1
  %566 = load ptr, ptr %565, align 8, !tbaa !323
  %567 = icmp eq ptr %566, null
  br i1 %567, label %581, label %568, !prof !668

568:                                              ; preds = %564, %578
  %569 = phi ptr [ %579, %578 ], [ %560, %564 ]
  %570 = phi ptr [ %572, %578 ], [ %566, %564 ]
  %571 = getelementptr inbounds %struct.rtx_def, ptr %570, i64 0, i32 1, i32 0, i32 0, i64 1
  %572 = load ptr, ptr %571, align 8, !tbaa !323
  %573 = load i32, ptr %570, align 8
  %574 = and i32 %573, 16711680
  %575 = icmp eq i32 %574, 65536
  br i1 %575, label %576, label %578, !prof !669

576:                                              ; preds = %568
  tail call void @remove_note(ptr noundef %541, ptr noundef nonnull %570) #26
  %577 = getelementptr inbounds %struct.rtx_def, ptr %569, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %570, ptr %577, align 8, !tbaa !323
  store ptr null, ptr %571, align 8, !tbaa !323
  br label %578

578:                                              ; preds = %576, %568
  %579 = phi ptr [ %570, %576 ], [ %569, %568 ]
  %580 = icmp eq ptr %572, null
  br i1 %580, label %581, label %568, !prof !670, !llvm.loop !671

581:                                              ; preds = %578, %564
  %582 = tail call ptr @remove_death(i32 noundef %516, ptr noundef nonnull %488) #26
  %583 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !285
  %584 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %583, i64 %518, i32 1
  store i32 0, ptr %584, align 4, !tbaa !672
  %585 = load ptr, ptr @reg_info_p, align 8, !tbaa !285
  %586 = getelementptr inbounds %struct.reg_info_t, ptr %585, i64 %518
  store i32 0, ptr %586, align 4, !tbaa !674
  %587 = tail call ptr @delete_insn(ptr noundef %541) #26
  %588 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %589 = getelementptr inbounds %struct.equivalence, ptr %588, i64 %518, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !602
  %591 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1, i32 0, i32 0, i64 1
  %592 = load ptr, ptr %591, align 8, !tbaa !323
  store ptr %592, ptr %589, align 8, !tbaa !602
  br label %624

593:                                              ; preds = %549, %544
  %594 = tail call ptr @prev_nondebug_insn(ptr noundef nonnull %488) #26
  %595 = icmp eq ptr %594, %541
  br i1 %595, label %629, label %596, !prof !675

596:                                              ; preds = %593
  %597 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 9
  %598 = load ptr, ptr %545, align 8, !tbaa !323
  %599 = tail call ptr @emit_insn_before(ptr noundef %598, ptr noundef nonnull %488) #26
  %600 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1, i32 1, i32 0, i32 0, i64 1
  %601 = load ptr, ptr %600, align 8, !tbaa !323
  %602 = getelementptr inbounds %struct.rtx_def, ptr %599, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %601, ptr %602, align 8, !tbaa !323
  store ptr null, ptr %600, align 8, !tbaa !323
  %603 = tail call zeroext i8 @df_insn_rescan(ptr noundef %599) #26
  %604 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !323
  %606 = getelementptr inbounds %struct.rtx_def, ptr %599, i64 1, i32 1
  store i32 %605, ptr %606, align 8, !tbaa !323
  %607 = tail call ptr @delete_insn(ptr noundef nonnull %541) #26
  %608 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %609 = getelementptr inbounds %struct.equivalence, ptr %608, i64 %518, i32 2
  %610 = load ptr, ptr %609, align 8, !tbaa !602
  %611 = getelementptr inbounds %struct.rtx_def, ptr %610, i64 0, i32 1
  store ptr %599, ptr %611, align 8, !tbaa !323
  %612 = load i32, ptr %597, align 8, !tbaa !544
  %613 = load ptr, ptr @reg_info_p, align 8, !tbaa !285
  %614 = getelementptr inbounds %struct.reg_info_t, ptr %613, i64 %518, i32 6
  store i32 %612, ptr %614, align 4, !tbaa !620
  %615 = getelementptr inbounds %struct.reg_info_t, ptr %613, i64 %518, i32 2
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %615, align 4, !tbaa !298
  %616 = load ptr, ptr %479, align 8, !tbaa !323
  %617 = load ptr, ptr %616, align 8, !tbaa !522
  %618 = icmp eq ptr %488, %617
  br i1 %618, label %619, label %622, !prof !676

619:                                              ; preds = %596
  %620 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 0, i32 1, i32 0, i32 0, i64 1
  %621 = load ptr, ptr %620, align 8, !tbaa !323
  store ptr %621, ptr %616, align 8, !tbaa !522
  br label %622

622:                                              ; preds = %619, %596
  %623 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %599, ptr noundef null) #26
  br label %624

624:                                              ; preds = %581, %622
  %625 = phi ptr [ %623, %622 ], [ null, %581 ]
  %626 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %627 = getelementptr inbounds ptr, ptr %626, i64 %518
  store ptr %625, ptr %627, align 8, !tbaa !285
  %628 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %454, i32 noundef %516) #26
  br label %629

629:                                              ; preds = %624, %522, %514, %538, %593, %502, %507
  %630 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1, i32 0, i32 0, i64 1
  %631 = load ptr, ptr %630, align 8, !tbaa !323
  %632 = icmp eq ptr %631, null
  br i1 %632, label %633, label %502, !prof !677, !llvm.loop !678

633:                                              ; preds = %629, %498, %487, %495
  %634 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 0, i32 1, i32 0, i32 0, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !323
  %636 = load ptr, ptr %479, align 8, !tbaa !323
  %637 = load ptr, ptr %636, align 8, !tbaa !522
  %638 = getelementptr inbounds %struct.rtx_def, ptr %637, i64 0, i32 1, i32 0, i32 0, i64 1
  %639 = load ptr, ptr %638, align 8, !tbaa !323
  %640 = icmp eq ptr %635, %639
  br i1 %640, label %464, label %487, !prof !679, !llvm.loop !680

641:                                              ; preds = %466, %453
  %642 = phi ptr [ %457, %453 ], [ %471, %466 ]
  %643 = phi ptr [ %461, %453 ], [ %469, %466 ]
  %644 = load ptr, ptr %454, align 8, !tbaa !681
  %645 = icmp eq ptr %644, null
  br i1 %645, label %712, label %646, !prof !683

646:                                              ; preds = %641
  %647 = getelementptr inbounds %struct.basic_block_def, ptr %643, i64 0, i32 6
  %648 = load ptr, ptr %647, align 8, !tbaa !518
  %649 = getelementptr inbounds %struct.control_flow_graph, ptr %642, i64 0, i32 1
  %650 = load ptr, ptr %649, align 8, !tbaa !520
  %651 = icmp eq ptr %648, %650
  br i1 %651, label %683, label %652, !prof !684

652:                                              ; preds = %646, %652
  %653 = phi ptr [ %676, %652 ], [ %648, %646 ]
  %654 = getelementptr inbounds %struct.basic_block_def, ptr %653, i64 0, i32 9
  %655 = load i32, ptr %654, align 8, !tbaa !544
  %656 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %655) #27
  %657 = getelementptr inbounds %struct.df_live_bb_info, ptr %656, i64 0, i32 2
  %658 = load ptr, ptr %657, align 8, !tbaa !685
  %659 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %658, ptr noundef nonnull %454) #26
  %660 = load i32, ptr %654, align 8, !tbaa !544
  %661 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %660) #27
  %662 = getelementptr inbounds %struct.df_live_bb_info, ptr %661, i64 0, i32 3
  %663 = load ptr, ptr %662, align 8, !tbaa !687
  %664 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %663, ptr noundef nonnull %454) #26
  %665 = load i32, ptr %654, align 8, !tbaa !544
  %666 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %665) #27
  %667 = getelementptr inbounds %struct.df_lr_bb_info, ptr %666, i64 0, i32 2
  %668 = load ptr, ptr %667, align 8, !tbaa !545
  %669 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %668, ptr noundef nonnull %454) #26
  %670 = load i32, ptr %654, align 8, !tbaa !544
  %671 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %670) #27
  %672 = getelementptr inbounds %struct.df_lr_bb_info, ptr %671, i64 0, i32 3
  %673 = load ptr, ptr %672, align 8, !tbaa !688
  %674 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %673, ptr noundef nonnull %454) #26
  %675 = getelementptr inbounds %struct.basic_block_def, ptr %653, i64 0, i32 6
  %676 = load ptr, ptr %675, align 8, !tbaa !518
  %677 = load ptr, ptr @cfun, align 8, !tbaa !285
  %678 = getelementptr inbounds %struct.function, ptr %677, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !514
  %680 = getelementptr inbounds %struct.control_flow_graph, ptr %679, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !520
  %682 = icmp eq ptr %676, %681
  br i1 %682, label %683, label %652, !prof !689, !llvm.loop !690

683:                                              ; preds = %652, %646
  %684 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !298
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %712, label %686, !prof !691

686:                                              ; preds = %683
  %687 = tail call ptr @get_insns() #26
  %688 = icmp eq ptr %687, null
  br i1 %688, label %712, label %689

689:                                              ; preds = %686, %708
  %690 = phi ptr [ %710, %708 ], [ %687, %686 ]
  %691 = load i32, ptr %690, align 8
  %692 = and i32 %691, 65535
  %693 = icmp eq i32 %692, 7
  br i1 %693, label %694, label %708

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.rtx_def, ptr %690, i64 1
  %696 = load ptr, ptr %695, align 8, !tbaa !323
  %697 = getelementptr inbounds %struct.rtx_def, ptr %696, i64 0, i32 1, i32 0, i32 0, i64 1
  %698 = load ptr, ptr %697, align 8, !tbaa !323
  %699 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %698, ptr noundef null, ptr noundef nonnull @adjust_cleared_regs, ptr noundef nonnull %454) #26
  %700 = load ptr, ptr %695, align 8, !tbaa !323
  %701 = getelementptr inbounds %struct.rtx_def, ptr %700, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %699, ptr %701, align 8, !tbaa !323
  %702 = load ptr, ptr %695, align 8, !tbaa !323
  %703 = getelementptr inbounds %struct.rtx_def, ptr %702, i64 0, i32 1, i32 0, i32 0, i64 1
  %704 = load ptr, ptr %703, align 8, !tbaa !323
  %705 = icmp eq ptr %698, %704
  br i1 %705, label %708, label %706

706:                                              ; preds = %694
  %707 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %690) #26
  br label %708

708:                                              ; preds = %694, %706, %689
  %709 = getelementptr inbounds %struct.rtx_def, ptr %690, i64 0, i32 1, i32 0, i32 0, i64 2
  %710 = load ptr, ptr %709, align 8, !tbaa !323
  %711 = icmp eq ptr %710, null
  br i1 %711, label %712, label %689, !llvm.loop !692

712:                                              ; preds = %708, %686, %683, %641
  tail call void @bitmap_obstack_free(ptr noundef nonnull %454) #26
  br label %713

713:                                              ; preds = %360, %712
  tail call void @end_alias_analysis() #26
  %714 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  tail call void @free(ptr noundef %714) #27
  %715 = load i1, ptr @recorded_label_ref, align 4
  %716 = zext i1 %715 to i32
  ret i32 %716
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reg_equiv_invariant_const() unnamed_addr #0 !prof !491 !PGOFuncName !693 {
  %1 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !298
  %2 = icmp sgt i32 %1, 53
  br i1 %2, label %3, label %75, !prof !694

3:                                                ; preds = %0, %64
  %4 = phi i64 [ %71, %64 ], [ 53, %0 ]
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !323
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9, !prof !695

9:                                                ; preds = %3, %58
  %10 = phi ptr [ %62, %58 ], [ %7, %3 ]
  %11 = phi ptr [ %60, %58 ], [ null, %3 ]
  %12 = phi i8 [ %59, %58 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !323
  %15 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 3, ptr noundef null) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17, !prof !696

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !323
  %20 = tail call i32 @function_invariant_p(ptr noundef %19) #26
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr @flag_pic, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %35, !prof !697

25:                                               ; preds = %17
  %26 = load i32, ptr %19, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !298
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %19) #26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %32, %17
  %36 = tail call i32 @memory_operand(ptr noundef %19, i32 noundef 0) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38, !prof !698

38:                                               ; preds = %35
  %39 = load i32, ptr %19, align 8
  %40 = lshr i32 %39, 26
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  br label %58

43:                                               ; preds = %35
  %44 = tail call i32 @function_invariant_p(ptr noundef %19) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46, !prof !699

46:                                               ; preds = %43
  %47 = load i32, ptr %19, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 49
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %51 = icmp eq ptr %19, %50
  %52 = select i1 %49, i1 true, i1 %51
  %53 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %54 = icmp eq ptr %19, %53
  %55 = select i1 %52, i1 true, i1 %54
  %56 = select i1 %55, i8 1, i8 %12, !prof !700
  %57 = select i1 %55, ptr %11, ptr %19, !prof !700
  br label %58

58:                                               ; preds = %46, %25, %32, %43, %38, %9
  %59 = phi i8 [ %12, %9 ], [ %42, %38 ], [ %12, %43 ], [ %12, %32 ], [ %12, %25 ], [ %56, %46 ]
  %60 = phi ptr [ %11, %9 ], [ %11, %38 ], [ %11, %43 ], [ %11, %32 ], [ %11, %25 ], [ %57, %46 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !323
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %9, !prof !701, !llvm.loop !702

64:                                               ; preds = %58, %3
  %65 = phi i8 [ 0, %3 ], [ %59, %58 ]
  %66 = phi ptr [ null, %3 ], [ %60, %58 ]
  %67 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !285
  %68 = getelementptr inbounds i8, ptr %67, i64 %4
  store i8 %65, ptr %68, align 1, !tbaa !323
  %69 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !285
  %70 = getelementptr inbounds ptr, ptr %69, i64 %4
  store ptr %66, ptr %70, align 8, !tbaa !285
  %71 = add nuw nsw i64 %4, 1
  %72 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !298
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %3, label %75, !prof !703, !llvm.loop !704

75:                                               ; preds = %64, %0
  ret void
}

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @flow_loops_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ira_build(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @too_high_register_pressure_p() unnamed_addr #15 !prof !491 !PGOFuncName !705 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !298
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %17, !prof !694

3:                                                ; preds = %0
  %4 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !285
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %17, label %9, !prof !706, !llvm.loop !707

9:                                                ; preds = %3, %6
  %10 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !298
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !298
  %16 = icmp sgt i32 %15, 10000
  br i1 %16, label %17, label %6, !prof !708

17:                                               ; preds = %9, %6, %0
  %18 = phi i8 [ 0, %0 ], [ 0, %6 ], [ 1, %9 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @ira_color() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_emit(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_initiate_assign() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_reg_info(i32 noundef %0) unnamed_addr #0 !prof !709 !PGOFuncName !710 {
  %2 = tail call i32 @max_reg_num() #26
  %3 = tail call zeroext i8 @resize_reg_info() #26
  %4 = icmp sgt i32 %2, %0
  br i1 %4, label %5, label %9, !prof !711

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ %0, %1 ]
  tail call void @setup_reg_classes(i32 noundef %6, i32 noundef 13, i32 noundef 26, i32 noundef 13) #26
  %7 = add i32 %6, 1
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %9, label %5, !prof !712, !llvm.loop !713

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_preferred_alternate_classes_for_new_pseudos(i32 noundef %0) unnamed_addr #0 !prof !709 !PGOFuncName !714 {
  %2 = tail call i32 @max_reg_num() #26
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %36, !prof !711

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %32
  %7 = phi i64 [ %5, %4 ], [ %33, %32 ]
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !285
  %9 = getelementptr inbounds ptr, ptr %8, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !285
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load i32, ptr %11, align 8, !tbaa !323
  %13 = tail call i32 @reg_preferred_class(i32 noundef %12) #26
  %14 = tail call i32 @reg_alternate_class(i32 noundef %12) #26
  %15 = tail call i32 @reg_cover_class(i32 noundef %12) #26
  %16 = trunc i64 %7 to i32
  tail call void @setup_reg_classes(i32 noundef %16, i32 noundef %13, i32 noundef %14, i32 noundef %15) #26
  %17 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !298
  %18 = icmp sgt i32 %17, 2
  %19 = load ptr, ptr @ira_dump_file, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %32, !prof !715

22:                                               ; preds = %6
  %23 = tail call i32 @reg_preferred_class(i32 noundef %12) #26
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !285
  %27 = tail call i32 @reg_alternate_class(i32 noundef %12) #26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !285
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.45, i32 noundef %16, ptr noundef %26, ptr noundef %30) #27
  br label %32

32:                                               ; preds = %6, %22
  %33 = add nsw i64 %7, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %2, %34
  br i1 %35, label %36, label %6, !prof !712, !llvm.loop !716

36:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: optsize
declare void @ira_flattening(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_assignment_flags() unnamed_addr #0 !prof !709 !PGOFuncName !717 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %35, label %5, !prof !718

5:                                                ; preds = %0, %29
  %6 = load ptr, ptr %1, align 8, !tbaa !285
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13, !prof !719

11:                                               ; preds = %5
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %6) #26
  %12 = load i16, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i16 [ %12, %11 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !299
  %17 = icmp slt i32 %16, 0
  %18 = and i16 %14, 1
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %29, !prof !720

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !721
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !722
  %26 = icmp slt i32 %23, %25
  %27 = freeze i1 %26
  %28 = select i1 %27, i16 256, i16 0
  br label %29

29:                                               ; preds = %13, %21
  %30 = phi i16 [ %28, %21 ], [ 256, %13 ]
  %31 = and i16 %14, -257
  %32 = or disjoint i16 %31, %30
  store i16 %32, ptr %7, align 4
  %33 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %5, !prof !723, !llvm.loop !724

35:                                               ; preds = %29, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: optsize
declare void @ira_reassign_conflict_allocnos(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_renumber() unnamed_addr #0 !prof !491 !PGOFuncName !725 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr @caller_save_needed, align 4, !tbaa !298
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %39, label %5, !prof !521

5:                                                ; preds = %0, %36
  %6 = load ptr, ptr %1, align 8, !tbaa !285
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13, !prof !726

11:                                               ; preds = %5
  %12 = or disjoint i16 %8, 256
  store i16 %12, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %5
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %6) #26
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !299
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !727
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #27
  %19 = tail call i32 @llvm.smax.i32(i32 %15, i32 -1)
  %20 = trunc i32 %19 to i16
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !285
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  store i16 %20, ptr %23, align 2, !tbaa !309
  %24 = icmp sgt i32 %15, -1
  br i1 %24, label %25, label %36, !prof !728

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !729
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29, !prof !730

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !731
  %32 = load i64, ptr @call_used_reg_set, align 8, !tbaa !322
  %33 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %15, i32 noundef %31, i64 noundef %32) #27, !range !341
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !732

35:                                               ; preds = %29
  store i32 1, ptr @caller_save_needed, align 4, !tbaa !298
  br label %36

36:                                               ; preds = %35, %29, %25, %13
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %5, !prof !733, !llvm.loop !734

39:                                               ; preds = %36, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @calculate_allocation_cost() unnamed_addr #7 !prof !491 !PGOFuncName !735 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !298
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !298
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %43, label %5, !prof !521

5:                                                ; preds = %0, %36
  %6 = phi i32 [ %38, %36 ], [ 0, %0 ]
  %7 = phi i32 [ %37, %36 ], [ 0, %0 ]
  %8 = phi i32 [ %40, %36 ], [ 0, %0 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !285
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !299
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !736

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !721
  %16 = add nsw i32 %7, %15
  store i32 %16, ptr @ira_mem_cost, align 4, !tbaa !298
  br label %36

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !737
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21, !prof !738

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !739
  %24 = zext i32 %23 to i64
  %25 = zext nneg i32 %11 to i64
  %26 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %24, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !309
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i32, ptr %19, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !298
  %31 = add nsw i32 %6, %30
  store i32 %31, ptr @ira_reg_cost, align 4, !tbaa !298
  br label %36

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !722
  %35 = add nsw i32 %6, %34
  store i32 %35, ptr @ira_reg_cost, align 4, !tbaa !298
  br label %36

36:                                               ; preds = %21, %32, %13
  %37 = phi i32 [ %16, %13 ], [ %7, %21 ], [ %7, %32 ]
  %38 = phi i32 [ %6, %13 ], [ %31, %21 ], [ %35, %32 ]
  %39 = phi i32 [ %15, %13 ], [ %30, %21 ], [ %34, %32 ]
  %40 = add nsw i32 %8, %39
  store i32 %40, ptr @ira_overall_cost, align 4, !tbaa !298
  %41 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %5, !prof !733, !llvm.loop !740

43:                                               ; preds = %36, %0
  %44 = phi i32 [ 0, %0 ], [ %37, %36 ]
  %45 = phi i32 [ 0, %0 ], [ %38, %36 ]
  %46 = phi i32 [ 0, %0 ], [ %40, %36 ]
  %47 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !298
  %48 = icmp sgt i32 %47, 0
  %49 = load ptr, ptr @ira_dump_file, align 8
  %50 = icmp ne ptr %49, null
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %61, !prof !560

52:                                               ; preds = %43
  %53 = load i32, ptr @ira_load_cost, align 4, !tbaa !298
  %54 = load i32, ptr @ira_store_cost, align 4, !tbaa !298
  %55 = load i32, ptr @ira_shuffle_cost, align 4, !tbaa !298
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.46, i32 noundef %46, i32 noundef %45, i32 noundef %44, i32 noundef %53, i32 noundef %54, i32 noundef %55) #27
  %57 = load ptr, ptr @ira_dump_file, align 8, !tbaa !285
  %58 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !298
  %59 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !298
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.47, i32 noundef %58, i32 noundef %59) #27
  br label %61

61:                                               ; preds = %52, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: optsize
declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !491 !PGOFuncName !741 {
  %2 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !285
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !492

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !742
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %8) #27
  %9 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !285, !nonnull !744, !noundef !744
  store i32 %0, ptr %9, align 8, !tbaa !742
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_rtx_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !542 !PGOFuncName !745 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !708
  ret ptr %4
}

; Function Attrs: optsize
declare void @regstat_free_n_sets_and_refs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @regstat_free_ri() local_unnamed_addr #2

; Function Attrs: optsize
declare void @allocate_initial_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_reg_equiv_init() unnamed_addr #0 !prof !491 !PGOFuncName !746 {
  %1 = tail call i32 @max_reg_num() #26
  %2 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !298
  %3 = icmp slt i32 %2, %1
  br i1 %3, label %4, label %112, !prof !747

4:                                                ; preds = %0
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @ggc_realloc_stat(ptr noundef %5, i64 noundef %7) #26
  store ptr %8, ptr @reg_equiv_init, align 8, !tbaa !285
  %9 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !298
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %14, !prof !711

11:                                               ; preds = %4
  %12 = sext i32 %9 to i64
  br label %17

13:                                               ; preds = %17
  store i32 %1, ptr @reg_equiv_init_size, align 4, !tbaa !298
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %1, %13 ], [ %9, %4 ]
  %16 = icmp sgt i32 %15, 53
  br i1 %16, label %23, label %112, !prof !711

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %12, %11 ], [ %20, %17 ]
  %19 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %20 = add nsw i64 %18, 1
  %21 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr null, ptr %21, align 8, !tbaa !285
  %22 = icmp eq i64 %20, %6
  br i1 %22, label %13, label %17, !prof !712, !llvm.loop !748

23:                                               ; preds = %14, %106
  %24 = phi i32 [ %107, %106 ], [ %15, %14 ]
  %25 = phi i64 [ %109, %106 ], [ 53, %14 ]
  %26 = phi i32 [ %108, %106 ], [ undef, %14 ]
  %27 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !285
  %30 = icmp eq ptr %29, null
  br i1 %30, label %106, label %31, !prof !749

31:                                               ; preds = %23, %101
  %32 = phi i32 [ %88, %101 ], [ %26, %23 ]
  %33 = phi ptr [ %37, %101 ], [ %29, %23 ]
  %34 = phi ptr [ %102, %101 ], [ null, %23 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !323
  %38 = load ptr, ptr %35, align 8, !tbaa !323
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %51, !prof !750

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !323
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 23
  br i1 %48, label %51, label %49, !prof !751

49:                                               ; preds = %43
  %50 = tail call ptr @single_set_2(ptr noundef nonnull %38, ptr noundef nonnull %45) #26
  br label %51

51:                                               ; preds = %31, %43, %49
  %52 = phi ptr [ %50, %49 ], [ null, %31 ], [ %45, %43 ]
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !323
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %69, !prof !752

58:                                               ; preds = %51
  %59 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #27
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 %25, %60
  br i1 %61, label %67, label %62, !prof !753

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load i32, ptr %63, align 8, !tbaa !323
  %65 = zext i32 %64 to i64
  %66 = icmp eq i64 %25, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %58
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #27
  br label %87

69:                                               ; preds = %62, %51
  %70 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !323
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %86, !prof !754

75:                                               ; preds = %69
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #27
  %77 = zext i32 %76 to i64
  %78 = icmp eq i64 %25, %77
  br i1 %78, label %84, label %79, !prof !754

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load i32, ptr %80, align 8, !tbaa !323
  %82 = zext i32 %81 to i64
  %83 = icmp eq i64 %25, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79, %75
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #27
  br label %87

86:                                               ; preds = %79, %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1774, ptr noundef nonnull @.str.39) #26
  br label %87

87:                                               ; preds = %84, %86, %67
  %88 = phi i32 [ %68, %67 ], [ %85, %84 ], [ %32, %86 ]
  %89 = zext i32 %88 to i64
  %90 = icmp eq i64 %25, %89
  br i1 %90, label %101, label %91, !prof !755

91:                                               ; preds = %87
  %92 = icmp eq ptr %34, null
  %93 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr @reg_equiv_init, align 8
  %95 = getelementptr inbounds ptr, ptr %94, i64 %25
  %96 = select i1 %92, ptr %95, ptr %93
  store ptr %37, ptr %96, align 8, !tbaa !323
  %97 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %98 = sext i32 %88 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !285
  store ptr %100, ptr %36, align 8, !tbaa !323
  store ptr %33, ptr %99, align 8, !tbaa !285
  br label %101

101:                                              ; preds = %87, %91
  %102 = phi ptr [ %34, %91 ], [ %33, %87 ]
  %103 = icmp eq ptr %37, null
  br i1 %103, label %104, label %31, !prof !756, !llvm.loop !757

104:                                              ; preds = %101
  %105 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !298
  br label %106

106:                                              ; preds = %104, %23
  %107 = phi i32 [ %24, %23 ], [ %105, %104 ]
  %108 = phi i32 [ %26, %23 ], [ %88, %104 ]
  %109 = add nuw nsw i64 %25, 1
  %110 = sext i32 %107 to i64
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %23, label %112, !prof !758, !llvm.loop !759

112:                                              ; preds = %106, %14, %0
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_insn_chain() unnamed_addr #0 !prof !491 !PGOFuncName !760 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #28
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %5 = load i32, ptr @max_regno, align 4, !tbaa !298
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #26
  %8 = load i32, ptr @max_regno, align 4, !tbaa !298
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #26
  %12 = load i64, ptr @eliminable_regset, align 8, !tbaa !322
  br label %13

13:                                               ; preds = %0, %23
  %14 = phi i64 [ %12, %0 ], [ %24, %23 ]
  %15 = phi i64 [ 0, %0 ], [ %25, %23 ]
  %16 = shl nuw nsw i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19, !prof !761

19:                                               ; preds = %13
  %20 = trunc i64 %15 to i32
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %20) #26
  %22 = load i64, ptr @eliminable_regset, align 8, !tbaa !322
  br label %23

23:                                               ; preds = %13, %19
  %24 = phi i64 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %13, !prof !762, !llvm.loop !763

27:                                               ; preds = %23
  store i32 53, ptr %1, align 4, !tbaa !298
  %28 = load ptr, ptr @cfun, align 8, !tbaa !285
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !514
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !520
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !654
  %35 = load ptr, ptr %30, align 8, !tbaa !516
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %42, !prof !521

37:                                               ; preds = %378, %27
  %38 = phi ptr [ null, %27 ], [ %380, %378 ]
  %39 = phi ptr [ @reload_insn_chain, %27 ], [ %381, %378 ]
  %40 = load i32, ptr @max_regno, align 4, !tbaa !298
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %402, label %389, !prof !521

42:                                               ; preds = %27, %378
  %43 = phi ptr [ %383, %378 ], [ %34, %27 ]
  %44 = phi ptr [ %381, %378 ], [ @reload_insn_chain, %27 ]
  %45 = phi ptr [ %380, %378 ], [ null, %27 ]
  %46 = phi ptr [ %379, %378 ], [ null, %27 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #28
  tail call void @bitmap_clear(ptr noundef %3) #26
  %47 = load i32, ptr @max_regno, align 4, !tbaa !298
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %49, i1 false)
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !544
  %52 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %51) #27
  %53 = getelementptr inbounds %struct.df_lr_bb_info, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !688
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %54, i32 noundef 0, ptr noundef nonnull %1) #27
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %56 = icmp eq i8 %55, 0
  %57 = load i32, ptr %1, align 4
  %58 = icmp ugt i32 %57, 52
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %68, label %60, !prof !764

60:                                               ; preds = %42, %60
  %61 = phi i32 [ %65, %60 ], [ %57, %42 ]
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %61) #26
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %64 = icmp eq i8 %63, 0
  %65 = load i32, ptr %1, align 4
  %66 = icmp ugt i32 %65, 52
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %60, !prof !765, !llvm.loop !766

68:                                               ; preds = %60, %42
  %69 = load i32, ptr %50, align 8, !tbaa !544
  %70 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %69) #27
  %71 = getelementptr inbounds %struct.df_lr_bb_info, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !688
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %72, i32 noundef 53, ptr noundef nonnull %1) #27
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75, !prof !767

75:                                               ; preds = %68, %81
  %76 = load i32, ptr %1, align 4, !tbaa !298
  %77 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %76) #27, !range !341
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79, !prof !768

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %76) #26
  br label %81

81:                                               ; preds = %75, %79
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !341
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %75, !prof !769, !llvm.loop !770

84:                                               ; preds = %81, %68
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !323
  %87 = getelementptr inbounds %struct.rtl_bb_info, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !323
  %89 = icmp eq ptr %88, null
  br i1 %89, label %329, label %90, !prof !410

90:                                               ; preds = %84, %320
  %91 = phi ptr [ %325, %320 ], [ %88, %84 ]
  %92 = phi ptr [ %323, %320 ], [ %44, %84 ]
  %93 = phi ptr [ %322, %320 ], [ %45, %84 ]
  %94 = phi ptr [ %321, %320 ], [ %46, %84 ]
  %95 = load ptr, ptr %85, align 8, !tbaa !323
  %96 = load ptr, ptr %95, align 8, !tbaa !323
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !323
  %99 = icmp eq ptr %91, %98
  br i1 %99, label %336, label %100, !prof !771

100:                                              ; preds = %90
  %101 = load i32, ptr %91, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %103 [
    i16 13, label %320
    i16 11, label %320
  ], !prof !772

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !323
  %106 = tail call ptr @new_insn_chain() #26
  store ptr %94, ptr %106, align 8, !tbaa !773
  store ptr %106, ptr %92, align 8, !tbaa !285
  %107 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 1
  %108 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 3
  store ptr %91, ptr %108, align 8, !tbaa !775
  %109 = load i32, ptr %50, align 8, !tbaa !544
  %110 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 4
  store i32 %109, ptr %110, align 8, !tbaa !776
  %111 = load i32, ptr %91, align 8
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %112, -7
  %114 = icmp ult i32 %113, 4
  br i1 %114, label %115, label %225, !prof !777

115:                                              ; preds = %103
  %116 = load ptr, ptr @df, align 8, !tbaa !285
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !526
  %119 = zext i32 %105 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !285
  %122 = getelementptr inbounds %struct.df_insn_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !529
  %124 = load ptr, ptr %123, align 8, !tbaa !285
  %125 = icmp eq ptr %124, null
  br i1 %125, label %225, label %126, !prof !778

126:                                              ; preds = %115, %221
  %127 = phi ptr [ %223, %221 ], [ %124, %115 ]
  %128 = phi ptr [ %222, %221 ], [ %123, %115 ]
  %129 = getelementptr inbounds %struct.df_base_ref, ptr %127, i64 0, i32 6
  %130 = load i32, ptr %129, align 8, !tbaa !323
  %131 = load i32, ptr %127, align 8
  %132 = and i32 %131, 4194304
  %133 = icmp eq i32 %132, 0
  %134 = icmp ult i32 %130, 53
  br i1 %133, label %135, label %150, !prof !779

135:                                              ; preds = %126
  br i1 %134, label %136, label %144, !prof !780

136:                                              ; preds = %135
  %137 = zext nneg i32 %130 to i64
  %138 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !323
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %160, !prof !781

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %143 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %142, i32 noundef %130) #26
  br label %160

144:                                              ; preds = %135
  %145 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %130) #27, !range !341
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %151, label %147, !prof !782

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %149 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %148, i32 noundef %130) #26
  br label %151

150:                                              ; preds = %126
  br i1 %134, label %160, label %151, !prof !783

151:                                              ; preds = %144, %147, %150
  %152 = load ptr, ptr @reg_renumber, align 8, !tbaa !285
  %153 = zext i32 %130 to i64
  %154 = getelementptr inbounds i16, ptr %152, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !309
  %156 = icmp sgt i16 %155, -1
  %157 = load i8, ptr @ira_conflicts_p, align 1
  %158 = icmp ne i8 %157, 0
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %160, label %221, !prof !784

160:                                              ; preds = %136, %141, %151, %150
  %161 = load i32, ptr %127, align 8
  %162 = and i32 %161, 65536
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %221, !prof !785

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.df_base_ref, ptr %127, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !323
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 39
  br i1 %169, label %170, label %214, !prof !786

170:                                              ; preds = %164
  %171 = and i32 %161, 33554432
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %214, !prof !787

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load i32, ptr %174, align 8, !tbaa !323
  %176 = lshr i32 %167, 16
  %177 = and i32 %176, 255
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !323
  %181 = zext i8 %180 to i32
  %182 = add i32 %175, %181
  %183 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %130) #26
  %184 = trunc i32 %183 to i8
  tail call fastcc void @init_live_subregs(i8 noundef zeroext %184, ptr noundef %7, ptr noundef %11, i32 noundef %130, ptr noundef nonnull %166) #27
  %185 = load i32, ptr %127, align 8
  %186 = and i32 %185, 67108864
  %187 = icmp eq i32 %186, 0
  %188 = and i32 %175, -4
  %189 = add i32 %182, 3
  %190 = and i32 %189, -4
  %191 = select i1 %187, i32 %188, i32 %175, !prof !787
  %192 = select i1 %187, i32 %190, i32 %182, !prof !787
  %193 = zext i32 %130 to i64
  %194 = getelementptr inbounds i32, ptr %11, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !298
  %196 = tail call i32 @llvm.smin.i32(i32 %192, i32 %195)
  %197 = icmp ult i32 %191, %196
  br i1 %197, label %198, label %205, !prof !788

198:                                              ; preds = %173
  %199 = getelementptr inbounds ptr, ptr %7, i64 %193
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi i32 [ %191, %198 ], [ %203, %200 ]
  %202 = load ptr, ptr %199, align 8, !tbaa !285
  tail call fastcc void @RESET_BIT(ptr noundef %202, i32 noundef %201) #27
  %203 = add nuw i32 %201, 1
  %204 = icmp eq i32 %203, %196
  br i1 %204, label %205, label %200, !prof !789, !llvm.loop !790

205:                                              ; preds = %200, %173
  %206 = getelementptr inbounds ptr, ptr %7, i64 %193
  %207 = load ptr, ptr %206, align 8, !tbaa !285
  %208 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %207) #26
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210, !prof !791

210:                                              ; preds = %205
  store i32 0, ptr %194, align 4, !tbaa !298
  %211 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %130) #26
  br label %221

212:                                              ; preds = %205
  %213 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %130) #26
  br label %221

214:                                              ; preds = %170, %164
  %215 = and i32 %161, 1048576
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221, !prof !792

217:                                              ; preds = %214
  %218 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %130) #26
  %219 = zext i32 %130 to i64
  %220 = getelementptr inbounds i32, ptr %11, i64 %219
  store i32 0, ptr %220, align 4, !tbaa !298
  br label %221

221:                                              ; preds = %217, %214, %212, %210, %151, %160
  %222 = getelementptr inbounds ptr, ptr %128, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !285
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %126, !prof !793, !llvm.loop !794

225:                                              ; preds = %221, %115, %103
  %226 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %3, ptr noundef %4) #26
  %227 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %227, ptr noundef %3) #26
  %228 = load i32, ptr %91, align 8
  %229 = and i32 %228, 65535
  %230 = add nsw i32 %229, -7
  %231 = icmp ult i32 %230, 4
  br i1 %231, label %232, label %320, !prof !777

232:                                              ; preds = %225
  %233 = load ptr, ptr @df, align 8, !tbaa !285
  %234 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 10
  %235 = load ptr, ptr %234, align 8, !tbaa !526
  %236 = zext i32 %105 to i64
  %237 = getelementptr inbounds ptr, ptr %235, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !285
  %239 = getelementptr inbounds %struct.df_insn_info, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !795
  %241 = load ptr, ptr %240, align 8, !tbaa !285
  %242 = icmp eq ptr %241, null
  br i1 %242, label %320, label %243, !prof !778

243:                                              ; preds = %232, %316
  %244 = phi ptr [ %318, %316 ], [ %241, %232 ]
  %245 = phi ptr [ %317, %316 ], [ %240, %232 ]
  %246 = getelementptr inbounds %struct.df_base_ref, ptr %244, i64 0, i32 6
  %247 = load i32, ptr %246, align 8, !tbaa !323
  %248 = getelementptr inbounds %struct.df_base_ref, ptr %244, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !323
  %250 = load i32, ptr %244, align 8
  %251 = and i32 %250, 2097152
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253, !prof !796

253:                                              ; preds = %243
  %254 = and i32 %250, 167772160
  %255 = icmp eq i32 %254, 134217728
  br i1 %255, label %316, label %256, !prof !797

256:                                              ; preds = %253, %243
  %257 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %247) #26
  %258 = icmp eq i32 %257, 0
  %259 = icmp ult i32 %247, 53
  br i1 %258, label %260, label %275, !prof !798

260:                                              ; preds = %256
  br i1 %259, label %261, label %269, !prof !799

261:                                              ; preds = %260
  %262 = zext nneg i32 %247 to i64
  %263 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !323
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %279, !prof !800

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %268 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %267, i32 noundef %247) #26
  br label %279

269:                                              ; preds = %260
  %270 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %247) #27, !range !341
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %276, label %272, !prof !801

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %274 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %273, i32 noundef %247) #26
  br label %276

275:                                              ; preds = %256
  br i1 %259, label %279, label %276, !prof !802

276:                                              ; preds = %269, %272, %275
  %277 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %247) #27, !range !341
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %316, label %279, !prof !803

279:                                              ; preds = %261, %266, %276, %275
  %280 = load i32, ptr %249, align 8
  %281 = and i32 %280, 65535
  %282 = icmp eq i32 %281, 39
  br i1 %282, label %283, label %311, !prof !804

283:                                              ; preds = %279
  %284 = load i32, ptr %244, align 8
  %285 = and i32 %284, 50331648
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %311, !prof !805

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1, i32 0, i32 0, i64 1
  %289 = load i32, ptr %288, align 8, !tbaa !323
  %290 = lshr i32 %280, 16
  %291 = and i32 %290, 255
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !323
  %295 = zext i8 %294 to i32
  %296 = add i32 %289, %295
  %297 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %247) #26
  %298 = trunc i32 %297 to i8
  tail call fastcc void @init_live_subregs(i8 noundef zeroext %298, ptr noundef %7, ptr noundef %11, i32 noundef %247, ptr noundef nonnull %249) #27
  %299 = zext i32 %247 to i64
  %300 = getelementptr inbounds i32, ptr %11, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !298
  %302 = tail call i32 @llvm.smin.i32(i32 %296, i32 %301)
  %303 = icmp ult i32 %289, %302
  br i1 %303, label %304, label %314, !prof !806

304:                                              ; preds = %287
  %305 = getelementptr inbounds ptr, ptr %7, i64 %299
  br label %306

306:                                              ; preds = %304, %306
  %307 = phi i32 [ %289, %304 ], [ %309, %306 ]
  %308 = load ptr, ptr %305, align 8, !tbaa !285
  tail call fastcc void @SET_BIT(ptr noundef %308, i32 noundef %307) #27
  %309 = add nuw i32 %307, 1
  %310 = icmp eq i32 %309, %302
  br i1 %310, label %314, label %306, !prof !807, !llvm.loop !808

311:                                              ; preds = %283, %279
  %312 = zext i32 %247 to i64
  %313 = getelementptr inbounds i32, ptr %11, i64 %312
  store i32 0, ptr %313, align 4, !tbaa !298
  br label %314

314:                                              ; preds = %306, %287, %311
  %315 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %247) #26
  br label %316

316:                                              ; preds = %276, %314, %253
  %317 = getelementptr inbounds ptr, ptr %245, i64 1
  %318 = load ptr, ptr %317, align 8, !tbaa !285
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %243, !prof !809, !llvm.loop !810

320:                                              ; preds = %316, %232, %225, %100, %100
  %321 = phi ptr [ %94, %100 ], [ %94, %100 ], [ %106, %225 ], [ %106, %232 ], [ %106, %316 ]
  %322 = phi ptr [ %93, %100 ], [ %93, %100 ], [ %106, %225 ], [ %106, %232 ], [ %106, %316 ]
  %323 = phi ptr [ %92, %100 ], [ %92, %100 ], [ %107, %225 ], [ %107, %232 ], [ %107, %316 ]
  %324 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !323
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %90, !prof !811, !llvm.loop !812

327:                                              ; preds = %320
  %328 = load ptr, ptr %85, align 8, !tbaa !323
  br label %329

329:                                              ; preds = %327, %84
  %330 = phi ptr [ %328, %327 ], [ %86, %84 ]
  %331 = phi ptr [ %321, %327 ], [ %46, %84 ]
  %332 = phi ptr [ %322, %327 ], [ %45, %84 ]
  %333 = phi ptr [ %323, %327 ], [ %44, %84 ]
  %334 = load ptr, ptr %330, align 8, !tbaa !323
  %335 = icmp eq ptr %334, null
  br i1 %335, label %378, label %336, !prof !813

336:                                              ; preds = %90, %329
  %337 = phi ptr [ %333, %329 ], [ %92, %90 ]
  %338 = phi ptr [ %332, %329 ], [ %93, %90 ]
  %339 = phi ptr [ %331, %329 ], [ %94, %90 ]
  %340 = phi ptr [ %334, %329 ], [ %96, %90 ]
  br label %341

341:                                              ; preds = %336, %349
  %342 = phi ptr [ %351, %349 ], [ %340, %336 ]
  %343 = load i32, ptr %342, align 8
  %344 = trunc i32 %343 to i16
  switch i16 %344, label %345 [
    i16 11, label %349
    i16 13, label %349
  ], !prof !814

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 0, i32 1, i32 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !323
  %348 = icmp eq ptr %347, %43
  br i1 %348, label %349, label %353, !prof !815

349:                                              ; preds = %341, %341, %345
  %350 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 0, i32 1, i32 0, i32 0, i64 1
  %351 = load ptr, ptr %350, align 8, !tbaa !323
  %352 = icmp eq ptr %351, null
  br i1 %352, label %378, label %341, !prof !816, !llvm.loop !817

353:                                              ; preds = %345, %371
  %354 = phi ptr [ %374, %371 ], [ %337, %345 ]
  %355 = phi ptr [ %373, %371 ], [ %338, %345 ]
  %356 = phi ptr [ %372, %371 ], [ %339, %345 ]
  %357 = phi ptr [ %376, %371 ], [ %342, %345 ]
  %358 = load i32, ptr %357, align 8
  %359 = trunc i32 %358 to i16
  switch i16 %359, label %360 [
    i16 13, label %371
    i16 11, label %371
  ], !prof !818

360:                                              ; preds = %353
  %361 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1, i32 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !323
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %378, !prof !819

364:                                              ; preds = %360
  %365 = tail call ptr @new_insn_chain() #26
  store ptr %356, ptr %365, align 8, !tbaa !773
  store ptr %365, ptr %354, align 8, !tbaa !285
  %366 = getelementptr inbounds %struct.insn_chain, ptr %365, i64 0, i32 1
  %367 = load i32, ptr %50, align 8, !tbaa !544
  %368 = getelementptr inbounds %struct.insn_chain, ptr %365, i64 0, i32 4
  store i32 %367, ptr %368, align 8, !tbaa !776
  %369 = getelementptr inbounds %struct.insn_chain, ptr %365, i64 0, i32 3
  store ptr %357, ptr %369, align 8, !tbaa !775
  %370 = getelementptr inbounds %struct.insn_chain, ptr %365, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %370, ptr noundef %3) #26
  br label %371

371:                                              ; preds = %353, %353, %364
  %372 = phi ptr [ %356, %353 ], [ %365, %364 ], [ %356, %353 ]
  %373 = phi ptr [ %355, %353 ], [ %365, %364 ], [ %355, %353 ]
  %374 = phi ptr [ %354, %353 ], [ %366, %364 ], [ %354, %353 ]
  %375 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1, i32 0, i32 0, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !323
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %353, !prof !820, !llvm.loop !821

378:                                              ; preds = %349, %371, %360, %329
  %379 = phi ptr [ %331, %329 ], [ %356, %360 ], [ %372, %371 ], [ %339, %349 ]
  %380 = phi ptr [ %332, %329 ], [ %355, %360 ], [ %373, %371 ], [ %338, %349 ]
  %381 = phi ptr [ %333, %329 ], [ %354, %360 ], [ %374, %371 ], [ %337, %349 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #28
  %382 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 5
  %383 = load ptr, ptr %382, align 8, !tbaa !654
  %384 = load ptr, ptr @cfun, align 8, !tbaa !285
  %385 = getelementptr inbounds %struct.function, ptr %384, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !514
  %387 = load ptr, ptr %386, align 8, !tbaa !516
  %388 = icmp eq ptr %383, %387
  br i1 %388, label %37, label %42, !prof !822, !llvm.loop !823

389:                                              ; preds = %37, %397
  %390 = phi i32 [ %398, %397 ], [ %40, %37 ]
  %391 = phi i64 [ %399, %397 ], [ 0, %37 ]
  %392 = getelementptr inbounds ptr, ptr %7, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !285
  %394 = icmp eq ptr %393, null
  br i1 %394, label %397, label %395, !prof !824

395:                                              ; preds = %389
  tail call void @free(ptr noundef nonnull %393) #27
  %396 = load i32, ptr @max_regno, align 4, !tbaa !298
  br label %397

397:                                              ; preds = %389, %395
  %398 = phi i32 [ %390, %389 ], [ %396, %395 ]
  %399 = add nuw nsw i64 %391, 1
  %400 = zext i32 %398 to i64
  %401 = icmp ult i64 %399, %400
  br i1 %401, label %389, label %402, !prof !825, !llvm.loop !826

402:                                              ; preds = %397, %37
  store ptr %38, ptr @reload_insn_chain, align 8, !tbaa !285
  store ptr null, ptr %39, align 8, !tbaa !285
  tail call void @free(ptr noundef %7) #27
  tail call void @free(ptr noundef %11) #27
  tail call void @bitmap_obstack_free(ptr noundef %3) #26
  tail call void @bitmap_obstack_free(ptr noundef %4) #26
  %403 = load ptr, ptr @dump_file, align 8, !tbaa !285
  %404 = icmp eq ptr %403, null
  br i1 %404, label %406, label %405, !prof !492

405:                                              ; preds = %402
  tail call fastcc void @print_insn_chains(ptr noundef nonnull %403) #27
  br label %406

406:                                              ; preds = %405, %402
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #28
  ret void
}

; Function Attrs: optsize
declare i32 @reload(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @finish_subregs_of_mode() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_finish_assign() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_destroy() local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loops_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_finish_pass(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_scan_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_scan_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !827 !PGOFuncName !828 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !323
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !829 !PGOFuncName !830 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !323
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !831

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !323
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #26
  store i32 %8, ptr %2, align 8, !tbaa !323
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @no_equiv(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !832 !PGOFuncName !833 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %32, !prof !834

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %9 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !602
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !285
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %32, label %15, !prof !835

15:                                               ; preds = %7
  store ptr %13, ptr %11, align 8, !tbaa !602
  %16 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10
  store ptr null, ptr %16, align 8, !tbaa !615
  %17 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !596
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32, !prof !836

20:                                               ; preds = %15
  %21 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !285
  %22 = getelementptr inbounds ptr, ptr %21, i64 %10
  store ptr null, ptr %22, align 8, !tbaa !285
  %23 = icmp eq ptr %12, null
  br i1 %23, label %32, label %24, !prof !837

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %30, %24 ], [ %12, %20 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !323
  %28 = tail call ptr @find_reg_note(ptr noundef %27, i32 noundef 3, ptr noundef null) #26
  tail call void @remove_note(ptr noundef %27, ptr noundef %28) #26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !323
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !prof !838, !llvm.loop !839

32:                                               ; preds = %24, %20, %15, %7, %3
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ue_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @validate_equiv_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !840 !PGOFuncName !841 {
  store ptr %2, ptr @equiv_mem, align 8, !tbaa !285
  store i1 false, ptr @equiv_mem_modified, align 4
  %4 = tail call i32 @side_effects_p(ptr noundef %2) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %62, !prof !842

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = load i1, ptr @equiv_mem_modified, align 4
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %62, label %10, !prof !843

10:                                               ; preds = %6, %56
  %11 = phi ptr [ %58, %56 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %56, !prof !844

16:                                               ; preds = %10
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %1) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %62, !prof !845

19:                                               ; preds = %16
  %20 = load i32, ptr %11, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %30, !prof !846

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 8
  %25 = or i32 %24, %20
  %26 = and i32 %25, 67108864
  %27 = icmp eq i32 %26, 0
  %28 = icmp sgt i32 %20, -1
  %29 = and i1 %28, %27
  br i1 %29, label %62, label %30, !prof !847

30:                                               ; preds = %23, %19
  %31 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !323
  tail call void @note_stores(ptr noundef %32, ptr noundef nonnull @validate_equiv_mem_from_store, ptr noundef null) #26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !323
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36, !prof !848

36:                                               ; preds = %30, %52
  %37 = phi ptr [ %54, %52 ], [ %34, %30 ]
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %52, !prof !849

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !323
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %52, !prof !850

49:                                               ; preds = %43
  %50 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %45, ptr noundef %2) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62, !prof !851

52:                                               ; preds = %36, %43, %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !323
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %36, !prof !852, !llvm.loop !853

56:                                               ; preds = %52, %30, %10
  %57 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !323
  %59 = icmp eq ptr %58, null
  %60 = load i1, ptr @equiv_mem_modified, align 4
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %10, !prof !854, !llvm.loop !855

62:                                               ; preds = %16, %23, %56, %49, %6, %3
  %63 = phi i32 [ 0, %3 ], [ 0, %6 ], [ 0, %49 ], [ 1, %16 ], [ 0, %23 ], [ 0, %56 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #14 !prof !856 !PGOFuncName !857 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !285
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !672
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_init_varies_p(ptr noundef %0) unnamed_addr #0 !prof !858 !PGOFuncName !859 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %26 [
    i16 43, label %5
    i16 35, label %66
    i16 30, label %66
    i16 32, label %66
    i16 31, label %66
    i16 33, label %66
    i16 45, label %66
    i16 44, label %66
    i16 37, label %13
    i16 17, label %23
  ], !prof !860

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %66, label %8, !prof !417

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !323
  %11 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %10) #27
  %12 = icmp ne i32 %11, 0
  br label %66

13:                                               ; preds = %1
  %14 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.equivalence, ptr %14, i64 %16, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !636
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %66, !prof !861

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  %22 = icmp ne i8 %21, 0
  br label %66

23:                                               ; preds = %1
  %24 = and i32 %2, 134217728
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %1, %23
  %27 = zext nneg i32 %3 to i64
  %28 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !285
  %30 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !323
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %66, label %33, !prof !436

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = zext i8 %31 to i64
  br label %36

36:                                               ; preds = %33, %64
  %37 = phi i64 [ %35, %33 ], [ %38, %64 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !323
  switch i8 %40, label %64 [
    i8 101, label %46
    i8 69, label %41
  ], !prof !862

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !323
  %44 = load i32, ptr %43, align 8, !tbaa !588
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %57, label %64

46:                                               ; preds = %36
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !323
  %49 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %48) #27
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %66, !prof !863

51:                                               ; preds = %57
  %52 = add nuw nsw i64 %58, 1
  %53 = load ptr, ptr %42, align 8, !tbaa !323
  %54 = load i32, ptr %53, align 8, !tbaa !588
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %64, !llvm.loop !864

57:                                               ; preds = %41, %51
  %58 = phi i64 [ %52, %51 ], [ 0, %41 ]
  %59 = phi ptr [ %53, %51 ], [ %43, %41 ]
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !285
  %62 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %61) #27
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %51, label %66

64:                                               ; preds = %51, %41, %36, %46
  %65 = icmp sgt i64 %37, 1
  br i1 %65, label %36, label %66, !prof !865, !llvm.loop !866

66:                                               ; preds = %46, %64, %57, %26, %23, %13, %20, %1, %1, %1, %1, %1, %1, %1, %5, %8
  %67 = phi i1 [ true, %5 ], [ %12, %8 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %13 ], [ %22, %20 ], [ true, %23 ], [ false, %26 ], [ true, %57 ], [ true, %46 ], [ false, %64 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_init_movable_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %36 [
    i16 23, label %7
    i16 46, label %75
    i16 25, label %75
    i16 75, label %75
    i16 74, label %75
    i16 77, label %75
    i16 76, label %75
    i16 78, label %75
    i16 79, label %75
    i16 37, label %10
    i16 19, label %75
    i16 17, label %33
  ], !prof !869

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !323
  br label %3

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #27
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %13, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !628
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %16, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !628
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %24, label %20, !prof !870

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %13, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !636
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %75, !prof !871

24:                                               ; preds = %20, %10
  %25 = load ptr, ptr @reg_info_p, align 8, !tbaa !285
  %26 = getelementptr inbounds %struct.reg_info_t, ptr %25, i64 %13, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !620
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %75, !prof !872

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %4, i8 noundef zeroext 0) #26
  %31 = icmp eq i8 %30, 0
  %32 = zext i1 %31 to i32
  br label %75

33:                                               ; preds = %3
  %34 = and i32 %5, 134217728
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %3, %33
  %37 = and i32 %5, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !285
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !323
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %44, !prof !873

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %46 = zext i8 %42 to i64
  br label %47

47:                                               ; preds = %44, %73
  %48 = phi i64 [ %46, %44 ], [ %49, %73 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !323
  switch i8 %51, label %73 [
    i8 101, label %52
    i8 69, label %57
  ], !prof !874

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !323
  %55 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %54, i32 noundef %1) #27, !range !561
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %73, !prof !875

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !323
  %60 = load i32, ptr %59, align 8, !tbaa !588
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %57
  %63 = phi i64 [ %67, %66 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73, !prof !876

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = load ptr, ptr %58, align 8, !tbaa !323
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !285
  %71 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %70, i32 noundef %1) #27, !range !561
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %62, !prof !876, !llvm.loop !877

73:                                               ; preds = %62, %47, %52
  %74 = icmp sgt i64 %48, 1
  br i1 %74, label %47, label %75, !prof !878, !llvm.loop !879

75:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %52, %73, %66, %36, %33, %20, %29, %24
  %76 = phi i32 [ 1, %20 ], [ 0, %24 ], [ %32, %29 ], [ 0, %33 ], [ 1, %36 ], [ 0, %66 ], [ 0, %52 ], [ 1, %73 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @contains_replace_regs(ptr nocapture noundef readonly %0) unnamed_addr #17 !prof !880 !PGOFuncName !881 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %11 [
    i16 30, label %49
    i16 35, label %49
    i16 44, label %49
    i16 45, label %49
    i16 32, label %49
    i16 31, label %49
    i16 33, label %49
    i16 36, label %49
    i16 46, label %49
    i16 121, label %49
    i16 37, label %4
  ], !prof !882

4:                                                ; preds = %1
  %5 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.equivalence, ptr %5, i64 %7, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !636
  %10 = sext i8 %9 to i32
  br label %49

11:                                               ; preds = %1
  %12 = and i32 %2, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !285
  %16 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !323
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %49, label %19, !prof !883

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %19, %47
  %23 = phi i64 [ %21, %19 ], [ %24, %47 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !323
  switch i8 %26, label %47 [
    i8 101, label %27
    i8 69, label %32
  ], !prof !884

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !323
  %30 = tail call fastcc i32 @contains_replace_regs(ptr noundef %29) #27, !range !647
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %49, !prof !885

32:                                               ; preds = %22
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %34 = load ptr, ptr %33, align 8, !tbaa !323
  %35 = load i32, ptr %34, align 8, !tbaa !588
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %41, %32
  %38 = phi i64 [ %42, %41 ], [ %36, %32 ]
  %39 = trunc i64 %38 to i32
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = add nsw i64 %38, -1
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !285
  %45 = tail call fastcc i32 @contains_replace_regs(ptr noundef %44) #27, !range !647
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %49, !llvm.loop !886

47:                                               ; preds = %37, %22, %27
  %48 = icmp sgt i64 %23, 1
  br i1 %48, label %22, label %49, !prof !887, !llvm.loop !888

49:                                               ; preds = %27, %47, %41, %11, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %50 = phi i32 [ %10, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %11 ], [ 1, %41 ], [ 1, %27 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @memref_used_between_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !889 !PGOFuncName !890 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !323
  %7 = load ptr, ptr %4, align 8, !tbaa !323
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %32, label %9, !prof !891

9:                                                ; preds = %3, %27
  %10 = phi ptr [ %29, %27 ], [ %6, %3 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %27, label %15, !prof !892

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !323
  %18 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %17) #27, !range !561
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32, !prof !893

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27, !prof !894

24:                                               ; preds = %20
  %25 = and i32 %21, 67108864
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !895

27:                                               ; preds = %9, %20, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !323
  %30 = load ptr, ptr %4, align 8, !tbaa !323
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %9, !prof !896, !llvm.loop !897

32:                                               ; preds = %15, %24, %27, %3
  %33 = phi i32 [ 0, %3 ], [ 0, %27 ], [ 1, %24 ], [ 1, %15 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @validate_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @remove_death(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @prev_nondebug_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #14 !prof !898 !PGOFuncName !899 {
  %2 = load ptr, ptr @df, align 8, !tbaa !285
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !552
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !900

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !555
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @simplify_replace_fn_rtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @adjust_cleared_regs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !281 !PGOFuncName !901 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %8) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.equivalence, ptr %12, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !627
  %17 = load ptr, ptr %16, align 8, !tbaa !285
  %18 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %17, ptr noundef null, ptr noundef nonnull @adjust_cleared_regs, ptr noundef %2) #26
  br label %19

19:                                               ; preds = %7, %3, %11
  %20 = phi ptr [ %18, %11 ], [ null, %3 ], [ null, %7 ]
  ret ptr %20
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @validate_equiv_mem_from_store(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !902 !PGOFuncName !903 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %13, !prof !904

7:                                                ; preds = %3
  %8 = load ptr, ptr @equiv_mem, align 8, !tbaa !285
  %9 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %0, ptr noundef %8) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21, !prof !905

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ %4, %3 ]
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %22, !prof !906

17:                                               ; preds = %13
  %18 = load ptr, ptr @equiv_mem, align 8, !tbaa !285
  %19 = tail call i32 @true_dependence(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %18, ptr noundef nonnull @rtx_varies_p) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !907

21:                                               ; preds = %17, %7
  store i1 true, ptr @equiv_mem_modified, align 4
  br label %22

22:                                               ; preds = %21, %17, %13
  ret void
}

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @memref_referenced_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !908 !PGOFuncName !909 {
  br label %3

3:                                                ; preds = %34, %2
  %4 = phi ptr [ %1, %2 ], [ %35, %34 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %36 [
    i16 30, label %75
    i16 35, label %75
    i16 44, label %75
    i16 45, label %75
    i16 32, label %75
    i16 31, label %75
    i16 33, label %75
    i16 36, label %75
    i16 46, label %75
    i16 121, label %75
    i16 122, label %75
    i16 37, label %7
    i16 43, label %14
    i16 23, label %17
  ], !prof !910

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_equiv, align 8, !tbaa !285
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #27
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.equivalence, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !615
  %13 = icmp eq ptr %12, null
  br i1 %13, label %75, label %34, !prof !911

14:                                               ; preds = %3
  %15 = tail call i32 @true_dependence(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @rtx_varies_p) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %75, !prof !912

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !323
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %28, !prof !913

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !323
  %26 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %25) #27, !range !561
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %75, !prof !914

28:                                               ; preds = %17
  %29 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef nonnull %19) #27, !range !561
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %75, !prof !915

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !323
  br label %34

34:                                               ; preds = %31, %7
  %35 = phi ptr [ %33, %31 ], [ %12, %7 ]
  br label %3

36:                                               ; preds = %3, %14
  %37 = and i32 %5, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !285
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !323
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %44, !prof !916

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %46 = zext i8 %42 to i64
  br label %47

47:                                               ; preds = %44, %73
  %48 = phi i64 [ %46, %44 ], [ %49, %73 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !323
  switch i8 %51, label %73 [
    i8 101, label %52
    i8 69, label %57
  ], !prof !917

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !323
  %55 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %54) #27, !range !561
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %75, !prof !918

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !323
  %60 = load i32, ptr %59, align 8, !tbaa !588
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %57
  %63 = phi i64 [ %67, %66 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73, !prof !919

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = load ptr, ptr %58, align 8, !tbaa !323
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !285
  %71 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %70) #27, !range !561
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %62, label %75, !prof !920, !llvm.loop !921

73:                                               ; preds = %62, %47, %52
  %74 = icmp sgt i64 %48, 1
  br i1 %74, label %47, label %75, !prof !922, !llvm.loop !923

75:                                               ; preds = %28, %23, %7, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %52, %73, %66, %36, %14
  %76 = phi i32 [ 1, %14 ], [ 0, %36 ], [ 1, %66 ], [ 1, %52 ], [ 0, %73 ], [ 1, %28 ], [ 1, %23 ], [ 0, %7 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ]
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @function_invariant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_cover_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #18 !prof !924 !PGOFuncName !925 {
  store i32 0, ptr %0, align 4, !tbaa !926
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #19 !prof !928 !PGOFuncName !929 {
  %3 = load i32, ptr %0, align 4, !tbaa !926
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !298
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !930

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !285
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !931

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !285
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !926
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !prof !932, !llvm.loop !933

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #20 !prof !934 !PGOFuncName !935 {
  %4 = zext nneg i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !323
  %8 = zext i8 %7 to i64
  %9 = sext i32 %0 to i64
  br label %10

10:                                               ; preds = %13, %3
  %11 = phi i64 [ %14, %13 ], [ %8, %3 ]
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %19, !prof !936

13:                                               ; preds = %10
  %14 = add nsw i64 %11, -1
  %15 = add nuw nsw i64 %14, %9
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %10, label %19, !prof !937, !llvm.loop !938

19:                                               ; preds = %10, %13
  %20 = phi i8 [ 0, %13 ], [ 1, %10 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !491 !PGOFuncName !939 {
  %2 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !285
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2, i32 noundef %0) #27, !range !561
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !492

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #26
  store ptr %6, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !285
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #16 !prof !491 !PGOFuncName !940 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !492

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !941
  %7 = load i32, ptr %0, align 8, !tbaa !742
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
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #21 !prof !942 !PGOFuncName !943 {
  %5 = load ptr, ptr %1, align 8, !tbaa !681
  store ptr %5, ptr %0, align 8, !tbaa !944
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !946
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !547

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !944
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !947
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !949

14:                                               ; preds = %9
  %15 = shl i32 %12, 7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %2, %9 ]
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !950
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !322
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %25 = and i32 %17, 63
  %26 = zext nneg i32 %25 to i64
  %27 = lshr i64 %23, %26
  store i64 %27, ptr %24, align 8, !tbaa !951
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add i32 %17, %29
  store i32 %30, ptr %3, align 4, !tbaa !298
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #19 !prof !952 !PGOFuncName !953 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !951
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !954

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !955

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !298
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !956, !llvm.loop !957

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !298
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !298
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !950
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !944
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !950
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !958

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !322
  store i64 %35, ptr %3, align 8, !tbaa !951
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !959

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !298
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !298
  %40 = load i32, ptr %23, align 8, !tbaa !950
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !950
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !960, !llvm.loop !961

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !962
  store ptr %44, ptr %0, align 8, !tbaa !944
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !963

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !947
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !298
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !951
  store i32 %16, ptr %1, align 4, !tbaa !298
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #22 !prof !964 !PGOFuncName !965 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !951
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !951
  %6 = load i32, ptr %1, align 4, !tbaa !298
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !298
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %0) unnamed_addr #14 !prof !966 !PGOFuncName !967 {
  %2 = load ptr, ptr @reg_renumber, align 8, !tbaa !285
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !309
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %14, label %7, !prof !968

7:                                                ; preds = %1
  %8 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !323
  %9 = icmp ne i8 %8, 0
  %10 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !prof !969
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %7 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @new_insn_chain() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_live_subregs(i8 noundef zeroext %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !970 !PGOFuncName !971 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !323
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %7) #27
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !285
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !323
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %21, label %22, !prof !972

21:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2817, ptr noundef nonnull @.str.39) #26
  br label %22

22:                                               ; preds = %5, %21
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !298
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39, !prof !973

27:                                               ; preds = %22
  %28 = getelementptr inbounds ptr, ptr %1, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !285
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !prof !974

31:                                               ; preds = %27
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %19) #26
  store ptr %32, ptr %28, align 8, !tbaa !285
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = icmp eq i8 %0, 0
  br i1 %35, label %37, label %36, !prof !975

36:                                               ; preds = %33
  tail call void @sbitmap_ones(ptr noundef %34) #26
  br label %38

37:                                               ; preds = %33
  tail call void @sbitmap_zero(ptr noundef %34) #26
  br label %38

38:                                               ; preds = %37, %36
  store i32 %19, ptr %24, align 4, !tbaa !298
  br label %39

39:                                               ; preds = %22, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 !prof !976 !PGOFuncName !977 {
  %3 = load ptr, ptr %0, align 8, !tbaa !978
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !980

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
  %15 = load i64, ptr %14, align 8, !tbaa !322
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !323
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !323
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !322
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !322
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 !prof !981 !PGOFuncName !982 {
  %3 = load ptr, ptr %0, align 8, !tbaa !978
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !983

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
  %15 = load i64, ptr %14, align 8, !tbaa !322
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !323
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !323
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !322
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !322
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_insn_chains(ptr noundef %0) unnamed_addr #0 !prof !281 !PGOFuncName !984 {
  %2 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !285
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @print_insn_chain(ptr noundef %0, ptr noundef nonnull %5) #27
  %6 = load ptr, ptr %5, align 8, !tbaa !285
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !985

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_insn_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !281 !PGOFuncName !986 {
  %3 = getelementptr inbounds %struct.insn_chain, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !775
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !323
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %6) #27
  %8 = getelementptr inbounds %struct.insn_chain, ptr %1, i64 0, i32 6
  tail call void @bitmap_print(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #26
  %9 = getelementptr inbounds %struct.insn_chain, ptr %1, i64 0, i32 7
  tail call void @bitmap_print(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1) #26
  ret void
}

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind optsize }
attributes #27 = { optsize }
attributes #28 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!279}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!36 = !{ptr @ira_allocate, ptr @xmalloc, i64 1212941}
!37 = !{ptr @ira_free, ptr @free, i64 1212615}
!38 = !{ptr @ira_allocate_bitmap, ptr @bitmap_obstack_alloc_stat, i64 149787}
!39 = !{ptr @ira_init_register_move_cost, ptr @init_move_cost, i64 5}
!40 = !{ptr @ira_init_register_move_cost, ptr @xmalloc, i64 12}
!41 = !{ptr @ira_init_once, ptr @ira_init_costs_once, i64 1}
!42 = !{ptr @ira_init, ptr @free_register_move_costs, i64 1}
!43 = !{ptr @ira_init, ptr @setup_reg_mode_hard_regset, i64 1}
!44 = !{ptr @ira_init, ptr @setup_alloc_regs, i64 1}
!45 = !{ptr @ira_init, ptr @setup_class_subset_and_memory_move_costs, i64 1}
!46 = !{ptr @ira_init, ptr @find_reg_class_closure, i64 1}
!47 = !{ptr @ira_init, ptr @setup_hard_regno_cover_class, i64 1}
!48 = !{ptr @ira_init, ptr @setup_reg_class_nregs, i64 1}
!49 = !{ptr @ira_init, ptr @setup_prohibited_class_mode_regs, i64 1}
!50 = !{ptr @ira_init, ptr @ira_init_costs, i64 1}
!51 = !{ptr @free_register_move_costs, ptr @free, i64 10}
!52 = !{ptr @setup_alloc_regs, ptr @setup_class_hard_regs, i64 1}
!53 = !{ptr @setup_alloc_regs, ptr @setup_available_class_regs, i64 1}
!54 = !{ptr @setup_class_subset_and_memory_move_costs, ptr @ix86_memory_move_cost, i64 2184}
!55 = !{ptr @setup_class_subset_and_memory_move_costs, ptr @hard_reg_set_subset_p, i64 365}
!56 = !{ptr @find_reg_class_closure, ptr @setup_reg_subclasses, i64 1}
!57 = !{ptr @find_reg_class_closure, ptr @setup_cover_and_important_classes, i64 1}
!58 = !{ptr @find_reg_class_closure, ptr @setup_class_translate, i64 1}
!59 = !{ptr @find_reg_class_closure, ptr @reorder_important_classes, i64 1}
!60 = !{ptr @find_reg_class_closure, ptr @setup_reg_class_relations, i64 1}
!61 = !{ptr @setup_reg_class_nregs, ptr @reg_classes_intersect_p, i64 1175}
!62 = !{ptr @setup_prohibited_class_mode_regs, ptr @ix86_hard_regno_mode_ok, i64 610}
!63 = !{ptr @setup_reg_subclasses, ptr @hard_reg_set_empty_p, i64 13}
!64 = !{ptr @setup_reg_subclasses, ptr @hard_reg_set_subset_p, i64 278}
!65 = !{ptr @setup_cover_and_important_classes, ptr @regclass_for_constraint, i64 108}
!66 = !{ptr @setup_cover_and_important_classes, ptr @hard_reg_set_equal_p, i64 56}
!67 = !{ptr @setup_cover_and_important_classes, ptr @reg_classes_intersect_p, i64 3}
!68 = !{ptr @setup_cover_and_important_classes, ptr @hard_reg_set_empty_p, i64 16}
!69 = !{ptr @setup_cover_and_important_classes, ptr @hard_reg_set_subset_p, i64 18}
!70 = !{ptr @setup_class_translate, ptr @hard_reg_set_equal_p, i64 213}
!71 = !{ptr @setup_class_translate, ptr @hard_reg_set_empty_p, i64 6}
!72 = !{ptr @reorder_important_classes, ptr @spec_qsort, i64 1}
!73 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_empty_p, i64 419}
!74 = !{ptr @setup_reg_class_relations, ptr @reg_class_subset_p, i64 2}
!75 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_intersect_p, i64 357}
!76 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_subset_p, i64 14853}
!77 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_equal_p, i64 885}
!78 = !{ptr @ira_finish_once, ptr @ira_finish_costs_once, i64 1}
!79 = !{ptr @ira_finish_once, ptr @free_register_move_costs, i64 1}
!80 = !{ptr @ira_setup_eliminable_regset, ptr @compute_regs_asm_clobbered, i64 6652}
!81 = !{ptr @compute_regs_asm_clobbered, ptr @insn_contains_asm, i64 1524251}
!82 = !{ptr @insn_contains_asm, ptr @for_each_rtx, i64 1536488}
!83 = !{ptr @mark_elimination, ptr @df_lr_get_bb_info, i64 534673}
!84 = !{ptr @mark_elimination, ptr @bitmap_bit_p, i64 534673}
!85 = !{ptr @mark_elimination, ptr @bitmap_clear_bit, i64 534672}
!86 = !{ptr @mark_elimination, ptr @bitmap_set_bit, i64 534672}
!87 = !{ptr @rest_of_handle_ira, ptr @ira, i64 6652}
!88 = !{ptr @ira, ptr @timevar_push_1, i64 4}
!89 = !{ptr @ira, ptr @init_caller_save, i64 6651}
!90 = !{ptr @ira, ptr @setup_prohibited_mode_move_regs, i64 6652}
!91 = !{ptr @ira, ptr @df_note_add_problem, i64 6652}
!92 = !{ptr @ira, ptr @df_live_add_problem, i64 6652}
!93 = !{ptr @ira, ptr @df_live_set_all_dirty, i64 1}
!94 = !{ptr @ira, ptr @df_analyze, i64 14778}
!95 = !{ptr @ira, ptr @df_clear_flags, i64 6652}
!96 = !{ptr @ira, ptr @regstat_init_n_sets_and_refs, i64 8128}
!97 = !{ptr @ira, ptr @regstat_compute_ri, i64 8128}
!98 = !{ptr @ira, ptr @generate_setjmp_warnings, i64 1}
!99 = !{ptr @ira, ptr @leaf_function_p, i64 6652}
!100 = !{ptr @ira, ptr @resize_reg_info, i64 6652}
!101 = !{ptr @ira, ptr @ira_set_pseudo_classes, i64 1}
!102 = !{ptr @ira, ptr @update_equiv_regs, i64 6652}
!103 = !{ptr @ira, ptr @bitmap_obstack_initialize, i64 6652}
!104 = !{ptr @ira, ptr @max_reg_num, i64 33258}
!105 = !{ptr @ira, ptr @ira_allocate, i64 19953}
!106 = !{ptr @ira, ptr @find_reg_equiv_invariant_const, i64 6651}
!107 = !{ptr @ira, ptr @get_insns, i64 13305}
!108 = !{ptr @ira, ptr @rebuild_jump_labels, i64 1}
!109 = !{ptr @ira, ptr @purge_all_dead_edges, i64 1}
!110 = !{ptr @ira, ptr @timevar_pop_1, i64 4}
!111 = !{ptr @ira, ptr @ira_setup_eliminable_regset, i64 6652}
!112 = !{ptr @ira, ptr @flow_loops_find, i64 8127}
!113 = !{ptr @ira, ptr @record_loop_exits, i64 8127}
!114 = !{ptr @ira, ptr @fwrite, i64 2}
!115 = !{ptr @ira, ptr @ira_build, i64 6652}
!116 = !{ptr @ira, ptr @too_high_register_pressure_p, i64 6652}
!117 = !{ptr @ira, ptr @ira_color, i64 6652}
!118 = !{ptr @ira, ptr @ira_emit, i64 6652}
!119 = !{ptr @ira, ptr @ira_initiate_assign, i64 6651}
!120 = !{ptr @ira, ptr @expand_reg_info, i64 1475}
!121 = !{ptr @ira, ptr @setup_preferred_alternate_classes_for_new_pseudos, i64 1475}
!122 = !{ptr @ira, ptr @ira_flattening, i64 1475}
!123 = !{ptr @ira, ptr @setup_allocno_assignment_flags, i64 1475}
!124 = !{ptr @ira, ptr @ira_reassign_conflict_allocnos, i64 1475}
!125 = !{ptr @ira, ptr @setup_reg_renumber, i64 6652}
!126 = !{ptr @ira, ptr @calculate_allocation_cost, i64 6652}
!127 = !{ptr @ira, ptr @delete_trivially_dead_insns, i64 6652}
!128 = !{ptr @ira, ptr @VEC_rtx_gc_safe_grow, i64 6652}
!129 = !{ptr @ira, ptr @VEC_rtx_base_address, i64 13304}
!130 = !{ptr @ira, ptr @regstat_free_n_sets_and_refs, i64 8128}
!131 = !{ptr @ira, ptr @regstat_free_ri, i64 8128}
!132 = !{ptr @ira, ptr @allocate_initial_values, i64 6652}
!133 = !{ptr @ira, ptr @fix_reg_equiv_init, i64 6651}
!134 = !{ptr @ira, ptr @df_set_flags, i64 6652}
!135 = !{ptr @ira, ptr @build_insn_chain, i64 6652}
!136 = !{ptr @ira, ptr @reload, i64 6652}
!137 = !{ptr @ira, ptr @finish_subregs_of_mode, i64 6652}
!138 = !{ptr @ira, ptr @ira_free, i64 19953}
!139 = !{ptr @ira, ptr @ira_finish_assign, i64 6651}
!140 = !{ptr @ira, ptr @ira_destroy, i64 6652}
!141 = !{ptr @ira, ptr @flow_loops_free, i64 6652}
!142 = !{ptr @ira, ptr @free_dominance_info, i64 6652}
!143 = !{ptr @ira, ptr @cleanup_cfg, i64 6651}
!144 = !{ptr @ira, ptr @bitmap_obstack_release, i64 6652}
!145 = !{ptr @ira, ptr @df_finish_pass, i64 6652}
!146 = !{ptr @ira, ptr @df_scan_alloc, i64 6652}
!147 = !{ptr @ira, ptr @df_scan_blocks, i64 6652}
!148 = !{ptr @setup_prohibited_mode_move_regs, ptr @gen_rtx_REG, i64 4}
!149 = !{ptr @setup_prohibited_mode_move_regs, ptr @gen_rtx_fmt_ee_stat, i64 2}
!150 = !{ptr @setup_prohibited_mode_move_regs, ptr @gen_rtx_fmt_iuuBieie_stat, i64 2}
!151 = !{ptr @setup_prohibited_mode_move_regs, ptr @ix86_hard_regno_mode_ok, i64 4611}
!152 = !{ptr @setup_prohibited_mode_move_regs, ptr @rhs_regno, i64 1874}
!153 = !{ptr @setup_prohibited_mode_move_regs, ptr @df_ref_change_reg_with_loc, i64 1874}
!154 = !{ptr @setup_prohibited_mode_move_regs, ptr @recog_memoized, i64 937}
!155 = !{ptr @setup_prohibited_mode_move_regs, ptr @extract_insn, i64 239}
!156 = !{ptr @setup_prohibited_mode_move_regs, ptr @constrain_operands, i64 239}
!157 = !{ptr @update_equiv_regs, ptr @xcalloc, i64 6652}
!158 = !{ptr @update_equiv_regs, ptr @ggc_alloc_cleared_stat, i64 6652}
!159 = !{ptr @update_equiv_regs, ptr @init_alias_analysis, i64 6652}
!160 = !{ptr @update_equiv_regs, ptr @no_equiv, i64 49199}
!161 = !{ptr @update_equiv_regs, ptr @single_set_2, i64 2}
!162 = !{ptr @update_equiv_regs, ptr @note_stores, i64 876892}
!163 = !{ptr @update_equiv_regs, ptr @find_reg_note, i64 1862262}
!164 = !{ptr @update_equiv_regs, ptr @fancy_abort, i64 3}
!165 = !{ptr @update_equiv_regs, ptr @rhs_regno, i64 1319525}
!166 = !{ptr @update_equiv_regs, ptr @rtx_equal_p, i64 56142}
!167 = !{ptr @update_equiv_regs, ptr @gen_rtx_fmt_ue_stat, i64 321867}
!168 = !{ptr @update_equiv_regs, ptr @reg_preferred_class, i64 2800045}
!169 = !{ptr @update_equiv_regs, ptr @rtx_varies_p, i64 306430}
!170 = !{ptr @update_equiv_regs, ptr @copy_rtx, i64 98037}
!171 = !{ptr @update_equiv_regs, ptr @set_unique_reg_note, i64 102823}
!172 = !{ptr @update_equiv_regs, ptr @remove_note, i64 4787}
!173 = !{ptr @update_equiv_regs, ptr @validate_equiv_mem, i64 103950}
!174 = !{ptr @update_equiv_regs, ptr @REG_N_REFS, i64 56635}
!175 = !{ptr @update_equiv_regs, ptr @equiv_init_varies_p, i64 14}
!176 = !{ptr @update_equiv_regs, ptr @equiv_init_movable_p, i64 47872}
!177 = !{ptr @update_equiv_regs, ptr @get_insns, i64 6652}
!178 = !{ptr @update_equiv_regs, ptr @contains_replace_regs, i64 38529}
!179 = !{ptr @update_equiv_regs, ptr @memref_used_between_p, i64 27920}
!180 = !{ptr @update_equiv_regs, ptr @df_notes_rescan, i64 27369}
!181 = !{ptr @update_equiv_regs, ptr @bitmap_obstack_alloc_stat, i64 6651}
!182 = !{ptr @update_equiv_regs, ptr @reg_mentioned_p, i64 491198}
!183 = !{ptr @update_equiv_regs, ptr @can_throw_internal, i64 21625}
!184 = !{ptr @update_equiv_regs, ptr @asm_noperands, i64 21624}
!185 = !{ptr @update_equiv_regs, ptr @validate_replace_rtx, i64 21623}
!186 = !{ptr @update_equiv_regs, ptr @remove_death, i64 421}
!187 = !{ptr @update_equiv_regs, ptr @delete_insn, i64 6882}
!188 = !{ptr @update_equiv_regs, ptr @prev_nondebug_insn, i64 21204}
!189 = !{ptr @update_equiv_regs, ptr @emit_insn_before, i64 6461}
!190 = !{ptr @update_equiv_regs, ptr @df_insn_rescan, i64 6467}
!191 = !{ptr @update_equiv_regs, ptr @bitmap_set_bit, i64 6882}
!192 = !{ptr @update_equiv_regs, ptr @df_live_get_bb_info, i64 237960}
!193 = !{ptr @update_equiv_regs, ptr @bitmap_and_compl_into, i64 475920}
!194 = !{ptr @update_equiv_regs, ptr @df_lr_get_bb_info, i64 237960}
!195 = !{ptr @update_equiv_regs, ptr @simplify_replace_fn_rtx, i64 10}
!196 = !{ptr @update_equiv_regs, ptr @bitmap_obstack_free, i64 6651}
!197 = !{ptr @update_equiv_regs, ptr @end_alias_analysis, i64 6652}
!198 = !{ptr @update_equiv_regs, ptr @free, i64 6652}
!199 = !{ptr @find_reg_equiv_invariant_const, ptr @find_reg_note, i64 81478}
!200 = !{ptr @find_reg_equiv_invariant_const, ptr @function_invariant_p, i64 59421}
!201 = !{ptr @find_reg_equiv_invariant_const, ptr @memory_operand, i64 54989}
!202 = !{ptr @expand_reg_info, ptr @max_reg_num, i64 1475}
!203 = !{ptr @expand_reg_info, ptr @resize_reg_info, i64 1475}
!204 = !{ptr @expand_reg_info, ptr @setup_reg_classes, i64 34134}
!205 = !{ptr @setup_preferred_alternate_classes_for_new_pseudos, ptr @max_reg_num, i64 1475}
!206 = !{ptr @setup_preferred_alternate_classes_for_new_pseudos, ptr @reg_preferred_class, i64 34135}
!207 = !{ptr @setup_preferred_alternate_classes_for_new_pseudos, ptr @reg_alternate_class, i64 34135}
!208 = !{ptr @setup_preferred_alternate_classes_for_new_pseudos, ptr @reg_cover_class, i64 34134}
!209 = !{ptr @setup_preferred_alternate_classes_for_new_pseudos, ptr @setup_reg_classes, i64 34134}
!210 = !{ptr @setup_preferred_alternate_classes_for_new_pseudos, ptr @fprintf, i64 1}
!211 = !{ptr @setup_allocno_assignment_flags, ptr @ira_allocno_iter_init, i64 1475}
!212 = !{ptr @setup_allocno_assignment_flags, ptr @ira_allocno_iter_cond, i64 189461}
!213 = !{ptr @setup_allocno_assignment_flags, ptr @ira_free_allocno_updated_costs, i64 1}
!214 = !{ptr @setup_reg_renumber, ptr @ira_allocno_iter_init, i64 6652}
!215 = !{ptr @setup_reg_renumber, ptr @ira_allocno_iter_cond, i64 294002}
!216 = !{ptr @setup_reg_renumber, ptr @ira_free_allocno_updated_costs, i64 287350}
!217 = !{ptr @setup_reg_renumber, ptr @rhs_regno, i64 287350}
!218 = !{ptr @setup_reg_renumber, ptr @ira_hard_reg_not_in_set_p, i64 38991}
!219 = !{ptr @calculate_allocation_cost, ptr @ira_allocno_iter_init, i64 6652}
!220 = !{ptr @calculate_allocation_cost, ptr @ira_allocno_iter_cond, i64 294002}
!221 = !{ptr @calculate_allocation_cost, ptr @fprintf, i64 2}
!222 = !{ptr @VEC_rtx_gc_safe_grow, ptr @VEC_rtx_gc_reserve_exact, i64 6652}
!223 = !{ptr @fix_reg_equiv_init, ptr @max_reg_num, i64 6652}
!224 = !{ptr @fix_reg_equiv_init, ptr @ggc_realloc_stat, i64 1476}
!225 = !{ptr @fix_reg_equiv_init, ptr @single_set_2, i64 1}
!226 = !{ptr @fix_reg_equiv_init, ptr @rhs_regno, i64 91849}
!227 = !{ptr @fix_reg_equiv_init, ptr @fancy_abort, i64 1}
!228 = !{ptr @build_insn_chain, ptr @bitmap_obstack_alloc_stat, i64 13304}
!229 = !{ptr @build_insn_chain, ptr @xcalloc, i64 6652}
!230 = !{ptr @build_insn_chain, ptr @xmalloc, i64 6652}
!231 = !{ptr @build_insn_chain, ptr @bitmap_set_bit, i64 5157593}
!232 = !{ptr @build_insn_chain, ptr @bitmap_clear, i64 267317}
!233 = !{ptr @build_insn_chain, ptr @df_lr_get_bb_info, i64 534634}
!234 = !{ptr @build_insn_chain, ptr @bmp_iter_set_init, i64 534634}
!235 = !{ptr @build_insn_chain, ptr @bmp_iter_set, i64 3514997}
!236 = !{ptr @build_insn_chain, ptr @bmp_iter_next, i64 2980363}
!237 = !{ptr @build_insn_chain, ptr @pseudo_for_reload_consideration_p, i64 3363077}
!238 = !{ptr @build_insn_chain, ptr @new_insn_chain, i64 1262707}
!239 = !{ptr @build_insn_chain, ptr @bitmap_bit_p, i64 1225654}
!240 = !{ptr @build_insn_chain, ptr @init_live_subregs, i64 4549}
!241 = !{ptr @build_insn_chain, ptr @RESET_BIT, i64 361}
!242 = !{ptr @build_insn_chain, ptr @sbitmap_empty_p, i64 198}
!243 = !{ptr @build_insn_chain, ptr @bitmap_clear_bit, i64 4909604}
!244 = !{ptr @build_insn_chain, ptr @bitmap_and_compl_into, i64 1261004}
!245 = !{ptr @build_insn_chain, ptr @bitmap_copy, i64 1262707}
!246 = !{ptr @build_insn_chain, ptr @SET_BIT, i64 5522}
!247 = !{ptr @build_insn_chain, ptr @free, i64 17286}
!248 = !{ptr @build_insn_chain, ptr @bitmap_obstack_free, i64 13304}
!249 = !{ptr @build_insn_chain, ptr @print_insn_chains, i64 1}
!250 = !{ptr @recog_memoized, ptr @recog, i64 935}
!251 = !{ptr @no_equiv, ptr @rhs_regno, i64 459248}
!252 = !{ptr @no_equiv, ptr @find_reg_note, i64 12100}
!253 = !{ptr @no_equiv, ptr @remove_note, i64 12100}
!254 = !{ptr @validate_equiv_mem, ptr @side_effects_p, i64 100641}
!255 = !{ptr @validate_equiv_mem, ptr @find_reg_note, i64 232216}
!256 = !{ptr @validate_equiv_mem, ptr @note_stores, i64 157247}
!257 = !{ptr @validate_equiv_mem, ptr @reg_overlap_mentioned_p, i64 74123}
!258 = !{ptr @equiv_init_varies_p, ptr @equiv_init_varies_p, i64 22}
!259 = !{ptr @equiv_init_varies_p, ptr @rhs_regno, i64 6}
!260 = !{ptr @equiv_init_varies_p, ptr @rtx_varies_p, i64 5}
!261 = !{ptr @equiv_init_movable_p, ptr @rhs_regno, i64 36765}
!262 = !{ptr @equiv_init_movable_p, ptr @rtx_varies_p, i64 34966}
!263 = !{ptr @equiv_init_movable_p, ptr @equiv_init_movable_p, i64 258118}
!264 = !{ptr @contains_replace_regs, ptr @rhs_regno, i64 34409}
!265 = !{ptr @contains_replace_regs, ptr @contains_replace_regs, i64 45947}
!266 = !{ptr @memref_used_between_p, ptr @memref_referenced_p, i64 35696}
!267 = !{ptr @validate_equiv_mem_from_store, ptr @reg_overlap_mentioned_p, i64 136359}
!268 = !{ptr @validate_equiv_mem_from_store, ptr @true_dependence, i64 32970}
!269 = !{ptr @memref_referenced_p, ptr @rhs_regno, i64 86083}
!270 = !{ptr @memref_referenced_p, ptr @true_dependence, i64 3053}
!271 = !{ptr @memref_referenced_p, ptr @memref_referenced_p, i64 115578}
!272 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @VEC_rtx_base_space, i64 6652}
!273 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 6651}
!274 = !{ptr @init_live_subregs, ptr @rhs_regno, i64 4586}
!275 = !{ptr @init_live_subregs, ptr @fancy_abort, i64 1}
!276 = !{ptr @init_live_subregs, ptr @sbitmap_alloc, i64 3980}
!277 = !{ptr @init_live_subregs, ptr @sbitmap_ones, i64 1132}
!278 = !{ptr @init_live_subregs, ptr @sbitmap_zero, i64 3259}
!279 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!280 = !{!"function_entry_count", i64 1212941}
!281 = !{!"function_entry_count", i64 0}
!282 = !{!"function_entry_count", i64 1212615}
!283 = !{!"function_entry_count", i64 149787}
!284 = !{!"function_entry_count", i64 148483}
!285 = !{!286, !286, i64 0}
!286 = !{!"any pointer", !287, i64 0}
!287 = !{!"omnipotent char", !288, i64 0}
!288 = !{!"Simple C/C++ TBAA"}
!289 = !{!290, !291, i64 0}
!290 = !{!"ira_allocno", !291, i64 0, !291, i64 4, !291, i64 8, !291, i64 12, !286, i64 16, !286, i64 24, !286, i64 32, !291, i64 40, !291, i64 44, !291, i64 48, !291, i64 52, !291, i64 56, !291, i64 60, !291, i64 64, !291, i64 68, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96, !286, i64 104, !286, i64 112, !291, i64 120, !291, i64 124, !286, i64 128, !291, i64 136, !291, i64 140, !292, i64 144, !292, i64 152, !291, i64 160, !291, i64 164, !291, i64 168, !291, i64 172, !291, i64 172, !291, i64 172, !291, i64 172, !291, i64 172, !291, i64 172, !291, i64 172, !291, i64 172, !291, i64 173, !291, i64 173, !291, i64 173, !291, i64 173, !286, i64 176, !286, i64 184, !286, i64 192, !286, i64 200, !286, i64 208, !291, i64 216, !291, i64 220, !286, i64 224, !286, i64 232, !291, i64 240}
!291 = !{!"int", !287, i64 0}
!292 = !{!"long", !287, i64 0}
!293 = !{!290, !291, i64 4}
!294 = !{!290, !286, i64 32}
!295 = !{!296, !286, i64 0}
!296 = !{!"ira_loop_tree_node", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !291, i64 56, !287, i64 60, !286, i64 64, !287, i64 72, !287, i64 76, !286, i64 184, !286, i64 192, !286, i64 200, !286, i64 208}
!297 = !{!296, !286, i64 8}
!298 = !{!291, !291, i64 0}
!299 = !{!290, !291, i64 12}
!300 = distinct !{!300, !301}
!301 = !{!"llvm.loop.mustprogress"}
!302 = distinct !{!302, !301}
!303 = !{!"ira.c:print_class_cover"}
!304 = distinct !{!304, !301}
!305 = distinct !{!305, !301}
!306 = !{!"function_entry_count", i64 6}
!307 = !{!"branch_weights", i32 7, i32 1}
!308 = !{!"branch_weights", i32 2713, i32 1663}
!309 = !{!310, !310, i64 0}
!310 = !{!"short", !287, i64 0}
!311 = !{!"branch_weights", i32 163, i32 4212}
!312 = distinct !{!312, !301}
!313 = !{!"branch_weights", i32 7, i32 156}
!314 = distinct !{!314, !301}
!315 = !{!"function_entry_count", i64 1}
!316 = !{!"function_entry_count", i64 2}
!317 = !{!"ira.c:free_register_move_costs"}
!318 = !{!"branch_weights", i32 169, i32 7}
!319 = !{!"branch_weights", i32 3, i32 172}
!320 = distinct !{!320, !301}
!321 = !{!"ira.c:setup_reg_mode_hard_regset"}
!322 = !{!292, !292, i64 0}
!323 = !{!287, !287, i64 0}
!324 = !{!"branch_weights", i32 1, i32 4611}
!325 = !{!"branch_weights", i32 10529, i32 263}
!326 = !{!"branch_weights", i32 6180, i32 4611}
!327 = distinct !{!327, !301}
!328 = !{!"branch_weights", i32 88, i32 4524}
!329 = distinct !{!329, !301}
!330 = !{!"branch_weights", i32 2, i32 86}
!331 = distinct !{!331, !301}
!332 = !{!"ira.c:setup_alloc_regs"}
!333 = !{!"branch_weights", i32 2, i32 1}
!334 = !{!"ira.c:setup_class_subset_and_memory_move_costs"}
!335 = distinct !{!335, !301}
!336 = !{!"branch_weights", i32 2, i32 27}
!337 = !{!"branch_weights", i32 110, i32 2154}
!338 = !{!"branch_weights", i32 104, i32 2160}
!339 = !{!"branch_weights", i32 27, i32 2236}
!340 = distinct !{!340, !301}
!341 = !{i8 0, i8 2}
!342 = !{!"branch_weights", i32 28, i32 702}
!343 = distinct !{!343, !301}
!344 = !{!"branch_weights", i32 2, i32 26}
!345 = distinct !{!345, !301}
!346 = !{!"ira.c:find_reg_class_closure"}
!347 = !{!"ira.c:setup_hard_regno_cover_class"}
!348 = !{!"branch_weights", i32 159, i32 1}
!349 = !{!"branch_weights", i32 159, i32 245}
!350 = distinct !{!350, !301}
!351 = !{!"branch_weights", i32 15, i32 87}
!352 = !{!"branch_weights", i32 2, i32 52}
!353 = distinct !{!353, !301}
!354 = !{!"ira.c:setup_reg_class_nregs"}
!355 = !{!"branch_weights", i32 871, i32 1480}
!356 = !{!"branch_weights", i32 18, i32 794}
!357 = !{!"branch_weights", i32 6, i32 2345}
!358 = !{!"branch_weights", i32 28, i32 2322}
!359 = distinct !{!359, !301}
!360 = distinct !{!360, !301}
!361 = !{!"ira.c:setup_prohibited_class_mode_regs"}
!362 = !{!"branch_weights", i32 127, i32 1}
!363 = !{!"branch_weights", i32 174, i32 1}
!364 = !{!"branch_weights", i32 1039, i32 181}
!365 = !{!"branch_weights", i32 1045, i32 174}
!366 = distinct !{!366, !301}
!367 = distinct !{!367, !301}
!368 = !{!"branch_weights", i32 65, i32 127}
!369 = distinct !{!369, !301}
!370 = !{!"ira.c:setup_class_hard_regs"}
!371 = !{!"branch_weights", i32 1432, i32 1}
!372 = !{!"branch_weights", i32 1329, i32 104}
!373 = !{!"branch_weights", i32 28, i32 1404}
!374 = distinct !{!374, !301}
!375 = distinct !{!375, !301}
!376 = !{!"ira.c:setup_available_class_regs"}
!377 = distinct !{!377, !301}
!378 = distinct !{!378, !301}
!379 = !{!"function_entry_count", i64 31100}
!380 = !{!"ira.c:hard_reg_set_subset_p"}
!381 = !{!"ira.c:setup_reg_subclasses"}
!382 = !{!"branch_weights", i32 28, i32 140}
!383 = distinct !{!383, !301, !384, !385}
!384 = !{!"llvm.loop.isvectorized", i32 1}
!385 = !{!"llvm.loop.unroll.runtime.disable"}
!386 = distinct !{!386, !301}
!387 = !{!"branch_weights", i32 24, i32 4}
!388 = !{!"branch_weights", i32 24, i32 599}
!389 = !{!"branch_weights", i32 453, i32 147}
!390 = !{!"branch_weights", i32 147, i32 1049}
!391 = distinct !{!391, !301}
!392 = !{!"branch_weights", i32 24, i32 598}
!393 = distinct !{!393, !301}
!394 = distinct !{!394, !301}
!395 = !{!"ira.c:setup_cover_and_important_classes"}
!396 = !{!397, !286, i64 1720}
!397 = !{!"gcc_target", !398, i64 0, !400, i64 368, !401, i64 664, !291, i64 744, !286, i64 752, !286, i64 760, !286, i64 768, !286, i64 776, !286, i64 784, !286, i64 792, !286, i64 800, !286, i64 808, !286, i64 816, !286, i64 824, !286, i64 832, !286, i64 840, !286, i64 848, !286, i64 856, !286, i64 864, !286, i64 872, !286, i64 880, !286, i64 888, !286, i64 896, !286, i64 904, !286, i64 912, !286, i64 920, !286, i64 928, !286, i64 936, !286, i64 944, !286, i64 952, !286, i64 960, !286, i64 968, !286, i64 976, !286, i64 984, !286, i64 992, !286, i64 1000, !286, i64 1008, !286, i64 1016, !286, i64 1024, !286, i64 1032, !286, i64 1040, !286, i64 1048, !286, i64 1056, !292, i64 1064, !292, i64 1072, !286, i64 1080, !286, i64 1088, !286, i64 1096, !286, i64 1104, !286, i64 1112, !286, i64 1120, !286, i64 1128, !286, i64 1136, !286, i64 1144, !286, i64 1152, !286, i64 1160, !286, i64 1168, !402, i64 1176, !286, i64 1232, !286, i64 1240, !286, i64 1248, !286, i64 1256, !286, i64 1264, !286, i64 1272, !286, i64 1280, !286, i64 1288, !286, i64 1296, !286, i64 1304, !286, i64 1312, !286, i64 1320, !286, i64 1328, !286, i64 1336, !286, i64 1344, !286, i64 1352, !286, i64 1360, !286, i64 1368, !286, i64 1376, !286, i64 1384, !286, i64 1392, !286, i64 1400, !286, i64 1408, !286, i64 1416, !286, i64 1424, !286, i64 1432, !286, i64 1440, !286, i64 1448, !286, i64 1456, !292, i64 1464, !403, i64 1472, !286, i64 1664, !286, i64 1672, !286, i64 1680, !286, i64 1688, !286, i64 1696, !286, i64 1704, !286, i64 1712, !286, i64 1720, !286, i64 1728, !286, i64 1736, !286, i64 1744, !286, i64 1752, !286, i64 1760, !286, i64 1768, !286, i64 1776, !404, i64 1784, !405, i64 1792, !406, i64 1896, !407, i64 1968, !286, i64 2016, !287, i64 2024, !287, i64 2025, !287, i64 2026, !287, i64 2027, !287, i64 2028, !287, i64 2029, !287, i64 2030, !287, i64 2031, !287, i64 2032, !287, i64 2033, !287, i64 2034, !287, i64 2035}
!398 = !{!"asm_out", !286, i64 0, !286, i64 8, !286, i64 16, !399, i64 24, !399, i64 56, !286, i64 88, !286, i64 96, !286, i64 104, !286, i64 112, !286, i64 120, !286, i64 128, !286, i64 136, !286, i64 144, !286, i64 152, !286, i64 160, !286, i64 168, !286, i64 176, !286, i64 184, !286, i64 192, !286, i64 200, !286, i64 208, !286, i64 216, !286, i64 224, !286, i64 232, !286, i64 240, !286, i64 248, !286, i64 256, !286, i64 264, !286, i64 272, !286, i64 280, !286, i64 288, !286, i64 296, !286, i64 304, !286, i64 312, !286, i64 320, !286, i64 328, !286, i64 336, !286, i64 344, !286, i64 352, !286, i64 360}
!399 = !{!"asm_int_op", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24}
!400 = !{!"sched", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96, !286, i64 104, !286, i64 112, !286, i64 120, !286, i64 128, !286, i64 136, !286, i64 144, !286, i64 152, !286, i64 160, !286, i64 168, !286, i64 176, !286, i64 184, !286, i64 192, !286, i64 200, !286, i64 208, !286, i64 216, !286, i64 224, !286, i64 232, !286, i64 240, !286, i64 248, !286, i64 256, !286, i64 264, !286, i64 272, !286, i64 280, !286, i64 288}
!401 = !{!"vectorize", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72}
!402 = !{!"addr_space", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48}
!403 = !{!"calls", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96, !286, i64 104, !286, i64 112, !286, i64 120, !286, i64 128, !286, i64 136, !286, i64 144, !286, i64 152, !286, i64 160, !286, i64 168, !286, i64 176, !286, i64 184}
!404 = !{!"c", !286, i64 0}
!405 = !{!"cxx", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96}
!406 = !{!"emutls", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !287, i64 64, !287, i64 65}
!407 = !{!"target_option_hooks", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40}
!408 = !{!"branch_weights", i32 1, i32 2}
!409 = !{!"branch_weights", i32 0, i32 -2147483648}
!410 = !{!"branch_weights", i32 1, i32 127}
!411 = !{!"branch_weights", i32 127, i32 193}
!412 = distinct !{!412, !301}
!413 = distinct !{!413, !301}
!414 = distinct !{!414, !301}
!415 = distinct !{!415, !301}
!416 = !{!"branch_weights", i32 1, i32 159}
!417 = !{!"branch_weights", i32 1, i32 7}
!418 = !{!"branch_weights", i32 159, i32 65}
!419 = distinct !{!419, !301}
!420 = !{!"branch_weights", i32 3, i32 3}
!421 = distinct !{!421, !301}
!422 = !{!"branch_weights", i32 -2147483648, i32 0}
!423 = !{!"branch_weights", i32 24, i32 5}
!424 = !{!"branch_weights", i32 143, i32 1}
!425 = !{!"branch_weights", i32 3, i32 41}
!426 = !{!"branch_weights", i32 37, i32 5}
!427 = !{!"branch_weights", i32 23, i32 15}
!428 = !{!"branch_weights", i32 143, i32 201}
!429 = distinct !{!429, !301}
!430 = !{!"branch_weights", i32 404269678, i32 1743213970}
!431 = distinct !{!431, !301}
!432 = !{!"ira.c:setup_class_translate"}
!433 = distinct !{!433, !301}
!434 = distinct !{!434, !301}
!435 = !{!"branch_weights", i32 1, i32 3}
!436 = !{!"branch_weights", i32 1, i32 191}
!437 = !{!"branch_weights", i32 19, i32 1}
!438 = !{!"branch_weights", i32 191, i32 1025}
!439 = distinct !{!439, !301}
!440 = !{!"branch_weights", i32 127, i32 65}
!441 = distinct !{!441, !301}
!442 = !{!"branch_weights", i32 7, i32 21}
!443 = !{!"branch_weights", i32 223, i32 1}
!444 = !{!"branch_weights", i32 7, i32 7}
!445 = !{!"branch_weights", i32 7, i32 516}
!446 = distinct !{!446, !301}
!447 = !{!"branch_weights", i32 24, i32 16}
!448 = !{!"branch_weights", i32 223, i32 193}
!449 = distinct !{!449, !301}
!450 = distinct !{!450, !301}
!451 = !{!"ira.c:reorder_important_classes"}
!452 = distinct !{!452, !301}
!453 = !{!"branch_weights", i32 127, i32 961}
!454 = distinct !{!454, !301}
!455 = !{!"ira.c:setup_reg_class_relations"}
!456 = distinct !{!456, !301}
!457 = !{!"branch_weights", i32 622, i32 109}
!458 = !{!"branch_weights", i32 93, i32 17}
!459 = !{!"branch_weights", i32 12, i32 5}
!460 = !{!"branch_weights", i32 1, i32 5}
!461 = !{!"branch_weights", i32 5, i32 0}
!462 = !{!"branch_weights", i32 282, i32 433}
!463 = !{!"branch_weights", i32 177, i32 257}
!464 = !{!"branch_weights", i32 209, i32 49}
!465 = !{!"branch_weights", i32 49, i32 59}
!466 = distinct !{!466, !301}
!467 = !{!"branch_weights", i32 713, i32 1}
!468 = !{!"branch_weights", i32 10245, i32 1165}
!469 = !{!"branch_weights", i32 1092, i32 74}
!470 = !{!"branch_weights", i32 26, i32 49}
!471 = !{!"branch_weights", i32 25, i32 25}
!472 = !{!"branch_weights", i32 5327, i32 6083}
!473 = !{!"branch_weights", i32 714, i32 5370}
!474 = !{!"branch_weights", i32 3673, i32 1698}
!475 = !{!"branch_weights", i32 1614, i32 85}
!476 = !{!"branch_weights", i32 65, i32 21}
!477 = !{!"branch_weights", i32 713, i32 10696}
!478 = distinct !{!478, !301}
!479 = distinct !{!479, !301}
!480 = distinct !{!480, !301}
!481 = !{!"function_entry_count", i64 906}
!482 = !{!"ira.c:hard_reg_set_empty_p"}
!483 = !{!"function_entry_count", i64 1810}
!484 = !{!"ira.c:hard_reg_set_equal_p"}
!485 = !{!"function_entry_count", i64 23}
!486 = !{!"ira.c:comp_reg_classes_func"}
!487 = !{!"branch_weights", i32 576, i32 49}
!488 = !{!"branch_weights", i32 16, i32 9}
!489 = !{!"function_entry_count", i64 713}
!490 = !{!"ira.c:hard_reg_set_intersect_p"}
!491 = !{!"function_entry_count", i64 6652}
!492 = !{!"branch_weights", i32 6653, i32 1}
!493 = !{!397, !286, i64 1768}
!494 = !{!495, !287, i64 477}
!495 = !{!"rtl_data", !496, i64 0, !497, i64 40, !498, i64 96, !499, i64 112, !501, i64 208, !502, i64 248, !291, i64 312, !286, i64 320, !286, i64 328, !286, i64 336, !286, i64 344, !286, i64 352, !286, i64 360, !286, i64 368, !286, i64 376, !286, i64 384, !286, i64 392, !292, i64 400, !286, i64 408, !286, i64 416, !286, i64 424, !291, i64 432, !291, i64 436, !291, i64 440, !291, i64 444, !291, i64 448, !291, i64 452, !286, i64 456, !287, i64 464, !287, i64 465, !287, i64 466, !287, i64 467, !287, i64 468, !287, i64 469, !287, i64 470, !287, i64 471, !287, i64 472, !287, i64 473, !287, i64 474, !287, i64 475, !287, i64 476, !287, i64 477, !287, i64 478, !287, i64 479, !287, i64 480, !287, i64 481, !287, i64 482, !287, i64 483, !287, i64 484, !287, i64 485}
!496 = !{!"expr_status", !291, i64 0, !291, i64 4, !291, i64 8, !286, i64 16, !286, i64 24, !286, i64 32}
!497 = !{!"emit_status", !291, i64 0, !291, i64 4, !286, i64 8, !286, i64 16, !286, i64 24, !291, i64 32, !291, i64 36, !291, i64 40, !291, i64 44, !286, i64 48}
!498 = !{!"varasm_status", !286, i64 0, !291, i64 8}
!499 = !{!"incoming_args", !291, i64 0, !291, i64 4, !291, i64 8, !286, i64 16, !500, i64 24, !286, i64 88}
!500 = !{!"ix86_args", !291, i64 0, !291, i64 4, !291, i64 8, !291, i64 12, !291, i64 16, !291, i64 20, !291, i64 24, !291, i64 28, !291, i64 32, !291, i64 36, !291, i64 40, !291, i64 44, !291, i64 48, !291, i64 52, !291, i64 56, !291, i64 60}
!501 = !{!"function_subsections", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32}
!502 = !{!"rtl_eh", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !287, i64 48}
!503 = !{!397, !286, i64 1776}
!504 = !{!505, !291, i64 0}
!505 = !{!"", !291, i64 0, !291, i64 4}
!506 = !{!505, !291, i64 4}
!507 = !{!"branch_weights", i32 13305, i32 13305}
!508 = !{!"branch_weights", i32 2, i32 13304}
!509 = !{!"branch_weights", i32 26609, i32 1}
!510 = !{!"branch_weights", i32 1073819976, i32 1073663672}
!511 = !{!"branch_weights", i32 6653, i32 19956}
!512 = distinct !{!512, !301}
!513 = !{!"ira.c:compute_regs_asm_clobbered"}
!514 = !{!515, !286, i64 8}
!515 = !{!"function", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96, !291, i64 104, !291, i64 108, !291, i64 112, !291, i64 116, !291, i64 120, !291, i64 124, !286, i64 128, !291, i64 136, !291, i64 137, !291, i64 138, !291, i64 138, !291, i64 138, !291, i64 138, !291, i64 138, !291, i64 138, !291, i64 138, !291, i64 139, !291, i64 139, !291, i64 139, !291, i64 139, !291, i64 139, !291, i64 139, !291, i64 139}
!516 = !{!517, !286, i64 0}
!517 = !{!"control_flow_graph", !286, i64 0, !286, i64 8, !286, i64 16, !291, i64 24, !291, i64 28, !291, i64 32, !286, i64 40, !291, i64 48, !287, i64 52, !287, i64 60, !291, i64 68, !291, i64 72}
!518 = !{!519, !286, i64 56}
!519 = !{!"basic_block_def", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !287, i64 32, !286, i64 48, !286, i64 56, !287, i64 64, !292, i64 72, !291, i64 80, !291, i64 84, !291, i64 88, !291, i64 92, !291, i64 96}
!520 = !{!517, !286, i64 8}
!521 = !{!"branch_weights", i32 1, i32 6652}
!522 = !{!523, !286, i64 0}
!523 = !{!"rtl_bb_info", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !291, i64 32}
!524 = !{!"branch_weights", i32 257175, i32 1536489}
!525 = !{!"branch_weights", i32 1536489, i32 1}
!526 = !{!527, !286, i64 248}
!527 = !{!"df", !287, i64 0, !287, i64 64, !286, i64 128, !528, i64 136, !528, i64 176, !286, i64 216, !286, i64 224, !286, i64 232, !291, i64 240, !291, i64 244, !286, i64 248, !291, i64 256, !291, i64 260, !286, i64 264, !286, i64 272, !286, i64 280, !286, i64 288, !286, i64 296, !286, i64 304, !286, i64 312, !286, i64 320, !286, i64 328, !286, i64 336, !291, i64 344, !291, i64 348, !286, i64 352, !291, i64 360, !291, i64 364, !287, i64 365, !287, i64 366}
!528 = !{!"df_ref_info", !286, i64 0, !286, i64 8, !286, i64 16, !291, i64 24, !291, i64 28, !291, i64 32, !291, i64 36}
!529 = !{!530, !286, i64 8}
!530 = !{!"df_insn_info", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !291, i64 40}
!531 = distinct !{!531, !301}
!532 = distinct !{!532, !301}
!533 = !{!"branch_weights", i32 127, i32 229588737}
!534 = distinct !{!534, !301}
!535 = !{!"branch_weights", i32 6652, i32 250523}
!536 = distinct !{!536, !301}
!537 = !{!"function_entry_count", i64 1536488}
!538 = !{!"ira.c:insn_contains_asm"}
!539 = !{!"function_entry_count", i64 11061495}
!540 = !{!"ira.c:insn_contains_asm_1"}
!541 = !{!"branch_weights", i32 1172666, i32 9888831}
!542 = !{!"function_entry_count", i64 13304}
!543 = !{!"branch_weights", i32 1, i32 13304}
!544 = !{!519, !291, i64 80}
!545 = !{!546, !286, i64 16}
!546 = !{!"df_lr_bb_info", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24}
!547 = !{!"branch_weights", i32 1, i32 534713}
!548 = !{!"branch_weights", i32 13304, i32 521409}
!549 = distinct !{!549, !301}
!550 = !{!"function_entry_count", i64 1307490}
!551 = !{!"ira.c:df_lr_get_bb_info"}
!552 = !{!553, !291, i64 16}
!553 = !{!"dataflow", !286, i64 0, !286, i64 8, !291, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !291, i64 48, !287, i64 52, !287, i64 53, !287, i64 54}
!554 = !{!"branch_weights", i32 1307491, i32 1}
!555 = !{!553, !286, i64 8}
!556 = !{!"ira.c:gate_ira"}
!557 = !{!"ira.c:rest_of_handle_ira"}
!558 = !{!"ira.c:ira"}
!559 = !{!"branch_weights", i32 1, i32 6653}
!560 = !{!"branch_weights", i32 6653, i32 44269063}
!561 = !{i32 0, i32 2}
!562 = !{!515, !286, i64 32}
!563 = !{!"branch_weights", i32 5178, i32 1476}
!564 = !{!"branch_weights", i32 1476, i32 2180053}
!565 = !{!519, !286, i64 24}
!566 = !{!"branch_weights", i32 6652, i32 274009}
!567 = distinct !{!567, !301}
!568 = !{!"ira.c:setup_prohibited_mode_move_regs"}
!569 = !{!"branch_weights", i32 6652, i32 2}
!570 = !{!"branch_weights", i32 3676, i32 937}
!571 = !{!"branch_weights", i32 699, i32 239}
!572 = !{!"branch_weights", i32 103, i32 137}
!573 = distinct !{!573, !301}
!574 = distinct !{!574, !301}
!575 = !{!"ira.c:update_equiv_regs"}
!576 = distinct !{!576, !301}
!577 = !{!519, !291, i64 84}
!578 = !{!523, !286, i64 8}
!579 = !{!"branch_weights", i32 1, i32 257174}
!580 = !{!"branch_weights", i32 -1887524351, i32 1017781174}
!581 = !{!"branch_weights", i32 233324, i32 846902}
!582 = !{!"branch_weights", i32 1, i32 846902}
!583 = !{!"branch_weights", i32 846902, i32 0}
!584 = distinct !{!584, !301}
!585 = !{!"branch_weights", i32 2147481113, i32 2535}
!586 = !{!"branch_weights", i32 972611, i32 1}
!587 = !{!"branch_weights", i32 73279, i32 972611}
!588 = !{!589, !291, i64 0}
!589 = !{!"rtvec_def", !291, i64 0, !287, i64 8}
!590 = !{!"branch_weights", i32 73278, i32 1}
!591 = !{!"branch_weights", i32 73279, i32 74404}
!592 = !{!"branch_weights", i32 74404, i32 73278}
!593 = distinct !{!593, !301}
!594 = !{!"branch_weights", i32 1037891, i32 7999}
!595 = !{!"branch_weights", i32 7999, i32 1}
!596 = !{!597, !291, i64 28}
!597 = !{!"equivalence", !286, i64 0, !286, i64 8, !286, i64 16, !291, i64 24, !291, i64 28, !287, i64 32}
!598 = !{!"branch_weights", i32 1, i32 7999}
!599 = !{!"branch_weights", i32 1, i32 1045889}
!600 = !{!"branch_weights", i32 606067, i32 439823}
!601 = !{!"branch_weights", i32 246476, i32 359592}
!602 = !{!597, !286, i64 16}
!603 = !{!"branch_weights", i32 88442, i32 271151}
!604 = !{!"branch_weights", i32 1, i32 271151}
!605 = !{!"branch_weights", i32 265735, i32 5417}
!606 = !{!"branch_weights", i32 25588, i32 240148}
!607 = !{!"branch_weights", i32 75849, i32 2147407799}
!608 = !{!"branch_weights", i32 1, i32 31004}
!609 = !{!527, !286, i64 216}
!610 = !{!611, !291, i64 8}
!611 = !{!"df_reg_info", !286, i64 0, !291, i64 8}
!612 = !{!"branch_weights", i32 202359, i32 68793}
!613 = !{!"branch_weights", i32 45700, i32 23094}
!614 = !{!"branch_weights", i32 21152, i32 1943}
!615 = !{!597, !286, i64 0}
!616 = !{!"branch_weights", i32 21152, i32 1}
!617 = !{!"branch_weights", i32 100053878, i32 -1568165802}
!618 = !{!"branch_weights", i32 4635, i32 3277}
!619 = !{!"branch_weights", i32 211445, i32 12066}
!620 = !{!621, !291, i64 24}
!621 = !{!"reg_info_t", !291, i64 0, !291, i64 4, !291, i64 8, !291, i64 12, !291, i64 16, !291, i64 20, !291, i64 24}
!622 = !{!"branch_weights", i32 132988, i32 78458}
!623 = !{!"branch_weights", i32 63410, i32 69579}
!624 = !{!"branch_weights", i32 20623, i32 42788}
!625 = !{!"branch_weights", i32 47422, i32 7432}
!626 = !{!"branch_weights", i32 -1286115687, i32 54854, i32 54853}
!627 = !{!597, !286, i64 8}
!628 = !{!597, !291, i64 24}
!629 = !{!621, !291, i64 8}
!630 = !{!"branch_weights", i32 -1286773887, i32 438783}
!631 = !{!"branch_weights", i32 46370, i32 8478}
!632 = !{!"branch_weights", i32 14, i32 46357}
!633 = !{!"branch_weights", i32 7, i32 8}
!634 = !{!"branch_weights", i32 46363, i32 1}
!635 = !{!"branch_weights", i32 24156, i32 22208}
!636 = !{!597, !287, i64 32}
!637 = !{!"branch_weights", i32 257174, i32 1279735}
!638 = distinct !{!638, !301}
!639 = !{!"branch_weights", i32 -1089616918, i32 1551527799}
!640 = !{!"branch_weights", i32 233644, i32 812246}
!641 = !{!"branch_weights", i32 149588, i32 84057}
!642 = !{!"branch_weights", i32 149550, i32 39}
!643 = !{!"branch_weights", i32 65658, i32 83893}
!644 = !{!"branch_weights", i32 63416, i32 2243}
!645 = !{!"branch_weights", i32 1204905, i32 -274456312}
!646 = !{!"branch_weights", i32 37289, i32 26111}
!647 = !{i32 -128, i32 128}
!648 = !{!"branch_weights", i32 37233, i32 57}
!649 = !{!"branch_weights", i32 10211, i32 27023}
!650 = !{!"branch_weights", i32 26549, i32 475}
!651 = !{!"branch_weights", i32 58, i32 26492}
!652 = !{!"branch_weights", i32 6652, i32 1597718}
!653 = distinct !{!653, !301}
!654 = !{!519, !286, i64 48}
!655 = distinct !{!655, !301}
!656 = !{!"branch_weights", i32 -1888460381, i32 1017781174}
!657 = !{!"branch_weights", i32 205937, i32 873870}
!658 = !{!"branch_weights", i32 205937, i32 1}
!659 = !{!"branch_weights", i32 138460, i32 941346}
!660 = !{!"branch_weights", i32 491346, i32 450001}
!661 = !{!"branch_weights", i32 17025, i32 474322}
!662 = !{!"branch_weights", i32 452690, i32 21633}
!663 = !{!"branch_weights", i32 1, i32 21633}
!664 = !{!"branch_weights", i32 21633, i32 1}
!665 = !{!"branch_weights", i32 21213, i32 421}
!666 = !{!"branch_weights", i32 421, i32 29}
!667 = distinct !{!667, !301}
!668 = !{!"branch_weights", i32 1, i32 420}
!669 = !{!"branch_weights", i32 1, i32 421}
!670 = !{!"branch_weights", i32 420, i32 1}
!671 = distinct !{!671, !301}
!672 = !{!673, !291, i64 4}
!673 = !{!"regstat_n_sets_and_refs_t", !291, i64 0, !291, i64 4}
!674 = !{!621, !291, i64 0}
!675 = !{!"branch_weights", i32 14750, i32 6464}
!676 = !{!"branch_weights", i32 1, i32 6464}
!677 = !{!"branch_weights", i32 941346, i32 0}
!678 = distinct !{!678, !301}
!679 = !{!"branch_weights", i32 257174, i32 1279315}
!680 = distinct !{!680, !301}
!681 = !{!682, !286, i64 0}
!682 = !{!"bitmap_head_def", !286, i64 0, !286, i64 8, !291, i64 16, !286, i64 24}
!683 = !{!"branch_weights", i32 4293, i32 2361}
!684 = !{!"branch_weights", i32 1, i32 2360}
!685 = !{!686, !286, i64 16}
!686 = !{!"df_live_bb_info", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24}
!687 = !{!686, !286, i64 24}
!688 = !{!546, !286, i64 24}
!689 = !{!"branch_weights", i32 2360, i32 116674}
!690 = distinct !{!690, !301}
!691 = !{!"branch_weights", i32 2361, i32 1}
!692 = distinct !{!692, !301}
!693 = !{!"ira.c:find_reg_equiv_invariant_const"}
!694 = !{!"branch_weights", i32 6652, i32 1}
!695 = !{!"branch_weights", i32 886579, i32 81490}
!696 = !{!"branch_weights", i32 26492, i32 54999}
!697 = !{!"branch_weights", i32 4432, i32 243810568}
!698 = !{!"branch_weights", i32 4432, i32 50568}
!699 = !{!"branch_weights", i32 1, i32 4432}
!700 = !{!"branch_weights", i32 -1510539376, i32 -1393823360}
!701 = !{!"branch_weights", i32 81490, i32 0}
!702 = distinct !{!702, !301}
!703 = !{!"branch_weights", i32 961417, i32 6652}
!704 = distinct !{!704, !301}
!705 = !{!"ira.c:too_high_register_pressure_p"}
!706 = !{!"branch_weights", i32 6652, i32 6653}
!707 = distinct !{!707, !301}
!708 = !{!"branch_weights", i32 1, i32 13305}
!709 = !{!"function_entry_count", i64 1475}
!710 = !{!"ira.c:expand_reg_info"}
!711 = !{!"branch_weights", i32 1475, i32 1}
!712 = !{!"branch_weights", i32 1475, i32 32682}
!713 = distinct !{!713, !301}
!714 = !{!"ira.c:setup_preferred_alternate_classes_for_new_pseudos"}
!715 = !{!"branch_weights", i32 34157, i32 1166734807}
!716 = distinct !{!716, !301}
!717 = !{!"ira.c:setup_allocno_assignment_flags"}
!718 = !{!"branch_weights", i32 1, i32 1475}
!719 = !{!"branch_weights", i32 1, i32 188113}
!720 = !{!"branch_weights", i32 470411998, i32 -636653222}
!721 = !{!290, !291, i64 60}
!722 = !{!290, !291, i64 52}
!723 = !{!"branch_weights", i32 1475, i32 186638}
!724 = distinct !{!724, !301}
!725 = !{!"ira.c:setup_reg_renumber"}
!726 = !{!"branch_weights", i32 1, i32 287393}
!727 = !{!290, !286, i64 16}
!728 = !{!"branch_weights", i32 262994, i32 24400}
!729 = !{!290, !291, i64 168}
!730 = !{!"branch_weights", i32 223998, i32 38997}
!731 = !{!290, !291, i64 8}
!732 = !{!"branch_weights", i32 6556, i32 32442}
!733 = !{!"branch_weights", i32 6652, i32 280741}
!734 = distinct !{!734, !301}
!735 = !{!"ira.c:calculate_allocation_cost"}
!736 = !{!"branch_weights", i32 24400, i32 262994}
!737 = !{!290, !286, i64 184}
!738 = !{!"branch_weights", i32 154834, i32 108161}
!739 = !{!290, !291, i64 48}
!740 = distinct !{!740, !301}
!741 = !{!"ira.c:VEC_rtx_gc_safe_grow"}
!742 = !{!743, !291, i64 0}
!743 = !{!"VEC_rtx_base", !291, i64 0, !291, i64 4, !287, i64 8}
!744 = !{}
!745 = !{!"ira.c:VEC_rtx_base_address"}
!746 = !{!"ira.c:fix_reg_equiv_init"}
!747 = !{!"branch_weights", i32 1476, i32 5178}
!748 = distinct !{!748, !301}
!749 = !{!"branch_weights", i32 652265, i32 45939}
!750 = !{!"branch_weights", i32 367519, i32 1}
!751 = !{!"branch_weights", i32 44640, i32 1}
!752 = !{!"branch_weights", i32 30988, i32 14952}
!753 = !{!"branch_weights", i32 30988, i32 1}
!754 = !{!"branch_weights", i32 14952, i32 1}
!755 = !{!"branch_weights", i32 45939, i32 1}
!756 = !{!"branch_weights", i32 45939, i32 0}
!757 = distinct !{!757, !301}
!758 = !{!"branch_weights", i32 696729, i32 1475}
!759 = distinct !{!759, !301}
!760 = !{!"ira.c:build_insn_chain"}
!761 = !{!"branch_weights", i32 332601, i32 19957}
!762 = !{!"branch_weights", i32 6653, i32 345904}
!763 = distinct !{!763, !301}
!764 = !{!"branch_weights", i32 1, i32 690580524}
!765 = !{!"branch_weights", i32 690580524, i32 2079082275}
!766 = distinct !{!766, !301}
!767 = !{!"branch_weights", i32 1, i32 267356}
!768 = !{!"branch_weights", i32 1, i32 1908541}
!769 = !{!"branch_weights", i32 267356, i32 1641185}
!770 = distinct !{!770, !301}
!771 = !{!"branch_weights", i32 267357, i32 1613064}
!772 = !{!"branch_weights", i32 -1139163631, i32 848914411, i32 2482}
!773 = !{!774, !286, i64 0}
!774 = !{!"insn_chain", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !291, i64 32, !291, i64 36, !291, i64 36, !291, i64 36, !291, i64 36, !682, i64 40, !682, i64 72, !286, i64 104, !291, i64 112, !292, i64 120}
!775 = !{!774, !286, i64 24}
!776 = !{!774, !291, i64 32}
!777 = !{!"branch_weights", i32 -1621790598, i32 302158036}
!778 = !{!"branch_weights", i32 1, i32 1142040}
!779 = !{!"branch_weights", i32 741817, i32 4207301}
!780 = !{!"branch_weights", i32 320383, i32 421435}
!781 = !{!"branch_weights", i32 90612, i32 229772}
!782 = !{!"branch_weights", i32 1, i32 421435}
!783 = !{!"branch_weights", i32 2147483359, i32 289}
!784 = !{!"branch_weights", i32 -45427474, i32 10083}
!785 = !{!"branch_weights", i32 4949117, i32 1}
!786 = !{!"branch_weights", i32 201, i32 4948917}
!787 = !{!"branch_weights", i32 201, i32 1}
!788 = !{!"branch_weights", i32 200, i32 1}
!789 = !{!"branch_weights", i32 200, i32 166}
!790 = distinct !{!790, !301}
!791 = !{!"branch_weights", i32 44, i32 158}
!792 = !{!"branch_weights", i32 4948874, i32 44}
!793 = !{!"branch_weights", i32 1142040, i32 3807077}
!794 = distinct !{!794, !301}
!795 = !{!530, !286, i64 16}
!796 = !{!"branch_weights", i32 1230867, i32 99}
!797 = !{!"branch_weights", i32 3136, i32 2564}
!798 = !{!"branch_weights", i32 619165, i32 611746}
!799 = !{!"branch_weights", i32 264428, i32 354738}
!800 = !{!"branch_weights", i32 76867, i32 187562}
!801 = !{!"branch_weights", i32 1, i32 354738}
!802 = !{!"branch_weights", i32 969399684, i32 1178083964}
!803 = !{!"branch_weights", i32 1, i32 690334}
!804 = !{!"branch_weights", i32 4387, i32 1226524}
!805 = !{!"branch_weights", i32 4387, i32 1}
!806 = !{!"branch_weights", i32 4386, i32 1}
!807 = !{!"branch_weights", i32 4386, i32 1182}
!808 = distinct !{!808, !301}
!809 = !{!"branch_weights", i32 1142040, i32 88925}
!810 = distinct !{!810, !301}
!811 = !{!"branch_weights", i32 127, i32 240693633}
!812 = distinct !{!812, !301}
!813 = !{!"branch_weights", i32 41293514, i32 2106190134}
!814 = !{!"branch_weights", i32 -1037515920, i32 501948278, i32 1212148005}
!815 = !{!"branch_weights", i32 334200, i32 267357}
!816 = !{!"branch_weights", i32 6653, i32 588250}
!817 = distinct !{!817, !301}
!818 = !{!"branch_weights", i32 -2136128427, i32 8227, i32 7025831}
!819 = !{!"branch_weights", i32 1707, i32 260704}
!820 = !{!"branch_weights", i32 6653, i32 256610}
!821 = distinct !{!821, !301}
!822 = !{!"branch_weights", i32 6652, i32 260705}
!823 = distinct !{!823, !301}
!824 = !{!"branch_weights", i32 1350799, i32 3983}
!825 = !{!"branch_weights", i32 1348129, i32 6652}
!826 = distinct !{!826, !301}
!827 = !{!"function_entry_count", i64 2312859}
!828 = !{!"ira.c:rhs_regno"}
!829 = !{!"function_entry_count", i64 936}
!830 = !{!"ira.c:recog_memoized"}
!831 = !{!"branch_weights", i32 937, i32 1}
!832 = !{!"function_entry_count", i64 899409}
!833 = !{!"ira.c:no_equiv"}
!834 = !{!"branch_weights", i32 459249, i32 440162}
!835 = !{!"branch_weights", i32 396567, i32 62683}
!836 = !{!"branch_weights", i32 62116, i32 568}
!837 = !{!"branch_weights", i32 50016, i32 12100}
!838 = !{!"branch_weights", i32 12100, i32 0}
!839 = distinct !{!839, !301}
!840 = !{!"function_entry_count", i64 100641}
!841 = !{!"ira.c:validate_equiv_mem"}
!842 = !{!"branch_weights", i32 100635, i32 8}
!843 = !{!"branch_weights", i32 1, i32 8614}
!844 = !{!"branch_weights", i32 -91622098, i32 162606350}
!845 = !{!"branch_weights", i32 159917, i32 69810}
!846 = !{!"branch_weights", i32 4432, i32 155486}
!847 = !{!"branch_weights", i32 -1622904811, i32 47212858}
!848 = !{!"branch_weights", i32 52593, i32 85113}
!849 = !{!"branch_weights", i32 -1532454655, i32 859683856}
!850 = !{!"branch_weights", i32 64913, i32 1}
!851 = !{!"branch_weights", i32 47059, i32 17855}
!852 = !{!"branch_weights", i32 85113, i32 0}
!853 = distinct !{!853, !301}
!854 = !{!"branch_weights", i32 8614, i32 230000}
!855 = distinct !{!855, !301}
!856 = !{!"function_entry_count", i64 54846}
!857 = !{!"ira.c:REG_N_REFS"}
!858 = !{!"function_entry_count", i64 31}
!859 = !{!"ira.c:equiv_init_varies_p"}
!860 = !{!"branch_weights", i32 13, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7, i32 1, i32 8, i32 1}
!861 = !{!"branch_weights", i32 8, i32 1}
!862 = !{!"branch_weights", i32 1, i32 26, i32 1}
!863 = !{!"branch_weights", i32 6, i32 8}
!864 = distinct !{!864, !301}
!865 = !{!"branch_weights", i32 225, i32 191}
!866 = distinct !{!866, !301}
!867 = !{!"function_entry_count", i64 198760}
!868 = !{!"ira.c:equiv_init_movable_p"}
!869 = !{!"branch_weights", i32 123951, i32 44970, i32 1, i32 1394, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 28449, i32 1, i32 1}
!870 = !{!"branch_weights", i32 12575, i32 15875}
!871 = !{!"branch_weights", i32 15875, i32 1}
!872 = !{!"branch_weights", i32 27059, i32 1391}
!873 = !{!"branch_weights", i32 1, i32 79382}
!874 = !{!"branch_weights", i32 1, i32 106037, i32 1394}
!875 = !{!"branch_weights", i32 43176, i32 62862}
!876 = !{!"branch_weights", i32 1394, i32 1}
!877 = distinct !{!877, !301}
!878 = !{!"branch_weights", i32 146421, i32 79382}
!879 = distinct !{!879, !301}
!880 = !{!"function_entry_count", i64 83200}
!881 = !{!"ira.c:contains_replace_regs"}
!882 = !{!"branch_weights", i32 22965, i32 22579, i32 2023, i32 1, i32 1224, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 34414}
!883 = !{!"branch_weights", i32 1, i32 22936}
!884 = !{!"branch_weights", i32 1, i32 45913, i32 1}
!885 = !{!"branch_weights", i32 45885, i32 29}
!886 = distinct !{!886, !301}
!887 = !{!"branch_weights", i32 22977, i32 22936}
!888 = distinct !{!888, !301}
!889 = !{!"function_entry_count", i64 27022}
!890 = !{!"ira.c:memref_used_between_p"}
!891 = !{!"branch_weights", i32 1, i32 26548}
!892 = !{!"branch_weights", i32 9427201, i32 -1960831256}
!893 = !{!"branch_weights", i32 34765, i32 463}
!894 = !{!"branch_weights", i32 14, i32 34752}
!895 = !{!"branch_weights", i32 13, i32 2}
!896 = !{!"branch_weights", i32 26548, i32 8822}
!897 = distinct !{!897, !301}
!898 = !{!"function_entry_count", i64 238066}
!899 = !{!"ira.c:df_live_get_bb_info"}
!900 = !{!"branch_weights", i32 238067, i32 1}
!901 = !{!"ira.c:adjust_cleared_regs"}
!902 = !{!"function_entry_count", i64 169342}
!903 = !{!"ira.c:validate_equiv_mem_from_store"}
!904 = !{!"branch_weights", i32 136361, i32 32983}
!905 = !{!"branch_weights", i32 136185, i32 177}
!906 = !{!"branch_weights", i32 32971, i32 136197}
!907 = !{!"branch_weights", i32 24361, i32 8611}
!908 = !{!"function_entry_count", i64 158708}
!909 = !{!"ira.c:memref_referenced_p"}
!910 = !{!"branch_weights", i32 25045, i32 26176, i32 2227, i32 1, i32 1537, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 66157, i32 2346, i32 35227}
!911 = !{!"branch_weights", i32 64442, i32 1716}
!912 = !{!"branch_weights", i32 1884, i32 463}
!913 = !{!"branch_weights", i32 34017, i32 1211}
!914 = !{!"branch_weights", i32 34009, i32 9}
!915 = !{!"branch_weights", i32 1029, i32 183}
!916 = !{!"branch_weights", i32 1, i32 26732}
!917 = !{!"branch_weights", i32 1, i32 50792, i32 358}
!918 = !{!"branch_weights", i32 50683, i32 110}
!919 = !{!"branch_weights", i32 715, i32 272}
!920 = !{!"branch_weights", i32 629, i32 87}
!921 = distinct !{!921, !301}
!922 = !{!"branch_weights", i32 26311, i32 26732}
!923 = distinct !{!923, !301}
!924 = !{!"function_entry_count", i64 14779}
!925 = !{!"ira.c:ira_allocno_iter_init"}
!926 = !{!927, !291, i64 0}
!927 = !{!"", !291, i64 0}
!928 = !{!"function_entry_count", i64 777675}
!929 = !{!"ira.c:ira_allocno_iter_cond"}
!930 = !{!"branch_weights", i32 14779, i32 1}
!931 = !{!"branch_weights", i32 899209, i32 762897}
!932 = !{!"branch_weights", i32 14779, i32 1647326}
!933 = distinct !{!933, !301}
!934 = !{!"function_entry_count", i64 38996}
!935 = !{!"ira.c:ira_hard_reg_not_in_set_p"}
!936 = !{!"branch_weights", i32 39016, i32 32442}
!937 = !{!"branch_weights", i32 32461, i32 6556}
!938 = distinct !{!938, !301}
!939 = !{!"ira.c:VEC_rtx_gc_reserve_exact"}
!940 = !{!"ira.c:VEC_rtx_base_space"}
!941 = !{!743, !291, i64 4}
!942 = !{!"function_entry_count", i64 534712}
!943 = !{!"ira.c:bmp_iter_set_init"}
!944 = !{!945, !286, i64 0}
!945 = !{!"", !286, i64 0, !286, i64 8, !291, i64 16, !292, i64 24}
!946 = !{!945, !286, i64 8}
!947 = !{!948, !291, i64 16}
!948 = !{!"bitmap_element_def", !286, i64 0, !286, i64 8, !291, i64 16, !287, i64 24}
!949 = !{!"branch_weights", i32 534713, i32 1}
!950 = !{!945, !291, i64 16}
!951 = !{!945, !292, i64 24}
!952 = !{!"function_entry_count", i64 3515525}
!953 = !{!"ira.c:bmp_iter_set"}
!954 = !{!"branch_weights", i32 1255184, i32 2260343}
!955 = !{!"branch_weights", i32 3231025, i32 1}
!956 = !{!"branch_weights", i32 34708951, i32 3231025}
!957 = distinct !{!957, !301}
!958 = !{!"branch_weights", i32 1, i32 971941}
!959 = !{!"branch_weights", i32 799455, i32 970684}
!960 = !{!"branch_weights", i32 971941, i32 798197}
!961 = distinct !{!961, !301}
!962 = !{!948, !286, i64 0}
!963 = !{!"branch_weights", i32 284501, i32 687442}
!964 = !{!"function_entry_count", i64 2980813}
!965 = !{!"ira.c:bmp_iter_next"}
!966 = !{!"function_entry_count", i64 3375044}
!967 = !{!"ira.c:pseudo_for_reload_consideration_p"}
!968 = !{!"branch_weights", i32 1973936, i32 1401110}
!969 = !{!"branch_weights", i32 1401110, i32 1}
!970 = !{!"function_entry_count", i64 4586}
!971 = !{!"ira.c:init_live_subregs"}
!972 = !{!"branch_weights", i32 1, i32 4587}
!973 = !{!"branch_weights", i32 4393, i32 195}
!974 = !{!"branch_weights", i32 3983, i32 411}
!975 = !{!"branch_weights", i32 3261, i32 1133}
!976 = !{!"function_entry_count", i64 365}
!977 = !{!"ira.c:RESET_BIT"}
!978 = !{!979, !286, i64 0}
!979 = !{!"simple_bitmap_def", !286, i64 0, !291, i64 8, !291, i64 12, !287, i64 16}
!980 = !{!"branch_weights", i32 366, i32 1}
!981 = !{!"function_entry_count", i64 5567}
!982 = !{!"ira.c:SET_BIT"}
!983 = !{!"branch_weights", i32 5568, i32 1}
!984 = !{!"ira.c:print_insn_chains"}
!985 = distinct !{!985, !301}
!986 = !{!"ira.c:print_insn_chain"}
