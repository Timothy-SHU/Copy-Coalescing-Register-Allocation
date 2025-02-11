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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.48 = private unnamed_addr constant [10 x i8] c"insn=%d, \00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"live_throughout: \00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"dead_or_set: \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate(i64 noundef %0) local_unnamed_addr #0 {
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
define dso_local ptr @ira_reallocate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %1) #26
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @ira_free(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate_bitmap() local_unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ira_bitmap_obstack) #26
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ira_free_bitmap(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_print_disposition(ptr nocapture noundef %0) local_unnamed_addr #0 {
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
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !5
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !5
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
  %23 = load i32, ptr %15, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %25) #27
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  br label %36

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !17
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %35, %33 ], [ %32, %31 ]
  %38 = phi ptr [ @.str.4, %33 ], [ @.str.3, %31 ]
  %39 = load i32, ptr %37, align 8, !tbaa !18
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %39) #27
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !19
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
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !20

52:                                               ; preds = %48, %7
  %53 = phi i32 [ %9, %7 ], [ %22, %48 ]
  %54 = add nuw nsw i64 %8, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %7, !llvm.loop !22

56:                                               ; preds = %52, %1
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_debug_disposition() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @ira_print_disposition(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_class_cover() local_unnamed_addr #7 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call fastcc void @print_class_cover(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_class_cover(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr %0)
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %13, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !18
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %11) #27
  %13 = add nuw nsw i64 %6, 1
  %14 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !23

17:                                               ; preds = %5, %1
  %18 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 20, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %22, ptr noundef %27) #27
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 27
  br i1 %30, label %31, label %19, !llvm.loop !24

31:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_register_move_cost(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @init_move_cost(i32 noundef %0) #26
  %7 = load ptr, ptr %3, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr %9, ptr %10, align 8, !tbaa !5
  %11 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %12 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  store ptr %11, ptr %12, align 8, !tbaa !5
  %13 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %11, ptr noundef nonnull align 2 dereferenceable(1458) %14, i64 1458, i1 false)
  %15 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %16 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  store ptr %15, ptr %16, align 8, !tbaa !5
  %17 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %15, ptr noundef nonnull align 2 dereferenceable(1458) %18, i64 1458, i1 false)
  br label %19

19:                                               ; preds = %8, %38
  %20 = phi i64 [ 0, %8 ], [ %39, %38 ]
  br label %21

21:                                               ; preds = %19, %35
  %22 = phi i64 [ 0, %19 ], [ %36, %35 ]
  %23 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %20, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %12, align 8, !tbaa !5
  %28 = getelementptr inbounds [27 x i16], ptr %27, i64 %20, i64 %22
  store i16 0, ptr %28, align 2, !tbaa !25
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %22, i64 %20
  %31 = load i32, ptr %30, align 4, !tbaa !18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [27 x i16], ptr %15, i64 %20, i64 %22
  store i16 0, ptr %34, align 2, !tbaa !25
  br label %35

35:                                               ; preds = %29, %33
  %36 = add nuw nsw i64 %22, 1
  %37 = icmp eq i64 %36, 27
  br i1 %37, label %38, label %21, !llvm.loop !27

38:                                               ; preds = %35
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, 27
  br i1 %40, label %41, label %19, !llvm.loop !28

41:                                               ; preds = %38
  ret void
}

; Function Attrs: optsize
declare void @init_move_cost(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_once() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_register_move_cost, i8 0, i64 696, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_in_cost, i8 0, i64 696, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_out_cost, i8 0, i64 696, i1 false), !tbaa !5
  tail call void @ira_init_costs_once() #26
  ret void
}

; Function Attrs: optsize
declare void @ira_init_costs_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init() local_unnamed_addr #0 {
  tail call fastcc void @free_register_move_costs() #27
  tail call fastcc void @setup_reg_mode_hard_regset() #27
  %1 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !18
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
define internal fastcc void @free_register_move_costs() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %14, %12 ]
  %3 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #27
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #27
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr null, ptr %13, align 8, !tbaa !5
  store ptr null, ptr %3, align 8, !tbaa !5
  store ptr null, ptr %8, align 8, !tbaa !5
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 87
  br i1 %15, label %16, label %1, !llvm.loop !29

16:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_reg_mode_hard_regset() unnamed_addr #9 {
  br label %1

1:                                                ; preds = %0, %26
  %2 = phi i64 [ 0, %0 ], [ %27, %26 ]
  br label %3

3:                                                ; preds = %1, %23
  %4 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %5 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %4, i64 %2
  store i64 0, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %2
  %7 = load i8, ptr %6, align 1, !tbaa !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = zext i8 %7 to i64
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ 0, %9 ], [ %21, %20 ]
  %13 = phi i64 [ %10, %9 ], [ %14, %20 ]
  %14 = add nsw i64 %13, -1
  %15 = add nsw i64 %14, %4
  %16 = icmp slt i64 %15, 53
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = shl nuw nsw i64 1, %15
  %19 = or i64 %12, %18
  store i64 %19, ptr %5, align 8, !tbaa !30
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i64 [ %12, %11 ], [ %19, %17 ]
  %22 = icmp ugt i64 %13, 1
  br i1 %22, label %11, label %23, !llvm.loop !32

23:                                               ; preds = %20, %3
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 53
  br i1 %25, label %26, label %3, !llvm.loop !33

26:                                               ; preds = %23
  %27 = add nuw nsw i64 %2, 1
  %28 = icmp eq i64 %27, 87
  br i1 %28, label %29, label %1, !llvm.loop !34

29:                                               ; preds = %26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_alloc_regs(i8 noundef zeroext %0) unnamed_addr #10 {
  %2 = load i64, ptr @fixed_reg_set, align 8, !tbaa !30
  %3 = icmp eq i8 %0, 0
  %4 = or i64 %2, 64
  %5 = select i1 %3, i64 %4, i64 %2
  store i64 %5, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  tail call fastcc void @setup_class_hard_regs() #27
  tail call fastcc void @setup_available_class_regs() #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_class_subset_and_memory_move_costs() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2
  %4 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  store i16 32767, ptr %4, align 2, !tbaa !25
  store i16 32767, ptr %3, align 4, !tbaa !25
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 87
  br i1 %6, label %7, label %1, !llvm.loop !35

7:                                                ; preds = %1, %50
  %8 = phi i64 [ %51, %50 ], [ 26, %1 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %34, label %10

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
  store i16 %16, ptr %18, align 4, !tbaa !25
  %19 = tail call i32 @ix86_memory_move_cost(i32 noundef %14, i32 noundef %11, i32 noundef 1) #26
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %13, i64 %8, i64 1
  store i16 %20, ptr %21, align 2, !tbaa !25
  %22 = load i16, ptr %17, align 4, !tbaa !25
  %23 = load i16, ptr %18, align 4, !tbaa !25
  %24 = icmp sgt i16 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i16 %23, ptr %17, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %25, %12
  %27 = getelementptr inbounds [2 x i16], ptr %17, i64 0, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !25
  %29 = icmp sgt i16 %28, %20
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i16 %20, ptr %27, align 2, !tbaa !25
  br label %31

31:                                               ; preds = %26, %30
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, 87
  br i1 %33, label %34, label %12, !llvm.loop !36

34:                                               ; preds = %31, %7
  %35 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %8
  %36 = load i64, ptr %35, align 8, !tbaa !30
  %37 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  br label %40

40:                                               ; preds = %34, %40
  %41 = phi i64 [ 26, %34 ], [ %48, %40 ]
  %42 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !30
  %44 = and i64 %43, %38
  %45 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %39, i64 noundef %44) #27, !range !37
  %46 = zext nneg i8 %45 to i32
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %8, i64 %41
  store i32 %46, ptr %47, align 4, !tbaa !18
  %48 = add nsw i64 %41, -1
  %49 = icmp eq i64 %41, 0
  br i1 %49, label %50, label %40, !llvm.loop !38

50:                                               ; preds = %40
  %51 = add nsw i64 %8, -1
  %52 = icmp eq i64 %8, 0
  br i1 %52, label %53, label %7, !llvm.loop !39

53:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reg_class_closure() unnamed_addr #0 {
  tail call fastcc void @setup_reg_subclasses() #27
  tail call fastcc void @setup_cover_and_important_classes() #27
  tail call fastcc void @setup_class_translate() #27
  tail call fastcc void @reorder_important_classes() #27
  tail call fastcc void @setup_reg_class_relations() #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_hard_regno_cover_class() unnamed_addr #9 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %2 = icmp sgt i32 %1, 0
  %3 = zext nneg i32 %1 to i64
  br label %4

4:                                                ; preds = %0, %19
  %5 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %6 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %5
  store i32 0, ptr %6, align 4, !tbaa !18
  br i1 %2, label %10, label %19

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %19, label %10, !llvm.loop !40

10:                                               ; preds = %4, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %12 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !18
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %14, i64 %5
  %16 = load i16, ptr %15, align 2, !tbaa !25
  %17 = icmp sgt i16 %16, -1
  br i1 %17, label %18, label %7

18:                                               ; preds = %10
  store i32 %13, ptr %6, align 4, !tbaa !18
  br label %19

19:                                               ; preds = %7, %4, %18
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %4, !llvm.loop !41

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_class_nregs() unnamed_addr #0 {
  store i32 -1, ptr @ira_max_nregs, align 4, !tbaa !18
  br label %1

1:                                                ; preds = %0, %33
  %2 = phi i64 [ 0, %0 ], [ %34, %33 ]
  %3 = trunc i64 %2 to i32
  br label %4

4:                                                ; preds = %1, %30
  %5 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %3, i32 noundef 13) #26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %10 = load i8, ptr %9, align 1, !tbaa !31
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 10
  %13 = select i1 %12, i32 2, i32 1
  br label %24

14:                                               ; preds = %4
  %15 = icmp eq i64 %5, 40
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %18 = load i8, ptr %17, align 1, !tbaa !31
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
  store i32 %25, ptr %26, align 4, !tbaa !18
  %27 = load i32, ptr @ira_max_nregs, align 4, !tbaa !18
  %28 = icmp slt i32 %27, %25
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 %25, ptr @ira_max_nregs, align 4, !tbaa !18
  br label %30

30:                                               ; preds = %24, %29
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 87
  br i1 %32, label %33, label %4, !llvm.loop !42

33:                                               ; preds = %30
  %34 = add nuw nsw i64 %2, 1
  %35 = icmp eq i64 %34, 27
  br i1 %35, label %36, label %1, !llvm.loop !43

36:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_prohibited_class_mode_regs() unnamed_addr #0 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %40

3:                                                ; preds = %0, %35
  %4 = phi i64 [ %36, %35 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !18
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  br label %9

9:                                                ; preds = %3, %32
  %10 = phi i64 [ 0, %3 ], [ %33, %32 ]
  %11 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %7, i64 %10
  store i64 0, ptr %11, align 8, !tbaa !30
  %12 = load i32, ptr %8, align 4, !tbaa !18
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  %16 = trunc i64 %10 to i32
  br label %17

17:                                               ; preds = %14, %30
  %18 = phi i64 [ %15, %14 ], [ %19, %30 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !25
  %22 = sext i16 %21 to i32
  %23 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %22, i32 noundef %16) #26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = zext nneg i32 %22 to i64
  %27 = shl nuw i64 1, %26
  %28 = load i64, ptr %11, align 8, !tbaa !30
  %29 = or i64 %28, %27
  store i64 %29, ptr %11, align 8, !tbaa !30
  br label %30

30:                                               ; preds = %17, %25
  %31 = icmp ugt i64 %18, 1
  br i1 %31, label %17, label %32, !llvm.loop !44

32:                                               ; preds = %30, %9
  %33 = add nuw nsw i64 %10, 1
  %34 = icmp eq i64 %33, 87
  br i1 %34, label %35, label %9, !llvm.loop !45

35:                                               ; preds = %32
  %36 = add nuw nsw i64 %4, 1
  %37 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %3, label %40, !llvm.loop !46

40:                                               ; preds = %35, %0
  ret void
}

; Function Attrs: optsize
declare void @ira_init_costs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_once() local_unnamed_addr #0 {
  tail call void @ira_finish_costs_once() #26
  tail call fastcc void @free_register_move_costs() #27
  ret void
}

; Function Attrs: optsize
declare void @ira_finish_costs_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_setup_eliminable_regset() local_unnamed_addr #0 {
  %1 = alloca [53 x i8], align 16
  %2 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
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
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !47
  %21 = tail call zeroext i8 %20() #26
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %19, %4, %0
  %24 = phi i1 [ true, %4 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i8
  store i8 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !59
  %26 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  store i64 %26, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  store i64 0, ptr @eliminable_regset, align 8, !tbaa !30
  call fastcc void @compute_regs_asm_clobbered(ptr noundef nonnull %1) #27
  br label %27

27:                                               ; preds = %23, %69
  %28 = phi i64 [ 0, %23 ], [ %70, %69 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !68
  %30 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %28
  %31 = load i32, ptr %30, align 8, !tbaa !69
  %32 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %28, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !71
  %34 = tail call zeroext i8 %29(i32 noundef %31, i32 noundef %33) #26
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = and i64 %28, 1
  %38 = icmp eq i64 %37, 0
  %39 = select i1 %38, i1 %24, i1 false
  %40 = sext i32 %31 to i64
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %54, label %63

44:                                               ; preds = %27
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !31
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = zext nneg i32 %31 to i64
  %51 = shl nuw i64 1, %50
  %52 = load i64, ptr @eliminable_regset, align 8, !tbaa !30
  %53 = or i64 %52, %51
  store i64 %53, ptr @eliminable_regset, align 8, !tbaa !30
  br label %59

54:                                               ; preds = %36
  %55 = zext nneg i32 %31 to i64
  %56 = shl nuw i64 1, %55
  %57 = load i64, ptr @eliminable_regset, align 8, !tbaa !30
  %58 = or i64 %57, %56
  store i64 %58, ptr @eliminable_regset, align 8, !tbaa !30
  br i1 %39, label %59, label %69

59:                                               ; preds = %49, %54
  %60 = phi i64 [ %51, %49 ], [ %56, %54 ]
  %61 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  %62 = or i64 %61, %60
  store i64 %62, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  br label %69

63:                                               ; preds = %36
  br i1 %39, label %64, label %68

64:                                               ; preds = %44, %63
  %65 = phi i64 [ %40, %63 ], [ %45, %44 ]
  %66 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %67) #26
  br label %69

68:                                               ; preds = %63
  tail call void @df_set_regs_ever_live(i32 noundef %31, i8 noundef zeroext 1) #26
  br label %69

69:                                               ; preds = %64, %68, %54, %59
  %70 = add nuw nsw i64 %28, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %27, !llvm.loop !72

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, ptr %1, i64 6
  %74 = load i8, ptr %73, align 2, !tbaa !31
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i64, ptr @eliminable_regset, align 8, !tbaa !30
  %78 = or i64 %77, 64
  store i64 %78, ptr @eliminable_regset, align 8, !tbaa !30
  br i1 %24, label %79, label %86

79:                                               ; preds = %76
  %80 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  %81 = or i64 %80, 64
  store i64 %81, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  br label %86

82:                                               ; preds = %72
  br i1 %24, label %83, label %85

83:                                               ; preds = %82
  %84 = load ptr, ptr getelementptr inbounds ([53 x ptr], ptr @reg_names, i64 0, i64 6), align 16, !tbaa !5
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %84) #26
  br label %86

85:                                               ; preds = %82
  tail call void @df_set_regs_ever_live(i32 noundef 6, i8 noundef zeroext 1) #26
  br label %86

86:                                               ; preds = %83, %85, %76, %79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_regs_asm_clobbered(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %0, i8 0, i64 53, i1 false)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %95, label %11

11:                                               ; preds = %1, %86
  %12 = phi ptr [ %87, %86 ], [ %2, %1 ]
  %13 = phi ptr [ %89, %86 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %11, %80
  %20 = phi ptr [ %82, %80 ], [ %17, %11 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !31
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !31
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %84, label %26

26:                                               ; preds = %19
  %27 = tail call fastcc zeroext i8 @insn_contains_asm(ptr noundef nonnull %20) #27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @df, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %80, label %42

42:                                               ; preds = %29, %76
  %43 = phi ptr [ %78, %76 ], [ %40, %29 ]
  %44 = phi ptr [ %77, %76 ], [ %39, %29 ]
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !31
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 39
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %48, %54
  %59 = phi i32 [ %57, %54 ], [ %51, %48 ]
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %46 to i64
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %62, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !31
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %46, -1
  %68 = add nsw i32 %67, %66
  %69 = icmp ugt i32 %46, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %58, %70
  %71 = phi i32 [ %74, %70 ], [ %46, %58 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  store i8 1, ptr %73, align 1, !tbaa !31
  %74 = add i32 %71, 1
  %75 = icmp ugt i32 %74, %68
  br i1 %75, label %76, label %70, !llvm.loop !87

76:                                               ; preds = %70, %58, %42
  %77 = getelementptr inbounds ptr, ptr %44, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %42, !llvm.loop !88

80:                                               ; preds = %76, %29, %26
  %81 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !31
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %19, !llvm.loop !89

84:                                               ; preds = %80, %19
  %85 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %84, %11
  %87 = phi ptr [ %85, %84 ], [ %12, %11 ]
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !77
  %90 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !73
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !79
  %94 = icmp eq ptr %89, %93
  br i1 %94, label %95, label %11, !llvm.loop !90

95:                                               ; preds = %86, %1
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_elimination(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %33, label %12

12:                                               ; preds = %2, %24
  %13 = phi ptr [ %26, %24 ], [ %8, %2 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %15) #27
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %0) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %18, i32 noundef %0) #26
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %1) #26
  br label %24

24:                                               ; preds = %21, %12
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %33, label %12, !llvm.loop !94

33:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !95
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
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
define internal noundef zeroext i8 @gate_ira() #5 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_ira() #0 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call fastcc void @ira(ptr noundef %1) #27
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @setup_class_hard_regs() unnamed_addr #12 {
  %1 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %2 = xor i64 %1, -1
  br label %3

3:                                                ; preds = %0, %41
  %4 = phi i64 [ 26, %0 ], [ %43, %41 ]
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %4
  store i16 -1, ptr %7, align 2, !tbaa !25
  %8 = and i64 %6, %2
  br label %9

9:                                                ; preds = %3, %36
  %10 = phi i64 [ 0, %3 ], [ %39, %36 ]
  %11 = phi i64 [ 0, %3 ], [ %38, %36 ]
  %12 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %13 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !18
  %15 = zext nneg i32 %14 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %9
  %20 = or i64 %16, %11
  %21 = and i64 %16, %8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = trunc i32 %12 to i16
  %25 = sext i32 %14 to i64
  %26 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %4, i64 %25
  store i16 %24, ptr %26, align 2, !tbaa !25
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
  store i16 %32, ptr %35, align 2, !tbaa !25
  br label %36

36:                                               ; preds = %29, %9
  %37 = phi i32 [ %12, %9 ], [ %33, %29 ]
  %38 = phi i64 [ %11, %9 ], [ %20, %29 ]
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, 53
  br i1 %40, label %41, label %9, !llvm.loop !98

41:                                               ; preds = %36
  %42 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %4
  store i32 %37, ptr %42, align 4, !tbaa !18
  %43 = add nsw i64 %4, -1
  %44 = icmp eq i64 %4, 0
  br i1 %44, label %45, label %3, !llvm.loop !99

45:                                               ; preds = %41
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_available_class_regs() unnamed_addr #9 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_available_class_regs, i8 0, i64 108, i1 false)
  %1 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %2 = xor i64 %1, -1
  br label %3

3:                                                ; preds = %0, %20
  %4 = phi i64 [ 0, %0 ], [ %21, %20 ]
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !30
  %7 = and i64 %6, %2
  %8 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %4
  br label %9

9:                                                ; preds = %3, %17
  %10 = phi i64 [ 0, %3 ], [ %18, %17 ]
  %11 = shl nuw nsw i64 1, %10
  %12 = and i64 %11, %7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4, !tbaa !18
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %8, align 4, !tbaa !18
  br label %17

17:                                               ; preds = %9, %14
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, 53
  br i1 %19, label %20, label %9, !llvm.loop !100

20:                                               ; preds = %17
  %21 = add nuw nsw i64 %4, 1
  %22 = icmp eq i64 %21, 27
  br i1 %22, label %23, label %3, !llvm.loop !101

23:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: optsize
declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_reg_subclasses() unnamed_addr #10 {
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
  store i32 27, ptr %9, align 4, !tbaa !18
  br label %10

10:                                               ; preds = %8, %3
  %11 = extractelement <4 x i1> %6, i64 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %13
  store i32 27, ptr %14, align 4, !tbaa !18
  br label %15

15:                                               ; preds = %12, %10
  %16 = extractelement <4 x i1> %6, i64 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = or disjoint i64 %4, 2
  %19 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %18
  store i32 27, ptr %19, align 4, !tbaa !18
  br label %20

20:                                               ; preds = %17, %15
  %21 = extractelement <4 x i1> %6, i64 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or disjoint i64 %4, 3
  %24 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %23
  store i32 27, ptr %24, align 4, !tbaa !18
  br label %25

25:                                               ; preds = %22, %20
  %26 = add i64 %4, 4
  %27 = add <4 x i64> %5, <i64 4, i64 4, i64 4, i64 4>
  %28 = icmp eq i64 %26, 28
  br i1 %28, label %32, label %3, !llvm.loop !102

29:                                               ; preds = %32
  %30 = load i64, ptr @no_unit_alloc_regs, align 8
  %31 = xor i64 %30, -1
  br label %35

32:                                               ; preds = %25
  %33 = add nuw nsw i64 %2, 1
  %34 = icmp eq i64 %33, 27
  br i1 %34, label %29, label %1, !llvm.loop !105

35:                                               ; preds = %29, %66
  %36 = phi i64 [ 0, %29 ], [ %67, %66 ]
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !30
  %41 = and i64 %40, %31
  %42 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %41) #27, !range !37
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = trunc i64 %36 to i32
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i64 [ 0, %44 ], [ %64, %63 ]
  %48 = icmp eq i64 %36, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %47
  %51 = load i64, ptr %50, align 8, !tbaa !30
  %52 = and i64 %51, %31
  %53 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %41, i64 noundef %52) #27, !range !37
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %47
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi ptr [ %56, %55 ], [ %61, %57 ]
  %59 = load i32, ptr %58, align 4, !tbaa !18
  %60 = icmp eq i32 %59, 27
  %61 = getelementptr inbounds i32, ptr %58, i64 1
  br i1 %60, label %62, label %57, !llvm.loop !106

62:                                               ; preds = %57
  store i32 %45, ptr %58, align 4, !tbaa !18
  br label %63

63:                                               ; preds = %62, %49, %46
  %64 = add nuw nsw i64 %47, 1
  %65 = icmp eq i64 %64, 27
  br i1 %65, label %66, label %46, !llvm.loop !107

66:                                               ; preds = %63, %38, %35
  %67 = add nuw nsw i64 %36, 1
  %68 = icmp eq i64 %67, 27
  br i1 %68, label %69, label %35, !llvm.loop !108

69:                                               ; preds = %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_cover_and_important_classes() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !109
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = tail call ptr %1() #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 27
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %6 ]
  %11 = phi i32 [ %15, %9 ], [ %7, %6 ]
  %12 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %10
  store i32 %11, ptr %12, align 4, !tbaa !18
  %13 = add nuw nsw i64 %10, 1
  %14 = getelementptr inbounds i32, ptr %4, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 27
  br i1 %16, label %17, label %9, !llvm.loop !110

17:                                               ; preds = %9, %6
  %18 = phi i64 [ 0, %6 ], [ %13, %9 ]
  %19 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %18
  store i32 27, ptr %19, align 4, !tbaa !18
  br label %20

20:                                               ; preds = %0, %3, %17
  %21 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !18
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %69

23:                                               ; preds = %20, %62
  %24 = phi i64 [ %64, %62 ], [ 0, %20 ]
  %25 = phi i32 [ %63, %62 ], [ 0, %20 ]
  %26 = icmp eq i64 %24, 0
  br i1 %26, label %62, label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i32 %31, 1
  %29 = icmp eq i32 %28, 33
  br i1 %29, label %35, label %30, !llvm.loop !111

30:                                               ; preds = %23, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %32 = tail call i32 @regclass_for_constraint(i32 noundef %31) #26
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %24, %33
  br i1 %34, label %57, label %27

35:                                               ; preds = %27
  %36 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %24
  %37 = load i64, ptr %36, align 8, !tbaa !30
  %38 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  br label %41

41:                                               ; preds = %35, %50
  %42 = phi i64 [ 0, %35 ], [ %51, %50 ]
  %43 = icmp eq i64 %24, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %42
  %46 = load i64, ptr %45, align 8, !tbaa !30
  %47 = and i64 %46, %39
  %48 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %40, i64 noundef %47) #27, !range !37
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %41
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, 27
  br i1 %52, label %53, label %41, !llvm.loop !112

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
  store i32 %61, ptr %60, align 4, !tbaa !18
  br label %62

62:                                               ; preds = %57, %53, %23
  %63 = phi i32 [ %25, %23 ], [ %25, %53 ], [ %58, %57 ]
  %64 = add nuw nsw i64 %24, 1
  %65 = icmp eq i64 %64, 28
  br i1 %65, label %66, label %23, !llvm.loop !113

66:                                               ; preds = %62
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %67
  store i32 27, ptr %68, align 4, !tbaa !18
  br label %69

69:                                               ; preds = %66, %20
  store i32 0, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %70 = load i32, ptr @setup_cover_and_important_classes.classes, align 16, !tbaa !18
  %71 = icmp eq i32 %70, 27
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %74 = xor i64 %73, -1
  br label %113

75:                                               ; preds = %69, %106
  %76 = phi i64 [ %107, %106 ], [ 0, %69 ]
  %77 = phi i32 [ %109, %106 ], [ %70, %69 ]
  %78 = icmp eq i64 %76, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %75, %89
  %80 = phi i64 [ %90, %89 ], [ 0, %75 ]
  %81 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !18
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !18
  %86 = tail call i32 @reg_classes_intersect_p(i32 noundef %77, i32 noundef %85) #26
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 792, ptr noundef nonnull @.str.41) #26
  br label %89

89:                                               ; preds = %79, %83, %88
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %79, !llvm.loop !114

92:                                               ; preds = %89, %75
  %93 = sext i32 %77 to i64
  %94 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !30
  %96 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %98) #27, !range !37
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %104
  store i32 %77, ptr %105, align 4, !tbaa !18
  br label %106

106:                                              ; preds = %92, %101
  %107 = add nuw i64 %76, 1
  %108 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !18
  %110 = icmp eq i32 %109, 27
  br i1 %110, label %111, label %75, !llvm.loop !115

111:                                              ; preds = %106
  %112 = load i32, ptr @ira_reg_class_cover_size, align 4
  br label %113

113:                                              ; preds = %72, %111
  %114 = phi i64 [ %74, %72 ], [ %97, %111 ]
  %115 = phi i32 [ 0, %72 ], [ %112, %111 ]
  store i32 0, ptr @ira_important_classes_num, align 4, !tbaa !18
  %116 = icmp sgt i32 %115, 0
  %117 = zext nneg i32 %115 to i64
  br label %164

118:                                              ; preds = %160
  br i1 %116, label %119, label %170

119:                                              ; preds = %118
  %120 = sext i32 %161 to i64
  %121 = shl nsw i64 %120, 2
  %122 = getelementptr i8, ptr @ira_important_classes, i64 %121
  %123 = zext nneg i32 %115 to i64
  %124 = shl nuw nsw i64 %123, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %122, ptr nonnull align 16 @ira_reg_class_cover, i64 %124, i1 false), !tbaa !18
  %125 = add i32 %161, %115
  store i32 %125, ptr @ira_important_classes_num, align 4, !tbaa !18
  br label %170

126:                                              ; preds = %164, %167
  %127 = phi i64 [ %168, %167 ], [ %165, %164 ]
  %128 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !30
  %130 = and i64 %129, %114
  %131 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %130) #27, !range !37
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %126
  br i1 %116, label %134, label %167

134:                                              ; preds = %133, %147
  %135 = phi i64 [ %151, %147 ], [ 0, %133 ]
  %136 = phi i8 [ %150, %147 ], [ 0, %133 ]
  %137 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %135
  %138 = load i32, ptr %137, align 4, !tbaa !18
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !30
  %142 = and i64 %141, %114
  %143 = icmp eq i64 %127, %139
  br i1 %143, label %160, label %144

144:                                              ; preds = %134
  %145 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %130, i64 noundef %142) #27, !range !37
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %130, i64 noundef %142) #27, !range !37
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i8 %136, i8 1
  %151 = add nuw nsw i64 %135, 1
  %152 = icmp eq i64 %151, %117
  br i1 %152, label %153, label %134, !llvm.loop !116

153:                                              ; preds = %147
  %154 = icmp eq i8 %150, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %153
  %156 = add nsw i32 %166, 1
  store i32 %156, ptr @ira_important_classes_num, align 4, !tbaa !18
  %157 = sext i32 %166 to i64
  %158 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %157
  %159 = trunc i64 %127 to i32
  store i32 %159, ptr %158, align 4, !tbaa !18
  br label %160

160:                                              ; preds = %126, %144, %134, %155, %153
  %161 = phi i32 [ %156, %155 ], [ %166, %153 ], [ %166, %134 ], [ %166, %144 ], [ %166, %126 ]
  %162 = add nuw nsw i64 %127, 1
  %163 = icmp eq i64 %162, 27
  br i1 %163, label %118, label %164, !llvm.loop !117

164:                                              ; preds = %160, %113
  %165 = phi i64 [ %162, %160 ], [ 0, %113 ]
  %166 = phi i32 [ %161, %160 ], [ 0, %113 ]
  br label %126

167:                                              ; preds = %133
  %168 = add nuw nsw i64 %127, 1
  %169 = icmp eq i64 %168, 27
  br i1 %169, label %170, label %126, !llvm.loop !117

170:                                              ; preds = %167, %119, %118
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @setup_class_translate() unnamed_addr #14 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_class_translate, i8 0, i64 108, i1 false), !tbaa !18
  %1 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !18
  %2 = icmp eq i32 %1, 1
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  br i1 %2, label %4, label %33

4:                                                ; preds = %0
  %5 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %6 = xor i64 %5, -1
  %7 = icmp sgt i32 %3, 0
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %4, %30
  %10 = phi i64 [ 0, %4 ], [ %31, %30 ]
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !30
  %13 = and i64 %12, %6
  br i1 %7, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %10
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %18 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !30
  %23 = and i64 %22, %6
  %24 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %13, i64 noundef %23) #27, !range !37
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 %19, ptr %15, align 4, !tbaa !18
  br label %27

27:                                               ; preds = %26, %16
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %30, label %16, !llvm.loop !118

30:                                               ; preds = %27, %9
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, 27
  br i1 %32, label %33, label %9, !llvm.loop !119

33:                                               ; preds = %30, %0
  %34 = icmp sgt i32 %3, 0
  br i1 %34, label %35, label %37

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
  %44 = load i32, ptr %43, align 4, !tbaa !18
  %45 = zext i32 %44 to i64
  br i1 %2, label %62, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !18
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %62, label %50

50:                                               ; preds = %46, %58
  %51 = phi i32 [ %60, %58 ], [ %48, %46 ]
  %52 = phi ptr [ %59, %58 ], [ %47, %46 ]
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 %44, ptr %54, align 4, !tbaa !18
  br label %58

58:                                               ; preds = %50, %57
  %59 = getelementptr inbounds i32, ptr %52, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !18
  %61 = icmp eq i32 %60, 27
  br i1 %61, label %62, label %50, !llvm.loop !120

62:                                               ; preds = %58, %41, %46
  %63 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %45
  store i32 %44, ptr %63, align 4, !tbaa !18
  %64 = add nuw nsw i64 %42, 1
  %65 = icmp eq i64 %64, %36
  br i1 %65, label %37, label %41, !llvm.loop !121

66:                                               ; preds = %37, %116
  %67 = phi i64 [ 0, %37 ], [ %117, %116 ]
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %116, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %67
  %71 = load i32, ptr %70, align 4, !tbaa !18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %116

73:                                               ; preds = %69
  br i1 %34, label %74, label %114

74:                                               ; preds = %73
  %75 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %67
  %76 = load i64, ptr %75, align 8, !tbaa !30
  br label %77

77:                                               ; preds = %74, %109
  %78 = phi i64 [ 0, %74 ], [ %112, %109 ]
  %79 = phi i32 [ 2147483647, %74 ], [ %111, %109 ]
  %80 = phi i32 [ 0, %74 ], [ %110, %109 ]
  %81 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %78
  %82 = load i32, ptr %81, align 4, !tbaa !18
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !30
  %86 = and i64 %76, %85
  %87 = and i64 %86, %39
  %88 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %87) #27, !range !37
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %77, %90
  %91 = phi i64 [ %101, %90 ], [ 0, %77 ]
  %92 = phi i32 [ %100, %90 ], [ 2147483647, %77 ]
  %93 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %91, i64 %67
  %94 = load i16, ptr %93, align 4, !tbaa !25
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %91, i64 %67, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !25
  %98 = sext i16 %97 to i32
  %99 = add nsw i32 %98, %95
  %100 = tail call i32 @llvm.smin.i32(i32 %92, i32 %99)
  %101 = add nuw nsw i64 %91, 1
  %102 = icmp eq i64 %101, 87
  br i1 %102, label %103, label %90, !llvm.loop !122

103:                                              ; preds = %90
  %104 = icmp eq i32 %80, 0
  %105 = icmp sgt i32 %79, %100
  %106 = select i1 %104, i1 true, i1 %105
  %107 = select i1 %106, i32 %82, i32 %80
  %108 = select i1 %106, i32 %100, i32 %79
  br label %109

109:                                              ; preds = %103, %77
  %110 = phi i32 [ %80, %77 ], [ %107, %103 ]
  %111 = phi i32 [ %79, %77 ], [ %108, %103 ]
  %112 = add nuw nsw i64 %78, 1
  %113 = icmp eq i64 %112, %40
  br i1 %113, label %114, label %77, !llvm.loop !123

114:                                              ; preds = %109, %73
  %115 = phi i32 [ 0, %73 ], [ %110, %109 ]
  store i32 %115, ptr %70, align 4, !tbaa !18
  br label %116

116:                                              ; preds = %66, %69, %114
  %117 = add nuw nsw i64 %67, 1
  %118 = icmp eq i64 %117, 27
  br i1 %118, label %119, label %66, !llvm.loop !124

119:                                              ; preds = %116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reorder_important_classes() unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cover_class_order, i8 -1, i64 108, i1 false), !tbaa !18
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %12, %5 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !18
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %9
  %11 = trunc i64 %6 to i32
  store i32 %11, ptr %10, align 4, !tbaa !18
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !125

14:                                               ; preds = %5, %0
  %15 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !18
  %16 = sext i32 %15 to i64
  tail call void @spec_qsort(ptr noundef nonnull @ira_important_classes, i64 noundef %16, i64 noundef 4, ptr noundef nonnull @comp_reg_classes_func) #26
  %17 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !18
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x i32], ptr @ira_important_class_nums, i64 0, i64 %25
  %27 = trunc i64 %22 to i32
  store i32 %27, ptr %26, align 4, !tbaa !18
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !126

30:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_class_relations() unnamed_addr #0 {
  %1 = alloca [27 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %1, i8 0, i64 27, i1 false)
  %2 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !18
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %12, %6 ]
  %8 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !18
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %10
  store i8 1, ptr %11, align 1, !tbaa !31
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !llvm.loop !127

14:                                               ; preds = %6, %0
  br label %15

15:                                               ; preds = %14, %136
  %16 = phi i64 [ %137, %136 ], [ 0, %14 ]
  %17 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %16
  store i32 27, ptr %17, align 4, !tbaa !18
  %18 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %16
  %19 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %16, i64 0
  %20 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %16
  br label %21

21:                                               ; preds = %15, %133
  %22 = phi i64 [ 0, %15 ], [ %134, %133 ]
  %23 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %16, i64 %22
  store i8 0, ptr %23, align 1, !tbaa !31
  %24 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %16, i64 %22
  store i32 0, ptr %24, align 4, !tbaa !18
  %25 = load i64, ptr %18, align 8, !tbaa !30
  %26 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !30
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %22
  %30 = load i64, ptr %29, align 8, !tbaa !30
  %31 = and i64 %30, %27
  %32 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %28) #27, !range !37
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %21
  %35 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %31) #27, !range !37
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %19, align 4, !tbaa !18
  %39 = icmp eq i32 %38, 27
  br i1 %39, label %52, label %40

40:                                               ; preds = %37, %47
  %41 = phi i64 [ %48, %47 ], [ 0, %37 ]
  %42 = phi i32 [ %50, %47 ], [ %38, %37 ]
  %43 = load i32, ptr %24, align 4, !tbaa !18
  %44 = tail call i32 @reg_class_subset_p(i32 noundef %43, i32 noundef %42) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 %42, ptr %24, align 4, !tbaa !18
  br label %47

47:                                               ; preds = %40, %46
  %48 = add nuw i64 %41, 1
  %49 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %16, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !18
  %51 = icmp eq i32 %50, 27
  br i1 %51, label %52, label %40

52:                                               ; preds = %47, %37
  %53 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %16, i64 %22
  %54 = load i32, ptr %53, align 4, !tbaa !18
  %55 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %16, i64 %22
  store i32 %54, ptr %55, align 4, !tbaa !18
  br label %133

56:                                               ; preds = %34, %21
  %57 = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 noundef %28, i64 noundef %31) #27, !range !37
  store i8 %57, ptr %23, align 1, !tbaa !31
  %58 = load i8, ptr %20, align 1, !tbaa !31
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %22
  %62 = load i8, ptr %61, align 1, !tbaa !31
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %28, i64 noundef %31) #27, !range !37
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64, %67
  %68 = phi ptr [ %71, %67 ], [ %17, %64 ]
  %69 = load i32, ptr %68, align 4, !tbaa !18
  %70 = icmp eq i32 %69, 27
  %71 = getelementptr inbounds i32, ptr %68, i64 1
  br i1 %70, label %72, label %67, !llvm.loop !128

72:                                               ; preds = %67
  %73 = trunc i64 %22 to i32
  store i32 %73, ptr %68, align 4, !tbaa !18
  store i32 27, ptr %71, align 4, !tbaa !18
  br label %74

74:                                               ; preds = %72, %64, %60, %56
  %75 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %16, i64 %22
  store i32 0, ptr %75, align 4, !tbaa !18
  %76 = and i64 %28, %30
  %77 = or i64 %30, %25
  %78 = and i64 %77, %27
  %79 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !18
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %133

81:                                               ; preds = %74
  %82 = zext nneg i32 %79 to i64
  br label %83

83:                                               ; preds = %81, %129
  %84 = phi i32 [ 0, %81 ], [ %130, %129 ]
  %85 = phi i32 [ 0, %81 ], [ %110, %129 ]
  %86 = phi i64 [ 0, %81 ], [ %131, %129 ]
  %87 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !18
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !30
  %92 = and i64 %91, %27
  %93 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %76) #27, !range !37
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %83
  %96 = sext i32 %85 to i64
  %97 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !30
  %99 = and i64 %98, %27
  %100 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %99) #27, !range !37
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %95
  %103 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %92, i64 noundef %99) #27, !range !37
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %91, i64 noundef %98) #27, !range !37
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %95
  store i32 %88, ptr %24, align 4, !tbaa !18
  br label %109

109:                                              ; preds = %102, %105, %108, %83
  %110 = phi i32 [ %85, %102 ], [ %85, %105 ], [ %88, %108 ], [ %85, %83 ]
  %111 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %78) #27, !range !37
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %109
  %114 = sext i32 %84 to i64
  %115 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !30
  %117 = and i64 %116, %27
  %118 = icmp eq i32 %84, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %117, i64 noundef %92) #27, !range !37
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %117, i64 noundef %92) #27, !range !37
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %91, i64 noundef %116) #27, !range !37
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125, %122, %113
  store i32 %88, ptr %75, align 4, !tbaa !18
  br label %129

129:                                              ; preds = %109, %128, %125, %119
  %130 = phi i32 [ %84, %109 ], [ %88, %128 ], [ %84, %125 ], [ %84, %119 ]
  %131 = add nuw nsw i64 %86, 1
  %132 = icmp eq i64 %131, %82
  br i1 %132, label %133, label %83, !llvm.loop !129

133:                                              ; preds = %129, %74, %52
  %134 = add nuw nsw i64 %22, 1
  %135 = icmp eq i64 %134, 27
  br i1 %135, label %136, label %21, !llvm.loop !130

136:                                              ; preds = %133
  %137 = add nuw nsw i64 %16, 1
  %138 = icmp eq i64 %137, 27
  br i1 %138, label %139, label %15, !llvm.loop !131

139:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_empty_p(i64 noundef %0) unnamed_addr #5 {
  %2 = icmp eq i64 %0, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
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
define internal i32 @comp_reg_classes_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i32, ptr %0, align 4, !tbaa !18
  %4 = load i32, ptr %1, align 4, !tbaa !18
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !18
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %11 = icmp ne i32 %7, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !18
  %18 = zext i32 %10 to i64
  %19 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !18
  %21 = sub nsw i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

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
define internal fastcc noundef zeroext i8 @hard_reg_set_intersect_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = and i64 %1, %0
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insn_contains_asm(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !5
  %3 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @insn_contains_asm_1, ptr noundef null) #26
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @insn_contains_asm_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

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
define internal fastcc void @ira(ptr noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 148) #26
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i32, ptr @flag_caller_saves, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @init_caller_save() #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !18
  %11 = icmp ult i32 %10, 10
  %12 = add i32 %10, -10
  %13 = load ptr, ptr @stderr, align 8
  %14 = select i1 %11, i32 %10, i32 %12
  %15 = select i1 %11, ptr %0, ptr %13
  store i32 %14, ptr @internal_flag_ira_verbose, align 4
  store ptr %15, ptr @ira_dump_file, align 8, !tbaa !5
  %16 = load i32, ptr @optimize, align 4, !tbaa !18
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, ptr @ira_conflicts_p, align 1, !tbaa !31
  tail call fastcc void @setup_prohibited_mode_move_regs() #27
  tail call void @df_note_add_problem() #26
  %19 = load i32, ptr @optimize, align 4, !tbaa !18
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  tail call void @df_live_add_problem() #26
  tail call void @df_live_set_all_dirty() #26
  br label %22

22:                                               ; preds = %21, %9
  tail call void @df_analyze() #26
  %23 = tail call i32 @df_clear_flags(i32 noundef 16) #26
  tail call void @regstat_init_n_sets_and_refs() #26
  tail call void @regstat_compute_ri() #26
  %24 = load i32, ptr @warn_clobbered, align 4, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @generate_setjmp_warnings() #26
  br label %27

27:                                               ; preds = %26, %22
  %28 = tail call i32 @leaf_function_p() #26
  store i32 %28, ptr @current_function_is_leaf, align 4, !tbaa !18
  %29 = tail call zeroext i8 @resize_reg_info() #26
  %30 = icmp ne i8 %29, 0
  %31 = load i32, ptr @flag_ira_loop_pressure, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load ptr, ptr @ira_dump_file, align 8, !tbaa !5
  tail call void @ira_set_pseudo_classes(ptr noundef %35) #26
  br label %36

36:                                               ; preds = %34, %27
  %37 = tail call fastcc i32 @update_equiv_regs() #27, !range !132
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @ira_bitmap_obstack) #26
  %38 = load i32, ptr @optimize, align 4, !tbaa !18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @max_reg_num() #26
  store i32 %41, ptr @max_regno, align 4, !tbaa !18
  store i32 %41, ptr @ira_reg_equiv_len, align 4, !tbaa !18
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @ira_allocate(i64 noundef %42) #27
  store ptr %43, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !5
  %44 = load i32, ptr @max_regno, align 4, !tbaa !18
  %45 = sext i32 %44 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %43, i8 0, i64 %45, i1 false)
  %46 = load i32, ptr @max_regno, align 4, !tbaa !18
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = tail call ptr @ira_allocate(i64 noundef %48) #27
  store ptr %49, ptr @ira_reg_equiv_const, align 8, !tbaa !5
  %50 = load i32, ptr @max_regno, align 4, !tbaa !18
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %49, i8 0, i64 %52, i1 false)
  tail call fastcc void @find_reg_equiv_invariant_const() #27
  %53 = icmp eq i32 %37, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %40
  %55 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @timevar_push_1(i32 noundef 119) #26
  br label %58

58:                                               ; preds = %57, %54
  %59 = tail call ptr @get_insns() #26
  tail call void @rebuild_jump_labels(ptr noundef %59) #26
  %60 = tail call zeroext i8 @purge_all_dead_edges() #26
  %61 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @timevar_pop_1(i32 noundef 119) #26
  br label %64

64:                                               ; preds = %40, %63, %58, %36
  %65 = tail call i32 @max_reg_num() #26
  tail call void @ira_setup_eliminable_regset() #27
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_shuffle_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_store_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_load_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_additional_jumps_num, align 4, !tbaa !18
  store i32 0, ptr @ira_move_loops_num, align 4, !tbaa !18
  %66 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #26
  tail call void @record_loop_exits() #26
  %67 = load ptr, ptr @cfun, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 4
  store ptr @ira_loops, ptr %68, align 8, !tbaa !133
  %69 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !18
  %70 = icmp sgt i32 %69, 0
  %71 = load ptr, ptr @ira_dump_file, align 8
  %72 = icmp ne ptr %71, null
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 16, i64 1, ptr nonnull %71)
  br label %76

76:                                               ; preds = %74, %64
  %77 = load i32, ptr @optimize, align 4, !tbaa !18
  %78 = icmp ne i32 %77, 0
  %79 = load i32, ptr @flag_ira_region, align 4
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 2
  %82 = select i1 %78, i1 %81, i1 false
  %83 = zext i1 %82 to i8
  %84 = tail call zeroext i8 @ira_build(i8 noundef zeroext %83) #26
  %85 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !18
  %86 = tail call fastcc zeroext i8 @too_high_register_pressure_p() #27, !range !37
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  store i32 0, ptr @flag_ira_share_spill_slots, align 4, !tbaa !18
  br label %89

89:                                               ; preds = %88, %76
  tail call void @ira_color() #26
  %90 = load i32, ptr @ira_max_point, align 4, !tbaa !18
  tail call void @ira_emit(i8 noundef zeroext %84) #26
  %91 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !31
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @max_reg_num() #26
  store i32 %94, ptr @max_regno, align 4, !tbaa !18
  %95 = icmp eq i8 %84, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  tail call void @ira_initiate_assign() #26
  br label %110

97:                                               ; preds = %93
  tail call fastcc void @expand_reg_info(i32 noundef %65) #27
  tail call fastcc void @setup_preferred_alternate_classes_for_new_pseudos(i32 noundef %65) #27
  %98 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !18
  %99 = icmp sgt i32 %98, 0
  %100 = load ptr, ptr @ira_dump_file, align 8
  %101 = icmp ne ptr %100, null
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 14, i64 1, ptr nonnull %100)
  br label %105

105:                                              ; preds = %103, %97
  tail call void @ira_flattening(i32 noundef %65, i32 noundef %90) #26
  tail call void @df_analyze() #26
  %106 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #26
  tail call void @record_loop_exits() #26
  %107 = load ptr, ptr @cfun, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 4
  store ptr @ira_loops, ptr %108, align 8, !tbaa !133
  tail call fastcc void @setup_allocno_assignment_flags() #27
  tail call void @ira_initiate_assign() #26
  %109 = load i32, ptr @max_regno, align 4, !tbaa !18
  tail call void @ira_reassign_conflict_allocnos(i32 noundef %109) #26
  br label %110

110:                                              ; preds = %96, %105, %89
  tail call fastcc void @setup_reg_renumber() #27
  tail call fastcc void @calculate_allocation_cost() #27
  %111 = tail call ptr @get_insns() #26
  %112 = tail call i32 @max_reg_num() #26
  %113 = tail call i32 @delete_trivially_dead_insns(ptr noundef %111, i32 noundef %112) #26
  %114 = tail call i32 @max_reg_num() #26
  store i32 %114, ptr @max_regno, align 4, !tbaa !18
  tail call fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %114) #27
  %115 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %116 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %115) #27
  %117 = load i32, ptr @max_regno, align 4, !tbaa !18
  %118 = sext i32 %117 to i64
  %119 = shl nsw i64 %118, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %116, i8 0, i64 %119, i1 false)
  %120 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %121 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %120) #27
  store ptr %121, ptr @reg_equiv_memory_loc, align 8, !tbaa !5
  %122 = load i32, ptr @max_regno, align 4, !tbaa !18
  %123 = icmp eq i32 %122, %65
  br i1 %123, label %126, label %124

124:                                              ; preds = %110
  tail call void @regstat_free_n_sets_and_refs() #26
  tail call void @regstat_free_ri() #26
  tail call void @regstat_init_n_sets_and_refs() #26
  tail call void @regstat_compute_ri() #26
  %125 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !5
  br label %126

126:                                              ; preds = %124, %110
  %127 = phi ptr [ %125, %124 ], [ %121, %110 ]
  tail call void @allocate_initial_values(ptr noundef %127) #26
  %128 = load i32, ptr @ira_overall_cost, align 4, !tbaa !18
  %129 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !31
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %126
  tail call fastcc void @fix_reg_equiv_init() #27
  store i32 0, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !18
  %132 = load i32, ptr @max_regno, align 4, !tbaa !18
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 48
  %135 = tail call ptr @ira_allocate(i64 noundef %134) #27
  store ptr %135, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !5
  %136 = load i32, ptr @max_regno, align 4, !tbaa !18
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %135, i8 0, i64 %138, i1 false)
  br label %139

139:                                              ; preds = %126, %131
  %140 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  tail call void @timevar_pop_1(i32 noundef 148) #26
  %143 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  tail call void @timevar_push_1(i32 noundef 149) #26
  br label %146

146:                                              ; preds = %139, %145, %142
  %147 = tail call i32 @df_set_flags(i32 noundef 16) #26
  tail call fastcc void @build_insn_chain() #27
  %148 = tail call ptr @get_insns() #26
  %149 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !31
  %150 = zext i8 %149 to i32
  %151 = tail call i32 @reload(ptr noundef %148, i32 noundef %150) #26
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  store i32 %153, ptr @reload_completed, align 4, !tbaa !18
  tail call void @finish_subregs_of_mode() #26
  %154 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %146
  tail call void @timevar_pop_1(i32 noundef 149) #26
  %157 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  tail call void @timevar_push_1(i32 noundef 148) #26
  br label %160

160:                                              ; preds = %146, %159, %156
  %161 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !31
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %164) #27
  tail call void @ira_finish_assign() #26
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !18
  %167 = icmp sgt i32 %166, 0
  %168 = load ptr, ptr @ira_dump_file, align 8
  %169 = icmp ne ptr %168, null
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, ptr @ira_overall_cost, align 4, !tbaa !18
  %173 = icmp eq i32 %128, %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %168, ptr noundef nonnull @.str.44, i32 noundef %172) #27
  br label %176

176:                                              ; preds = %174, %171, %165
  tail call void @ira_destroy() #26
  store i32 %85, ptr @flag_ira_share_spill_slots, align 4, !tbaa !18
  tail call void @flow_loops_free(ptr noundef nonnull @ira_loops) #26
  tail call void @free_dominance_info(i32 noundef 1) #26
  %177 = load ptr, ptr @cfun, align 8, !tbaa !5
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !73
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = icmp eq ptr %180, null
  br i1 %181, label %188, label %182

182:                                              ; preds = %176, %182
  %183 = phi ptr [ %186, %182 ], [ %180, %176 ]
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %183, i64 0, i32 3
  store ptr null, ptr %184, align 8, !tbaa !134
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %183, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %182, !llvm.loop !135

188:                                              ; preds = %182, %176
  %189 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 4
  store ptr null, ptr %189, align 8, !tbaa !133
  tail call void @regstat_free_ri() #26
  tail call void @regstat_free_n_sets_and_refs() #26
  %190 = load i32, ptr @optimize, align 4, !tbaa !18
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #26
  %194 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %194) #27
  %195 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %195) #27
  br label %196

196:                                              ; preds = %192, %188
  tail call void @bitmap_obstack_release(ptr noundef nonnull @ira_bitmap_obstack) #26
  tail call void @df_finish_pass(i8 noundef zeroext 1) #26
  %197 = load i32, ptr @optimize, align 4, !tbaa !18
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  tail call void @df_live_add_problem() #26
  br label %200

200:                                              ; preds = %199, %196
  tail call void @df_scan_alloc(ptr noundef null) #26
  tail call void @df_scan_blocks() #26
  %201 = load i32, ptr @optimize, align 4, !tbaa !18
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  tail call void @df_analyze() #26
  br label %204

204:                                              ; preds = %200, %203
  %205 = load i8, ptr @timevar_enable, align 1, !tbaa !31
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  tail call void @timevar_pop_1(i32 noundef 148) #26
  br label %208

208:                                              ; preds = %207, %204
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_caller_save() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_prohibited_mode_move_regs() unnamed_addr #0 {
  %1 = load i1, ptr @ira_prohibited_mode_move_regs_initialized_p, align 1
  br i1 %1, label %46, label %2

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
  store i64 -1, ptr %12, align 8, !tbaa !30
  %13 = trunc i64 %11 to i32
  %14 = trunc i64 %11 to i32
  %15 = shl i32 %14, 16
  br label %16

16:                                               ; preds = %10, %40
  %17 = phi i64 [ 0, %10 ], [ %41, %40 ]
  %18 = trunc i64 %17 to i32
  %19 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %18, i32 noundef %13) #26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #27
  tail call void @df_ref_change_reg_with_loc(i32 noundef %22, i32 noundef %18, ptr noundef %3) #26
  store i32 %18, ptr %7, align 8, !tbaa !31
  %23 = load i32, ptr %3, align 8
  %24 = and i32 %23, -16711681
  %25 = or disjoint i32 %24, %15
  store i32 %25, ptr %3, align 8
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %4) #27
  tail call void @df_ref_change_reg_with_loc(i32 noundef %26, i32 noundef %18, ptr noundef %4) #26
  store i32 %18, ptr %8, align 8, !tbaa !31
  %27 = load i32, ptr %4, align 8
  %28 = and i32 %27, -16711681
  %29 = or disjoint i32 %28, %15
  store i32 %29, ptr %4, align 8
  store i32 -1, ptr %9, align 8, !tbaa !31
  tail call fastcc void @recog_memoized(ptr noundef %6) #27
  %30 = load i32, ptr %9, align 8, !tbaa !31
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %21
  tail call void @extract_insn(ptr noundef nonnull %6) #26
  %33 = tail call i32 @constrain_operands(i32 noundef 1) #26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = shl nuw nsw i64 1, %17
  %37 = xor i64 %36, -1
  %38 = load i64, ptr %12, align 8, !tbaa !30
  %39 = and i64 %38, %37
  store i64 %39, ptr %12, align 8, !tbaa !30
  br label %40

40:                                               ; preds = %32, %21, %16, %35
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, 53
  br i1 %42, label %43, label %16, !llvm.loop !136

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 1
  %45 = icmp eq i64 %44, 87
  br i1 %45, label %46, label %10, !llvm.loop !137

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
define internal fastcc i32 @update_equiv_regs() unnamed_addr #0 {
  store i1 false, ptr @recorded_label_ref, align 4
  %1 = load i32, ptr @max_regno, align 4, !tbaa !18
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 40) #26
  store ptr %3, ptr @reg_equiv, align 8, !tbaa !5
  %4 = load i32, ptr @max_regno, align 4, !tbaa !18
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %6) #26
  store ptr %7, ptr @reg_equiv_init, align 8, !tbaa !5
  %8 = load i32, ptr @max_regno, align 4, !tbaa !18
  store i32 %8, ptr @reg_equiv_init_size, align 4, !tbaa !18
  tail call void @init_alias_analysis() #26
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %360, label %29

18:                                               ; preds = %351
  %19 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %18, %29
  %21 = phi ptr [ %19, %18 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %360, label %29, !llvm.loop !138

29:                                               ; preds = %0, %20
  %30 = phi ptr [ %21, %20 ], [ %9, %0 ]
  %31 = phi ptr [ %23, %20 ], [ %14, %0 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !139
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !140
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %20, label %42

42:                                               ; preds = %29, %351
  %43 = phi ptr [ %353, %351 ], [ %36, %29 ]
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %351

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %48, %60
  %53 = phi ptr [ %62, %60 ], [ %50, %48 ]
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 16711680
  %56 = icmp eq i32 %55, 131072
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !31
  tail call void @no_equiv(ptr noundef %59, ptr nonnull poison, ptr poison) #27
  br label %60

60:                                               ; preds = %52, %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !31
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %52, !llvm.loop !141

64:                                               ; preds = %60
  %65 = load i32, ptr %43, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %81

69:                                               ; preds = %48, %64
  %70 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !31
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %84, label %75

75:                                               ; preds = %69
  %76 = tail call ptr @single_set_2(ptr noundef nonnull %43, ptr noundef nonnull %71) #26
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %70, align 8, !tbaa !31
  %80 = load i32, ptr %79, align 8
  br label %84

81:                                               ; preds = %64, %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  tail call void @note_stores(ptr noundef %83, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %351

84:                                               ; preds = %78, %69
  %85 = phi i32 [ %80, %78 ], [ %72, %69 ]
  %86 = phi ptr [ %79, %78 ], [ %71, %69 ]
  %87 = phi ptr [ %76, %78 ], [ %71, %69 ]
  %88 = and i32 %85, 65535
  %89 = icmp eq i32 %88, 15
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  %93 = load i32, ptr %92, align 8, !tbaa !142
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = zext nneg i32 %93 to i64
  br label %97

97:                                               ; preds = %95, %107
  %98 = phi i64 [ %96, %95 ], [ %99, %107 ]
  %99 = add nsw i64 %98, -1
  %100 = load ptr, ptr %70, align 8, !tbaa !31
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !31
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %102, i64 0, i32 1, i64 %99
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  tail call void @note_stores(ptr noundef %104, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %107

107:                                              ; preds = %106, %97
  %108 = icmp ugt i64 %98, 1
  br i1 %108, label %97, label %109, !llvm.loop !144

109:                                              ; preds = %107, %90, %84
  %110 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !31
  %112 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !31
  %114 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef null) #26
  %115 = icmp eq ptr %114, null
  br i1 %115, label %137, label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %111, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2390, ptr noundef nonnull @.str.41) #26
  br label %121

121:                                              ; preds = %116, %120
  %122 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %123 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.equivalence, ptr %123, i64 %124, i32 4
  store i32 1, ptr %125, align 4, !tbaa !145
  %126 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !31
  %128 = tail call i32 @rtx_equal_p(ptr noundef %113, ptr noundef %127) #26
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %121
  %131 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %132 = getelementptr inbounds ptr, ptr %131, i64 %124
  %133 = load ptr, ptr %132, align 8, !tbaa !5
  %134 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %133) #26
  %135 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %136 = getelementptr inbounds ptr, ptr %135, i64 %124
  store ptr %134, ptr %136, align 8, !tbaa !5
  br label %137

137:                                              ; preds = %121, %130, %109
  %138 = load i32, ptr @optimize, align 4, !tbaa !18
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %351, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %111, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %193

144:                                              ; preds = %140
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %146 = icmp slt i32 %145, 53
  br i1 %146, label %193, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %149 = zext nneg i32 %145 to i64
  %150 = getelementptr inbounds %struct.equivalence, ptr %148, i64 %149, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !147
  %152 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %193, label %154

154:                                              ; preds = %147
  %155 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %184, label %157

157:                                              ; preds = %154
  %158 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %184, label %160

160:                                              ; preds = %157
  %161 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %184, label %163

163:                                              ; preds = %160
  %164 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %184, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %168 = icmp eq i32 %167, 7
  br i1 %168, label %184, label %169

169:                                              ; preds = %166
  %170 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %171 = icmp eq i32 %170, 5
  br i1 %171, label %184, label %172

172:                                              ; preds = %169
  %173 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %184, label %175

175:                                              ; preds = %172
  %176 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %177 = icmp eq i32 %176, 17
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %180 = icmp eq i32 %179, 14
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %183 = icmp eq i32 %182, 15
  br i1 %183, label %184, label %194

184:                                              ; preds = %181, %178, %175, %172, %169, %166, %163, %160, %157, %154
  %185 = load i32, ptr %113, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 43
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %190 = getelementptr inbounds %struct.equivalence, ptr %189, i64 %149, i32 4
  %191 = load i32, ptr %190, align 4, !tbaa !145
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %147, %144, %140
  tail call void @note_stores(ptr noundef nonnull %87, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %351

194:                                              ; preds = %188, %184, %181
  %195 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 4, ptr noundef null) #26
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = tail call zeroext i8 @rtx_varies_p(ptr noundef %113, i8 noundef zeroext 0) #26
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = tail call ptr @copy_rtx(ptr noundef %113) #26
  %202 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 4, ptr noundef %201) #26
  %203 = icmp eq ptr %202, null
  br i1 %203, label %212, label %204

204:                                              ; preds = %194, %200
  %205 = phi ptr [ %202, %200 ], [ %195, %194 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !31
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 3
  %211 = select i1 %210, ptr null, ptr %205
  br label %212

212:                                              ; preds = %197, %204, %200
  %213 = phi ptr [ %211, %204 ], [ null, %200 ], [ null, %197 ]
  %214 = load ptr, ptr @df, align 8, !tbaa !5
  %215 = getelementptr inbounds %struct.df, ptr %214, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !148
  %217 = getelementptr inbounds ptr, ptr %216, i64 %149
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  %219 = getelementptr inbounds %struct.df_reg_info, ptr %218, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !149
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %239, label %222

222:                                              ; preds = %212
  %223 = icmp eq ptr %213, null
  br i1 %223, label %238, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !31
  %227 = tail call zeroext i8 @rtx_varies_p(ptr noundef %226, i8 noundef zeroext 0) #26
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %231 = getelementptr inbounds %struct.equivalence, ptr %230, i64 %149
  %232 = load ptr, ptr %231, align 8, !tbaa !151
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %225, align 8, !tbaa !31
  %236 = tail call i32 @rtx_equal_p(ptr noundef %235, ptr noundef nonnull %232) #26
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %224, %222
  tail call void @no_equiv(ptr noundef nonnull %111, ptr nonnull poison, ptr poison) #27
  br label %351

239:                                              ; preds = %234, %229, %212
  %240 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %241 = getelementptr inbounds %struct.equivalence, ptr %240, i64 %149, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !147
  %243 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %242) #26
  %244 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %245 = getelementptr inbounds %struct.equivalence, ptr %244, i64 %149, i32 2
  store ptr %243, ptr %245, align 8, !tbaa !147
  %246 = load ptr, ptr @df, align 8, !tbaa !5
  %247 = getelementptr inbounds %struct.df, ptr %246, i64 0, i32 5
  %248 = load ptr, ptr %247, align 8, !tbaa !148
  %249 = getelementptr inbounds ptr, ptr %248, i64 %149
  %250 = load ptr, ptr %249, align 8, !tbaa !5
  %251 = getelementptr inbounds %struct.df_reg_info, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !149
  %253 = icmp eq i32 %252, 1
  %254 = icmp ne ptr %213, null
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %256, label %264

256:                                              ; preds = %239
  %257 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !31
  %259 = tail call zeroext i8 @rtx_varies_p(ptr noundef %258, i8 noundef zeroext 0) #26
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load ptr, ptr %257, align 8, !tbaa !31
  tail call void @remove_note(ptr noundef nonnull %43, ptr noundef nonnull %213) #26
  %263 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef %262) #26
  br label %264

264:                                              ; preds = %261, %256, %239
  %265 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef null) #26
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %285

267:                                              ; preds = %264
  %268 = load ptr, ptr @reg_info_p, align 8, !tbaa !5
  %269 = getelementptr inbounds %struct.reg_info_t, ptr %268, i64 %149, i32 6
  %270 = load i32, ptr %269, align 4, !tbaa !152
  %271 = icmp sgt i32 %270, 1
  br i1 %271, label %272, label %351

272:                                              ; preds = %267
  %273 = load ptr, ptr %112, align 8, !tbaa !31
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 65535
  %276 = icmp eq i32 %275, 43
  br i1 %276, label %277, label %351

277:                                              ; preds = %272
  %278 = tail call fastcc i32 @validate_equiv_mem(ptr noundef nonnull %43, ptr noundef nonnull %111, ptr noundef nonnull %273) #27, !range !132
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %351, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %112, align 8, !tbaa !31
  %282 = tail call ptr @copy_rtx(ptr noundef %281) #26
  %283 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef %282) #26
  %284 = icmp eq ptr %283, null
  br i1 %284, label %351, label %285

285:                                              ; preds = %264, %280
  %286 = phi ptr [ %283, %280 ], [ %265, %264 ]
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %288 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !31
  %290 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %291 = sext i32 %287 to i64
  %292 = getelementptr inbounds %struct.equivalence, ptr %290, i64 %291, i32 4
  %293 = load i32, ptr %292, align 4, !tbaa !145
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %285
  %296 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %297 = getelementptr inbounds ptr, ptr %296, i64 %291
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %298) #26
  %300 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %301 = getelementptr inbounds ptr, ptr %300, i64 %291
  store ptr %299, ptr %301, align 8, !tbaa !5
  br label %302

302:                                              ; preds = %295, %285
  %303 = load i32, ptr %289, align 8
  %304 = trunc i32 %303 to i16
  switch i16 %304, label %318 [
    i16 44, label %317
    i16 35, label %305
  ]

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !31
  %308 = load i32, ptr %307, align 8
  %309 = and i32 %308, 65535
  %310 = icmp eq i32 %309, 49
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !31
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 44
  br i1 %316, label %317, label %318

317:                                              ; preds = %302, %311
  store i1 true, ptr @recorded_label_ref, align 4
  br label %318

318:                                              ; preds = %302, %317, %311, %305
  %319 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %320 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291
  store ptr %289, ptr %320, align 8, !tbaa !151
  %321 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291, i32 1
  store ptr %112, ptr %321, align 8, !tbaa !154
  %322 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291, i32 3
  store i32 %33, ptr %322, align 8, !tbaa !155
  %323 = load ptr, ptr @reg_info_p, align 8, !tbaa !5
  %324 = getelementptr inbounds %struct.reg_info_t, ptr %323, i64 %291, i32 2
  %325 = load i32, ptr %324, align 4, !tbaa !156
  %326 = icmp sgt i32 %325, -1
  %327 = load i32, ptr @optimize, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %330, label %351

330:                                              ; preds = %318
  %331 = shl nuw nsw i32 %325, 1
  store i32 %331, ptr %324, align 4, !tbaa !156
  %332 = tail call fastcc i32 @REG_N_REFS(i32 noundef %287) #27
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %351

334:                                              ; preds = %330
  %335 = tail call i32 @rtx_equal_p(ptr noundef nonnull %289, ptr noundef %113) #26
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %113) #27
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %337, %334
  %341 = load i32, ptr %43, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 8
  br i1 %343, label %344, label %351

344:                                              ; preds = %340
  %345 = load ptr, ptr %70, align 8, !tbaa !31
  %346 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %345, i32 noundef %287) #27, !range !132
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %344
  %349 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %350 = getelementptr inbounds %struct.equivalence, ptr %349, i64 %291, i32 5
  store i8 1, ptr %350, align 8, !tbaa !157
  br label %351

351:                                              ; preds = %267, %272, %277, %42, %280, %330, %337, %340, %344, %348, %318, %137, %238, %193, %81
  %352 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %353 = load ptr, ptr %352, align 8, !tbaa !31
  %354 = load ptr, ptr %34, align 8, !tbaa !31
  %355 = getelementptr inbounds %struct.rtl_bb_info, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !140
  %357 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1, i32 0, i32 0, i64 2
  %358 = load ptr, ptr %357, align 8, !tbaa !31
  %359 = icmp eq ptr %353, %358
  br i1 %359, label %18, label %42, !llvm.loop !158

360:                                              ; preds = %20, %0
  %361 = load i32, ptr @optimize, align 4, !tbaa !18
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %715, label %363

363:                                              ; preds = %360
  %364 = tail call ptr @get_insns() #26
  %365 = icmp eq ptr %364, null
  br i1 %365, label %453, label %366

366:                                              ; preds = %363, %449
  %367 = phi ptr [ %451, %449 ], [ %364, %363 ]
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = add nsw i32 %369, -7
  %371 = icmp ult i32 %370, 4
  br i1 %371, label %372, label %449

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !31
  %375 = load i32, ptr %374, align 8
  %376 = and i32 %375, 65535
  %377 = icmp eq i32 %376, 23
  br i1 %377, label %381, label %378

378:                                              ; preds = %372
  %379 = tail call ptr @single_set_2(ptr noundef nonnull %367, ptr noundef nonnull %374) #26
  %380 = icmp eq ptr %379, null
  br i1 %380, label %449, label %381

381:                                              ; preds = %372, %378
  %382 = phi ptr [ %379, %378 ], [ %374, %372 ]
  %383 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !31
  %385 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1, i32 0, i32 0, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !31
  %387 = load i32, ptr %384, align 8
  %388 = and i32 %387, 65535
  %389 = icmp eq i32 %388, 43
  br i1 %389, label %390, label %449

390:                                              ; preds = %381
  %391 = load i32, ptr %386, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 37
  br i1 %393, label %394, label %449

394:                                              ; preds = %390
  %395 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %386) #27
  %396 = icmp ugt i32 %395, 52
  br i1 %396, label %397, label %449

397:                                              ; preds = %394
  %398 = load ptr, ptr @reg_info_p, align 8, !tbaa !5
  %399 = zext i32 %395 to i64
  %400 = getelementptr inbounds %struct.reg_info_t, ptr %398, i64 %399, i32 6
  %401 = load i32, ptr %400, align 4, !tbaa !152
  %402 = icmp sgt i32 %401, 1
  br i1 %402, label %403, label %449

403:                                              ; preds = %397
  %404 = load ptr, ptr @df, align 8, !tbaa !5
  %405 = getelementptr inbounds %struct.df, ptr %404, i64 0, i32 5
  %406 = load ptr, ptr %405, align 8, !tbaa !148
  %407 = getelementptr inbounds ptr, ptr %406, i64 %399
  %408 = load ptr, ptr %407, align 8, !tbaa !5
  %409 = getelementptr inbounds %struct.df_reg_info, ptr %408, i64 0, i32 1
  %410 = load i32, ptr %409, align 8, !tbaa !149
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %449

412:                                              ; preds = %403
  %413 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %414 = getelementptr inbounds %struct.equivalence, ptr %413, i64 %399, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !147
  %416 = icmp eq ptr %415, null
  %417 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %418 = icmp eq ptr %415, %417
  %419 = select i1 %416, i1 true, i1 %418
  br i1 %419, label %449, label %420

420:                                              ; preds = %412
  %421 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !31
  %423 = tail call ptr @find_reg_note(ptr noundef %422, i32 noundef 3, ptr noundef null) #26
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %449

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.rtx_def, ptr %384, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !31
  %428 = tail call fastcc i32 @contains_replace_regs(ptr noundef %427) #27, !range !159
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %449

430:                                              ; preds = %425
  %431 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %432 = getelementptr inbounds %struct.equivalence, ptr %431, i64 %399, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !147
  %434 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !31
  %436 = tail call fastcc i32 @validate_equiv_mem(ptr noundef %435, ptr noundef nonnull %386, ptr noundef nonnull %384) #27, !range !132
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %449, label %438

438:                                              ; preds = %430
  %439 = tail call fastcc i32 @memref_used_between_p(ptr noundef nonnull %384, ptr noundef %435, ptr noundef nonnull %367) #27, !range !132
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %449

441:                                              ; preds = %438
  %442 = tail call ptr @copy_rtx(ptr noundef nonnull %384) #26
  %443 = tail call ptr @set_unique_reg_note(ptr noundef %435, i32 noundef 3, ptr noundef %442) #26
  %444 = icmp eq ptr %443, null
  br i1 %444, label %449, label %445

445:                                              ; preds = %441
  %446 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %367, ptr noundef null) #26
  %447 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %448 = getelementptr inbounds ptr, ptr %447, i64 %399
  store ptr %446, ptr %448, align 8, !tbaa !5
  tail call void @df_notes_rescan(ptr noundef %435) #26
  br label %449

449:                                              ; preds = %366, %381, %390, %394, %397, %403, %412, %420, %425, %445, %441, %438, %430, %378
  %450 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 0, i64 2
  %451 = load ptr, ptr %450, align 8, !tbaa !31
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %366, !llvm.loop !160

453:                                              ; preds = %449, %363
  %454 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %455 = load ptr, ptr @cfun, align 8, !tbaa !5
  %456 = getelementptr inbounds %struct.function, ptr %455, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !73
  %458 = getelementptr inbounds %struct.control_flow_graph, ptr %457, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !79
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 5
  %461 = load ptr, ptr %460, align 8, !tbaa !161
  %462 = load ptr, ptr %457, align 8, !tbaa !75
  %463 = icmp eq ptr %461, %462
  br i1 %463, label %643, label %474

464:                                              ; preds = %635
  %465 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %466

466:                                              ; preds = %464, %474
  %467 = phi ptr [ %465, %464 ], [ %475, %474 ]
  %468 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 5
  %469 = load ptr, ptr %468, align 8, !tbaa !161
  %470 = getelementptr inbounds %struct.function, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !73
  %472 = load ptr, ptr %471, align 8, !tbaa !75
  %473 = icmp eq ptr %469, %472
  br i1 %473, label %643, label %474, !llvm.loop !162

474:                                              ; preds = %453, %466
  %475 = phi ptr [ %467, %466 ], [ %455, %453 ]
  %476 = phi ptr [ %469, %466 ], [ %461, %453 ]
  %477 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 10
  %478 = load i32, ptr %477, align 4, !tbaa !139
  %479 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 7
  %480 = load ptr, ptr %479, align 8, !tbaa !31
  %481 = getelementptr inbounds %struct.rtl_bb_info, ptr %480, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !31
  %483 = load ptr, ptr %480, align 8, !tbaa !80
  %484 = getelementptr inbounds %struct.rtx_def, ptr %483, i64 0, i32 1, i32 0, i32 0, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !31
  %486 = icmp eq ptr %482, %485
  br i1 %486, label %466, label %487

487:                                              ; preds = %474
  %488 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 9
  br label %489

489:                                              ; preds = %487, %635
  %490 = phi ptr [ %482, %487 ], [ %637, %635 ]
  %491 = load i32, ptr %490, align 8
  %492 = and i32 %491, 65535
  %493 = add nsw i32 %492, -7
  %494 = icmp ult i32 %493, 4
  br i1 %494, label %495, label %635

495:                                              ; preds = %489
  %496 = icmp eq i32 %492, 9
  br i1 %496, label %497, label %500

497:                                              ; preds = %495
  %498 = tail call ptr @find_reg_note(ptr noundef nonnull %490, i32 noundef 28, ptr noundef null) #26
  %499 = icmp eq ptr %498, null
  br i1 %499, label %500, label %635

500:                                              ; preds = %497, %495
  %501 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 1, i32 1, i32 0, i32 0, i64 1
  %502 = load ptr, ptr %501, align 8, !tbaa !31
  %503 = icmp eq ptr %502, null
  br i1 %503, label %635, label %504

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 1
  %506 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %507

507:                                              ; preds = %504, %631
  %508 = phi ptr [ %502, %504 ], [ %633, %631 ]
  %509 = load i32, ptr %508, align 8
  %510 = and i32 %509, 16711680
  %511 = icmp eq i32 %510, 65536
  br i1 %511, label %512, label %631

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.rtx_def, ptr %508, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !31
  %515 = load ptr, ptr %505, align 8, !tbaa !31
  %516 = tail call i32 @reg_mentioned_p(ptr noundef %514, ptr noundef %515) #26
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %631, label %518

518:                                              ; preds = %512
  %519 = load ptr, ptr %513, align 8, !tbaa !31
  %520 = tail call fastcc i32 @rhs_regno(ptr noundef %519) #27
  %521 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %522 = sext i32 %520 to i64
  %523 = getelementptr inbounds %struct.equivalence, ptr %521, i64 %522, i32 5
  %524 = load i8, ptr %523, align 8, !tbaa !157
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %631, label %526

526:                                              ; preds = %518
  %527 = getelementptr inbounds %struct.equivalence, ptr %521, i64 %522, i32 3
  %528 = load i32, ptr %527, align 8, !tbaa !155
  %529 = icmp slt i32 %528, %478
  br i1 %529, label %631, label %530

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.equivalence, ptr %521, i64 %522, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !147
  %533 = icmp eq ptr %532, null
  br i1 %533, label %538, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.rtx_def, ptr %532, i64 0, i32 1, i32 0, i32 0, i64 1
  %536 = load ptr, ptr %535, align 8, !tbaa !31
  %537 = icmp eq ptr %536, null
  br i1 %537, label %542, label %538

538:                                              ; preds = %534, %530
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2653, ptr noundef nonnull @.str.41) #26
  %539 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %540 = getelementptr inbounds %struct.equivalence, ptr %539, i64 %522, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !147
  br label %542

542:                                              ; preds = %534, %538
  %543 = phi ptr [ %532, %534 ], [ %541, %538 ]
  %544 = getelementptr inbounds %struct.rtx_def, ptr %543, i64 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !31
  %546 = tail call zeroext i8 @can_throw_internal(ptr noundef %545) #26
  %547 = icmp eq i8 %546, 0
  br i1 %547, label %548, label %631

548:                                              ; preds = %542
  %549 = getelementptr inbounds %struct.rtx_def, ptr %545, i64 1
  %550 = load ptr, ptr %549, align 8, !tbaa !31
  %551 = tail call i32 @asm_noperands(ptr noundef %550) #26
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %553, label %597

553:                                              ; preds = %548
  %554 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %555 = getelementptr inbounds ptr, ptr %554, i64 %522
  %556 = load ptr, ptr %555, align 8, !tbaa !5
  %557 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %558 = getelementptr inbounds %struct.equivalence, ptr %557, i64 %522, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !154
  %560 = load ptr, ptr %559, align 8, !tbaa !5
  %561 = tail call i32 @validate_replace_rtx(ptr noundef %556, ptr noundef %560, ptr noundef nonnull %490) #26
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %597, label %563

563:                                              ; preds = %553, %563
  %564 = phi ptr [ %566, %563 ], [ %508, %553 ]
  %565 = getelementptr inbounds %struct.rtx_def, ptr %564, i64 0, i32 1, i32 0, i32 0, i64 1
  %566 = load ptr, ptr %565, align 8, !tbaa !31
  %567 = icmp eq ptr %566, null
  br i1 %567, label %568, label %563, !llvm.loop !163

568:                                              ; preds = %563
  %569 = getelementptr inbounds %struct.rtx_def, ptr %545, i64 1, i32 1, i32 0, i32 0, i64 1
  %570 = load ptr, ptr %569, align 8, !tbaa !31
  %571 = icmp eq ptr %570, null
  br i1 %571, label %585, label %572

572:                                              ; preds = %568, %582
  %573 = phi ptr [ %583, %582 ], [ %564, %568 ]
  %574 = phi ptr [ %576, %582 ], [ %570, %568 ]
  %575 = getelementptr inbounds %struct.rtx_def, ptr %574, i64 0, i32 1, i32 0, i32 0, i64 1
  %576 = load ptr, ptr %575, align 8, !tbaa !31
  %577 = load i32, ptr %574, align 8
  %578 = and i32 %577, 16711680
  %579 = icmp eq i32 %578, 65536
  br i1 %579, label %580, label %582

580:                                              ; preds = %572
  tail call void @remove_note(ptr noundef %545, ptr noundef nonnull %574) #26
  %581 = getelementptr inbounds %struct.rtx_def, ptr %573, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %574, ptr %581, align 8, !tbaa !31
  store ptr null, ptr %575, align 8, !tbaa !31
  br label %582

582:                                              ; preds = %580, %572
  %583 = phi ptr [ %574, %580 ], [ %573, %572 ]
  %584 = icmp eq ptr %576, null
  br i1 %584, label %585, label %572, !llvm.loop !164

585:                                              ; preds = %582, %568
  %586 = tail call ptr @remove_death(i32 noundef %520, ptr noundef nonnull %490) #26
  %587 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !5
  %588 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %587, i64 %522, i32 1
  store i32 0, ptr %588, align 4, !tbaa !165
  %589 = load ptr, ptr @reg_info_p, align 8, !tbaa !5
  %590 = getelementptr inbounds %struct.reg_info_t, ptr %589, i64 %522
  store i32 0, ptr %590, align 4, !tbaa !167
  %591 = tail call ptr @delete_insn(ptr noundef %545) #26
  %592 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %593 = getelementptr inbounds %struct.equivalence, ptr %592, i64 %522, i32 2
  %594 = load ptr, ptr %593, align 8, !tbaa !147
  %595 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1, i32 0, i32 0, i64 1
  %596 = load ptr, ptr %595, align 8, !tbaa !31
  store ptr %596, ptr %593, align 8, !tbaa !147
  br label %626

597:                                              ; preds = %553, %548
  %598 = tail call ptr @prev_nondebug_insn(ptr noundef nonnull %490) #26
  %599 = icmp eq ptr %598, %545
  br i1 %599, label %631, label %600

600:                                              ; preds = %597
  %601 = load ptr, ptr %549, align 8, !tbaa !31
  %602 = tail call ptr @emit_insn_before(ptr noundef %601, ptr noundef nonnull %490) #26
  %603 = getelementptr inbounds %struct.rtx_def, ptr %545, i64 1, i32 1, i32 0, i32 0, i64 1
  %604 = load ptr, ptr %603, align 8, !tbaa !31
  %605 = getelementptr inbounds %struct.rtx_def, ptr %602, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %604, ptr %605, align 8, !tbaa !31
  store ptr null, ptr %603, align 8, !tbaa !31
  %606 = tail call zeroext i8 @df_insn_rescan(ptr noundef %602) #26
  %607 = getelementptr inbounds %struct.rtx_def, ptr %545, i64 1, i32 1
  %608 = load i32, ptr %607, align 8, !tbaa !31
  %609 = getelementptr inbounds %struct.rtx_def, ptr %602, i64 1, i32 1
  store i32 %608, ptr %609, align 8, !tbaa !31
  %610 = tail call ptr @delete_insn(ptr noundef nonnull %545) #26
  %611 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %612 = getelementptr inbounds %struct.equivalence, ptr %611, i64 %522, i32 2
  %613 = load ptr, ptr %612, align 8, !tbaa !147
  %614 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  store ptr %602, ptr %614, align 8, !tbaa !31
  %615 = load i32, ptr %488, align 8, !tbaa !91
  %616 = load ptr, ptr @reg_info_p, align 8, !tbaa !5
  %617 = getelementptr inbounds %struct.reg_info_t, ptr %616, i64 %522, i32 6
  store i32 %615, ptr %617, align 4, !tbaa !152
  %618 = getelementptr inbounds %struct.reg_info_t, ptr %616, i64 %522, i32 2
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %618, align 4, !tbaa !18
  %619 = load ptr, ptr %479, align 8, !tbaa !31
  %620 = load ptr, ptr %619, align 8, !tbaa !80
  %621 = icmp eq ptr %490, %620
  br i1 %621, label %622, label %624

622:                                              ; preds = %600
  %623 = load ptr, ptr %506, align 8, !tbaa !31
  store ptr %623, ptr %619, align 8, !tbaa !80
  br label %624

624:                                              ; preds = %622, %600
  %625 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %602, ptr noundef null) #26
  br label %626

626:                                              ; preds = %585, %624
  %627 = phi ptr [ %625, %624 ], [ null, %585 ]
  %628 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %629 = getelementptr inbounds ptr, ptr %628, i64 %522
  store ptr %627, ptr %629, align 8, !tbaa !5
  %630 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %454, i32 noundef %520) #26
  br label %631

631:                                              ; preds = %626, %526, %518, %542, %597, %507, %512
  %632 = getelementptr inbounds %struct.rtx_def, ptr %508, i64 0, i32 1, i32 0, i32 0, i64 1
  %633 = load ptr, ptr %632, align 8, !tbaa !31
  %634 = icmp eq ptr %633, null
  br i1 %634, label %635, label %507, !llvm.loop !168

635:                                              ; preds = %631, %500, %489, %497
  %636 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 0, i32 1, i32 0, i32 0, i64 1
  %637 = load ptr, ptr %636, align 8, !tbaa !31
  %638 = load ptr, ptr %479, align 8, !tbaa !31
  %639 = load ptr, ptr %638, align 8, !tbaa !80
  %640 = getelementptr inbounds %struct.rtx_def, ptr %639, i64 0, i32 1, i32 0, i32 0, i64 1
  %641 = load ptr, ptr %640, align 8, !tbaa !31
  %642 = icmp eq ptr %637, %641
  br i1 %642, label %464, label %489, !llvm.loop !169

643:                                              ; preds = %466, %453
  %644 = phi ptr [ %457, %453 ], [ %471, %466 ]
  %645 = phi ptr [ %461, %453 ], [ %469, %466 ]
  %646 = load ptr, ptr %454, align 8, !tbaa !170
  %647 = icmp eq ptr %646, null
  br i1 %647, label %714, label %648

648:                                              ; preds = %643
  %649 = getelementptr inbounds %struct.basic_block_def, ptr %645, i64 0, i32 6
  %650 = load ptr, ptr %649, align 8, !tbaa !77
  %651 = getelementptr inbounds %struct.control_flow_graph, ptr %644, i64 0, i32 1
  %652 = load ptr, ptr %651, align 8, !tbaa !79
  %653 = icmp eq ptr %650, %652
  br i1 %653, label %685, label %654

654:                                              ; preds = %648, %654
  %655 = phi ptr [ %678, %654 ], [ %650, %648 ]
  %656 = getelementptr inbounds %struct.basic_block_def, ptr %655, i64 0, i32 9
  %657 = load i32, ptr %656, align 8, !tbaa !91
  %658 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %657) #27
  %659 = getelementptr inbounds %struct.df_live_bb_info, ptr %658, i64 0, i32 2
  %660 = load ptr, ptr %659, align 8, !tbaa !172
  %661 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %660, ptr noundef nonnull %454) #26
  %662 = load i32, ptr %656, align 8, !tbaa !91
  %663 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %662) #27
  %664 = getelementptr inbounds %struct.df_live_bb_info, ptr %663, i64 0, i32 3
  %665 = load ptr, ptr %664, align 8, !tbaa !174
  %666 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %665, ptr noundef nonnull %454) #26
  %667 = load i32, ptr %656, align 8, !tbaa !91
  %668 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %667) #27
  %669 = getelementptr inbounds %struct.df_lr_bb_info, ptr %668, i64 0, i32 2
  %670 = load ptr, ptr %669, align 8, !tbaa !92
  %671 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %670, ptr noundef nonnull %454) #26
  %672 = load i32, ptr %656, align 8, !tbaa !91
  %673 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %672) #27
  %674 = getelementptr inbounds %struct.df_lr_bb_info, ptr %673, i64 0, i32 3
  %675 = load ptr, ptr %674, align 8, !tbaa !175
  %676 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %675, ptr noundef nonnull %454) #26
  %677 = getelementptr inbounds %struct.basic_block_def, ptr %655, i64 0, i32 6
  %678 = load ptr, ptr %677, align 8, !tbaa !77
  %679 = load ptr, ptr @cfun, align 8, !tbaa !5
  %680 = getelementptr inbounds %struct.function, ptr %679, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !73
  %682 = getelementptr inbounds %struct.control_flow_graph, ptr %681, i64 0, i32 1
  %683 = load ptr, ptr %682, align 8, !tbaa !79
  %684 = icmp eq ptr %678, %683
  br i1 %684, label %685, label %654, !llvm.loop !176

685:                                              ; preds = %654, %648
  %686 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %714, label %688

688:                                              ; preds = %685
  %689 = tail call ptr @get_insns() #26
  %690 = icmp eq ptr %689, null
  br i1 %690, label %714, label %691

691:                                              ; preds = %688, %710
  %692 = phi ptr [ %712, %710 ], [ %689, %688 ]
  %693 = load i32, ptr %692, align 8
  %694 = and i32 %693, 65535
  %695 = icmp eq i32 %694, 7
  br i1 %695, label %696, label %710

696:                                              ; preds = %691
  %697 = getelementptr inbounds %struct.rtx_def, ptr %692, i64 1
  %698 = load ptr, ptr %697, align 8, !tbaa !31
  %699 = getelementptr inbounds %struct.rtx_def, ptr %698, i64 0, i32 1, i32 0, i32 0, i64 1
  %700 = load ptr, ptr %699, align 8, !tbaa !31
  %701 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %700, ptr noundef null, ptr noundef nonnull @adjust_cleared_regs, ptr noundef nonnull %454) #26
  %702 = load ptr, ptr %697, align 8, !tbaa !31
  %703 = getelementptr inbounds %struct.rtx_def, ptr %702, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %701, ptr %703, align 8, !tbaa !31
  %704 = load ptr, ptr %697, align 8, !tbaa !31
  %705 = getelementptr inbounds %struct.rtx_def, ptr %704, i64 0, i32 1, i32 0, i32 0, i64 1
  %706 = load ptr, ptr %705, align 8, !tbaa !31
  %707 = icmp eq ptr %700, %706
  br i1 %707, label %710, label %708

708:                                              ; preds = %696
  %709 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %692) #26
  br label %710

710:                                              ; preds = %696, %708, %691
  %711 = getelementptr inbounds %struct.rtx_def, ptr %692, i64 0, i32 1, i32 0, i32 0, i64 2
  %712 = load ptr, ptr %711, align 8, !tbaa !31
  %713 = icmp eq ptr %712, null
  br i1 %713, label %714, label %691, !llvm.loop !177

714:                                              ; preds = %710, %688, %685, %643
  tail call void @bitmap_obstack_free(ptr noundef nonnull %454) #26
  br label %715

715:                                              ; preds = %360, %714
  tail call void @end_alias_analysis() #26
  %716 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  tail call void @free(ptr noundef %716) #27
  %717 = load i1, ptr @recorded_label_ref, align 4
  %718 = zext i1 %717 to i32
  ret i32 %718
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reg_equiv_invariant_const() unnamed_addr #0 {
  %1 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !18
  %2 = icmp sgt i32 %1, 53
  br i1 %2, label %3, label %75

3:                                                ; preds = %0, %64
  %4 = phi i64 [ %71, %64 ], [ 53, %0 ]
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %3, %58
  %10 = phi ptr [ %62, %58 ], [ %7, %3 ]
  %11 = phi ptr [ %60, %58 ], [ null, %3 ]
  %12 = phi i8 [ %59, %58 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 3, ptr noundef null) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = tail call i32 @function_invariant_p(ptr noundef %19) #26
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr @flag_pic, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load i32, ptr %19, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !18
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %19) #26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %32, %17
  %36 = tail call i32 @memory_operand(ptr noundef %19, i32 noundef 0) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %19, align 8
  %40 = lshr i32 %39, 26
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  br label %58

43:                                               ; preds = %35
  %44 = tail call i32 @function_invariant_p(ptr noundef %19) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

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
  %56 = select i1 %55, i8 1, i8 %12
  %57 = select i1 %55, ptr %11, ptr %19
  br label %58

58:                                               ; preds = %46, %25, %32, %43, %38, %9
  %59 = phi i8 [ %12, %9 ], [ %42, %38 ], [ %12, %43 ], [ %12, %32 ], [ %12, %25 ], [ %56, %46 ]
  %60 = phi ptr [ %11, %9 ], [ %11, %38 ], [ %11, %43 ], [ %11, %32 ], [ %11, %25 ], [ %57, %46 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !31
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %9, !llvm.loop !178

64:                                               ; preds = %58, %3
  %65 = phi i8 [ 0, %3 ], [ %59, %58 ]
  %66 = phi ptr [ null, %3 ], [ %60, %58 ]
  %67 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %67, i64 %4
  store i8 %65, ptr %68, align 1, !tbaa !31
  %69 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !5
  %70 = getelementptr inbounds ptr, ptr %69, i64 %4
  store ptr %66, ptr %70, align 8, !tbaa !5
  %71 = add nuw nsw i64 %4, 1
  %72 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !18
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %3, label %75, !llvm.loop !179

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
define internal fastcc noundef zeroext i8 @too_high_register_pressure_p() unnamed_addr #15 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !18
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !5
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %17, label %9, !llvm.loop !180

9:                                                ; preds = %3, %6
  %10 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !18
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = icmp sgt i32 %15, 10000
  br i1 %16, label %17, label %6

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
define internal fastcc void @expand_reg_info(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @max_reg_num() #26
  %3 = tail call zeroext i8 @resize_reg_info() #26
  %4 = icmp sgt i32 %2, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ %0, %1 ]
  tail call void @setup_reg_classes(i32 noundef %6, i32 noundef 13, i32 noundef 26, i32 noundef 13) #26
  %7 = add i32 %6, 1
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %9, label %5, !llvm.loop !181

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_preferred_alternate_classes_for_new_pseudos(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @max_reg_num() #26
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %36

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %32
  %7 = phi i64 [ %5, %4 ], [ %33, %32 ]
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %9 = getelementptr inbounds ptr, ptr %8, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load i32, ptr %11, align 8, !tbaa !31
  %13 = tail call i32 @reg_preferred_class(i32 noundef %12) #26
  %14 = tail call i32 @reg_alternate_class(i32 noundef %12) #26
  %15 = tail call i32 @reg_cover_class(i32 noundef %12) #26
  %16 = trunc i64 %7 to i32
  tail call void @setup_reg_classes(i32 noundef %16, i32 noundef %13, i32 noundef %14, i32 noundef %15) #26
  %17 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !18
  %18 = icmp sgt i32 %17, 2
  %19 = load ptr, ptr @ira_dump_file, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %32

22:                                               ; preds = %6
  %23 = tail call i32 @reg_preferred_class(i32 noundef %12) #26
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = tail call i32 @reg_alternate_class(i32 noundef %12) #26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.45, i32 noundef %16, ptr noundef %26, ptr noundef %30) #27
  br label %32

32:                                               ; preds = %6, %22
  %33 = add nsw i64 %7, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %2, %34
  br i1 %35, label %36, label %6, !llvm.loop !182

36:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: optsize
declare void @ira_flattening(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_assignment_flags() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %0, %29
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %6) #26
  %12 = load i16, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i16 [ %12, %11 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !19
  %17 = icmp slt i32 %16, 0
  %18 = and i16 %14, 1
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !183
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !184
  %26 = icmp slt i32 %23, %25
  %27 = freeze i1 %26
  %28 = select i1 %27, i16 256, i16 0
  br label %29

29:                                               ; preds = %13, %21
  %30 = phi i16 [ %28, %21 ], [ 256, %13 ]
  %31 = and i16 %14, -257
  %32 = or disjoint i16 %31, %30
  store i16 %32, ptr %7, align 4
  %33 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %5, !llvm.loop !185

35:                                               ; preds = %29, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: optsize
declare void @ira_reassign_conflict_allocnos(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_renumber() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr @caller_save_needed, align 4, !tbaa !18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %0, %36
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = or disjoint i16 %8, 256
  store i16 %12, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %5
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %6) #26
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !186
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #27
  %19 = tail call i32 @llvm.smax.i32(i32 %15, i32 -1)
  %20 = trunc i32 %19 to i16
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !5
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  store i16 %20, ptr %23, align 2, !tbaa !25
  %24 = icmp sgt i32 %15, -1
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !187
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !188
  %32 = load i64, ptr @call_used_reg_set, align 8, !tbaa !30
  %33 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %15, i32 noundef %31, i64 noundef %32) #27, !range !37
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, ptr @caller_save_needed, align 4, !tbaa !18
  br label %36

36:                                               ; preds = %35, %29, %25, %13
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %5, !llvm.loop !189

39:                                               ; preds = %36, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @calculate_allocation_cost() unnamed_addr #7 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !18
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %0, %36
  %6 = phi i32 [ %38, %36 ], [ 0, %0 ]
  %7 = phi i32 [ %37, %36 ], [ 0, %0 ]
  %8 = phi i32 [ %40, %36 ], [ 0, %0 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !19
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !183
  %16 = add nsw i32 %7, %15
  store i32 %16, ptr @ira_mem_cost, align 4, !tbaa !18
  br label %36

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !190
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !191
  %24 = zext i32 %23 to i64
  %25 = zext nneg i32 %11 to i64
  %26 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %24, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !25
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i32, ptr %19, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !18
  %31 = add nsw i32 %6, %30
  store i32 %31, ptr @ira_reg_cost, align 4, !tbaa !18
  br label %36

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !184
  %35 = add nsw i32 %6, %34
  store i32 %35, ptr @ira_reg_cost, align 4, !tbaa !18
  br label %36

36:                                               ; preds = %21, %32, %13
  %37 = phi i32 [ %16, %13 ], [ %7, %21 ], [ %7, %32 ]
  %38 = phi i32 [ %6, %13 ], [ %31, %21 ], [ %35, %32 ]
  %39 = phi i32 [ %15, %13 ], [ %30, %21 ], [ %34, %32 ]
  %40 = add nsw i32 %8, %39
  store i32 %40, ptr @ira_overall_cost, align 4, !tbaa !18
  %41 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %5, !llvm.loop !192

43:                                               ; preds = %36, %0
  %44 = phi i32 [ 0, %0 ], [ %37, %36 ]
  %45 = phi i32 [ 0, %0 ], [ %38, %36 ]
  %46 = phi i32 [ 0, %0 ], [ %40, %36 ]
  %47 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !18
  %48 = icmp sgt i32 %47, 0
  %49 = load ptr, ptr @ira_dump_file, align 8
  %50 = icmp ne ptr %49, null
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load i32, ptr @ira_load_cost, align 4, !tbaa !18
  %54 = load i32, ptr @ira_store_cost, align 4, !tbaa !18
  %55 = load i32, ptr @ira_shuffle_cost, align 4, !tbaa !18
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.46, i32 noundef %46, i32 noundef %45, i32 noundef %44, i32 noundef %53, i32 noundef %54, i32 noundef %55) #27
  %57 = load ptr, ptr @ira_dump_file, align 8, !tbaa !5
  %58 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !18
  %59 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !18
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
define internal fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !193
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %8) #27
  %9 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !5, !nonnull !195, !noundef !195
  store i32 %0, ptr %9, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_rtx_base_address(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @regstat_free_n_sets_and_refs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @regstat_free_ri() local_unnamed_addr #2

; Function Attrs: optsize
declare void @allocate_initial_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_reg_equiv_init() unnamed_addr #0 {
  %1 = tail call i32 @max_reg_num() #26
  %2 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !18
  %3 = icmp slt i32 %2, %1
  br i1 %3, label %4, label %112

4:                                                ; preds = %0
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @ggc_realloc_stat(ptr noundef %5, i64 noundef %7) #26
  store ptr %8, ptr @reg_equiv_init, align 8, !tbaa !5
  %9 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !18
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = sext i32 %9 to i64
  br label %17

13:                                               ; preds = %17
  store i32 %1, ptr @reg_equiv_init_size, align 4, !tbaa !18
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %1, %13 ], [ %9, %4 ]
  %16 = icmp sgt i32 %15, 53
  br i1 %16, label %23, label %112

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %12, %11 ], [ %20, %17 ]
  %19 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %20 = add nsw i64 %18, 1
  %21 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr null, ptr %21, align 8, !tbaa !5
  %22 = icmp eq i64 %20, %6
  br i1 %22, label %13, label %17, !llvm.loop !196

23:                                               ; preds = %14, %106
  %24 = phi i32 [ %107, %106 ], [ %15, %14 ]
  %25 = phi i64 [ %109, %106 ], [ 53, %14 ]
  %26 = phi i32 [ %108, %106 ], [ undef, %14 ]
  %27 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %23, %101
  %32 = phi i32 [ %88, %101 ], [ %26, %23 ]
  %33 = phi ptr [ %37, %101 ], [ %29, %23 ]
  %34 = phi ptr [ %102, %101 ], [ null, %23 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = load ptr, ptr %35, align 8, !tbaa !31
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !31
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 23
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call ptr @single_set_2(ptr noundef nonnull %38, ptr noundef nonnull %45) #26
  br label %51

51:                                               ; preds = %31, %43, %49
  %52 = phi ptr [ %50, %49 ], [ null, %31 ], [ %45, %43 ]
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #27
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 %25, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load i32, ptr %63, align 8, !tbaa !31
  %65 = zext i32 %64 to i64
  %66 = icmp eq i64 %25, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %58
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #27
  br label %87

69:                                               ; preds = %62, %51
  %70 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !31
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #27
  %77 = zext i32 %76 to i64
  %78 = icmp eq i64 %25, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load i32, ptr %80, align 8, !tbaa !31
  %82 = zext i32 %81 to i64
  %83 = icmp eq i64 %25, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79, %75
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #27
  br label %87

86:                                               ; preds = %79, %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1774, ptr noundef nonnull @.str.41) #26
  br label %87

87:                                               ; preds = %84, %86, %67
  %88 = phi i32 [ %68, %67 ], [ %85, %84 ], [ %32, %86 ]
  %89 = zext i32 %88 to i64
  %90 = icmp eq i64 %25, %89
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = icmp eq ptr %34, null
  %93 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr @reg_equiv_init, align 8
  %95 = getelementptr inbounds ptr, ptr %94, i64 %25
  %96 = select i1 %92, ptr %95, ptr %93
  store ptr %37, ptr %96, align 8, !tbaa !31
  %97 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %98 = sext i32 %88 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  store ptr %100, ptr %36, align 8, !tbaa !31
  store ptr %33, ptr %99, align 8, !tbaa !5
  br label %101

101:                                              ; preds = %87, %91
  %102 = phi ptr [ %34, %91 ], [ %33, %87 ]
  %103 = icmp eq ptr %37, null
  br i1 %103, label %104, label %31, !llvm.loop !197

104:                                              ; preds = %101
  %105 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !18
  br label %106

106:                                              ; preds = %104, %23
  %107 = phi i32 [ %24, %23 ], [ %105, %104 ]
  %108 = phi i32 [ %26, %23 ], [ %88, %104 ]
  %109 = add nuw nsw i64 %25, 1
  %110 = sext i32 %107 to i64
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %23, label %112, !llvm.loop !198

112:                                              ; preds = %106, %14, %0
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_insn_chain() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #28
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %5 = load i32, ptr @max_regno, align 4, !tbaa !18
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #26
  %8 = load i32, ptr @max_regno, align 4, !tbaa !18
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #26
  %12 = load i64, ptr @eliminable_regset, align 8, !tbaa !30
  br label %13

13:                                               ; preds = %0, %23
  %14 = phi i64 [ %12, %0 ], [ %24, %23 ]
  %15 = phi i64 [ 0, %0 ], [ %25, %23 ]
  %16 = shl nuw nsw i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = trunc i64 %15 to i32
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %20) #26
  %22 = load i64, ptr @eliminable_regset, align 8, !tbaa !30
  br label %23

23:                                               ; preds = %13, %19
  %24 = phi i64 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %13, !llvm.loop !199

27:                                               ; preds = %23
  store i32 53, ptr %1, align 4, !tbaa !18
  %28 = load ptr, ptr @cfun, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !161
  %35 = load ptr, ptr %30, align 8, !tbaa !75
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %375, %27
  %38 = phi ptr [ null, %27 ], [ %377, %375 ]
  %39 = phi ptr [ @reload_insn_chain, %27 ], [ %378, %375 ]
  %40 = load i32, ptr @max_regno, align 4, !tbaa !18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %399, label %386

42:                                               ; preds = %27, %375
  %43 = phi ptr [ %380, %375 ], [ %34, %27 ]
  %44 = phi ptr [ %378, %375 ], [ @reload_insn_chain, %27 ]
  %45 = phi ptr [ %377, %375 ], [ null, %27 ]
  %46 = phi ptr [ %376, %375 ], [ null, %27 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #28
  tail call void @bitmap_clear(ptr noundef %3) #26
  %47 = load i32, ptr @max_regno, align 4, !tbaa !18
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %49, i1 false)
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !91
  %52 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %51) #27
  %53 = getelementptr inbounds %struct.df_lr_bb_info, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !175
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %54, i32 noundef 0, ptr noundef nonnull %1) #27
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %56 = icmp eq i8 %55, 0
  %57 = load i32, ptr %1, align 4
  %58 = icmp ugt i32 %57, 52
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %42, %60
  %61 = phi i32 [ %65, %60 ], [ %57, %42 ]
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %61) #26
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %64 = icmp eq i8 %63, 0
  %65 = load i32, ptr %1, align 4
  %66 = icmp ugt i32 %65, 52
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %60, !llvm.loop !200

68:                                               ; preds = %60, %42
  %69 = load i32, ptr %50, align 8, !tbaa !91
  %70 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %69) #27
  %71 = getelementptr inbounds %struct.df_lr_bb_info, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !175
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %72, i32 noundef 53, ptr noundef nonnull %1) #27
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68, %81
  %76 = load i32, ptr %1, align 4, !tbaa !18
  %77 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %76) #27, !range !37
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %76) #26
  br label %81

81:                                               ; preds = %75, %79
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !37
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %75, !llvm.loop !201

84:                                               ; preds = %81, %68
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !31
  %87 = getelementptr inbounds %struct.rtl_bb_info, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !31
  %89 = icmp eq ptr %88, null
  br i1 %89, label %326, label %90

90:                                               ; preds = %84, %317
  %91 = phi ptr [ %322, %317 ], [ %88, %84 ]
  %92 = phi ptr [ %320, %317 ], [ %44, %84 ]
  %93 = phi ptr [ %319, %317 ], [ %45, %84 ]
  %94 = phi ptr [ %318, %317 ], [ %46, %84 ]
  %95 = load ptr, ptr %85, align 8, !tbaa !31
  %96 = load ptr, ptr %95, align 8, !tbaa !31
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !31
  %99 = icmp eq ptr %91, %98
  br i1 %99, label %333, label %100

100:                                              ; preds = %90
  %101 = load i32, ptr %91, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %103 [
    i16 13, label %317
    i16 11, label %317
  ]

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !31
  %106 = tail call ptr @new_insn_chain() #26
  store ptr %94, ptr %106, align 8, !tbaa !202
  store ptr %106, ptr %92, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 1
  %108 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 3
  store ptr %91, ptr %108, align 8, !tbaa !204
  %109 = load i32, ptr %50, align 8, !tbaa !91
  %110 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 4
  store i32 %109, ptr %110, align 8, !tbaa !205
  %111 = load i32, ptr %91, align 8
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %112, -7
  %114 = icmp ult i32 %113, 4
  br i1 %114, label %115, label %225

115:                                              ; preds = %103
  %116 = load ptr, ptr @df, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !82
  %119 = zext i32 %105 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.df_insn_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !85
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %225, label %126

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  br label %128

128:                                              ; preds = %126, %221
  %129 = phi ptr [ %124, %126 ], [ %223, %221 ]
  %130 = phi ptr [ %123, %126 ], [ %222, %221 ]
  %131 = getelementptr inbounds %struct.df_base_ref, ptr %129, i64 0, i32 6
  %132 = load i32, ptr %131, align 8, !tbaa !31
  %133 = load i32, ptr %129, align 8
  %134 = and i32 %133, 4194304
  %135 = icmp eq i32 %134, 0
  %136 = icmp ult i32 %132, 53
  br i1 %135, label %137, label %150

137:                                              ; preds = %128
  br i1 %136, label %138, label %145

138:                                              ; preds = %137
  %139 = zext nneg i32 %132 to i64
  %140 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !31
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %138
  %144 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %127, i32 noundef %132) #26
  br label %160

145:                                              ; preds = %137
  %146 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %132) #27, !range !37
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %127, i32 noundef %132) #26
  br label %151

150:                                              ; preds = %128
  br i1 %136, label %160, label %151

151:                                              ; preds = %145, %148, %150
  %152 = load ptr, ptr @reg_renumber, align 8, !tbaa !5
  %153 = zext i32 %132 to i64
  %154 = getelementptr inbounds i16, ptr %152, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !25
  %156 = icmp sgt i16 %155, -1
  %157 = load i8, ptr @ira_conflicts_p, align 1
  %158 = icmp ne i8 %157, 0
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %160, label %221

160:                                              ; preds = %138, %143, %151, %150
  %161 = load i32, ptr %129, align 8
  %162 = and i32 %161, 65536
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %221

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.df_base_ref, ptr %129, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !31
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 39
  %170 = and i32 %161, 33554432
  %171 = icmp eq i32 %170, 0
  %172 = and i1 %171, %169
  br i1 %172, label %173, label %214

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load i32, ptr %174, align 8, !tbaa !31
  %176 = lshr i32 %167, 16
  %177 = and i32 %176, 255
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !31
  %181 = zext i8 %180 to i32
  %182 = add i32 %175, %181
  %183 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %132) #26
  %184 = trunc i32 %183 to i8
  tail call fastcc void @init_live_subregs(i8 noundef zeroext %184, ptr noundef %7, ptr noundef %11, i32 noundef %132, ptr noundef nonnull %166) #27
  %185 = load i32, ptr %129, align 8
  %186 = and i32 %185, 67108864
  %187 = icmp eq i32 %186, 0
  %188 = and i32 %175, -4
  %189 = add i32 %182, 3
  %190 = and i32 %189, -4
  %191 = select i1 %187, i32 %188, i32 %175
  %192 = select i1 %187, i32 %190, i32 %182
  %193 = zext i32 %132 to i64
  %194 = getelementptr inbounds i32, ptr %11, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !18
  %196 = tail call i32 @llvm.smin.i32(i32 %192, i32 %195)
  %197 = icmp ult i32 %191, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %173
  %199 = getelementptr inbounds ptr, ptr %7, i64 %193
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi i32 [ %191, %198 ], [ %203, %200 ]
  %202 = load ptr, ptr %199, align 8, !tbaa !5
  tail call fastcc void @RESET_BIT(ptr noundef %202, i32 noundef %201) #27
  %203 = add nuw i32 %201, 1
  %204 = icmp eq i32 %203, %196
  br i1 %204, label %205, label %200, !llvm.loop !206

205:                                              ; preds = %200, %173
  %206 = getelementptr inbounds ptr, ptr %7, i64 %193
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %207) #26
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  store i32 0, ptr %194, align 4, !tbaa !18
  %211 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %132) #26
  br label %221

212:                                              ; preds = %205
  %213 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %132) #26
  br label %221

214:                                              ; preds = %164
  %215 = and i32 %161, 1048576
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %132) #26
  %219 = zext i32 %132 to i64
  %220 = getelementptr inbounds i32, ptr %11, i64 %219
  store i32 0, ptr %220, align 4, !tbaa !18
  br label %221

221:                                              ; preds = %217, %214, %212, %210, %151, %160
  %222 = getelementptr inbounds ptr, ptr %130, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !5
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %128, !llvm.loop !207

225:                                              ; preds = %221, %115, %103
  %226 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %3, ptr noundef %4) #26
  %227 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %227, ptr noundef %3) #26
  %228 = load i32, ptr %91, align 8
  %229 = and i32 %228, 65535
  %230 = add nsw i32 %229, -7
  %231 = icmp ult i32 %230, 4
  br i1 %231, label %232, label %317

232:                                              ; preds = %225
  %233 = load ptr, ptr @df, align 8, !tbaa !5
  %234 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 10
  %235 = load ptr, ptr %234, align 8, !tbaa !82
  %236 = zext i32 %105 to i64
  %237 = getelementptr inbounds ptr, ptr %235, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !5
  %239 = getelementptr inbounds %struct.df_insn_info, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !208
  %241 = load ptr, ptr %240, align 8, !tbaa !5
  %242 = icmp eq ptr %241, null
  br i1 %242, label %317, label %243

243:                                              ; preds = %232
  %244 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  br label %245

245:                                              ; preds = %243, %313
  %246 = phi ptr [ %241, %243 ], [ %315, %313 ]
  %247 = phi ptr [ %240, %243 ], [ %314, %313 ]
  %248 = getelementptr inbounds %struct.df_base_ref, ptr %246, i64 0, i32 6
  %249 = load i32, ptr %248, align 8, !tbaa !31
  %250 = getelementptr inbounds %struct.df_base_ref, ptr %246, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !31
  %252 = load i32, ptr %246, align 8
  %253 = and i32 %252, 169869312
  %254 = icmp eq i32 %253, 136314880
  br i1 %254, label %313, label %255

255:                                              ; preds = %245
  %256 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %249) #26
  %257 = icmp eq i32 %256, 0
  %258 = icmp ult i32 %249, 53
  br i1 %257, label %259, label %272

259:                                              ; preds = %255
  br i1 %258, label %260, label %267

260:                                              ; preds = %259
  %261 = zext nneg i32 %249 to i64
  %262 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !31
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %260
  %266 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %244, i32 noundef %249) #26
  br label %276

267:                                              ; preds = %259
  %268 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %249) #27, !range !37
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %244, i32 noundef %249) #26
  br label %273

272:                                              ; preds = %255
  br i1 %258, label %276, label %273

273:                                              ; preds = %267, %270, %272
  %274 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %249) #27, !range !37
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %313, label %276

276:                                              ; preds = %260, %265, %273, %272
  %277 = load i32, ptr %251, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 39
  br i1 %279, label %280, label %308

280:                                              ; preds = %276
  %281 = load i32, ptr %246, align 8
  %282 = and i32 %281, 50331648
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %308

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1, i32 0, i32 0, i64 1
  %286 = load i32, ptr %285, align 8, !tbaa !31
  %287 = lshr i32 %277, 16
  %288 = and i32 %287, 255
  %289 = zext nneg i32 %288 to i64
  %290 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !31
  %292 = zext i8 %291 to i32
  %293 = add i32 %286, %292
  %294 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %249) #26
  %295 = trunc i32 %294 to i8
  tail call fastcc void @init_live_subregs(i8 noundef zeroext %295, ptr noundef %7, ptr noundef %11, i32 noundef %249, ptr noundef nonnull %251) #27
  %296 = zext i32 %249 to i64
  %297 = getelementptr inbounds i32, ptr %11, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !18
  %299 = tail call i32 @llvm.smin.i32(i32 %293, i32 %298)
  %300 = icmp ult i32 %286, %299
  br i1 %300, label %301, label %311

301:                                              ; preds = %284
  %302 = getelementptr inbounds ptr, ptr %7, i64 %296
  br label %303

303:                                              ; preds = %301, %303
  %304 = phi i32 [ %286, %301 ], [ %306, %303 ]
  %305 = load ptr, ptr %302, align 8, !tbaa !5
  tail call fastcc void @SET_BIT(ptr noundef %305, i32 noundef %304) #27
  %306 = add nuw i32 %304, 1
  %307 = icmp eq i32 %306, %299
  br i1 %307, label %311, label %303, !llvm.loop !209

308:                                              ; preds = %280, %276
  %309 = zext i32 %249 to i64
  %310 = getelementptr inbounds i32, ptr %11, i64 %309
  store i32 0, ptr %310, align 4, !tbaa !18
  br label %311

311:                                              ; preds = %303, %284, %308
  %312 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %249) #26
  br label %313

313:                                              ; preds = %273, %311, %245
  %314 = getelementptr inbounds ptr, ptr %247, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %245, !llvm.loop !210

317:                                              ; preds = %313, %232, %225, %100, %100
  %318 = phi ptr [ %94, %100 ], [ %94, %100 ], [ %106, %225 ], [ %106, %232 ], [ %106, %313 ]
  %319 = phi ptr [ %93, %100 ], [ %93, %100 ], [ %106, %225 ], [ %106, %232 ], [ %106, %313 ]
  %320 = phi ptr [ %92, %100 ], [ %92, %100 ], [ %107, %225 ], [ %107, %232 ], [ %107, %313 ]
  %321 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !31
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %90, !llvm.loop !211

324:                                              ; preds = %317
  %325 = load ptr, ptr %85, align 8, !tbaa !31
  br label %326

326:                                              ; preds = %324, %84
  %327 = phi ptr [ %325, %324 ], [ %86, %84 ]
  %328 = phi ptr [ %318, %324 ], [ %46, %84 ]
  %329 = phi ptr [ %319, %324 ], [ %45, %84 ]
  %330 = phi ptr [ %320, %324 ], [ %44, %84 ]
  %331 = load ptr, ptr %327, align 8, !tbaa !31
  %332 = icmp eq ptr %331, null
  br i1 %332, label %375, label %333

333:                                              ; preds = %90, %326
  %334 = phi ptr [ %330, %326 ], [ %92, %90 ]
  %335 = phi ptr [ %329, %326 ], [ %93, %90 ]
  %336 = phi ptr [ %328, %326 ], [ %94, %90 ]
  %337 = phi ptr [ %331, %326 ], [ %96, %90 ]
  br label %338

338:                                              ; preds = %333, %346
  %339 = phi ptr [ %348, %346 ], [ %337, %333 ]
  %340 = load i32, ptr %339, align 8
  %341 = trunc i32 %340 to i16
  switch i16 %341, label %342 [
    i16 11, label %346
    i16 13, label %346
  ]

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 0, i32 1, i32 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !31
  %345 = icmp eq ptr %344, %43
  br i1 %345, label %346, label %350

346:                                              ; preds = %338, %338, %342
  %347 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 0, i32 1, i32 0, i32 0, i64 1
  %348 = load ptr, ptr %347, align 8, !tbaa !31
  %349 = icmp eq ptr %348, null
  br i1 %349, label %375, label %338, !llvm.loop !212

350:                                              ; preds = %342, %368
  %351 = phi ptr [ %371, %368 ], [ %334, %342 ]
  %352 = phi ptr [ %370, %368 ], [ %335, %342 ]
  %353 = phi ptr [ %369, %368 ], [ %336, %342 ]
  %354 = phi ptr [ %373, %368 ], [ %339, %342 ]
  %355 = load i32, ptr %354, align 8
  %356 = trunc i32 %355 to i16
  switch i16 %356, label %357 [
    i16 13, label %368
    i16 11, label %368
  ]

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1, i32 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !31
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %375

361:                                              ; preds = %357
  %362 = tail call ptr @new_insn_chain() #26
  store ptr %353, ptr %362, align 8, !tbaa !202
  store ptr %362, ptr %351, align 8, !tbaa !5
  %363 = getelementptr inbounds %struct.insn_chain, ptr %362, i64 0, i32 1
  %364 = load i32, ptr %50, align 8, !tbaa !91
  %365 = getelementptr inbounds %struct.insn_chain, ptr %362, i64 0, i32 4
  store i32 %364, ptr %365, align 8, !tbaa !205
  %366 = getelementptr inbounds %struct.insn_chain, ptr %362, i64 0, i32 3
  store ptr %354, ptr %366, align 8, !tbaa !204
  %367 = getelementptr inbounds %struct.insn_chain, ptr %362, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %367, ptr noundef %3) #26
  br label %368

368:                                              ; preds = %350, %350, %361
  %369 = phi ptr [ %353, %350 ], [ %362, %361 ], [ %353, %350 ]
  %370 = phi ptr [ %352, %350 ], [ %362, %361 ], [ %352, %350 ]
  %371 = phi ptr [ %351, %350 ], [ %363, %361 ], [ %351, %350 ]
  %372 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1, i32 0, i32 0, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !31
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %350, !llvm.loop !213

375:                                              ; preds = %346, %368, %357, %326
  %376 = phi ptr [ %328, %326 ], [ %353, %357 ], [ %369, %368 ], [ %336, %346 ]
  %377 = phi ptr [ %329, %326 ], [ %352, %357 ], [ %370, %368 ], [ %335, %346 ]
  %378 = phi ptr [ %330, %326 ], [ %351, %357 ], [ %371, %368 ], [ %334, %346 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #28
  %379 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 5
  %380 = load ptr, ptr %379, align 8, !tbaa !161
  %381 = load ptr, ptr @cfun, align 8, !tbaa !5
  %382 = getelementptr inbounds %struct.function, ptr %381, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !73
  %384 = load ptr, ptr %383, align 8, !tbaa !75
  %385 = icmp eq ptr %380, %384
  br i1 %385, label %37, label %42, !llvm.loop !214

386:                                              ; preds = %37, %394
  %387 = phi i32 [ %395, %394 ], [ %40, %37 ]
  %388 = phi i64 [ %396, %394 ], [ 0, %37 ]
  %389 = getelementptr inbounds ptr, ptr %7, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !5
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392

392:                                              ; preds = %386
  tail call void @free(ptr noundef nonnull %390) #27
  %393 = load i32, ptr @max_regno, align 4, !tbaa !18
  br label %394

394:                                              ; preds = %386, %392
  %395 = phi i32 [ %387, %386 ], [ %393, %392 ]
  %396 = add nuw nsw i64 %388, 1
  %397 = zext i32 %395 to i64
  %398 = icmp ult i64 %396, %397
  br i1 %398, label %386, label %399, !llvm.loop !215

399:                                              ; preds = %394, %37
  store ptr %38, ptr @reload_insn_chain, align 8, !tbaa !5
  store ptr null, ptr %39, align 8, !tbaa !5
  tail call void @free(ptr noundef %7) #27
  tail call void @free(ptr noundef %11) #27
  tail call void @bitmap_obstack_free(ptr noundef %3) #26
  tail call void @bitmap_obstack_free(ptr noundef %4) #26
  %400 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %401 = icmp eq ptr %400, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %399
  tail call fastcc void @print_insn_chains(ptr noundef nonnull %400) #27
  br label %403

403:                                              ; preds = %402, %399
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !31
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #26
  store i32 %8, ptr %2, align 8, !tbaa !31
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
define internal void @no_equiv(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %9 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %7
  store ptr %13, ptr %11, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10
  store ptr null, ptr %16, align 8, !tbaa !151
  %17 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !145
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !5
  %22 = getelementptr inbounds ptr, ptr %21, i64 %10
  store ptr null, ptr %22, align 8, !tbaa !5
  %23 = icmp eq ptr %12, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %30, %24 ], [ %12, %20 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = tail call ptr @find_reg_note(ptr noundef %27, i32 noundef 3, ptr noundef null) #26
  tail call void @remove_note(ptr noundef %27, ptr noundef %28) #26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !216

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
define internal fastcc noundef i32 @validate_equiv_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  store ptr %2, ptr @equiv_mem, align 8, !tbaa !5
  store i1 false, ptr @equiv_mem_modified, align 4
  %4 = tail call i32 @side_effects_p(ptr noundef %2) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = load i1, ptr @equiv_mem_modified, align 4
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %62, label %10

10:                                               ; preds = %6, %56
  %11 = phi ptr [ %58, %56 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %1) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load i32, ptr %11, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %30

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
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  tail call void @note_stores(ptr noundef %32, ptr noundef nonnull @validate_equiv_mem_from_store, ptr noundef null) #26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %30, %52
  %37 = phi ptr [ %54, %52 ], [ %34, %30 ]
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !31
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %45, ptr noundef %2) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %36, %43, %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %36, !llvm.loop !217

56:                                               ; preds = %52, %30, %10
  %57 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !31
  %59 = icmp eq ptr %58, null
  %60 = load i1, ptr @equiv_mem_modified, align 4
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %10, !llvm.loop !218

62:                                               ; preds = %16, %23, %56, %49, %6, %3
  %63 = phi i32 [ 0, %3 ], [ 0, %6 ], [ 0, %49 ], [ 1, %16 ], [ 0, %23 ], [ 0, %56 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !165
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_init_varies_p(ptr noundef %0) unnamed_addr #0 {
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
  ]

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %66, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %10) #27
  %12 = icmp ne i32 %11, 0
  br label %66

13:                                               ; preds = %1
  %14 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.equivalence, ptr %14, i64 %16, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !157
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %66

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
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !31
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = zext i8 %31 to i64
  br label %36

36:                                               ; preds = %33, %64
  %37 = phi i64 [ %35, %33 ], [ %38, %64 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !31
  switch i8 %40, label %64 [
    i8 101, label %46
    i8 69, label %41
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = load i32, ptr %43, align 8, !tbaa !142
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %57, label %64

46:                                               ; preds = %36
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  %49 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %48) #27
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %66

51:                                               ; preds = %57
  %52 = add nuw nsw i64 %58, 1
  %53 = load ptr, ptr %42, align 8, !tbaa !31
  %54 = load i32, ptr %53, align 8, !tbaa !142
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %64, !llvm.loop !219

57:                                               ; preds = %41, %51
  %58 = phi i64 [ %52, %51 ], [ 0, %41 ]
  %59 = phi ptr [ %53, %51 ], [ %43, %41 ]
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %61) #27
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %51, label %66

64:                                               ; preds = %51, %41, %36, %46
  %65 = icmp sgt i64 %37, 1
  br i1 %65, label %36, label %66, !llvm.loop !220

66:                                               ; preds = %46, %64, %57, %26, %23, %13, %20, %1, %1, %1, %1, %1, %1, %1, %5, %8
  %67 = phi i1 [ true, %5 ], [ %12, %8 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %13 ], [ %22, %20 ], [ true, %23 ], [ false, %26 ], [ true, %57 ], [ true, %46 ], [ false, %64 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_init_movable_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
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
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  br label %3

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #27
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %13, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !155
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %16, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !155
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %13, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !157
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %20, %10
  %25 = load ptr, ptr @reg_info_p, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.reg_info_t, ptr %25, i64 %13, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !152
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %75

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
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %46 = zext i8 %42 to i64
  br label %47

47:                                               ; preds = %44, %73
  %48 = phi i64 [ %46, %44 ], [ %49, %73 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !31
  switch i8 %51, label %73 [
    i8 101, label %52
    i8 69, label %57
  ]

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %54, i32 noundef %1) #27, !range !132
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %73

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !31
  %60 = load i32, ptr %59, align 8, !tbaa !142
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %57
  %63 = phi i64 [ %67, %66 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = load ptr, ptr %58, align 8, !tbaa !31
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %70, i32 noundef %1) #27, !range !132
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %62, !llvm.loop !221

73:                                               ; preds = %62, %47, %52
  %74 = icmp sgt i64 %48, 1
  br i1 %74, label %47, label %75, !llvm.loop !222

75:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %52, %73, %66, %36, %33, %20, %29, %24
  %76 = phi i32 [ 1, %20 ], [ 0, %24 ], [ %32, %29 ], [ 0, %33 ], [ 1, %36 ], [ 0, %66 ], [ 0, %52 ], [ 1, %73 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @contains_replace_regs(ptr nocapture noundef readonly %0) unnamed_addr #17 {
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
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.equivalence, ptr %5, i64 %7, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !157
  %10 = sext i8 %9 to i32
  br label %49

11:                                               ; preds = %1
  %12 = and i32 %2, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !31
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %19, %47
  %23 = phi i64 [ %21, %19 ], [ %24, %47 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !31
  switch i8 %26, label %47 [
    i8 101, label %27
    i8 69, label %32
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = tail call fastcc i32 @contains_replace_regs(ptr noundef %29) #27, !range !159
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %49

32:                                               ; preds = %22
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = load i32, ptr %34, align 8, !tbaa !142
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
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = tail call fastcc i32 @contains_replace_regs(ptr noundef %44) #27, !range !159
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %49, !llvm.loop !223

47:                                               ; preds = %37, %22, %27
  %48 = icmp sgt i64 %23, 1
  br i1 %48, label %22, label %49, !llvm.loop !224

49:                                               ; preds = %27, %47, %41, %11, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %50 = phi i32 [ %10, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %11 ], [ 1, %41 ], [ 1, %27 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @memref_used_between_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = load ptr, ptr %4, align 8, !tbaa !31
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %32, label %9

9:                                                ; preds = %3, %27
  %10 = phi ptr [ %28, %27 ], [ %7, %3 ]
  %11 = phi ptr [ %30, %27 ], [ %6, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -11
  %15 = icmp ult i32 %14, -3
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %18) #27, !range !132
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, ptr %11, align 8
  %23 = and i32 %22, 67174399
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 8, !tbaa !31
  br label %27

27:                                               ; preds = %25, %9
  %28 = phi ptr [ %26, %25 ], [ %10, %9 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %32, label %9, !llvm.loop !225

32:                                               ; preds = %16, %21, %27, %3
  %33 = phi i32 [ 0, %3 ], [ 0, %27 ], [ 1, %21 ], [ 1, %16 ]
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
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !95
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @simplify_replace_fn_rtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @adjust_cleared_regs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
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
  %12 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.equivalence, ptr %12, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = load ptr, ptr %16, align 8, !tbaa !5
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
define internal void @validate_equiv_mem_from_store(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr @equiv_mem, align 8, !tbaa !5
  %9 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %0, ptr noundef %8) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ %4, %3 ]
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr @equiv_mem, align 8, !tbaa !5
  %19 = tail call i32 @true_dependence(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %18, ptr noundef nonnull @rtx_varies_p) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

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
define internal fastcc noundef i32 @memref_referenced_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  ]

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_equiv, align 8, !tbaa !5
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #27
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.equivalence, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %75, label %34

14:                                               ; preds = %3
  %15 = tail call i32 @true_dependence(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @rtx_varies_p) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %75

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  %26 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %25) #27, !range !132
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %75

28:                                               ; preds = %17
  %29 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef nonnull %19) #27, !range !132
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !31
  br label %34

34:                                               ; preds = %31, %7
  %35 = phi ptr [ %33, %31 ], [ %12, %7 ]
  br label %3

36:                                               ; preds = %3, %14
  %37 = and i32 %5, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %46 = zext i8 %42 to i64
  br label %47

47:                                               ; preds = %44, %73
  %48 = phi i64 [ %46, %44 ], [ %49, %73 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !31
  switch i8 %51, label %73 [
    i8 101, label %52
    i8 69, label %57
  ]

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %54) #27, !range !132
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %75

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !31
  %60 = load i32, ptr %59, align 8, !tbaa !142
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %57
  %63 = phi i64 [ %67, %66 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = load ptr, ptr %58, align 8, !tbaa !31
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %70) #27, !range !132
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %62, label %75, !llvm.loop !226

73:                                               ; preds = %62, %47, %52
  %74 = icmp sgt i64 %48, 1
  br i1 %74, label %47, label %75, !llvm.loop !227

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
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #18 {
  store i32 0, ptr %0, align 4, !tbaa !228
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #19 {
  %3 = load i32, ptr %0, align 4, !tbaa !228
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !18
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !5
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !228
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !230

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #20 {
  %4 = zext nneg i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !31
  %8 = zext i8 %7 to i64
  %9 = sext i32 %0 to i64
  br label %10

10:                                               ; preds = %13, %3
  %11 = phi i64 [ %14, %13 ], [ %8, %3 ]
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = add nsw i64 %11, -1
  %15 = add nuw nsw i64 %14, %9
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !231

19:                                               ; preds = %10, %13
  %20 = phi i8 [ 0, %13 ], [ 1, %10 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2, i32 noundef %0) #27, !range !132
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #26
  store ptr %6, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !232
  %7 = load i32, ptr %0, align 8, !tbaa !193
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #21 {
  %5 = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %5, ptr %0, align 8, !tbaa !233
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !235
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !233
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !236
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !238
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !239
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !239
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !18
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !240

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !18
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !18
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !238
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !233
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !238
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !30
  store i64 %35, ptr %3, align 8, !tbaa !239
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !18
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !18
  %40 = load i32, ptr %23, align 8, !tbaa !238
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !238
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !241

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !242
  store ptr %44, ptr %0, align 8, !tbaa !233
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !236
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !18
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !239
  store i32 %16, ptr %1, align 4, !tbaa !18
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #22 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !239
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !239
  %6 = load i32, ptr %1, align 4, !tbaa !18
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @reg_renumber, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !25
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !31
  %9 = icmp ne i8 %8, 0
  %10 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %7 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @new_insn_chain() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_live_subregs(i8 noundef zeroext %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %7) #27
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !31
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2817, ptr noundef nonnull @.str.41) #26
  br label %22

22:                                               ; preds = %5, %21
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = getelementptr inbounds ptr, ptr %1, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %19) #26
  store ptr %32, ptr %28, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = icmp eq i8 %0, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @sbitmap_ones(ptr noundef %34) #26
  br label %38

37:                                               ; preds = %33
  tail call void @sbitmap_zero(ptr noundef %34) #26
  br label %38

38:                                               ; preds = %37, %36
  store i32 %19, ptr %24, align 4, !tbaa !18
  br label %39

39:                                               ; preds = %22, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 {
  %3 = load ptr, ptr %0, align 8, !tbaa !243
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
  %15 = load i64, ptr %14, align 8, !tbaa !30
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !31
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !31
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !30
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 {
  %3 = load ptr, ptr %0, align 8, !tbaa !243
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
  %15 = load i64, ptr %14, align 8, !tbaa !30
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !31
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !31
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !30
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_insn_chains(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @print_insn_chain(ptr noundef %0, ptr noundef nonnull %5) #27
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !245

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
define internal fastcc void @print_insn_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.insn_chain, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !31
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
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"ira_allocno", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 140, !12, i64 144, !12, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 173, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !11, i64 216, !11, i64 220, !6, i64 224, !6, i64 232, !11, i64 240}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !11, i64 4}
!14 = !{!10, !6, i64 32}
!15 = !{!16, !6, i64 0}
!16 = !{!"ira_loop_tree_node", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !11, i64 56, !7, i64 60, !6, i64 64, !7, i64 72, !7, i64 76, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208}
!17 = !{!16, !6, i64 8}
!18 = !{!11, !11, i64 0}
!19 = !{!10, !11, i64 12}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !7, i64 0}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = !{!12, !12, i64 0}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = !{i8 0, i8 2}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = !{!48, !6, i64 1768}
!48 = !{!"gcc_target", !49, i64 0, !51, i64 368, !52, i64 664, !11, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !12, i64 1064, !12, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !53, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !12, i64 1464, !54, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !55, i64 1784, !56, i64 1792, !57, i64 1896, !58, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!49 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !50, i64 24, !50, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!50 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!51 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!52 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!53 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!54 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!55 = !{!"c", !6, i64 0}
!56 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!57 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!58 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!59 = !{!60, !7, i64 477}
!60 = !{!"rtl_data", !61, i64 0, !62, i64 40, !63, i64 96, !64, i64 112, !66, i64 208, !67, i64 248, !11, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !12, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !6, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!61 = !{!"expr_status", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!62 = !{!"emit_status", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !6, i64 48}
!63 = !{!"varasm_status", !6, i64 0, !11, i64 8}
!64 = !{!"incoming_args", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 16, !65, i64 24, !6, i64 88}
!65 = !{!"ix86_args", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60}
!66 = !{!"function_subsections", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!67 = !{!"rtl_eh", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !7, i64 48}
!68 = !{!48, !6, i64 1776}
!69 = !{!70, !11, i64 0}
!70 = !{!"", !11, i64 0, !11, i64 4}
!71 = !{!70, !11, i64 4}
!72 = distinct !{!72, !21}
!73 = !{!74, !6, i64 8}
!74 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!75 = !{!76, !6, i64 0}
!76 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!77 = !{!78, !6, i64 56}
!78 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !12, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!79 = !{!76, !6, i64 8}
!80 = !{!81, !6, i64 0}
!81 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32}
!82 = !{!83, !6, i64 248}
!83 = !{!"df", !7, i64 0, !7, i64 64, !6, i64 128, !84, i64 136, !84, i64 176, !6, i64 216, !6, i64 224, !6, i64 232, !11, i64 240, !11, i64 244, !6, i64 248, !11, i64 256, !11, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !11, i64 344, !11, i64 348, !6, i64 352, !11, i64 360, !11, i64 364, !7, i64 365, !7, i64 366}
!84 = !{!"df_ref_info", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!85 = !{!86, !6, i64 8}
!86 = !{!"df_insn_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = !{!78, !11, i64 80}
!92 = !{!93, !6, i64 16}
!93 = !{!"df_lr_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!94 = distinct !{!94, !21}
!95 = !{!96, !11, i64 16}
!96 = !{!"dataflow", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!97 = !{!96, !6, i64 8}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21, !103, !104}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = !{!48, !6, i64 1720}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = !{i32 0, i32 2}
!133 = !{!74, !6, i64 32}
!134 = !{!78, !6, i64 24}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = !{!78, !11, i64 84}
!140 = !{!81, !6, i64 8}
!141 = distinct !{!141, !21}
!142 = !{!143, !11, i64 0}
!143 = !{!"rtvec_def", !11, i64 0, !7, i64 8}
!144 = distinct !{!144, !21}
!145 = !{!146, !11, i64 28}
!146 = !{!"equivalence", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !7, i64 32}
!147 = !{!146, !6, i64 16}
!148 = !{!83, !6, i64 216}
!149 = !{!150, !11, i64 8}
!150 = !{!"df_reg_info", !6, i64 0, !11, i64 8}
!151 = !{!146, !6, i64 0}
!152 = !{!153, !11, i64 24}
!153 = !{!"reg_info_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!154 = !{!146, !6, i64 8}
!155 = !{!146, !11, i64 24}
!156 = !{!153, !11, i64 8}
!157 = !{!146, !7, i64 32}
!158 = distinct !{!158, !21}
!159 = !{i32 -128, i32 128}
!160 = distinct !{!160, !21}
!161 = !{!78, !6, i64 48}
!162 = distinct !{!162, !21}
!163 = distinct !{!163, !21}
!164 = distinct !{!164, !21}
!165 = !{!166, !11, i64 4}
!166 = !{!"regstat_n_sets_and_refs_t", !11, i64 0, !11, i64 4}
!167 = !{!153, !11, i64 0}
!168 = distinct !{!168, !21}
!169 = distinct !{!169, !21}
!170 = !{!171, !6, i64 0}
!171 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!172 = !{!173, !6, i64 16}
!173 = !{!"df_live_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!174 = !{!173, !6, i64 24}
!175 = !{!93, !6, i64 24}
!176 = distinct !{!176, !21}
!177 = distinct !{!177, !21}
!178 = distinct !{!178, !21}
!179 = distinct !{!179, !21}
!180 = distinct !{!180, !21}
!181 = distinct !{!181, !21}
!182 = distinct !{!182, !21}
!183 = !{!10, !11, i64 60}
!184 = !{!10, !11, i64 52}
!185 = distinct !{!185, !21}
!186 = !{!10, !6, i64 16}
!187 = !{!10, !11, i64 168}
!188 = !{!10, !11, i64 8}
!189 = distinct !{!189, !21}
!190 = !{!10, !6, i64 184}
!191 = !{!10, !11, i64 48}
!192 = distinct !{!192, !21}
!193 = !{!194, !11, i64 0}
!194 = !{!"VEC_rtx_base", !11, i64 0, !11, i64 4, !7, i64 8}
!195 = !{}
!196 = distinct !{!196, !21}
!197 = distinct !{!197, !21}
!198 = distinct !{!198, !21}
!199 = distinct !{!199, !21}
!200 = distinct !{!200, !21}
!201 = distinct !{!201, !21}
!202 = !{!203, !6, i64 0}
!203 = !{!"insn_chain", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 36, !11, i64 36, !11, i64 36, !171, i64 40, !171, i64 72, !6, i64 104, !11, i64 112, !12, i64 120}
!204 = !{!203, !6, i64 24}
!205 = !{!203, !11, i64 32}
!206 = distinct !{!206, !21}
!207 = distinct !{!207, !21}
!208 = !{!86, !6, i64 16}
!209 = distinct !{!209, !21}
!210 = distinct !{!210, !21}
!211 = distinct !{!211, !21}
!212 = distinct !{!212, !21}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21}
!215 = distinct !{!215, !21}
!216 = distinct !{!216, !21}
!217 = distinct !{!217, !21}
!218 = distinct !{!218, !21}
!219 = distinct !{!219, !21}
!220 = distinct !{!220, !21}
!221 = distinct !{!221, !21}
!222 = distinct !{!222, !21}
!223 = distinct !{!223, !21}
!224 = distinct !{!224, !21}
!225 = distinct !{!225, !21}
!226 = distinct !{!226, !21}
!227 = distinct !{!227, !21}
!228 = !{!229, !11, i64 0}
!229 = !{!"", !11, i64 0}
!230 = distinct !{!230, !21}
!231 = distinct !{!231, !21}
!232 = !{!194, !11, i64 4}
!233 = !{!234, !6, i64 0}
!234 = !{!"", !6, i64 0, !6, i64 8, !11, i64 16, !12, i64 24}
!235 = !{!234, !6, i64 8}
!236 = !{!237, !11, i64 16}
!237 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !11, i64 16, !7, i64 24}
!238 = !{!234, !11, i64 16}
!239 = !{!234, !12, i64 24}
!240 = distinct !{!240, !21}
!241 = distinct !{!241, !21}
!242 = !{!237, !6, i64 0}
!243 = !{!244, !6, i64 0}
!244 = !{!"simple_bitmap_def", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!245 = distinct !{!245, !21}
