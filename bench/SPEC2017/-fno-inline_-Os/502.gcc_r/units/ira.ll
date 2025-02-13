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
define dso_local ptr @ira_allocate(i64 noundef %0) local_unnamed_addr #0 !prof !264 {
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
define dso_local ptr @ira_reallocate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !265 {
  %3 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %1) #26
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @ira_free(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !264 {
  tail call void @free(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate_bitmap() local_unnamed_addr #0 !prof !266 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ira_bitmap_obstack) #26
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ira_free_bitmap(ptr nocapture noundef readnone %0) local_unnamed_addr #5 !prof !266 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_print_disposition(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !265 {
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
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !267
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !267
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
  %23 = load i32, ptr %15, align 8, !tbaa !271
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !275
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %25) #27
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !276
  %29 = load ptr, ptr %28, align 8, !tbaa !277
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  br label %36

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !279
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %35, %33 ], [ %32, %31 ]
  %38 = phi ptr [ @.str.4, %33 ], [ @.str.3, %31 ]
  %39 = load i32, ptr %37, align 8, !tbaa !280
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %39) #27
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !281
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
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !282

52:                                               ; preds = %48, %7
  %53 = phi i32 [ %9, %7 ], [ %22, %48 ]
  %54 = add nuw nsw i64 %8, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %7, !llvm.loop !284

56:                                               ; preds = %52, %1
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_debug_disposition() local_unnamed_addr #0 !prof !265 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !267
  tail call void @ira_print_disposition(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_class_cover() local_unnamed_addr #7 !prof !265 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !267
  tail call fastcc void @print_class_cover(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_class_cover(ptr nocapture noundef %0) unnamed_addr #7 !prof !265 !PGOFuncName !285 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr %0)
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %13, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !280
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !267
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %11) #27
  %13 = add nuw nsw i64 %6, 1
  %14 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !286

17:                                               ; preds = %5, %1
  %18 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 20, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %29, %19 ]
  %21 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !267
  %23 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !280
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x ptr], ptr @print_class_cover.reg_class_names, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !267
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %22, ptr noundef %27) #27
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 27
  br i1 %30, label %31, label %19, !llvm.loop !287

31:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_register_move_cost(i32 noundef %0) local_unnamed_addr #0 !prof !288 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !289

6:                                                ; preds = %1
  tail call void @init_move_cost(i32 noundef %0) #26
  %7 = load ptr, ptr %3, align 8, !tbaa !267
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr %9, ptr %10, align 8, !tbaa !267
  %11 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %12 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  store ptr %11, ptr %12, align 8, !tbaa !267
  %13 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  %14 = load ptr, ptr %13, align 8, !tbaa !267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %11, ptr noundef nonnull align 2 dereferenceable(1458) %14, i64 1458, i1 false)
  %15 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %16 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  store ptr %15, ptr %16, align 8, !tbaa !267
  %17 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  %18 = load ptr, ptr %17, align 8, !tbaa !267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1458) %15, ptr noundef nonnull align 2 dereferenceable(1458) %18, i64 1458, i1 false)
  br label %19

19:                                               ; preds = %8, %38
  %20 = phi i64 [ 0, %8 ], [ %39, %38 ]
  br label %21

21:                                               ; preds = %19, %35
  %22 = phi i64 [ 0, %19 ], [ %36, %35 ]
  %23 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %20, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !280
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !290

26:                                               ; preds = %21
  %27 = load ptr, ptr %12, align 8, !tbaa !267
  %28 = getelementptr inbounds [27 x i16], ptr %27, i64 %20, i64 %22
  store i16 0, ptr %28, align 2, !tbaa !291
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %22, i64 %20
  %31 = load i32, ptr %30, align 4, !tbaa !280
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !290

33:                                               ; preds = %29
  %34 = getelementptr inbounds [27 x i16], ptr %15, i64 %20, i64 %22
  store i16 0, ptr %34, align 2, !tbaa !291
  br label %35

35:                                               ; preds = %29, %33
  %36 = add nuw nsw i64 %22, 1
  %37 = icmp eq i64 %36, 27
  br i1 %37, label %38, label %21, !prof !293, !llvm.loop !294

38:                                               ; preds = %35
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, 27
  br i1 %40, label %41, label %19, !prof !295, !llvm.loop !296

41:                                               ; preds = %38
  ret void
}

; Function Attrs: optsize
declare void @init_move_cost(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_once() local_unnamed_addr #0 !prof !297 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_register_move_cost, i8 0, i64 696, i1 false), !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_in_cost, i8 0, i64 696, i1 false), !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @ira_may_move_out_cost, i8 0, i64 696, i1 false), !tbaa !267
  tail call void @ira_init_costs_once() #26
  ret void
}

; Function Attrs: optsize
declare void @ira_init_costs_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init() local_unnamed_addr #0 !prof !297 {
  tail call fastcc void @free_register_move_costs() #27
  tail call fastcc void @setup_reg_mode_hard_regset() #27
  %1 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !280
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
define internal fastcc void @free_register_move_costs() unnamed_addr #0 !prof !288 !PGOFuncName !298 {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %14, %12 ]
  %3 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !299

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #27
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %2
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !299

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #27
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2
  store ptr null, ptr %13, align 8, !tbaa !267
  store ptr null, ptr %3, align 8, !tbaa !267
  store ptr null, ptr %8, align 8, !tbaa !267
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 87
  br i1 %15, label %16, label %1, !prof !300, !llvm.loop !301

16:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_reg_mode_hard_regset() unnamed_addr #9 !prof !297 !PGOFuncName !302 {
  br label %1

1:                                                ; preds = %0, %26
  %2 = phi i64 [ 0, %0 ], [ %27, %26 ]
  br label %3

3:                                                ; preds = %1, %23
  %4 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %5 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %4, i64 %2
  store i64 0, ptr %5, align 8, !tbaa !303
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %2
  %7 = load i8, ptr %6, align 1, !tbaa !304
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9, !prof !305

9:                                                ; preds = %3
  %10 = zext i8 %7 to i64
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ 0, %9 ], [ %21, %20 ]
  %13 = phi i64 [ %10, %9 ], [ %14, %20 ]
  %14 = add nsw i64 %13, -1
  %15 = add nsw i64 %14, %4
  %16 = icmp slt i64 %15, 53
  br i1 %16, label %17, label %20, !prof !306

17:                                               ; preds = %11
  %18 = shl nuw nsw i64 1, %15
  %19 = or i64 %12, %18
  store i64 %19, ptr %5, align 8, !tbaa !303
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i64 [ %12, %11 ], [ %19, %17 ]
  %22 = icmp ugt i64 %13, 1
  br i1 %22, label %11, label %23, !prof !307, !llvm.loop !308

23:                                               ; preds = %20, %3
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 53
  br i1 %25, label %26, label %3, !prof !309, !llvm.loop !310

26:                                               ; preds = %23
  %27 = add nuw nsw i64 %2, 1
  %28 = icmp eq i64 %27, 87
  br i1 %28, label %29, label %1, !prof !311, !llvm.loop !312

29:                                               ; preds = %26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_alloc_regs(i8 noundef zeroext %0) unnamed_addr #10 !prof !297 !PGOFuncName !313 {
  %2 = load i64, ptr @fixed_reg_set, align 8, !tbaa !303
  %3 = icmp eq i8 %0, 0
  %4 = or i64 %2, 64
  %5 = select i1 %3, i64 %4, i64 %2, !prof !314
  store i64 %5, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  tail call fastcc void @setup_class_hard_regs() #27
  tail call fastcc void @setup_available_class_regs() #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_class_subset_and_memory_move_costs() unnamed_addr #0 !prof !297 !PGOFuncName !315 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2
  %4 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  store i16 32767, ptr %4, align 2, !tbaa !291
  store i16 32767, ptr %3, align 4, !tbaa !291
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 87
  br i1 %6, label %7, label %1, !prof !311, !llvm.loop !316

7:                                                ; preds = %1, %50
  %8 = phi i64 [ %51, %50 ], [ 26, %1 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %34, label %10, !prof !317

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
  store i16 %16, ptr %18, align 4, !tbaa !291
  %19 = tail call i32 @ix86_memory_move_cost(i32 noundef %14, i32 noundef %11, i32 noundef 1) #26
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %13, i64 %8, i64 1
  store i16 %20, ptr %21, align 2, !tbaa !291
  %22 = load i16, ptr %17, align 4, !tbaa !291
  %23 = load i16, ptr %18, align 4, !tbaa !291
  %24 = icmp sgt i16 %22, %23
  br i1 %24, label %25, label %26, !prof !318

25:                                               ; preds = %12
  store i16 %23, ptr %17, align 4, !tbaa !291
  br label %26

26:                                               ; preds = %25, %12
  %27 = getelementptr inbounds [2 x i16], ptr %17, i64 0, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !291
  %29 = icmp sgt i16 %28, %20
  br i1 %29, label %30, label %31, !prof !319

30:                                               ; preds = %26
  store i16 %20, ptr %27, align 2, !tbaa !291
  br label %31

31:                                               ; preds = %26, %30
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, 87
  br i1 %33, label %34, label %12, !prof !320, !llvm.loop !321

34:                                               ; preds = %31, %7
  %35 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %8
  %36 = load i64, ptr %35, align 8, !tbaa !303
  %37 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  br label %40

40:                                               ; preds = %34, %40
  %41 = phi i64 [ 26, %34 ], [ %48, %40 ]
  %42 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !303
  %44 = and i64 %43, %38
  %45 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %39, i64 noundef %44) #27, !range !322
  %46 = zext nneg i8 %45 to i32
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %8, i64 %41
  store i32 %46, ptr %47, align 4, !tbaa !280
  %48 = add nsw i64 %41, -1
  %49 = icmp eq i64 %41, 0
  br i1 %49, label %50, label %40, !prof !323, !llvm.loop !324

50:                                               ; preds = %40
  %51 = add nsw i64 %8, -1
  %52 = icmp eq i64 %8, 0
  br i1 %52, label %53, label %7, !prof !325, !llvm.loop !326

53:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reg_class_closure() unnamed_addr #0 !prof !297 !PGOFuncName !327 {
  tail call fastcc void @setup_reg_subclasses() #27
  tail call fastcc void @setup_cover_and_important_classes() #27
  tail call fastcc void @setup_class_translate() #27
  tail call fastcc void @reorder_important_classes() #27
  tail call fastcc void @setup_reg_class_relations() #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_hard_regno_cover_class() unnamed_addr #9 !prof !297 !PGOFuncName !328 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %2 = icmp sgt i32 %1, 0
  %3 = zext nneg i32 %1 to i64
  br label %4

4:                                                ; preds = %0, %19
  %5 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %6 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %5
  store i32 0, ptr %6, align 4, !tbaa !280
  br i1 %2, label %10, label %19, !prof !329

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %19, label %10, !prof !330, !llvm.loop !331

10:                                               ; preds = %4, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %12 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !280
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %14, i64 %5
  %16 = load i16, ptr %15, align 2, !tbaa !291
  %17 = icmp sgt i16 %16, -1
  br i1 %17, label %18, label %7, !prof !332

18:                                               ; preds = %10
  store i32 %13, ptr %6, align 4, !tbaa !280
  br label %19

19:                                               ; preds = %7, %4, %18
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %4, !prof !333, !llvm.loop !334

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_class_nregs() unnamed_addr #0 !prof !297 !PGOFuncName !335 {
  store i32 -1, ptr @ira_max_nregs, align 4, !tbaa !280
  br label %1

1:                                                ; preds = %0, %33
  %2 = phi i64 [ 0, %0 ], [ %34, %33 ]
  %3 = trunc i64 %2 to i32
  br label %4

4:                                                ; preds = %1, %30
  %5 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %3, i32 noundef 13) #26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !336

8:                                                ; preds = %4
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %10 = load i8, ptr %9, align 1, !tbaa !304
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 10
  %13 = select i1 %12, i32 2, i32 1
  br label %24

14:                                               ; preds = %4
  %15 = icmp eq i64 %5, 40
  br i1 %15, label %20, label %16, !prof !337

16:                                               ; preds = %14
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %18 = load i8, ptr %17, align 1, !tbaa !304
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
  store i32 %25, ptr %26, align 4, !tbaa !280
  %27 = load i32, ptr @ira_max_nregs, align 4, !tbaa !280
  %28 = icmp slt i32 %27, %25
  br i1 %28, label %29, label %30, !prof !338

29:                                               ; preds = %24
  store i32 %25, ptr @ira_max_nregs, align 4, !tbaa !280
  br label %30

30:                                               ; preds = %24, %29
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 87
  br i1 %32, label %33, label %4, !prof !339, !llvm.loop !340

33:                                               ; preds = %30
  %34 = add nuw nsw i64 %2, 1
  %35 = icmp eq i64 %34, 27
  br i1 %35, label %36, label %1, !prof !325, !llvm.loop !341

36:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_prohibited_class_mode_regs() unnamed_addr #0 !prof !297 !PGOFuncName !342 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %40, !prof !343

3:                                                ; preds = %0, %35
  %4 = phi i64 [ %36, %35 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !280
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  br label %9

9:                                                ; preds = %3, %32
  %10 = phi i64 [ 0, %3 ], [ %33, %32 ]
  %11 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %7, i64 %10
  store i64 0, ptr %11, align 8, !tbaa !303
  %12 = load i32, ptr %8, align 4, !tbaa !280
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32, !prof !344

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  %16 = trunc i64 %10 to i32
  br label %17

17:                                               ; preds = %14, %30
  %18 = phi i64 [ %15, %14 ], [ %19, %30 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !291
  %22 = sext i16 %21 to i32
  %23 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %22, i32 noundef %16) #26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30, !prof !345

25:                                               ; preds = %17
  %26 = zext nneg i32 %22 to i64
  %27 = shl nuw i64 1, %26
  %28 = load i64, ptr %11, align 8, !tbaa !303
  %29 = or i64 %28, %27
  store i64 %29, ptr %11, align 8, !tbaa !303
  br label %30

30:                                               ; preds = %17, %25
  %31 = icmp ugt i64 %18, 1
  br i1 %31, label %17, label %32, !prof !346, !llvm.loop !347

32:                                               ; preds = %30, %9
  %33 = add nuw nsw i64 %10, 1
  %34 = icmp eq i64 %33, 87
  br i1 %34, label %35, label %9, !prof !300, !llvm.loop !348

35:                                               ; preds = %32
  %36 = add nuw nsw i64 %4, 1
  %37 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %3, label %40, !prof !349, !llvm.loop !350

40:                                               ; preds = %35, %0
  ret void
}

; Function Attrs: optsize
declare void @ira_init_costs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_once() local_unnamed_addr #0 !prof !297 {
  tail call void @ira_finish_costs_once() #26
  tail call fastcc void @free_register_move_costs() #27
  ret void
}

; Function Attrs: optsize
declare void @ira_finish_costs_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_setup_eliminable_regset() local_unnamed_addr #0 !prof !351 {
  %1 = alloca [53 x i8], align 16
  %2 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !280
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4, !prof !352

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !267
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
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !353
  %21 = tail call zeroext i8 %20() #26
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %19, %4, %0
  %24 = phi i1 [ true, %4 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i8
  store i8 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !365
  %26 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  store i64 %26, ptr @ira_no_alloc_regs, align 8, !tbaa !303
  store i64 0, ptr @eliminable_regset, align 8, !tbaa !303
  call fastcc void @compute_regs_asm_clobbered(ptr noundef nonnull %1) #27
  br label %27

27:                                               ; preds = %23, %69
  %28 = phi i64 [ 0, %23 ], [ %70, %69 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !374
  %30 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %28
  %31 = load i32, ptr %30, align 8, !tbaa !375
  %32 = getelementptr inbounds [4 x %struct.anon], ptr @ira_setup_eliminable_regset.eliminables, i64 0, i64 %28, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !377
  %34 = tail call zeroext i8 %29(i32 noundef %31, i32 noundef %33) #26
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36, !prof !378

36:                                               ; preds = %27
  %37 = and i64 %28, 1
  %38 = icmp eq i64 %37, 0
  %39 = select i1 %38, i1 %24, i1 false, !prof !379
  %40 = sext i32 %31 to i64
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !304
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %54, label %63, !prof !380

44:                                               ; preds = %27
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !304
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64, !prof !380

49:                                               ; preds = %44
  %50 = zext nneg i32 %31 to i64
  %51 = shl nuw i64 1, %50
  %52 = load i64, ptr @eliminable_regset, align 8, !tbaa !303
  %53 = or i64 %52, %51
  store i64 %53, ptr @eliminable_regset, align 8, !tbaa !303
  br label %59

54:                                               ; preds = %36
  %55 = zext nneg i32 %31 to i64
  %56 = shl nuw i64 1, %55
  %57 = load i64, ptr @eliminable_regset, align 8, !tbaa !303
  %58 = or i64 %57, %56
  store i64 %58, ptr @eliminable_regset, align 8, !tbaa !303
  br i1 %39, label %59, label %69, !prof !381

59:                                               ; preds = %49, %54
  %60 = phi i64 [ %51, %49 ], [ %56, %54 ]
  %61 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !303
  %62 = or i64 %61, %60
  store i64 %62, ptr @ira_no_alloc_regs, align 8, !tbaa !303
  br label %69

63:                                               ; preds = %36
  br i1 %39, label %64, label %68

64:                                               ; preds = %44, %63
  %65 = phi i64 [ %40, %63 ], [ %45, %44 ]
  %66 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !267
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %67) #26
  br label %69

68:                                               ; preds = %63
  tail call void @df_set_regs_ever_live(i32 noundef %31, i8 noundef zeroext 1) #26
  br label %69

69:                                               ; preds = %64, %68, %54, %59
  %70 = add nuw nsw i64 %28, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %27, !prof !382, !llvm.loop !383

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, ptr %1, i64 6
  %74 = load i8, ptr %73, align 2, !tbaa !304
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82, !prof !352

76:                                               ; preds = %72
  %77 = load i64, ptr @eliminable_regset, align 8, !tbaa !303
  %78 = or i64 %77, 64
  store i64 %78, ptr @eliminable_regset, align 8, !tbaa !303
  br i1 %24, label %79, label %86, !prof !352

79:                                               ; preds = %76
  %80 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !303
  %81 = or i64 %80, 64
  store i64 %81, ptr @ira_no_alloc_regs, align 8, !tbaa !303
  br label %86

82:                                               ; preds = %72
  br i1 %24, label %83, label %85

83:                                               ; preds = %82
  %84 = load ptr, ptr getelementptr inbounds ([53 x ptr], ptr @reg_names, i64 0, i64 6), align 16, !tbaa !267
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %84) #26
  br label %86

85:                                               ; preds = %82
  tail call void @df_set_regs_ever_live(i32 noundef 6, i8 noundef zeroext 1) #26
  br label %86

86:                                               ; preds = %83, %85, %76, %79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_regs_asm_clobbered(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !351 !PGOFuncName !384 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %0, i8 0, i64 53, i1 false)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !385
  %5 = load ptr, ptr %4, align 8, !tbaa !387
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !389
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !391
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %95, label %11, !prof !392

11:                                               ; preds = %1, %86
  %12 = phi ptr [ %87, %86 ], [ %2, %1 ]
  %13 = phi ptr [ %89, %86 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !304
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !304
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19, !prof !393

19:                                               ; preds = %11, %80
  %20 = phi ptr [ %82, %80 ], [ %17, %11 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !304
  %22 = load ptr, ptr %21, align 8, !tbaa !394
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !304
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %84, label %26, !prof !396

26:                                               ; preds = %19
  %27 = tail call fastcc zeroext i8 @insn_contains_asm(ptr noundef nonnull %20) #27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29, !prof !397

29:                                               ; preds = %26
  %30 = load ptr, ptr @df, align 8, !tbaa !267
  %31 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !398
  %33 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !304
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !267
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !401
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = icmp eq ptr %40, null
  br i1 %41, label %80, label %42

42:                                               ; preds = %29, %76
  %43 = phi ptr [ %78, %76 ], [ %40, %29 ]
  %44 = phi ptr [ %77, %76 ], [ %39, %29 ]
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !304
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !304
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 39
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !304
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %48, %54
  %59 = phi i32 [ %57, %54 ], [ %51, %48 ]
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %46 to i64
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %62, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !304
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %46, -1
  %68 = add nsw i32 %67, %66
  %69 = icmp ugt i32 %46, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %58, %70
  %71 = phi i32 [ %74, %70 ], [ %46, %58 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  store i8 1, ptr %73, align 1, !tbaa !304
  %74 = add i32 %71, 1
  %75 = icmp ugt i32 %74, %68
  br i1 %75, label %76, label %70, !llvm.loop !403

76:                                               ; preds = %70, %58, %42
  %77 = getelementptr inbounds ptr, ptr %44, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !267
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %42, !llvm.loop !404

80:                                               ; preds = %76, %29, %26
  %81 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !304
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %19, !prof !405, !llvm.loop !406

84:                                               ; preds = %80, %19
  %85 = load ptr, ptr @cfun, align 8, !tbaa !267
  br label %86

86:                                               ; preds = %84, %11
  %87 = phi ptr [ %85, %84 ], [ %12, %11 ]
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !389
  %90 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !385
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !391
  %94 = icmp eq ptr %89, %93
  br i1 %94, label %95, label %11, !prof !407, !llvm.loop !408

95:                                               ; preds = %86, %1
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_elimination(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !409 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !267
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !385
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !389
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !391
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %33, label %12, !prof !410

12:                                               ; preds = %2, %24
  %13 = phi ptr [ %26, %24 ], [ %8, %2 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !411
  %16 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %15) #27
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !412
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %0) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !414

21:                                               ; preds = %12
  %22 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %18, i32 noundef %0) #26
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %1) #26
  br label %24

24:                                               ; preds = %21, %12
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !389
  %27 = load ptr, ptr @cfun, align 8, !tbaa !267
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !385
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !391
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %33, label %12, !prof !415, !llvm.loop !416

33:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #11 !prof !417 !PGOFuncName !418 {
  %2 = load ptr, ptr @df, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !419
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !421

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !422
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !267
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
define internal noundef zeroext i8 @gate_ira() #5 !prof !351 !PGOFuncName !423 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_ira() #0 !prof !351 !PGOFuncName !424 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !267
  tail call fastcc void @ira(ptr noundef %1) #27
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @setup_class_hard_regs() unnamed_addr #12 !prof !297 !PGOFuncName !425 {
  %1 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %2 = xor i64 %1, -1
  br label %3

3:                                                ; preds = %0, %41
  %4 = phi i64 [ 26, %0 ], [ %43, %41 ]
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %4
  store i16 -1, ptr %7, align 2, !tbaa !291
  %8 = and i64 %6, %2
  br label %9

9:                                                ; preds = %3, %36
  %10 = phi i64 [ 0, %3 ], [ %39, %36 ]
  %11 = phi i64 [ 0, %3 ], [ %38, %36 ]
  %12 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %13 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !280
  %15 = zext nneg i32 %14 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36, !prof !426

19:                                               ; preds = %9
  %20 = or i64 %16, %11
  %21 = and i64 %16, %8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23, !prof !427

23:                                               ; preds = %19
  %24 = trunc i32 %12 to i16
  %25 = sext i32 %14 to i64
  %26 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %4, i64 %25
  store i16 %24, ptr %26, align 2, !tbaa !291
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
  store i16 %32, ptr %35, align 2, !tbaa !291
  br label %36

36:                                               ; preds = %29, %9
  %37 = phi i32 [ %12, %9 ], [ %33, %29 ]
  %38 = phi i64 [ %11, %9 ], [ %20, %29 ]
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, 53
  br i1 %40, label %41, label %9, !prof !428, !llvm.loop !429

41:                                               ; preds = %36
  %42 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %4
  store i32 %37, ptr %42, align 4, !tbaa !280
  %43 = add nsw i64 %4, -1
  %44 = icmp eq i64 %4, 0
  br i1 %44, label %45, label %3, !prof !325, !llvm.loop !430

45:                                               ; preds = %41
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_available_class_regs() unnamed_addr #9 !prof !297 !PGOFuncName !431 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_available_class_regs, i8 0, i64 108, i1 false)
  %1 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %2 = xor i64 %1, -1
  br label %3

3:                                                ; preds = %0, %20
  %4 = phi i64 [ 0, %0 ], [ %21, %20 ]
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !303
  %7 = and i64 %6, %2
  %8 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %4
  br label %9

9:                                                ; preds = %3, %17
  %10 = phi i64 [ 0, %3 ], [ %18, %17 ]
  %11 = shl nuw nsw i64 1, %10
  %12 = and i64 %11, %7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14, !prof !427

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4, !tbaa !280
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %8, align 4, !tbaa !280
  br label %17

17:                                               ; preds = %9, %14
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, 53
  br i1 %19, label %20, label %9, !prof !428, !llvm.loop !432

20:                                               ; preds = %17
  %21 = add nuw nsw i64 %4, 1
  %22 = icmp eq i64 %21, 27
  br i1 %22, label %23, label %3, !prof !325, !llvm.loop !433

23:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: optsize
declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !434 !PGOFuncName !435 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_reg_subclasses() unnamed_addr #10 !prof !297 !PGOFuncName !436 {
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
  store i32 27, ptr %9, align 4, !tbaa !280
  br label %10

10:                                               ; preds = %8, %3
  %11 = extractelement <4 x i1> %6, i64 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %13
  store i32 27, ptr %14, align 4, !tbaa !280
  br label %15

15:                                               ; preds = %12, %10
  %16 = extractelement <4 x i1> %6, i64 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = or disjoint i64 %4, 2
  %19 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %18
  store i32 27, ptr %19, align 4, !tbaa !280
  br label %20

20:                                               ; preds = %17, %15
  %21 = extractelement <4 x i1> %6, i64 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or disjoint i64 %4, 3
  %24 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %2, i64 %23
  store i32 27, ptr %24, align 4, !tbaa !280
  br label %25

25:                                               ; preds = %22, %20
  %26 = add i64 %4, 4
  %27 = add <4 x i64> %5, <i64 4, i64 4, i64 4, i64 4>
  %28 = icmp eq i64 %26, 28
  br i1 %28, label %32, label %3, !prof !437, !llvm.loop !438

29:                                               ; preds = %32
  %30 = load i64, ptr @no_unit_alloc_regs, align 8
  %31 = xor i64 %30, -1
  br label %35

32:                                               ; preds = %25
  %33 = add nuw nsw i64 %2, 1
  %34 = icmp eq i64 %33, 27
  br i1 %34, label %29, label %1, !prof !325, !llvm.loop !441

35:                                               ; preds = %29, %66
  %36 = phi i64 [ 0, %29 ], [ %67, %66 ]
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %66, label %38, !prof !317

38:                                               ; preds = %35
  %39 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !303
  %41 = and i64 %40, %31
  %42 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %41) #27, !range !322
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %66, !prof !442

44:                                               ; preds = %38
  %45 = trunc i64 %36 to i32
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i64 [ 0, %44 ], [ %64, %63 ]
  %48 = icmp eq i64 %36, %47
  br i1 %48, label %63, label %49, !prof !443

49:                                               ; preds = %46
  %50 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %47
  %51 = load i64, ptr %50, align 8, !tbaa !303
  %52 = and i64 %51, %31
  %53 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %41, i64 noundef %52) #27, !range !322
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55, !prof !444

55:                                               ; preds = %49
  %56 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %47
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi ptr [ %56, %55 ], [ %61, %57 ]
  %59 = load i32, ptr %58, align 4, !tbaa !280
  %60 = icmp eq i32 %59, 27
  %61 = getelementptr inbounds i32, ptr %58, i64 1
  br i1 %60, label %62, label %57, !prof !445, !llvm.loop !446

62:                                               ; preds = %57
  store i32 %45, ptr %58, align 4, !tbaa !280
  br label %63

63:                                               ; preds = %62, %49, %46
  %64 = add nuw nsw i64 %47, 1
  %65 = icmp eq i64 %64, 27
  br i1 %65, label %66, label %46, !prof !447, !llvm.loop !448

66:                                               ; preds = %63, %38, %35
  %67 = add nuw nsw i64 %36, 1
  %68 = icmp eq i64 %67, 27
  br i1 %68, label %69, label %35, !prof !325, !llvm.loop !449

69:                                               ; preds = %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_cover_and_important_classes() unnamed_addr #0 !prof !297 !PGOFuncName !450 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !451
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3, !prof !452

3:                                                ; preds = %0
  %4 = tail call ptr %1() #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !381

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4, !tbaa !280
  %8 = icmp eq i32 %7, 27
  br i1 %8, label %17, label %9, !prof !393

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %6 ]
  %11 = phi i32 [ %15, %9 ], [ %7, %6 ]
  %12 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %10
  store i32 %11, ptr %12, align 4, !tbaa !280
  %13 = add nuw nsw i64 %10, 1
  %14 = getelementptr inbounds i32, ptr %4, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !280
  %16 = icmp eq i32 %15, 27
  br i1 %16, label %17, label %9, !prof !453, !llvm.loop !454

17:                                               ; preds = %9, %6
  %18 = phi i64 [ 0, %6 ], [ %13, %9 ]
  %19 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %18
  store i32 27, ptr %19, align 4, !tbaa !280
  br label %20

20:                                               ; preds = %0, %3, %17
  %21 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !280
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %69, !prof !452

23:                                               ; preds = %20, %62
  %24 = phi i64 [ %64, %62 ], [ 0, %20 ]
  %25 = phi i32 [ %63, %62 ], [ 0, %20 ]
  %26 = icmp eq i64 %24, 0
  br i1 %26, label %62, label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i32 %31, 1
  %29 = icmp eq i32 %28, 33
  br i1 %29, label %35, label %30, !llvm.loop !455

30:                                               ; preds = %23, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %32 = tail call i32 @regclass_for_constraint(i32 noundef %31) #26
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %24, %33
  br i1 %34, label %57, label %27

35:                                               ; preds = %27
  %36 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %24
  %37 = load i64, ptr %36, align 8, !tbaa !303
  %38 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  br label %41

41:                                               ; preds = %35, %50
  %42 = phi i64 [ 0, %35 ], [ %51, %50 ]
  %43 = icmp eq i64 %24, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %42
  %46 = load i64, ptr %45, align 8, !tbaa !303
  %47 = and i64 %46, %39
  %48 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %40, i64 noundef %47) #27, !range !322
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %41
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, 27
  br i1 %52, label %53, label %41, !llvm.loop !456

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
  store i32 %61, ptr %60, align 4, !tbaa !280
  br label %62

62:                                               ; preds = %57, %53, %23
  %63 = phi i32 [ %25, %23 ], [ %25, %53 ], [ %58, %57 ]
  %64 = add nuw nsw i64 %24, 1
  %65 = icmp eq i64 %64, 28
  br i1 %65, label %66, label %23, !llvm.loop !457

66:                                               ; preds = %62
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %67
  store i32 27, ptr %68, align 4, !tbaa !280
  br label %69

69:                                               ; preds = %66, %20
  store i32 0, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %70 = load i32, ptr @setup_cover_and_important_classes.classes, align 16, !tbaa !280
  %71 = icmp eq i32 %70, 27
  br i1 %71, label %72, label %75, !prof !393

72:                                               ; preds = %69
  %73 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %74 = xor i64 %73, -1
  br label %113

75:                                               ; preds = %69, %106
  %76 = phi i64 [ %107, %106 ], [ 0, %69 ]
  %77 = phi i32 [ %109, %106 ], [ %70, %69 ]
  %78 = icmp eq i64 %76, 0
  br i1 %78, label %92, label %79, !prof !458

79:                                               ; preds = %75, %89
  %80 = phi i64 [ %90, %89 ], [ 0, %75 ]
  %81 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !280
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %89, label %83, !prof !459

83:                                               ; preds = %79
  %84 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !280
  %86 = tail call i32 @reg_classes_intersect_p(i32 noundef %77, i32 noundef %85) #26
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !460

88:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 792, ptr noundef nonnull @.str.41) #26
  br label %89

89:                                               ; preds = %79, %83, %88
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %79, !prof !461, !llvm.loop !462

92:                                               ; preds = %89, %75
  %93 = sext i32 %77 to i64
  %94 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !303
  %96 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %98) #27, !range !322
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %106, !prof !463

101:                                              ; preds = %92
  %102 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %104
  store i32 %77, ptr %105, align 4, !tbaa !280
  br label %106

106:                                              ; preds = %92, %101
  %107 = add nuw i64 %76, 1
  %108 = getelementptr inbounds [28 x i32], ptr @setup_cover_and_important_classes.classes, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !280
  %110 = icmp eq i32 %109, 27
  br i1 %110, label %111, label %75, !prof !453, !llvm.loop !464

111:                                              ; preds = %106
  %112 = load i32, ptr @ira_reg_class_cover_size, align 4
  br label %113

113:                                              ; preds = %72, %111
  %114 = phi i64 [ %74, %72 ], [ %97, %111 ]
  %115 = phi i32 [ 0, %72 ], [ %112, %111 ]
  store i32 0, ptr @ira_important_classes_num, align 4, !tbaa !280
  %116 = icmp sgt i32 %115, 0
  %117 = zext nneg i32 %115 to i64
  br label %164

118:                                              ; preds = %160
  br i1 %116, label %119, label %170, !prof !465

119:                                              ; preds = %118
  %120 = sext i32 %161 to i64
  %121 = shl nsw i64 %120, 2
  %122 = getelementptr i8, ptr @ira_important_classes, i64 %121
  %123 = zext nneg i32 %115 to i64
  %124 = shl nuw nsw i64 %123, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %122, ptr nonnull align 16 @ira_reg_class_cover, i64 %124, i1 false), !tbaa !280
  %125 = add i32 %161, %115
  store i32 %125, ptr @ira_important_classes_num, align 4, !tbaa !280
  br label %170

126:                                              ; preds = %164, %167
  %127 = phi i64 [ %168, %167 ], [ %165, %164 ]
  %128 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !303
  %130 = and i64 %129, %114
  %131 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %130) #27, !range !322
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %160, !prof !466

133:                                              ; preds = %126
  br i1 %116, label %134, label %167, !prof !467

134:                                              ; preds = %133, %147
  %135 = phi i64 [ %151, %147 ], [ 0, %133 ]
  %136 = phi i8 [ %150, %147 ], [ 0, %133 ]
  %137 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %135
  %138 = load i32, ptr %137, align 4, !tbaa !280
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !303
  %142 = and i64 %141, %114
  %143 = icmp eq i64 %127, %139
  br i1 %143, label %160, label %144, !prof !468

144:                                              ; preds = %134
  %145 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %130, i64 noundef %142) #27, !range !322
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %160, !prof !469

147:                                              ; preds = %144
  %148 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %130, i64 noundef %142) #27, !range !322
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i8 %136, i8 1, !prof !470
  %151 = add nuw nsw i64 %135, 1
  %152 = icmp eq i64 %151, %117
  br i1 %152, label %153, label %134, !prof !471, !llvm.loop !472

153:                                              ; preds = %147
  %154 = icmp eq i8 %150, 0
  br i1 %154, label %160, label %155, !prof !473

155:                                              ; preds = %153
  %156 = add nsw i32 %166, 1
  store i32 %156, ptr @ira_important_classes_num, align 4, !tbaa !280
  %157 = sext i32 %166 to i64
  %158 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %157
  %159 = trunc i64 %127 to i32
  store i32 %159, ptr %158, align 4, !tbaa !280
  br label %160

160:                                              ; preds = %126, %144, %134, %155, %153
  %161 = phi i32 [ %156, %155 ], [ %166, %153 ], [ %166, %134 ], [ %166, %144 ], [ %166, %126 ]
  %162 = add nuw nsw i64 %127, 1
  %163 = icmp eq i64 %162, 27
  br i1 %163, label %118, label %164, !prof !325, !llvm.loop !474

164:                                              ; preds = %160, %113
  %165 = phi i64 [ %162, %160 ], [ 0, %113 ]
  %166 = phi i32 [ %161, %160 ], [ 0, %113 ]
  br label %126

167:                                              ; preds = %133
  %168 = add nuw nsw i64 %127, 1
  %169 = icmp eq i64 %168, 27
  br i1 %169, label %170, label %126, !prof !325, !llvm.loop !474

170:                                              ; preds = %167, %119, %118
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @setup_class_translate() unnamed_addr #14 !prof !297 !PGOFuncName !475 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @ira_class_translate, i8 0, i64 108, i1 false), !tbaa !280
  %1 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !280
  %2 = icmp eq i32 %1, 1
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  br i1 %2, label %4, label %33, !prof !452

4:                                                ; preds = %0
  %5 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %6 = xor i64 %5, -1
  %7 = icmp sgt i32 %3, 0
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %4, %30
  %10 = phi i64 [ 0, %4 ], [ %31, %30 ]
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !303
  %13 = and i64 %12, %6
  br i1 %7, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %10
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %18 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !280
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !303
  %23 = and i64 %22, %6
  %24 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %13, i64 noundef %23) #27, !range !322
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 %19, ptr %15, align 4, !tbaa !280
  br label %27

27:                                               ; preds = %26, %16
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %30, label %16, !llvm.loop !476

30:                                               ; preds = %27, %9
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, 27
  br i1 %32, label %33, label %9, !llvm.loop !477

33:                                               ; preds = %30, %0
  %34 = icmp sgt i32 %3, 0
  br i1 %34, label %35, label %37, !prof !343

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
  %44 = load i32, ptr %43, align 4, !tbaa !280
  %45 = zext i32 %44 to i64
  br i1 %2, label %62, label %46, !prof !478

46:                                               ; preds = %41
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @alloc_reg_class_subclasses, i64 0, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !280
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %62, label %50, !prof !479

50:                                               ; preds = %46, %58
  %51 = phi i32 [ %60, %58 ], [ %48, %46 ]
  %52 = phi ptr [ %59, %58 ], [ %47, %46 ]
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !280
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58, !prof !480

57:                                               ; preds = %50
  store i32 %44, ptr %54, align 4, !tbaa !280
  br label %58

58:                                               ; preds = %50, %57
  %59 = getelementptr inbounds i32, ptr %52, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !280
  %61 = icmp eq i32 %60, 27
  br i1 %61, label %62, label %50, !prof !481, !llvm.loop !482

62:                                               ; preds = %58, %41, %46
  %63 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %45
  store i32 %44, ptr %63, align 4, !tbaa !280
  %64 = add nuw nsw i64 %42, 1
  %65 = icmp eq i64 %64, %36
  br i1 %65, label %37, label %41, !prof !483, !llvm.loop !484

66:                                               ; preds = %37, %116
  %67 = phi i64 [ 0, %37 ], [ %117, %116 ]
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %116, label %69, !prof !317

69:                                               ; preds = %66
  %70 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %67
  %71 = load i32, ptr %70, align 4, !tbaa !280
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %116, !prof !485

73:                                               ; preds = %69
  br i1 %34, label %74, label %114, !prof !486

74:                                               ; preds = %73
  %75 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %67
  %76 = load i64, ptr %75, align 8, !tbaa !303
  br label %77

77:                                               ; preds = %74, %109
  %78 = phi i64 [ 0, %74 ], [ %112, %109 ]
  %79 = phi i32 [ 2147483647, %74 ], [ %111, %109 ]
  %80 = phi i32 [ 0, %74 ], [ %110, %109 ]
  %81 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %78
  %82 = load i32, ptr %81, align 4, !tbaa !280
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !303
  %86 = and i64 %76, %85
  %87 = and i64 %86, %39
  %88 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %87) #27, !range !322
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %109, !prof !487

90:                                               ; preds = %77, %90
  %91 = phi i64 [ %101, %90 ], [ 0, %77 ]
  %92 = phi i32 [ %100, %90 ], [ 2147483647, %77 ]
  %93 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %91, i64 %67
  %94 = load i16, ptr %93, align 4, !tbaa !291
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %91, i64 %67, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !291
  %98 = sext i16 %97 to i32
  %99 = add nsw i32 %98, %95
  %100 = tail call i32 @llvm.smin.i32(i32 %92, i32 %99)
  %101 = add nuw nsw i64 %91, 1
  %102 = icmp eq i64 %101, 87
  br i1 %102, label %103, label %90, !prof !488, !llvm.loop !489

103:                                              ; preds = %90
  %104 = icmp eq i32 %80, 0
  %105 = icmp sgt i32 %79, %100
  %106 = select i1 %104, i1 true, i1 %105
  %107 = select i1 %106, i32 %82, i32 %80, !prof !490
  %108 = select i1 %106, i32 %100, i32 %79, !prof !490
  br label %109

109:                                              ; preds = %103, %77
  %110 = phi i32 [ %80, %77 ], [ %107, %103 ]
  %111 = phi i32 [ %79, %77 ], [ %108, %103 ]
  %112 = add nuw nsw i64 %78, 1
  %113 = icmp eq i64 %112, %40
  br i1 %113, label %114, label %77, !prof !491, !llvm.loop !492

114:                                              ; preds = %109, %73
  %115 = phi i32 [ 0, %73 ], [ %110, %109 ]
  store i32 %115, ptr %70, align 4, !tbaa !280
  br label %116

116:                                              ; preds = %66, %69, %114
  %117 = add nuw nsw i64 %67, 1
  %118 = icmp eq i64 %117, 27
  br i1 %118, label %119, label %66, !prof !325, !llvm.loop !493

119:                                              ; preds = %116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reorder_important_classes() unnamed_addr #0 !prof !297 !PGOFuncName !494 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cover_class_order, i8 -1, i64 108, i1 false), !tbaa !280
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14, !prof !343

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %12, %5 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !280
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %9
  %11 = trunc i64 %6 to i32
  store i32 %11, ptr %10, align 4, !tbaa !280
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, %4
  br i1 %13, label %14, label %5, !prof !483, !llvm.loop !495

14:                                               ; preds = %5, %0
  %15 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !280
  %16 = sext i32 %15 to i64
  tail call void @spec_qsort(ptr noundef nonnull @ira_important_classes, i64 noundef %16, i64 noundef 4, ptr noundef nonnull @comp_reg_classes_func) #26
  %17 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !280
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30, !prof !343

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !280
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [27 x i32], ptr @ira_important_class_nums, i64 0, i64 %25
  %27 = trunc i64 %22 to i32
  store i32 %27, ptr %26, align 4, !tbaa !280
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !prof !496, !llvm.loop !497

30:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_class_relations() unnamed_addr #0 !prof !297 !PGOFuncName !498 {
  %1 = alloca [27 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %1, i8 0, i64 27, i1 false)
  %2 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !280
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14, !prof !343

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %12, %6 ]
  %8 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !280
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %10
  store i8 1, ptr %11, align 1, !tbaa !304
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !prof !496, !llvm.loop !499

14:                                               ; preds = %6, %0
  br label %15

15:                                               ; preds = %14, %136
  %16 = phi i64 [ %137, %136 ], [ 0, %14 ]
  %17 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %16
  store i32 27, ptr %17, align 4, !tbaa !280
  %18 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %16
  %19 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %16
  br label %20

20:                                               ; preds = %15, %133
  %21 = phi i64 [ 0, %15 ], [ %134, %133 ]
  %22 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %16, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !304
  %23 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %16, i64 %21
  store i32 0, ptr %23, align 4, !tbaa !280
  %24 = load i64, ptr %18, align 8, !tbaa !303
  %25 = load i64, ptr @no_unit_alloc_regs, align 8, !tbaa !303
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %21
  %29 = load i64, ptr %28, align 8, !tbaa !303
  %30 = and i64 %29, %26
  %31 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %27) #27, !range !322
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33, !prof !500

33:                                               ; preds = %20
  %34 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %30) #27, !range !322
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36, !prof !501

36:                                               ; preds = %33
  %37 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %16, i64 0
  %38 = load i32, ptr %37, align 4, !tbaa !280
  %39 = icmp eq i32 %38, 27
  br i1 %39, label %52, label %40, !prof !502

40:                                               ; preds = %36, %47
  %41 = phi i64 [ %48, %47 ], [ 0, %36 ]
  %42 = phi i32 [ %50, %47 ], [ %38, %36 ]
  %43 = load i32, ptr %23, align 4, !tbaa !280
  %44 = tail call i32 @reg_class_subset_p(i32 noundef %43, i32 noundef %42) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !503

46:                                               ; preds = %40
  store i32 %42, ptr %23, align 4, !tbaa !280
  br label %47

47:                                               ; preds = %40, %46
  %48 = add nuw i64 %41, 1
  %49 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %16, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !280
  %51 = icmp eq i32 %50, 27
  br i1 %51, label %52, label %40, !prof !504

52:                                               ; preds = %47, %36
  %53 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %16, i64 %21
  %54 = load i32, ptr %53, align 4, !tbaa !280
  %55 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %16, i64 %21
  store i32 %54, ptr %55, align 4, !tbaa !280
  br label %133

56:                                               ; preds = %33, %20
  %57 = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 noundef %27, i64 noundef %30) #27, !range !322
  store i8 %57, ptr %22, align 1, !tbaa !304
  %58 = load i8, ptr %19, align 1, !tbaa !304
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60, !prof !505

60:                                               ; preds = %56
  %61 = getelementptr inbounds [27 x i8], ptr %1, i64 0, i64 %21
  %62 = load i8, ptr %61, align 1, !tbaa !304
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %74, label %64, !prof !506

64:                                               ; preds = %60
  %65 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %27, i64 noundef %30) #27, !range !322
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67, !prof !507

67:                                               ; preds = %64, %67
  %68 = phi ptr [ %71, %67 ], [ %17, %64 ]
  %69 = load i32, ptr %68, align 4, !tbaa !280
  %70 = icmp eq i32 %69, 27
  %71 = getelementptr inbounds i32, ptr %68, i64 1
  br i1 %70, label %72, label %67, !prof !508, !llvm.loop !509

72:                                               ; preds = %67
  %73 = trunc i64 %21 to i32
  store i32 %73, ptr %68, align 4, !tbaa !280
  store i32 27, ptr %71, align 4, !tbaa !280
  br label %74

74:                                               ; preds = %72, %64, %60, %56
  %75 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %16, i64 %21
  store i32 0, ptr %75, align 4, !tbaa !280
  %76 = and i64 %27, %29
  %77 = or i64 %29, %24
  %78 = and i64 %77, %26
  %79 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !280
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %133, !prof !510

81:                                               ; preds = %74
  %82 = zext nneg i32 %79 to i64
  br label %83

83:                                               ; preds = %81, %129
  %84 = phi i32 [ 0, %81 ], [ %130, %129 ]
  %85 = phi i32 [ 0, %81 ], [ %110, %129 ]
  %86 = phi i64 [ 0, %81 ], [ %131, %129 ]
  %87 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !280
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !303
  %92 = and i64 %91, %26
  %93 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %76) #27, !range !322
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %109, label %95, !prof !511

95:                                               ; preds = %83
  %96 = sext i32 %85 to i64
  %97 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !303
  %99 = and i64 %98, %26
  %100 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %99) #27, !range !322
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %108, label %102, !prof !512

102:                                              ; preds = %95
  %103 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %92, i64 noundef %99) #27, !range !322
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105, !prof !513

105:                                              ; preds = %102
  %106 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %91, i64 noundef %98) #27, !range !322
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108, !prof !514

108:                                              ; preds = %105, %95
  store i32 %88, ptr %23, align 4, !tbaa !280
  br label %109

109:                                              ; preds = %102, %105, %108, %83
  %110 = phi i32 [ %85, %102 ], [ %85, %105 ], [ %88, %108 ], [ %85, %83 ]
  %111 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %92, i64 noundef %78) #27, !range !322
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %129, label %113, !prof !515

113:                                              ; preds = %109
  %114 = sext i32 %84 to i64
  %115 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !303
  %117 = and i64 %116, %26
  %118 = icmp eq i32 %84, 0
  br i1 %118, label %128, label %119, !prof !516

119:                                              ; preds = %113
  %120 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %117, i64 noundef %92) #27, !range !322
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %129, label %122, !prof !517

122:                                              ; preds = %119
  %123 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %117, i64 noundef %92) #27, !range !322
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125, !prof !518

125:                                              ; preds = %122
  %126 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %91, i64 noundef %116) #27, !range !322
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128, !prof !519

128:                                              ; preds = %125, %122, %113
  store i32 %88, ptr %75, align 4, !tbaa !280
  br label %129

129:                                              ; preds = %109, %128, %125, %119
  %130 = phi i32 [ %84, %109 ], [ %88, %128 ], [ %84, %125 ], [ %84, %119 ]
  %131 = add nuw nsw i64 %86, 1
  %132 = icmp eq i64 %131, %82
  br i1 %132, label %133, label %83, !prof !520, !llvm.loop !521

133:                                              ; preds = %129, %74, %52
  %134 = add nuw nsw i64 %21, 1
  %135 = icmp eq i64 %134, 27
  br i1 %135, label %136, label %20, !prof !323, !llvm.loop !522

136:                                              ; preds = %133
  %137 = add nuw nsw i64 %16, 1
  %138 = icmp eq i64 %137, 27
  br i1 %138, label %139, label %15, !prof !325, !llvm.loop !523

139:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_empty_p(i64 noundef %0) unnamed_addr #5 !prof !524 !PGOFuncName !525 {
  %2 = icmp eq i64 %0, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !526 !PGOFuncName !527 {
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
define internal i32 @comp_reg_classes_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !528 !PGOFuncName !529 {
  %3 = load i32, ptr %0, align 4, !tbaa !280
  %4 = load i32, ptr %1, align 4, !tbaa !280
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !280
  %11 = icmp ne i32 %7, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %23, !prof !530

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !280
  %18 = zext i32 %10 to i64
  %19 = getelementptr inbounds [27 x i32], ptr @cover_class_order, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !280
  %21 = sub nsw i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !531

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
define internal fastcc noundef zeroext i8 @hard_reg_set_intersect_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !532 !PGOFuncName !533 {
  %3 = and i64 %1, %0
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insn_contains_asm(ptr noundef %0) unnamed_addr #0 !prof !534 !PGOFuncName !535 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !267
  %3 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @insn_contains_asm_1, ptr noundef null) #26
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @insn_contains_asm_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #11 !prof !536 !PGOFuncName !537 {
  %3 = load ptr, ptr %0, align 8, !tbaa !267
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !538

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
define internal fastcc void @ira(ptr noundef %0) unnamed_addr #0 !prof !351 !PGOFuncName !539 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !352

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 148) #26
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i32, ptr @flag_caller_saves, align 4, !tbaa !280
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !540

8:                                                ; preds = %5
  tail call void @init_caller_save() #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !280
  %11 = icmp ult i32 %10, 10
  %12 = add i32 %10, -10
  %13 = load ptr, ptr @stderr, align 8
  %14 = select i1 %11, i32 %10, i32 %12, !prof !352
  %15 = select i1 %11, ptr %0, ptr %13, !prof !352
  store i32 %14, ptr @internal_flag_ira_verbose, align 4
  store ptr %15, ptr @ira_dump_file, align 8, !tbaa !267
  %16 = load i32, ptr @optimize, align 4, !tbaa !280
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, ptr @ira_conflicts_p, align 1, !tbaa !304
  tail call fastcc void @setup_prohibited_mode_move_regs() #27
  tail call void @df_note_add_problem() #26
  %19 = load i32, ptr @optimize, align 4, !tbaa !280
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22, !prof !540

21:                                               ; preds = %9
  tail call void @df_live_add_problem() #26
  tail call void @df_live_set_all_dirty() #26
  br label %22

22:                                               ; preds = %21, %9
  tail call void @df_analyze() #26
  %23 = tail call i32 @df_clear_flags(i32 noundef 16) #26
  tail call void @regstat_init_n_sets_and_refs() #26
  tail call void @regstat_compute_ri() #26
  %24 = load i32, ptr @warn_clobbered, align 4, !tbaa !280
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !352

26:                                               ; preds = %22
  tail call void @generate_setjmp_warnings() #26
  br label %27

27:                                               ; preds = %26, %22
  %28 = tail call i32 @leaf_function_p() #26
  store i32 %28, ptr @current_function_is_leaf, align 4, !tbaa !280
  %29 = tail call zeroext i8 @resize_reg_info() #26
  %30 = icmp ne i8 %29, 0
  %31 = load i32, ptr @flag_ira_loop_pressure, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36, !prof !541

34:                                               ; preds = %27
  %35 = load ptr, ptr @ira_dump_file, align 8, !tbaa !267
  tail call void @ira_set_pseudo_classes(ptr noundef %35) #26
  br label %36

36:                                               ; preds = %34, %27
  %37 = tail call fastcc i32 @update_equiv_regs() #27, !range !542
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @ira_bitmap_obstack) #26
  %38 = load i32, ptr @optimize, align 4, !tbaa !280
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %64, label %40, !prof !540

40:                                               ; preds = %36
  %41 = tail call i32 @max_reg_num() #26
  store i32 %41, ptr @max_regno, align 4, !tbaa !280
  store i32 %41, ptr @ira_reg_equiv_len, align 4, !tbaa !280
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @ira_allocate(i64 noundef %42) #27
  store ptr %43, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !267
  %44 = load i32, ptr @max_regno, align 4, !tbaa !280
  %45 = sext i32 %44 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %43, i8 0, i64 %45, i1 false)
  %46 = load i32, ptr @max_regno, align 4, !tbaa !280
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = tail call ptr @ira_allocate(i64 noundef %48) #27
  store ptr %49, ptr @ira_reg_equiv_const, align 8, !tbaa !267
  %50 = load i32, ptr @max_regno, align 4, !tbaa !280
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %49, i8 0, i64 %52, i1 false)
  tail call fastcc void @find_reg_equiv_invariant_const() #27
  %53 = icmp eq i32 %37, 0
  br i1 %53, label %64, label %54, !prof !352

54:                                               ; preds = %40
  %55 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @timevar_push_1(i32 noundef 119) #26
  br label %58

58:                                               ; preds = %57, %54
  %59 = tail call ptr @get_insns() #26
  tail call void @rebuild_jump_labels(ptr noundef %59) #26
  %60 = tail call zeroext i8 @purge_all_dead_edges() #26
  %61 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @timevar_pop_1(i32 noundef 119) #26
  br label %64

64:                                               ; preds = %40, %63, %58, %36
  %65 = tail call i32 @max_reg_num() #26
  tail call void @ira_setup_eliminable_regset() #27
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_shuffle_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_store_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_load_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_additional_jumps_num, align 4, !tbaa !280
  store i32 0, ptr @ira_move_loops_num, align 4, !tbaa !280
  %66 = tail call i32 @flow_loops_find(ptr noundef nonnull @ira_loops) #26
  tail call void @record_loop_exits() #26
  %67 = load ptr, ptr @cfun, align 8, !tbaa !267
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 4
  store ptr @ira_loops, ptr %68, align 8, !tbaa !543
  %69 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !280
  %70 = icmp sgt i32 %69, 0
  %71 = load ptr, ptr @ira_dump_file, align 8
  %72 = icmp ne ptr %71, null
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76, !prof !541

74:                                               ; preds = %64
  %75 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 16, i64 1, ptr nonnull %71)
  br label %76

76:                                               ; preds = %74, %64
  %77 = load i32, ptr @optimize, align 4, !tbaa !280
  %78 = icmp ne i32 %77, 0
  %79 = load i32, ptr @flag_ira_region, align 4
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 2
  %82 = select i1 %78, i1 %81, i1 false
  %83 = zext i1 %82 to i8
  %84 = tail call zeroext i8 @ira_build(i8 noundef zeroext %83) #26
  %85 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !280
  %86 = tail call fastcc zeroext i8 @too_high_register_pressure_p() #27, !range !322
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88, !prof !352

88:                                               ; preds = %76
  store i32 0, ptr @flag_ira_share_spill_slots, align 4, !tbaa !280
  br label %89

89:                                               ; preds = %88, %76
  tail call void @ira_color() #26
  %90 = load i32, ptr @ira_max_point, align 4, !tbaa !280
  tail call void @ira_emit(i8 noundef zeroext %84) #26
  %91 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !304
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %110, label %93, !prof !540

93:                                               ; preds = %89
  %94 = tail call i32 @max_reg_num() #26
  store i32 %94, ptr @max_regno, align 4, !tbaa !280
  %95 = icmp eq i8 %84, 0
  br i1 %95, label %96, label %97, !prof !352

96:                                               ; preds = %93
  tail call void @ira_initiate_assign() #26
  br label %110

97:                                               ; preds = %93
  tail call fastcc void @expand_reg_info(i32 noundef %65) #27
  tail call fastcc void @setup_preferred_alternate_classes_for_new_pseudos(i32 noundef %65) #27
  %98 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !280
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
  %107 = load ptr, ptr @cfun, align 8, !tbaa !267
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 4
  store ptr @ira_loops, ptr %108, align 8, !tbaa !543
  tail call fastcc void @setup_allocno_assignment_flags() #27
  tail call void @ira_initiate_assign() #26
  %109 = load i32, ptr @max_regno, align 4, !tbaa !280
  tail call void @ira_reassign_conflict_allocnos(i32 noundef %109) #26
  br label %110

110:                                              ; preds = %96, %105, %89
  tail call fastcc void @setup_reg_renumber() #27
  tail call fastcc void @calculate_allocation_cost() #27
  %111 = tail call ptr @get_insns() #26
  %112 = tail call i32 @max_reg_num() #26
  %113 = tail call i32 @delete_trivially_dead_insns(ptr noundef %111, i32 noundef %112) #26
  %114 = tail call i32 @max_reg_num() #26
  store i32 %114, ptr @max_regno, align 4, !tbaa !280
  tail call fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %114) #27
  %115 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %116 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %115) #27
  %117 = load i32, ptr @max_regno, align 4, !tbaa !280
  %118 = sext i32 %117 to i64
  %119 = shl nsw i64 %118, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %116, i8 0, i64 %119, i1 false)
  %120 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8
  %121 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %120) #27
  store ptr %121, ptr @reg_equiv_memory_loc, align 8, !tbaa !267
  %122 = load i32, ptr @max_regno, align 4, !tbaa !280
  %123 = icmp eq i32 %122, %65
  br i1 %123, label %126, label %124, !prof !352

124:                                              ; preds = %110
  tail call void @regstat_free_n_sets_and_refs() #26
  tail call void @regstat_free_ri() #26
  tail call void @regstat_init_n_sets_and_refs() #26
  tail call void @regstat_compute_ri() #26
  %125 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !267
  br label %126

126:                                              ; preds = %124, %110
  %127 = phi ptr [ %125, %124 ], [ %121, %110 ]
  tail call void @allocate_initial_values(ptr noundef %127) #26
  %128 = load i32, ptr @ira_overall_cost, align 4, !tbaa !280
  %129 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !304
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %139, label %131, !prof !540

131:                                              ; preds = %126
  tail call fastcc void @fix_reg_equiv_init() #27
  store i32 0, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !280
  %132 = load i32, ptr @max_regno, align 4, !tbaa !280
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 48
  %135 = tail call ptr @ira_allocate(i64 noundef %134) #27
  store ptr %135, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !267
  %136 = load i32, ptr @max_regno, align 4, !tbaa !280
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %135, i8 0, i64 %138, i1 false)
  br label %139

139:                                              ; preds = %126, %131
  %140 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %146, label %142, !prof !352

142:                                              ; preds = %139
  tail call void @timevar_pop_1(i32 noundef 148) #26
  %143 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %146, label %145, !prof !381

145:                                              ; preds = %142
  tail call void @timevar_push_1(i32 noundef 149) #26
  br label %146

146:                                              ; preds = %139, %145, %142
  %147 = tail call i32 @df_set_flags(i32 noundef 16) #26
  tail call fastcc void @build_insn_chain() #27
  %148 = tail call ptr @get_insns() #26
  %149 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !304
  %150 = zext i8 %149 to i32
  %151 = tail call i32 @reload(ptr noundef %148, i32 noundef %150) #26
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  store i32 %153, ptr @reload_completed, align 4, !tbaa !280
  tail call void @finish_subregs_of_mode() #26
  %154 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156, !prof !352

156:                                              ; preds = %146
  tail call void @timevar_pop_1(i32 noundef 149) #26
  %157 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %160, label %159, !prof !381

159:                                              ; preds = %156
  tail call void @timevar_push_1(i32 noundef 148) #26
  br label %160

160:                                              ; preds = %146, %159, %156
  %161 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !304
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %165, label %163, !prof !540

163:                                              ; preds = %160
  %164 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !267
  tail call void @ira_free(ptr noundef %164) #27
  tail call void @ira_finish_assign() #26
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !280
  %167 = icmp sgt i32 %166, 0
  %168 = load ptr, ptr @ira_dump_file, align 8
  %169 = icmp ne ptr %168, null
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %176, !prof !541

171:                                              ; preds = %165
  %172 = load i32, ptr @ira_overall_cost, align 4, !tbaa !280
  %173 = icmp eq i32 %128, %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %168, ptr noundef nonnull @.str.44, i32 noundef %172) #27
  br label %176

176:                                              ; preds = %174, %171, %165
  tail call void @ira_destroy() #26
  store i32 %85, ptr @flag_ira_share_spill_slots, align 4, !tbaa !280
  tail call void @flow_loops_free(ptr noundef nonnull @ira_loops) #26
  tail call void @free_dominance_info(i32 noundef 1) #26
  %177 = load ptr, ptr @cfun, align 8, !tbaa !267
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !385
  %180 = load ptr, ptr %179, align 8, !tbaa !267
  %181 = icmp eq ptr %180, null
  br i1 %181, label %188, label %182, !prof !392

182:                                              ; preds = %176, %182
  %183 = phi ptr [ %186, %182 ], [ %180, %176 ]
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %183, i64 0, i32 3
  store ptr null, ptr %184, align 8, !tbaa !544
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %183, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !267
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %182, !prof !545, !llvm.loop !546

188:                                              ; preds = %182, %176
  %189 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 4
  store ptr null, ptr %189, align 8, !tbaa !543
  tail call void @regstat_free_ri() #26
  tail call void @regstat_free_n_sets_and_refs() #26
  %190 = load i32, ptr @optimize, align 4, !tbaa !280
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192, !prof !540

192:                                              ; preds = %188
  %193 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #26
  %194 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !267
  tail call void @ira_free(ptr noundef %194) #27
  %195 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !267
  tail call void @ira_free(ptr noundef %195) #27
  br label %196

196:                                              ; preds = %192, %188
  tail call void @bitmap_obstack_release(ptr noundef nonnull @ira_bitmap_obstack) #26
  tail call void @df_finish_pass(i8 noundef zeroext 1) #26
  %197 = load i32, ptr @optimize, align 4, !tbaa !280
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %200, !prof !352

199:                                              ; preds = %196
  tail call void @df_live_add_problem() #26
  br label %200

200:                                              ; preds = %199, %196
  tail call void @df_scan_alloc(ptr noundef null) #26
  tail call void @df_scan_blocks() #26
  %201 = load i32, ptr @optimize, align 4, !tbaa !280
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203, !prof !540

203:                                              ; preds = %200
  tail call void @df_analyze() #26
  br label %204

204:                                              ; preds = %200, %203
  %205 = load i8, ptr @timevar_enable, align 1, !tbaa !304
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %208, label %207, !prof !352

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
define internal fastcc void @setup_prohibited_mode_move_regs() unnamed_addr #0 !prof !351 !PGOFuncName !547 {
  %1 = load i1, ptr @ira_prohibited_mode_move_regs_initialized_p, align 1
  br i1 %1, label %46, label %2, !prof !548

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
  store i64 -1, ptr %12, align 8, !tbaa !303
  %13 = trunc i64 %11 to i32
  %14 = trunc i64 %11 to i32
  %15 = shl i32 %14, 16
  br label %16

16:                                               ; preds = %10, %40
  %17 = phi i64 [ 0, %10 ], [ %41, %40 ]
  %18 = trunc i64 %17 to i32
  %19 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %18, i32 noundef %13) #26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21, !prof !549

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #27
  tail call void @df_ref_change_reg_with_loc(i32 noundef %22, i32 noundef %18, ptr noundef %3) #26
  store i32 %18, ptr %7, align 8, !tbaa !304
  %23 = load i32, ptr %3, align 8
  %24 = and i32 %23, -16711681
  %25 = or disjoint i32 %24, %15
  store i32 %25, ptr %3, align 8
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %4) #27
  tail call void @df_ref_change_reg_with_loc(i32 noundef %26, i32 noundef %18, ptr noundef %4) #26
  store i32 %18, ptr %8, align 8, !tbaa !304
  %27 = load i32, ptr %4, align 8
  %28 = and i32 %27, -16711681
  %29 = or disjoint i32 %28, %15
  store i32 %29, ptr %4, align 8
  store i32 -1, ptr %9, align 8, !tbaa !304
  tail call fastcc void @recog_memoized(ptr noundef %6) #27
  %30 = load i32, ptr %9, align 8, !tbaa !304
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %40, label %32, !prof !550

32:                                               ; preds = %21
  tail call void @extract_insn(ptr noundef nonnull %6) #26
  %33 = tail call i32 @constrain_operands(i32 noundef 1) #26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35, !prof !551

35:                                               ; preds = %32
  %36 = shl nuw nsw i64 1, %17
  %37 = xor i64 %36, -1
  %38 = load i64, ptr %12, align 8, !tbaa !303
  %39 = and i64 %38, %37
  store i64 %39, ptr %12, align 8, !tbaa !303
  br label %40

40:                                               ; preds = %32, %21, %16, %35
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, 53
  br i1 %42, label %43, label %16, !prof !309, !llvm.loop !552

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 1
  %45 = icmp eq i64 %44, 87
  br i1 %45, label %46, label %10, !prof !311, !llvm.loop !553

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
define internal fastcc i32 @update_equiv_regs() unnamed_addr #0 !prof !351 !PGOFuncName !554 {
  store i1 false, ptr @recorded_label_ref, align 4
  %1 = load i32, ptr @max_regno, align 4, !tbaa !280
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 40) #26
  store ptr %3, ptr @reg_equiv, align 8, !tbaa !267
  %4 = load i32, ptr @max_regno, align 4, !tbaa !280
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %6) #26
  store ptr %7, ptr @reg_equiv_init, align 8, !tbaa !267
  %8 = load i32, ptr @max_regno, align 4, !tbaa !280
  store i32 %8, ptr @reg_equiv_init_size, align 4, !tbaa !280
  tail call void @init_alias_analysis() #26
  %9 = load ptr, ptr @cfun, align 8, !tbaa !267
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !385
  %12 = load ptr, ptr %11, align 8, !tbaa !387
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !389
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !391
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %360, label %29, !prof !392

18:                                               ; preds = %351
  %19 = load ptr, ptr @cfun, align 8, !tbaa !267
  br label %20

20:                                               ; preds = %18, %29
  %21 = phi ptr [ %19, %18 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !389
  %24 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !385
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !391
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %360, label %29, !prof !407, !llvm.loop !555

29:                                               ; preds = %0, %20
  %30 = phi ptr [ %21, %20 ], [ %9, %0 ]
  %31 = phi ptr [ %23, %20 ], [ %14, %0 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !556
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !304
  %36 = load ptr, ptr %35, align 8, !tbaa !304
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !557
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !304
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %20, label %42, !prof !558

42:                                               ; preds = %29, %351
  %43 = phi ptr [ %353, %351 ], [ %36, %29 ]
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %351, !prof !559

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !304
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !560

52:                                               ; preds = %48, %60
  %53 = phi ptr [ %62, %60 ], [ %50, %48 ]
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 16711680
  %56 = icmp eq i32 %55, 131072
  br i1 %56, label %57, label %60, !prof !561

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !304
  tail call void @no_equiv(ptr noundef %59, ptr nonnull poison, ptr poison) #27
  br label %60

60:                                               ; preds = %52, %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !304
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %52, !prof !562, !llvm.loop !563

64:                                               ; preds = %60
  %65 = load i32, ptr %43, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %81, !prof !564

69:                                               ; preds = %48, %64
  %70 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !304
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %84, label %75, !prof !565

75:                                               ; preds = %69
  %76 = tail call ptr @single_set_2(ptr noundef nonnull %43, ptr noundef nonnull %71) #26
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78, !prof !465

78:                                               ; preds = %75
  %79 = load ptr, ptr %70, align 8, !tbaa !304
  %80 = load i32, ptr %79, align 8
  br label %84

81:                                               ; preds = %64, %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !304
  tail call void @note_stores(ptr noundef %83, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %351

84:                                               ; preds = %78, %69
  %85 = phi i32 [ %80, %78 ], [ %72, %69 ]
  %86 = phi ptr [ %79, %78 ], [ %71, %69 ]
  %87 = phi ptr [ %76, %78 ], [ %71, %69 ]
  %88 = and i32 %85, 65535
  %89 = icmp eq i32 %88, 15
  br i1 %89, label %90, label %109, !prof !566

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !304
  %93 = load i32, ptr %92, align 8, !tbaa !567
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %109, !prof !569

95:                                               ; preds = %90
  %96 = zext nneg i32 %93 to i64
  br label %97

97:                                               ; preds = %95, %107
  %98 = phi i64 [ %96, %95 ], [ %99, %107 ]
  %99 = add nsw i64 %98, -1
  %100 = load ptr, ptr %70, align 8, !tbaa !304
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !304
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %102, i64 0, i32 1, i64 %99
  %104 = load ptr, ptr %103, align 8, !tbaa !267
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %107, label %106, !prof !570

106:                                              ; preds = %97
  tail call void @note_stores(ptr noundef %104, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %107

107:                                              ; preds = %106, %97
  %108 = icmp ugt i64 %98, 1
  br i1 %108, label %97, label %109, !prof !571, !llvm.loop !572

109:                                              ; preds = %107, %90, %84
  %110 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !304
  %112 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !304
  %114 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef null) #26
  %115 = icmp eq ptr %114, null
  br i1 %115, label %137, label %116, !prof !573

116:                                              ; preds = %109
  %117 = load i32, ptr %111, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %121, label %120, !prof !574

120:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2390, ptr noundef nonnull @.str.41) #26
  br label %121

121:                                              ; preds = %116, %120
  %122 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %123 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.equivalence, ptr %123, i64 %124, i32 4
  store i32 1, ptr %125, align 4, !tbaa !575
  %126 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !304
  %128 = tail call i32 @rtx_equal_p(ptr noundef %113, ptr noundef %127) #26
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130, !prof !577

130:                                              ; preds = %121
  %131 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %132 = getelementptr inbounds ptr, ptr %131, i64 %124
  %133 = load ptr, ptr %132, align 8, !tbaa !267
  %134 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %133) #26
  %135 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %136 = getelementptr inbounds ptr, ptr %135, i64 %124
  store ptr %134, ptr %136, align 8, !tbaa !267
  br label %137

137:                                              ; preds = %121, %130, %109
  %138 = load i32, ptr @optimize, align 4, !tbaa !280
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %351, label %140, !prof !578

140:                                              ; preds = %137
  %141 = load i32, ptr %111, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %193, !prof !579

144:                                              ; preds = %140
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %146 = icmp slt i32 %145, 53
  br i1 %146, label %193, label %147, !prof !580

147:                                              ; preds = %144
  %148 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %149 = zext nneg i32 %145 to i64
  %150 = getelementptr inbounds %struct.equivalence, ptr %148, i64 %149, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !581
  %152 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %193, label %154, !prof !582

154:                                              ; preds = %147
  %155 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %184, label %157, !prof !583

157:                                              ; preds = %154
  %158 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %184, label %160, !prof !583

160:                                              ; preds = %157
  %161 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %184, label %163, !prof !583

163:                                              ; preds = %160
  %164 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %184, label %166, !prof !583

166:                                              ; preds = %163
  %167 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %168 = icmp eq i32 %167, 7
  br i1 %168, label %184, label %169, !prof !583

169:                                              ; preds = %166
  %170 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %171 = icmp eq i32 %170, 5
  br i1 %171, label %184, label %172, !prof !583

172:                                              ; preds = %169
  %173 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %184, label %175, !prof !583

175:                                              ; preds = %172
  %176 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %177 = icmp eq i32 %176, 17
  br i1 %177, label %184, label %178, !prof !583

178:                                              ; preds = %175
  %179 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %180 = icmp eq i32 %179, 14
  br i1 %180, label %184, label %181, !prof !583

181:                                              ; preds = %178
  %182 = tail call i32 @reg_preferred_class(i32 noundef %145) #26
  %183 = icmp eq i32 %182, 15
  br i1 %183, label %184, label %194, !prof !583

184:                                              ; preds = %181, %178, %175, %172, %169, %166, %163, %160, %157, %154
  %185 = load i32, ptr %113, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 43
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %190 = getelementptr inbounds %struct.equivalence, ptr %189, i64 %149, i32 4
  %191 = load i32, ptr %190, align 4, !tbaa !575
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %147, %144, %140
  tail call void @note_stores(ptr noundef nonnull %87, ptr noundef nonnull @no_equiv, ptr noundef null) #26
  br label %351

194:                                              ; preds = %188, %184, %181
  %195 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 4, ptr noundef null) #26
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %204, !prof !584

197:                                              ; preds = %194
  %198 = tail call zeroext i8 @rtx_varies_p(ptr noundef %113, i8 noundef zeroext 0) #26
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %212, !prof !585

200:                                              ; preds = %197
  %201 = tail call ptr @copy_rtx(ptr noundef %113) #26
  %202 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 4, ptr noundef %201) #26
  %203 = icmp eq ptr %202, null
  br i1 %203, label %212, label %204, !prof !586

204:                                              ; preds = %194, %200
  %205 = phi ptr [ %202, %200 ], [ %195, %194 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !304
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %211, label %212, !prof !587

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %197, %211, %204, %200
  %213 = phi ptr [ null, %211 ], [ %205, %204 ], [ null, %200 ], [ null, %197 ]
  %214 = load ptr, ptr @df, align 8, !tbaa !267
  %215 = getelementptr inbounds %struct.df, ptr %214, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !588
  %217 = getelementptr inbounds ptr, ptr %216, i64 %149
  %218 = load ptr, ptr %217, align 8, !tbaa !267
  %219 = getelementptr inbounds %struct.df_reg_info, ptr %218, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !589
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %239, label %222, !prof !591

222:                                              ; preds = %212
  %223 = icmp eq ptr %213, null
  br i1 %223, label %238, label %224, !prof !592

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !304
  %227 = tail call zeroext i8 @rtx_varies_p(ptr noundef %226, i8 noundef zeroext 0) #26
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %238, !prof !593

229:                                              ; preds = %224
  %230 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %231 = getelementptr inbounds %struct.equivalence, ptr %230, i64 %149
  %232 = load ptr, ptr %231, align 8, !tbaa !594
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234, !prof !595

234:                                              ; preds = %229
  %235 = load ptr, ptr %225, align 8, !tbaa !304
  %236 = tail call i32 @rtx_equal_p(ptr noundef %235, ptr noundef nonnull %232) #26
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %224, %222
  tail call void @no_equiv(ptr noundef nonnull %111, ptr nonnull poison, ptr poison) #27
  br label %351

239:                                              ; preds = %234, %229, %212
  %240 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %241 = getelementptr inbounds %struct.equivalence, ptr %240, i64 %149, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !581
  %243 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %242) #26
  %244 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %245 = getelementptr inbounds %struct.equivalence, ptr %244, i64 %149, i32 2
  store ptr %243, ptr %245, align 8, !tbaa !581
  %246 = load ptr, ptr @df, align 8, !tbaa !267
  %247 = getelementptr inbounds %struct.df, ptr %246, i64 0, i32 5
  %248 = load ptr, ptr %247, align 8, !tbaa !588
  %249 = getelementptr inbounds ptr, ptr %248, i64 %149
  %250 = load ptr, ptr %249, align 8, !tbaa !267
  %251 = getelementptr inbounds %struct.df_reg_info, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !589
  %253 = icmp eq i32 %252, 1
  %254 = icmp ne ptr %213, null
  %255 = and i1 %254, %253
  br i1 %255, label %256, label %264, !prof !596

256:                                              ; preds = %239
  %257 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !304
  %259 = tail call zeroext i8 @rtx_varies_p(ptr noundef %258, i8 noundef zeroext 0) #26
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %264, !prof !597

261:                                              ; preds = %256
  %262 = load ptr, ptr %257, align 8, !tbaa !304
  tail call void @remove_note(ptr noundef nonnull %43, ptr noundef nonnull %213) #26
  %263 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef %262) #26
  br label %264

264:                                              ; preds = %261, %256, %239
  %265 = tail call ptr @find_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef null) #26
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %285, !prof !598

267:                                              ; preds = %264
  %268 = load ptr, ptr @reg_info_p, align 8, !tbaa !267
  %269 = getelementptr inbounds %struct.reg_info_t, ptr %268, i64 %149, i32 6
  %270 = load i32, ptr %269, align 4, !tbaa !599
  %271 = icmp sgt i32 %270, 1
  br i1 %271, label %272, label %351, !prof !601

272:                                              ; preds = %267
  %273 = load ptr, ptr %112, align 8, !tbaa !304
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 65535
  %276 = icmp eq i32 %275, 43
  br i1 %276, label %277, label %351, !prof !602

277:                                              ; preds = %272
  %278 = tail call fastcc i32 @validate_equiv_mem(ptr noundef nonnull %43, ptr noundef nonnull %111, ptr noundef nonnull %273) #27, !range !542
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %351, label %280, !prof !603

280:                                              ; preds = %277
  %281 = load ptr, ptr %112, align 8, !tbaa !304
  %282 = tail call ptr @copy_rtx(ptr noundef %281) #26
  %283 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %43, i32 noundef 3, ptr noundef %282) #26
  %284 = icmp eq ptr %283, null
  br i1 %284, label %351, label %285, !prof !381

285:                                              ; preds = %264, %280
  %286 = phi ptr [ %283, %280 ], [ %265, %264 ]
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %111) #27
  %288 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !304
  %290 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %291 = sext i32 %287 to i64
  %292 = getelementptr inbounds %struct.equivalence, ptr %290, i64 %291, i32 4
  %293 = load i32, ptr %292, align 4, !tbaa !575
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %302, !prof !604

295:                                              ; preds = %285
  %296 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %297 = getelementptr inbounds ptr, ptr %296, i64 %291
  %298 = load ptr, ptr %297, align 8, !tbaa !267
  %299 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %43, ptr noundef %298) #26
  %300 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %301 = getelementptr inbounds ptr, ptr %300, i64 %291
  store ptr %299, ptr %301, align 8, !tbaa !267
  br label %302

302:                                              ; preds = %295, %285
  %303 = load i32, ptr %289, align 8
  %304 = trunc i32 %303 to i16
  switch i16 %304, label %318 [
    i16 44, label %317
    i16 35, label %305
  ], !prof !605

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !304
  %308 = load i32, ptr %307, align 8
  %309 = and i32 %308, 65535
  %310 = icmp eq i32 %309, 49
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !304
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 44
  br i1 %316, label %317, label %318

317:                                              ; preds = %302, %311
  store i1 true, ptr @recorded_label_ref, align 4
  br label %318

318:                                              ; preds = %302, %317, %311, %305
  %319 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %320 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291
  store ptr %289, ptr %320, align 8, !tbaa !594
  %321 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291, i32 1
  store ptr %112, ptr %321, align 8, !tbaa !606
  %322 = getelementptr inbounds %struct.equivalence, ptr %319, i64 %291, i32 3
  store i32 %33, ptr %322, align 8, !tbaa !607
  %323 = load ptr, ptr @reg_info_p, align 8, !tbaa !267
  %324 = getelementptr inbounds %struct.reg_info_t, ptr %323, i64 %291, i32 2
  %325 = load i32, ptr %324, align 4, !tbaa !608
  %326 = icmp sgt i32 %325, -1
  %327 = load i32, ptr @optimize, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %330, label %351, !prof !609

330:                                              ; preds = %318
  %331 = shl nuw nsw i32 %325, 1
  store i32 %331, ptr %324, align 4, !tbaa !608
  %332 = tail call fastcc i32 @REG_N_REFS(i32 noundef %287) #27
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %351, !prof !610

334:                                              ; preds = %330
  %335 = tail call i32 @rtx_equal_p(ptr noundef nonnull %289, ptr noundef %113) #26
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340, !prof !611

337:                                              ; preds = %334
  %338 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %113) #27
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %337, %334
  %341 = load i32, ptr %43, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 8
  br i1 %343, label %344, label %351, !prof !612

344:                                              ; preds = %340
  %345 = load ptr, ptr %70, align 8, !tbaa !304
  %346 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %345, i32 noundef %287) #27, !range !542
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %351, label %348, !prof !613

348:                                              ; preds = %344
  %349 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %350 = getelementptr inbounds %struct.equivalence, ptr %349, i64 %291, i32 5
  store i8 1, ptr %350, align 8, !tbaa !614
  br label %351

351:                                              ; preds = %267, %272, %277, %42, %280, %330, %337, %340, %344, %348, %318, %137, %238, %193, %81
  %352 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %353 = load ptr, ptr %352, align 8, !tbaa !304
  %354 = load ptr, ptr %34, align 8, !tbaa !304
  %355 = getelementptr inbounds %struct.rtl_bb_info, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !557
  %357 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1, i32 0, i32 0, i64 2
  %358 = load ptr, ptr %357, align 8, !tbaa !304
  %359 = icmp eq ptr %353, %358
  br i1 %359, label %18, label %42, !prof !615, !llvm.loop !616

360:                                              ; preds = %20, %0
  %361 = load i32, ptr @optimize, align 4, !tbaa !280
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %713, label %363, !prof !540

363:                                              ; preds = %360
  %364 = tail call ptr @get_insns() #26
  %365 = icmp eq ptr %364, null
  br i1 %365, label %453, label %366, !prof !392

366:                                              ; preds = %363, %449
  %367 = phi ptr [ %451, %449 ], [ %364, %363 ]
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = add nsw i32 %369, -7
  %371 = icmp ult i32 %370, 4
  br i1 %371, label %372, label %449, !prof !617

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !304
  %375 = load i32, ptr %374, align 8
  %376 = and i32 %375, 65535
  %377 = icmp eq i32 %376, 23
  br i1 %377, label %381, label %378, !prof !565

378:                                              ; preds = %372
  %379 = tail call ptr @single_set_2(ptr noundef nonnull %367, ptr noundef nonnull %374) #26
  %380 = icmp eq ptr %379, null
  br i1 %380, label %449, label %381, !prof !465

381:                                              ; preds = %372, %378
  %382 = phi ptr [ %379, %378 ], [ %374, %372 ]
  %383 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !304
  %385 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1, i32 0, i32 0, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !304
  %387 = load i32, ptr %384, align 8
  %388 = and i32 %387, 65535
  %389 = icmp eq i32 %388, 43
  br i1 %389, label %390, label %449, !prof !618

390:                                              ; preds = %381
  %391 = load i32, ptr %386, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 37
  br i1 %393, label %394, label %449, !prof !619

394:                                              ; preds = %390
  %395 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %386) #27
  %396 = icmp ugt i32 %395, 52
  br i1 %396, label %397, label %449, !prof !620

397:                                              ; preds = %394
  %398 = load ptr, ptr @reg_info_p, align 8, !tbaa !267
  %399 = zext i32 %395 to i64
  %400 = getelementptr inbounds %struct.reg_info_t, ptr %398, i64 %399, i32 6
  %401 = load i32, ptr %400, align 4, !tbaa !599
  %402 = icmp sgt i32 %401, 1
  br i1 %402, label %403, label %449, !prof !621

403:                                              ; preds = %397
  %404 = load ptr, ptr @df, align 8, !tbaa !267
  %405 = getelementptr inbounds %struct.df, ptr %404, i64 0, i32 5
  %406 = load ptr, ptr %405, align 8, !tbaa !588
  %407 = getelementptr inbounds ptr, ptr %406, i64 %399
  %408 = load ptr, ptr %407, align 8, !tbaa !267
  %409 = getelementptr inbounds %struct.df_reg_info, ptr %408, i64 0, i32 1
  %410 = load i32, ptr %409, align 8, !tbaa !589
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %449, !prof !622

412:                                              ; preds = %403
  %413 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %414 = getelementptr inbounds %struct.equivalence, ptr %413, i64 %399, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !581
  %416 = icmp eq ptr %415, null
  %417 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %418 = icmp eq ptr %415, %417
  %419 = select i1 %416, i1 true, i1 %418
  br i1 %419, label %449, label %420, !prof !623

420:                                              ; preds = %412
  %421 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !304
  %423 = tail call ptr @find_reg_note(ptr noundef %422, i32 noundef 3, ptr noundef null) #26
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %449, !prof !624

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.rtx_def, ptr %384, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !304
  %428 = tail call fastcc i32 @contains_replace_regs(ptr noundef %427) #27, !range !625
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %449, !prof !626

430:                                              ; preds = %425
  %431 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %432 = getelementptr inbounds %struct.equivalence, ptr %431, i64 %399, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !581
  %434 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !304
  %436 = tail call fastcc i32 @validate_equiv_mem(ptr noundef %435, ptr noundef nonnull %386, ptr noundef nonnull %384) #27, !range !542
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %449, label %438, !prof !627

438:                                              ; preds = %430
  %439 = tail call fastcc i32 @memref_used_between_p(ptr noundef nonnull %384, ptr noundef %435, ptr noundef nonnull %367) #27, !range !542
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %449, !prof !626

441:                                              ; preds = %438
  %442 = tail call ptr @copy_rtx(ptr noundef nonnull %384) #26
  %443 = tail call ptr @set_unique_reg_note(ptr noundef %435, i32 noundef 3, ptr noundef %442) #26
  %444 = icmp eq ptr %443, null
  br i1 %444, label %449, label %445, !prof !627

445:                                              ; preds = %441
  %446 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %367, ptr noundef null) #26
  %447 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %448 = getelementptr inbounds ptr, ptr %447, i64 %399
  store ptr %446, ptr %448, align 8, !tbaa !267
  tail call void @df_notes_rescan(ptr noundef %435) #26
  br label %449

449:                                              ; preds = %366, %381, %390, %394, %397, %403, %412, %420, %425, %445, %441, %438, %430, %378
  %450 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 0, i64 2
  %451 = load ptr, ptr %450, align 8, !tbaa !304
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %366, !prof !628, !llvm.loop !629

453:                                              ; preds = %449, %363
  %454 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %455 = load ptr, ptr @cfun, align 8, !tbaa !267
  %456 = getelementptr inbounds %struct.function, ptr %455, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !385
  %458 = getelementptr inbounds %struct.control_flow_graph, ptr %457, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !391
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 5
  %461 = load ptr, ptr %460, align 8, !tbaa !630
  %462 = load ptr, ptr %457, align 8, !tbaa !387
  %463 = icmp eq ptr %461, %462
  br i1 %463, label %641, label %474, !prof !392

464:                                              ; preds = %633
  %465 = load ptr, ptr @cfun, align 8, !tbaa !267
  br label %466

466:                                              ; preds = %464, %474
  %467 = phi ptr [ %465, %464 ], [ %475, %474 ]
  %468 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 5
  %469 = load ptr, ptr %468, align 8, !tbaa !630
  %470 = getelementptr inbounds %struct.function, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !385
  %472 = load ptr, ptr %471, align 8, !tbaa !387
  %473 = icmp eq ptr %469, %472
  br i1 %473, label %641, label %474, !prof !407, !llvm.loop !631

474:                                              ; preds = %453, %466
  %475 = phi ptr [ %467, %466 ], [ %455, %453 ]
  %476 = phi ptr [ %469, %466 ], [ %461, %453 ]
  %477 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 10
  %478 = load i32, ptr %477, align 4, !tbaa !556
  %479 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 7
  %480 = load ptr, ptr %479, align 8, !tbaa !304
  %481 = getelementptr inbounds %struct.rtl_bb_info, ptr %480, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !304
  %483 = load ptr, ptr %480, align 8, !tbaa !394
  %484 = getelementptr inbounds %struct.rtx_def, ptr %483, i64 0, i32 1, i32 0, i32 0, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !304
  %486 = icmp eq ptr %482, %485
  br i1 %486, label %466, label %487, !prof !558

487:                                              ; preds = %474, %633
  %488 = phi ptr [ %635, %633 ], [ %482, %474 ]
  %489 = load i32, ptr %488, align 8
  %490 = and i32 %489, 65535
  %491 = add nsw i32 %490, -7
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %493, label %633, !prof !559

493:                                              ; preds = %487
  %494 = icmp eq i32 %490, 9
  br i1 %494, label %495, label %498, !prof !632

495:                                              ; preds = %493
  %496 = tail call ptr @find_reg_note(ptr noundef nonnull %488, i32 noundef 28, ptr noundef null) #26
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %633, !prof !633

498:                                              ; preds = %495, %493
  %499 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 1, i32 1, i32 0, i32 0, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !304
  %501 = icmp eq ptr %500, null
  br i1 %501, label %633, label %502, !prof !634

502:                                              ; preds = %498, %629
  %503 = phi ptr [ %631, %629 ], [ %500, %498 ]
  %504 = load i32, ptr %503, align 8
  %505 = and i32 %504, 16711680
  %506 = icmp eq i32 %505, 65536
  br i1 %506, label %507, label %629, !prof !635

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 1
  %509 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !304
  %511 = load ptr, ptr %508, align 8, !tbaa !304
  %512 = tail call i32 @reg_mentioned_p(ptr noundef %510, ptr noundef %511) #26
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %629, label %514, !prof !636

514:                                              ; preds = %507
  %515 = load ptr, ptr %509, align 8, !tbaa !304
  %516 = tail call fastcc i32 @rhs_regno(ptr noundef %515) #27
  %517 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %518 = sext i32 %516 to i64
  %519 = getelementptr inbounds %struct.equivalence, ptr %517, i64 %518, i32 5
  %520 = load i8, ptr %519, align 8, !tbaa !614
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %629, label %522, !prof !637

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.equivalence, ptr %517, i64 %518, i32 3
  %524 = load i32, ptr %523, align 8, !tbaa !607
  %525 = icmp slt i32 %524, %478
  br i1 %525, label %629, label %526, !prof !638

526:                                              ; preds = %522
  %527 = getelementptr inbounds %struct.equivalence, ptr %517, i64 %518, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !581
  %529 = icmp eq ptr %528, null
  br i1 %529, label %534, label %530, !prof !638

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.rtx_def, ptr %528, i64 0, i32 1, i32 0, i32 0, i64 1
  %532 = load ptr, ptr %531, align 8, !tbaa !304
  %533 = icmp eq ptr %532, null
  br i1 %533, label %538, label %534, !prof !639

534:                                              ; preds = %530, %526
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2653, ptr noundef nonnull @.str.41) #26
  %535 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %536 = getelementptr inbounds %struct.equivalence, ptr %535, i64 %518, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !581
  br label %538

538:                                              ; preds = %530, %534
  %539 = phi ptr [ %528, %530 ], [ %537, %534 ]
  %540 = getelementptr inbounds %struct.rtx_def, ptr %539, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !304
  %542 = tail call zeroext i8 @can_throw_internal(ptr noundef %541) #26
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %544, label %629, !prof !639

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1
  %546 = load ptr, ptr %545, align 8, !tbaa !304
  %547 = tail call i32 @asm_noperands(ptr noundef %546) #26
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %593, !prof !639

549:                                              ; preds = %544
  %550 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !267
  %551 = getelementptr inbounds ptr, ptr %550, i64 %518
  %552 = load ptr, ptr %551, align 8, !tbaa !267
  %553 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %554 = getelementptr inbounds %struct.equivalence, ptr %553, i64 %518, i32 1
  %555 = load ptr, ptr %554, align 8, !tbaa !606
  %556 = load ptr, ptr %555, align 8, !tbaa !267
  %557 = tail call i32 @validate_replace_rtx(ptr noundef %552, ptr noundef %556, ptr noundef nonnull %488) #26
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %593, label %559, !prof !639

559:                                              ; preds = %549, %559
  %560 = phi ptr [ %562, %559 ], [ %503, %549 ]
  %561 = getelementptr inbounds %struct.rtx_def, ptr %560, i64 0, i32 1, i32 0, i32 0, i64 1
  %562 = load ptr, ptr %561, align 8, !tbaa !304
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %559, !llvm.loop !640

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1, i32 1, i32 0, i32 0, i64 1
  %566 = load ptr, ptr %565, align 8, !tbaa !304
  %567 = icmp eq ptr %566, null
  br i1 %567, label %581, label %568

568:                                              ; preds = %564, %578
  %569 = phi ptr [ %579, %578 ], [ %560, %564 ]
  %570 = phi ptr [ %572, %578 ], [ %566, %564 ]
  %571 = getelementptr inbounds %struct.rtx_def, ptr %570, i64 0, i32 1, i32 0, i32 0, i64 1
  %572 = load ptr, ptr %571, align 8, !tbaa !304
  %573 = load i32, ptr %570, align 8
  %574 = and i32 %573, 16711680
  %575 = icmp eq i32 %574, 65536
  br i1 %575, label %576, label %578

576:                                              ; preds = %568
  tail call void @remove_note(ptr noundef %541, ptr noundef nonnull %570) #26
  %577 = getelementptr inbounds %struct.rtx_def, ptr %569, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %570, ptr %577, align 8, !tbaa !304
  store ptr null, ptr %571, align 8, !tbaa !304
  br label %578

578:                                              ; preds = %576, %568
  %579 = phi ptr [ %570, %576 ], [ %569, %568 ]
  %580 = icmp eq ptr %572, null
  br i1 %580, label %581, label %568, !llvm.loop !641

581:                                              ; preds = %578, %564
  %582 = tail call ptr @remove_death(i32 noundef %516, ptr noundef nonnull %488) #26
  %583 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !267
  %584 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %583, i64 %518, i32 1
  store i32 0, ptr %584, align 4, !tbaa !642
  %585 = load ptr, ptr @reg_info_p, align 8, !tbaa !267
  %586 = getelementptr inbounds %struct.reg_info_t, ptr %585, i64 %518
  store i32 0, ptr %586, align 4, !tbaa !644
  %587 = tail call ptr @delete_insn(ptr noundef %541) #26
  %588 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %589 = getelementptr inbounds %struct.equivalence, ptr %588, i64 %518, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !581
  %591 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1, i32 0, i32 0, i64 1
  %592 = load ptr, ptr %591, align 8, !tbaa !304
  store ptr %592, ptr %589, align 8, !tbaa !581
  br label %624

593:                                              ; preds = %549, %544
  %594 = tail call ptr @prev_nondebug_insn(ptr noundef nonnull %488) #26
  %595 = icmp eq ptr %594, %541
  br i1 %595, label %629, label %596, !prof !645

596:                                              ; preds = %593
  %597 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 9
  %598 = load ptr, ptr %545, align 8, !tbaa !304
  %599 = tail call ptr @emit_insn_before(ptr noundef %598, ptr noundef nonnull %488) #26
  %600 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1, i32 1, i32 0, i32 0, i64 1
  %601 = load ptr, ptr %600, align 8, !tbaa !304
  %602 = getelementptr inbounds %struct.rtx_def, ptr %599, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %601, ptr %602, align 8, !tbaa !304
  store ptr null, ptr %600, align 8, !tbaa !304
  %603 = tail call zeroext i8 @df_insn_rescan(ptr noundef %599) #26
  %604 = getelementptr inbounds %struct.rtx_def, ptr %541, i64 1, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !304
  %606 = getelementptr inbounds %struct.rtx_def, ptr %599, i64 1, i32 1
  store i32 %605, ptr %606, align 8, !tbaa !304
  %607 = tail call ptr @delete_insn(ptr noundef nonnull %541) #26
  %608 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %609 = getelementptr inbounds %struct.equivalence, ptr %608, i64 %518, i32 2
  %610 = load ptr, ptr %609, align 8, !tbaa !581
  %611 = getelementptr inbounds %struct.rtx_def, ptr %610, i64 0, i32 1
  store ptr %599, ptr %611, align 8, !tbaa !304
  %612 = load i32, ptr %597, align 8, !tbaa !411
  %613 = load ptr, ptr @reg_info_p, align 8, !tbaa !267
  %614 = getelementptr inbounds %struct.reg_info_t, ptr %613, i64 %518, i32 6
  store i32 %612, ptr %614, align 4, !tbaa !599
  %615 = getelementptr inbounds %struct.reg_info_t, ptr %613, i64 %518, i32 2
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %615, align 4, !tbaa !280
  %616 = load ptr, ptr %479, align 8, !tbaa !304
  %617 = load ptr, ptr %616, align 8, !tbaa !394
  %618 = icmp eq ptr %488, %617
  br i1 %618, label %619, label %622, !prof !646

619:                                              ; preds = %596
  %620 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 0, i32 1, i32 0, i32 0, i64 1
  %621 = load ptr, ptr %620, align 8, !tbaa !304
  store ptr %621, ptr %616, align 8, !tbaa !394
  br label %622

622:                                              ; preds = %619, %596
  %623 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %599, ptr noundef null) #26
  br label %624

624:                                              ; preds = %581, %622
  %625 = phi ptr [ %623, %622 ], [ null, %581 ]
  %626 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %627 = getelementptr inbounds ptr, ptr %626, i64 %518
  store ptr %625, ptr %627, align 8, !tbaa !267
  %628 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %454, i32 noundef %516) #26
  br label %629

629:                                              ; preds = %624, %522, %514, %538, %593, %502, %507
  %630 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1, i32 0, i32 0, i64 1
  %631 = load ptr, ptr %630, align 8, !tbaa !304
  %632 = icmp eq ptr %631, null
  br i1 %632, label %633, label %502, !prof !647, !llvm.loop !648

633:                                              ; preds = %629, %498, %487, %495
  %634 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 0, i32 1, i32 0, i32 0, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !304
  %636 = load ptr, ptr %479, align 8, !tbaa !304
  %637 = load ptr, ptr %636, align 8, !tbaa !394
  %638 = getelementptr inbounds %struct.rtx_def, ptr %637, i64 0, i32 1, i32 0, i32 0, i64 1
  %639 = load ptr, ptr %638, align 8, !tbaa !304
  %640 = icmp eq ptr %635, %639
  br i1 %640, label %464, label %487, !prof !615, !llvm.loop !649

641:                                              ; preds = %466, %453
  %642 = phi ptr [ %457, %453 ], [ %471, %466 ]
  %643 = phi ptr [ %461, %453 ], [ %469, %466 ]
  %644 = load ptr, ptr %454, align 8, !tbaa !650
  %645 = icmp eq ptr %644, null
  br i1 %645, label %712, label %646, !prof !652

646:                                              ; preds = %641
  %647 = getelementptr inbounds %struct.basic_block_def, ptr %643, i64 0, i32 6
  %648 = load ptr, ptr %647, align 8, !tbaa !389
  %649 = getelementptr inbounds %struct.control_flow_graph, ptr %642, i64 0, i32 1
  %650 = load ptr, ptr %649, align 8, !tbaa !391
  %651 = icmp eq ptr %648, %650
  br i1 %651, label %683, label %652, !prof !653

652:                                              ; preds = %646, %652
  %653 = phi ptr [ %676, %652 ], [ %648, %646 ]
  %654 = getelementptr inbounds %struct.basic_block_def, ptr %653, i64 0, i32 9
  %655 = load i32, ptr %654, align 8, !tbaa !411
  %656 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %655) #27
  %657 = getelementptr inbounds %struct.df_live_bb_info, ptr %656, i64 0, i32 2
  %658 = load ptr, ptr %657, align 8, !tbaa !654
  %659 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %658, ptr noundef nonnull %454) #26
  %660 = load i32, ptr %654, align 8, !tbaa !411
  %661 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %660) #27
  %662 = getelementptr inbounds %struct.df_live_bb_info, ptr %661, i64 0, i32 3
  %663 = load ptr, ptr %662, align 8, !tbaa !656
  %664 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %663, ptr noundef nonnull %454) #26
  %665 = load i32, ptr %654, align 8, !tbaa !411
  %666 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %665) #27
  %667 = getelementptr inbounds %struct.df_lr_bb_info, ptr %666, i64 0, i32 2
  %668 = load ptr, ptr %667, align 8, !tbaa !412
  %669 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %668, ptr noundef nonnull %454) #26
  %670 = load i32, ptr %654, align 8, !tbaa !411
  %671 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %670) #27
  %672 = getelementptr inbounds %struct.df_lr_bb_info, ptr %671, i64 0, i32 3
  %673 = load ptr, ptr %672, align 8, !tbaa !657
  %674 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %673, ptr noundef nonnull %454) #26
  %675 = getelementptr inbounds %struct.basic_block_def, ptr %653, i64 0, i32 6
  %676 = load ptr, ptr %675, align 8, !tbaa !389
  %677 = load ptr, ptr @cfun, align 8, !tbaa !267
  %678 = getelementptr inbounds %struct.function, ptr %677, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !385
  %680 = getelementptr inbounds %struct.control_flow_graph, ptr %679, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !391
  %682 = icmp eq ptr %676, %681
  br i1 %682, label %683, label %652, !prof !658, !llvm.loop !659

683:                                              ; preds = %652, %646
  %684 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !280
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %712, label %686, !prof !660

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
  %696 = load ptr, ptr %695, align 8, !tbaa !304
  %697 = getelementptr inbounds %struct.rtx_def, ptr %696, i64 0, i32 1, i32 0, i32 0, i64 1
  %698 = load ptr, ptr %697, align 8, !tbaa !304
  %699 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %698, ptr noundef null, ptr noundef nonnull @adjust_cleared_regs, ptr noundef nonnull %454) #26
  %700 = load ptr, ptr %695, align 8, !tbaa !304
  %701 = getelementptr inbounds %struct.rtx_def, ptr %700, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %699, ptr %701, align 8, !tbaa !304
  %702 = load ptr, ptr %695, align 8, !tbaa !304
  %703 = getelementptr inbounds %struct.rtx_def, ptr %702, i64 0, i32 1, i32 0, i32 0, i64 1
  %704 = load ptr, ptr %703, align 8, !tbaa !304
  %705 = icmp eq ptr %698, %704
  br i1 %705, label %708, label %706

706:                                              ; preds = %694
  %707 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %690) #26
  br label %708

708:                                              ; preds = %694, %706, %689
  %709 = getelementptr inbounds %struct.rtx_def, ptr %690, i64 0, i32 1, i32 0, i32 0, i64 2
  %710 = load ptr, ptr %709, align 8, !tbaa !304
  %711 = icmp eq ptr %710, null
  br i1 %711, label %712, label %689, !llvm.loop !661

712:                                              ; preds = %708, %686, %683, %641
  tail call void @bitmap_obstack_free(ptr noundef nonnull %454) #26
  br label %713

713:                                              ; preds = %360, %712
  tail call void @end_alias_analysis() #26
  %714 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  tail call void @free(ptr noundef %714) #27
  %715 = load i1, ptr @recorded_label_ref, align 4
  %716 = zext i1 %715 to i32
  ret i32 %716
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reg_equiv_invariant_const() unnamed_addr #0 !prof !351 !PGOFuncName !662 {
  %1 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !280
  %2 = icmp sgt i32 %1, 53
  br i1 %2, label %3, label %75, !prof !663

3:                                                ; preds = %0, %64
  %4 = phi i64 [ %71, %64 ], [ 53, %0 ]
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9, !prof !664

9:                                                ; preds = %3, %58
  %10 = phi ptr [ %62, %58 ], [ %7, %3 ]
  %11 = phi ptr [ %60, %58 ], [ null, %3 ]
  %12 = phi i8 [ %59, %58 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !304
  %15 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 3, ptr noundef null) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17, !prof !665

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !304
  %20 = tail call i32 @function_invariant_p(ptr noundef %19) #26
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr @flag_pic, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %35, !prof !666

25:                                               ; preds = %17
  %26 = load i32, ptr %19, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !280
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %19) #26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %32, %17
  %36 = tail call i32 @memory_operand(ptr noundef %19, i32 noundef 0) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38, !prof !667

38:                                               ; preds = %35
  %39 = load i32, ptr %19, align 8
  %40 = lshr i32 %39, 26
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  br label %58

43:                                               ; preds = %35
  %44 = tail call i32 @function_invariant_p(ptr noundef %19) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46, !prof !668

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
  %56 = select i1 %55, i8 1, i8 %12, !prof !669
  %57 = select i1 %55, ptr %11, ptr %19, !prof !669
  br label %58

58:                                               ; preds = %46, %25, %32, %43, %38, %9
  %59 = phi i8 [ %12, %9 ], [ %42, %38 ], [ %12, %43 ], [ %12, %32 ], [ %12, %25 ], [ %56, %46 ]
  %60 = phi ptr [ %11, %9 ], [ %11, %38 ], [ %11, %43 ], [ %11, %32 ], [ %11, %25 ], [ %57, %46 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !304
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %9, !prof !670, !llvm.loop !671

64:                                               ; preds = %58, %3
  %65 = phi i8 [ 0, %3 ], [ %59, %58 ]
  %66 = phi ptr [ null, %3 ], [ %60, %58 ]
  %67 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !267
  %68 = getelementptr inbounds i8, ptr %67, i64 %4
  store i8 %65, ptr %68, align 1, !tbaa !304
  %69 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !267
  %70 = getelementptr inbounds ptr, ptr %69, i64 %4
  store ptr %66, ptr %70, align 8, !tbaa !267
  %71 = add nuw nsw i64 %4, 1
  %72 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !280
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %3, label %75, !prof !672, !llvm.loop !673

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
define internal fastcc noundef zeroext i8 @too_high_register_pressure_p() unnamed_addr #15 !prof !351 !PGOFuncName !674 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !280
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %17, !prof !663

3:                                                ; preds = %0
  %4 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !267
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %17, label %9, !prof !675, !llvm.loop !676

9:                                                ; preds = %3, %6
  %10 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !280
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !280
  %16 = icmp sgt i32 %15, 10000
  br i1 %16, label %17, label %6, !prof !379

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
define internal fastcc void @expand_reg_info(i32 noundef %0) unnamed_addr #0 !prof !265 !PGOFuncName !677 {
  %2 = tail call i32 @max_reg_num() #26
  %3 = tail call zeroext i8 @resize_reg_info() #26
  %4 = icmp sgt i32 %2, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ %0, %1 ]
  tail call void @setup_reg_classes(i32 noundef %6, i32 noundef 13, i32 noundef 26, i32 noundef 13) #26
  %7 = add i32 %6, 1
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %9, label %5, !llvm.loop !678

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_preferred_alternate_classes_for_new_pseudos(i32 noundef %0) unnamed_addr #0 !prof !265 !PGOFuncName !679 {
  %2 = tail call i32 @max_reg_num() #26
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %36

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %32
  %7 = phi i64 [ %5, %4 ], [ %33, %32 ]
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !267
  %9 = getelementptr inbounds ptr, ptr %8, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !267
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load i32, ptr %11, align 8, !tbaa !304
  %13 = tail call i32 @reg_preferred_class(i32 noundef %12) #26
  %14 = tail call i32 @reg_alternate_class(i32 noundef %12) #26
  %15 = tail call i32 @reg_cover_class(i32 noundef %12) #26
  %16 = trunc i64 %7 to i32
  tail call void @setup_reg_classes(i32 noundef %16, i32 noundef %13, i32 noundef %14, i32 noundef %15) #26
  %17 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !280
  %18 = icmp sgt i32 %17, 2
  %19 = load ptr, ptr @ira_dump_file, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %32

22:                                               ; preds = %6
  %23 = tail call i32 @reg_preferred_class(i32 noundef %12) #26
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !267
  %27 = tail call i32 @reg_alternate_class(i32 noundef %12) #26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !267
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.45, i32 noundef %16, ptr noundef %26, ptr noundef %30) #27
  br label %32

32:                                               ; preds = %6, %22
  %33 = add nsw i64 %7, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %2, %34
  br i1 %35, label %36, label %6, !llvm.loop !680

36:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: optsize
declare void @ira_flattening(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_assignment_flags() unnamed_addr #0 !prof !265 !PGOFuncName !681 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %0, %29
  %6 = load ptr, ptr %1, align 8, !tbaa !267
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
  %16 = load i32, ptr %15, align 4, !tbaa !281
  %17 = icmp slt i32 %16, 0
  %18 = and i16 %14, 1
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !682
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !683
  %26 = icmp slt i32 %23, %25
  %27 = freeze i1 %26
  %28 = select i1 %27, i16 256, i16 0
  br label %29

29:                                               ; preds = %13, %21
  %30 = phi i16 [ %28, %21 ], [ 256, %13 ]
  %31 = and i16 %14, -257
  %32 = or disjoint i16 %31, %30
  store i16 %32, ptr %7, align 4
  %33 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %5, !llvm.loop !684

35:                                               ; preds = %29, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: optsize
declare void @ira_reassign_conflict_allocnos(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_reg_renumber() unnamed_addr #0 !prof !351 !PGOFuncName !685 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr @caller_save_needed, align 4, !tbaa !280
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %39, label %5, !prof !392

5:                                                ; preds = %0, %36
  %6 = load ptr, ptr %1, align 8, !tbaa !267
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13, !prof !686

11:                                               ; preds = %5
  %12 = or disjoint i16 %8, 256
  store i16 %12, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %5
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %6) #26
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !281
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !687
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #27
  %19 = tail call i32 @llvm.smax.i32(i32 %15, i32 -1)
  %20 = trunc i32 %19 to i16
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !267
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  store i16 %20, ptr %23, align 2, !tbaa !291
  %24 = icmp sgt i32 %15, -1
  br i1 %24, label %25, label %36, !prof !688

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !689
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29, !prof !690

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !691
  %32 = load i64, ptr @call_used_reg_set, align 8, !tbaa !303
  %33 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %15, i32 noundef %31, i64 noundef %32) #27, !range !322
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !692

35:                                               ; preds = %29
  store i32 1, ptr @caller_save_needed, align 4, !tbaa !280
  br label %36

36:                                               ; preds = %35, %29, %25, %13
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %5, !prof !693, !llvm.loop !694

39:                                               ; preds = %36, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @calculate_allocation_cost() unnamed_addr #7 !prof !351 !PGOFuncName !695 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr @ira_mem_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_reg_cost, align 4, !tbaa !280
  store i32 0, ptr @ira_overall_cost, align 4, !tbaa !280
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #27
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %43, label %5, !prof !392

5:                                                ; preds = %0, %36
  %6 = phi i32 [ %38, %36 ], [ 0, %0 ]
  %7 = phi i32 [ %37, %36 ], [ 0, %0 ]
  %8 = phi i32 [ %40, %36 ], [ 0, %0 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !267
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !281
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !696

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !682
  %16 = add nsw i32 %7, %15
  store i32 %16, ptr @ira_mem_cost, align 4, !tbaa !280
  br label %36

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !697
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21, !prof !698

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !699
  %24 = zext i32 %23 to i64
  %25 = zext nneg i32 %11 to i64
  %26 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %24, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !291
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i32, ptr %19, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !280
  %31 = add nsw i32 %6, %30
  store i32 %31, ptr @ira_reg_cost, align 4, !tbaa !280
  br label %36

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !683
  %35 = add nsw i32 %6, %34
  store i32 %35, ptr @ira_reg_cost, align 4, !tbaa !280
  br label %36

36:                                               ; preds = %21, %32, %13
  %37 = phi i32 [ %16, %13 ], [ %7, %21 ], [ %7, %32 ]
  %38 = phi i32 [ %6, %13 ], [ %31, %21 ], [ %35, %32 ]
  %39 = phi i32 [ %15, %13 ], [ %30, %21 ], [ %34, %32 ]
  %40 = add nsw i32 %8, %39
  store i32 %40, ptr @ira_overall_cost, align 4, !tbaa !280
  %41 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %5, !prof !693, !llvm.loop !700

43:                                               ; preds = %36, %0
  %44 = phi i32 [ 0, %0 ], [ %37, %36 ]
  %45 = phi i32 [ 0, %0 ], [ %38, %36 ]
  %46 = phi i32 [ 0, %0 ], [ %40, %36 ]
  %47 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !280
  %48 = icmp sgt i32 %47, 0
  %49 = load ptr, ptr @ira_dump_file, align 8
  %50 = icmp ne ptr %49, null
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %61, !prof !541

52:                                               ; preds = %43
  %53 = load i32, ptr @ira_load_cost, align 4, !tbaa !280
  %54 = load i32, ptr @ira_store_cost, align 4, !tbaa !280
  %55 = load i32, ptr @ira_shuffle_cost, align 4, !tbaa !280
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.46, i32 noundef %46, i32 noundef %45, i32 noundef %44, i32 noundef %53, i32 noundef %54, i32 noundef %55) #27
  %57 = load ptr, ptr @ira_dump_file, align 8, !tbaa !267
  %58 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !280
  %59 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !280
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
define internal fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !351 !PGOFuncName !701 {
  %2 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !267
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !352

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !702
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %8) #27
  %9 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !267, !nonnull !704, !noundef !704
  store i32 %0, ptr %9, align 8, !tbaa !702
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_rtx_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !409 !PGOFuncName !705 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !379
  ret ptr %4
}

; Function Attrs: optsize
declare void @regstat_free_n_sets_and_refs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @regstat_free_ri() local_unnamed_addr #2

; Function Attrs: optsize
declare void @allocate_initial_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_reg_equiv_init() unnamed_addr #0 !prof !351 !PGOFuncName !706 {
  %1 = tail call i32 @max_reg_num() #26
  %2 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !280
  %3 = icmp slt i32 %2, %1
  br i1 %3, label %4, label %112, !prof !540

4:                                                ; preds = %0
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @ggc_realloc_stat(ptr noundef %5, i64 noundef %7) #26
  store ptr %8, ptr @reg_equiv_init, align 8, !tbaa !267
  %9 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !280
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = sext i32 %9 to i64
  br label %17

13:                                               ; preds = %17
  store i32 %1, ptr @reg_equiv_init_size, align 4, !tbaa !280
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %1, %13 ], [ %9, %4 ]
  %16 = icmp sgt i32 %15, 53
  br i1 %16, label %23, label %112

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %12, %11 ], [ %20, %17 ]
  %19 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %20 = add nsw i64 %18, 1
  %21 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr null, ptr %21, align 8, !tbaa !267
  %22 = icmp eq i64 %20, %6
  br i1 %22, label %13, label %17, !llvm.loop !707

23:                                               ; preds = %14, %106
  %24 = phi i32 [ %107, %106 ], [ %15, %14 ]
  %25 = phi i64 [ %109, %106 ], [ 53, %14 ]
  %26 = phi i32 [ %108, %106 ], [ undef, %14 ]
  %27 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !267
  %30 = icmp eq ptr %29, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %23, %101
  %32 = phi i32 [ %88, %101 ], [ %26, %23 ]
  %33 = phi ptr [ %37, %101 ], [ %29, %23 ]
  %34 = phi ptr [ %102, %101 ], [ null, %23 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !304
  %38 = load ptr, ptr %35, align 8, !tbaa !304
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !304
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
  %54 = load ptr, ptr %53, align 8, !tbaa !304
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
  %64 = load i32, ptr %63, align 8, !tbaa !304
  %65 = zext i32 %64 to i64
  %66 = icmp eq i64 %25, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %58
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #27
  br label %87

69:                                               ; preds = %62, %51
  %70 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !304
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
  %81 = load i32, ptr %80, align 8, !tbaa !304
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
  store ptr %37, ptr %96, align 8, !tbaa !304
  %97 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %98 = sext i32 %88 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !267
  store ptr %100, ptr %36, align 8, !tbaa !304
  store ptr %33, ptr %99, align 8, !tbaa !267
  br label %101

101:                                              ; preds = %87, %91
  %102 = phi ptr [ %34, %91 ], [ %33, %87 ]
  %103 = icmp eq ptr %37, null
  br i1 %103, label %104, label %31, !llvm.loop !708

104:                                              ; preds = %101
  %105 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !280
  br label %106

106:                                              ; preds = %104, %23
  %107 = phi i32 [ %24, %23 ], [ %105, %104 ]
  %108 = phi i32 [ %26, %23 ], [ %88, %104 ]
  %109 = add nuw nsw i64 %25, 1
  %110 = sext i32 %107 to i64
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %23, label %112, !llvm.loop !709

112:                                              ; preds = %106, %14, %0
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_insn_chain() unnamed_addr #0 !prof !351 !PGOFuncName !710 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #28
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  %5 = load i32, ptr @max_regno, align 4, !tbaa !280
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #26
  %8 = load i32, ptr @max_regno, align 4, !tbaa !280
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #26
  %12 = load i64, ptr @eliminable_regset, align 8, !tbaa !303
  br label %13

13:                                               ; preds = %0, %23
  %14 = phi i64 [ %12, %0 ], [ %24, %23 ]
  %15 = phi i64 [ 0, %0 ], [ %25, %23 ]
  %16 = shl nuw nsw i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19, !prof !711

19:                                               ; preds = %13
  %20 = trunc i64 %15 to i32
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %20) #26
  %22 = load i64, ptr @eliminable_regset, align 8, !tbaa !303
  br label %23

23:                                               ; preds = %13, %19
  %24 = phi i64 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %13, !prof !712, !llvm.loop !713

27:                                               ; preds = %23
  store i32 53, ptr %1, align 4, !tbaa !280
  %28 = load ptr, ptr @cfun, align 8, !tbaa !267
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !385
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !391
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !630
  %35 = load ptr, ptr %30, align 8, !tbaa !387
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %42, !prof !392

37:                                               ; preds = %381, %27
  %38 = phi ptr [ null, %27 ], [ %383, %381 ]
  %39 = phi ptr [ @reload_insn_chain, %27 ], [ %384, %381 ]
  %40 = load i32, ptr @max_regno, align 4, !tbaa !280
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %405, label %392, !prof !392

42:                                               ; preds = %27, %381
  %43 = phi ptr [ %386, %381 ], [ %34, %27 ]
  %44 = phi ptr [ %384, %381 ], [ @reload_insn_chain, %27 ]
  %45 = phi ptr [ %383, %381 ], [ null, %27 ]
  %46 = phi ptr [ %382, %381 ], [ null, %27 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #28
  tail call void @bitmap_clear(ptr noundef %3) #26
  %47 = load i32, ptr @max_regno, align 4, !tbaa !280
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %49, i1 false)
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !411
  %52 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %51) #27
  %53 = getelementptr inbounds %struct.df_lr_bb_info, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !657
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %54, i32 noundef 0, ptr noundef nonnull %1) #27
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %56 = icmp eq i8 %55, 0
  %57 = load i32, ptr %1, align 4
  %58 = icmp ugt i32 %57, 52
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %68, label %60, !prof !714

60:                                               ; preds = %42, %60
  %61 = phi i32 [ %65, %60 ], [ %57, %42 ]
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %61) #26
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %64 = icmp eq i8 %63, 0
  %65 = load i32, ptr %1, align 4
  %66 = icmp ugt i32 %65, 52
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %60, !prof !715, !llvm.loop !716

68:                                               ; preds = %60, %42
  %69 = load i32, ptr %50, align 8, !tbaa !411
  %70 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %69) #27
  %71 = getelementptr inbounds %struct.df_lr_bb_info, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !657
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %72, i32 noundef 53, ptr noundef nonnull %1) #27
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75, !prof !558

75:                                               ; preds = %68, %81
  %76 = load i32, ptr %1, align 4, !tbaa !280
  %77 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %76) #27, !range !322
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79, !prof !717

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %76) #26
  br label %81

81:                                               ; preds = %75, %79
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #27, !range !322
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %75, !prof !718, !llvm.loop !719

84:                                               ; preds = %81, %68
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !304
  %87 = getelementptr inbounds %struct.rtl_bb_info, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !304
  %89 = icmp eq ptr %88, null
  br i1 %89, label %332, label %90, !prof !393

90:                                               ; preds = %84, %323
  %91 = phi ptr [ %328, %323 ], [ %88, %84 ]
  %92 = phi ptr [ %326, %323 ], [ %44, %84 ]
  %93 = phi ptr [ %325, %323 ], [ %45, %84 ]
  %94 = phi ptr [ %324, %323 ], [ %46, %84 ]
  %95 = load ptr, ptr %85, align 8, !tbaa !304
  %96 = load ptr, ptr %95, align 8, !tbaa !304
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !304
  %99 = icmp eq ptr %91, %98
  br i1 %99, label %339, label %100, !prof !396

100:                                              ; preds = %90
  %101 = load i32, ptr %91, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %103 [
    i16 13, label %323
    i16 11, label %323
  ], !prof !720

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !304
  %106 = tail call ptr @new_insn_chain() #26
  store ptr %94, ptr %106, align 8, !tbaa !721
  store ptr %106, ptr %92, align 8, !tbaa !267
  %107 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 1
  %108 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 3
  store ptr %91, ptr %108, align 8, !tbaa !723
  %109 = load i32, ptr %50, align 8, !tbaa !411
  %110 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 4
  store i32 %109, ptr %110, align 8, !tbaa !724
  %111 = load i32, ptr %91, align 8
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %112, -7
  %114 = icmp ult i32 %113, 4
  br i1 %114, label %115, label %225, !prof !725

115:                                              ; preds = %103
  %116 = load ptr, ptr @df, align 8, !tbaa !267
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !398
  %119 = zext i32 %105 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !267
  %122 = getelementptr inbounds %struct.df_insn_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !401
  %124 = load ptr, ptr %123, align 8, !tbaa !267
  %125 = icmp eq ptr %124, null
  br i1 %125, label %225, label %126, !prof !726

126:                                              ; preds = %115, %221
  %127 = phi ptr [ %223, %221 ], [ %124, %115 ]
  %128 = phi ptr [ %222, %221 ], [ %123, %115 ]
  %129 = getelementptr inbounds %struct.df_base_ref, ptr %127, i64 0, i32 6
  %130 = load i32, ptr %129, align 8, !tbaa !304
  %131 = load i32, ptr %127, align 8
  %132 = and i32 %131, 4194304
  %133 = icmp eq i32 %132, 0
  %134 = icmp ult i32 %130, 53
  br i1 %133, label %135, label %150, !prof !727

135:                                              ; preds = %126
  br i1 %134, label %136, label %144, !prof !728

136:                                              ; preds = %135
  %137 = zext nneg i32 %130 to i64
  %138 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !304
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %160, !prof !729

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %143 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %142, i32 noundef %130) #26
  br label %160

144:                                              ; preds = %135
  %145 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %130) #27, !range !322
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %151, label %147, !prof !730

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %149 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %148, i32 noundef %130) #26
  br label %151

150:                                              ; preds = %126
  br i1 %134, label %160, label %151, !prof !731

151:                                              ; preds = %144, %147, %150
  %152 = load ptr, ptr @reg_renumber, align 8, !tbaa !267
  %153 = zext i32 %130 to i64
  %154 = getelementptr inbounds i16, ptr %152, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !291
  %156 = icmp sgt i16 %155, -1
  br i1 %156, label %160, label %157, !prof !732

157:                                              ; preds = %151
  %158 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !304
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %221, label %160, !prof !733

160:                                              ; preds = %136, %141, %157, %151, %150
  %161 = load i32, ptr %127, align 8
  %162 = and i32 %161, 65536
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %221, !prof !734

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.df_base_ref, ptr %127, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !304
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 39
  br i1 %169, label %170, label %214, !prof !735

170:                                              ; preds = %164
  %171 = and i32 %161, 33554432
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %214

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load i32, ptr %174, align 8, !tbaa !304
  %176 = lshr i32 %167, 16
  %177 = and i32 %176, 255
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !304
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
  %191 = select i1 %187, i32 %188, i32 %175
  %192 = select i1 %187, i32 %190, i32 %182
  %193 = zext i32 %130 to i64
  %194 = getelementptr inbounds i32, ptr %11, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !280
  %196 = tail call i32 @llvm.smin.i32(i32 %192, i32 %195)
  %197 = icmp ult i32 %191, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %173
  %199 = getelementptr inbounds ptr, ptr %7, i64 %193
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi i32 [ %191, %198 ], [ %203, %200 ]
  %202 = load ptr, ptr %199, align 8, !tbaa !267
  tail call fastcc void @RESET_BIT(ptr noundef %202, i32 noundef %201) #27
  %203 = add nuw i32 %201, 1
  %204 = icmp eq i32 %203, %196
  br i1 %204, label %205, label %200, !llvm.loop !736

205:                                              ; preds = %200, %173
  %206 = getelementptr inbounds ptr, ptr %7, i64 %193
  %207 = load ptr, ptr %206, align 8, !tbaa !267
  %208 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %207) #26
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  store i32 0, ptr %194, align 4, !tbaa !280
  %211 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %130) #26
  br label %221

212:                                              ; preds = %205
  %213 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %130) #26
  br label %221

214:                                              ; preds = %170, %164
  %215 = and i32 %161, 1048576
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221, !prof !734

217:                                              ; preds = %214
  %218 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %130) #26
  %219 = zext i32 %130 to i64
  %220 = getelementptr inbounds i32, ptr %11, i64 %219
  store i32 0, ptr %220, align 4, !tbaa !280
  br label %221

221:                                              ; preds = %217, %214, %212, %210, %160, %157
  %222 = getelementptr inbounds ptr, ptr %128, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !267
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %126, !prof !737, !llvm.loop !738

225:                                              ; preds = %221, %115, %103
  %226 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %3, ptr noundef %4) #26
  %227 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %227, ptr noundef %3) #26
  %228 = load i32, ptr %91, align 8
  %229 = and i32 %228, 65535
  %230 = add nsw i32 %229, -7
  %231 = icmp ult i32 %230, 4
  br i1 %231, label %232, label %323, !prof !725

232:                                              ; preds = %225
  %233 = load ptr, ptr @df, align 8, !tbaa !267
  %234 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 10
  %235 = load ptr, ptr %234, align 8, !tbaa !398
  %236 = zext i32 %105 to i64
  %237 = getelementptr inbounds ptr, ptr %235, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !267
  %239 = getelementptr inbounds %struct.df_insn_info, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !739
  %241 = load ptr, ptr %240, align 8, !tbaa !267
  %242 = icmp eq ptr %241, null
  br i1 %242, label %323, label %243, !prof !740

243:                                              ; preds = %232, %319
  %244 = phi ptr [ %321, %319 ], [ %241, %232 ]
  %245 = phi ptr [ %320, %319 ], [ %240, %232 ]
  %246 = getelementptr inbounds %struct.df_base_ref, ptr %244, i64 0, i32 6
  %247 = load i32, ptr %246, align 8, !tbaa !304
  %248 = getelementptr inbounds %struct.df_base_ref, ptr %244, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !304
  %250 = load i32, ptr %244, align 8
  %251 = and i32 %250, 2097152
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253, !prof !741

253:                                              ; preds = %243
  %254 = and i32 %250, 167772160
  %255 = icmp eq i32 %254, 134217728
  br i1 %255, label %319, label %256

256:                                              ; preds = %253, %243
  %257 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %247) #26
  %258 = icmp eq i32 %257, 0
  %259 = icmp ult i32 %247, 53
  br i1 %258, label %260, label %275, !prof !742

260:                                              ; preds = %256
  br i1 %259, label %261, label %269, !prof !743

261:                                              ; preds = %260
  %262 = zext nneg i32 %247 to i64
  %263 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !304
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %279, !prof !744

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %268 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %267, i32 noundef %247) #26
  br label %279

269:                                              ; preds = %260
  %270 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %247) #27, !range !322
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %276, label %272, !prof !745

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.insn_chain, ptr %106, i64 0, i32 7
  %274 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %273, i32 noundef %247) #26
  br label %276

275:                                              ; preds = %256
  br i1 %259, label %279, label %276, !prof !746

276:                                              ; preds = %269, %272, %275
  %277 = tail call fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %247) #27, !range !322
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %319, label %279, !prof !747

279:                                              ; preds = %261, %266, %276, %275
  %280 = load i32, ptr %249, align 8
  %281 = and i32 %280, 65535
  %282 = icmp eq i32 %281, 39
  br i1 %282, label %283, label %314, !prof !748

283:                                              ; preds = %279
  %284 = load i32, ptr %244, align 8
  %285 = and i32 %284, 50331648
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %314, !prof !749

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1, i32 0, i32 0, i64 1
  %289 = load i32, ptr %288, align 8, !tbaa !304
  %290 = lshr i32 %280, 16
  %291 = and i32 %290, 255
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !304
  %295 = zext i8 %294 to i32
  %296 = add i32 %289, %295
  %297 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %247) #26
  %298 = trunc i32 %297 to i8
  tail call fastcc void @init_live_subregs(i8 noundef zeroext %298, ptr noundef %7, ptr noundef %11, i32 noundef %247, ptr noundef nonnull %249) #27
  %299 = zext i32 %247 to i64
  %300 = getelementptr inbounds i32, ptr %11, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !280
  %302 = icmp sgt i32 %296, %301
  br i1 %302, label %303, label %304, !prof !750

303:                                              ; preds = %287
  br label %304

304:                                              ; preds = %303, %287
  %305 = phi i32 [ %301, %303 ], [ %296, %287 ]
  %306 = icmp ult i32 %289, %305
  br i1 %306, label %307, label %317, !prof !751

307:                                              ; preds = %304
  %308 = getelementptr inbounds ptr, ptr %7, i64 %299
  br label %309

309:                                              ; preds = %307, %309
  %310 = phi i32 [ %289, %307 ], [ %312, %309 ]
  %311 = load ptr, ptr %308, align 8, !tbaa !267
  tail call fastcc void @SET_BIT(ptr noundef %311, i32 noundef %310) #27
  %312 = add nuw i32 %310, 1
  %313 = icmp eq i32 %312, %305
  br i1 %313, label %317, label %309, !prof !751, !llvm.loop !752

314:                                              ; preds = %283, %279
  %315 = zext i32 %247 to i64
  %316 = getelementptr inbounds i32, ptr %11, i64 %315
  store i32 0, ptr %316, align 4, !tbaa !280
  br label %317

317:                                              ; preds = %309, %304, %314
  %318 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %247) #26
  br label %319

319:                                              ; preds = %276, %317, %253
  %320 = getelementptr inbounds ptr, ptr %245, i64 1
  %321 = load ptr, ptr %320, align 8, !tbaa !267
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %243, !prof !753, !llvm.loop !754

323:                                              ; preds = %319, %232, %225, %100, %100
  %324 = phi ptr [ %94, %100 ], [ %94, %100 ], [ %106, %225 ], [ %106, %232 ], [ %106, %319 ]
  %325 = phi ptr [ %93, %100 ], [ %93, %100 ], [ %106, %225 ], [ %106, %232 ], [ %106, %319 ]
  %326 = phi ptr [ %92, %100 ], [ %92, %100 ], [ %107, %225 ], [ %107, %232 ], [ %107, %319 ]
  %327 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !304
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %90, !prof !405, !llvm.loop !755

330:                                              ; preds = %323
  %331 = load ptr, ptr %85, align 8, !tbaa !304
  br label %332

332:                                              ; preds = %330, %84
  %333 = phi ptr [ %331, %330 ], [ %86, %84 ]
  %334 = phi ptr [ %324, %330 ], [ %46, %84 ]
  %335 = phi ptr [ %325, %330 ], [ %45, %84 ]
  %336 = phi ptr [ %326, %330 ], [ %44, %84 ]
  %337 = load ptr, ptr %333, align 8, !tbaa !304
  %338 = icmp eq ptr %337, null
  br i1 %338, label %381, label %339, !prof !756

339:                                              ; preds = %90, %332
  %340 = phi ptr [ %336, %332 ], [ %92, %90 ]
  %341 = phi ptr [ %335, %332 ], [ %93, %90 ]
  %342 = phi ptr [ %334, %332 ], [ %94, %90 ]
  %343 = phi ptr [ %337, %332 ], [ %96, %90 ]
  br label %344

344:                                              ; preds = %339, %352
  %345 = phi ptr [ %354, %352 ], [ %343, %339 ]
  %346 = load i32, ptr %345, align 8
  %347 = trunc i32 %346 to i16
  switch i16 %347, label %348 [
    i16 11, label %352
    i16 13, label %352
  ], !prof !757

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1, i32 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !304
  %351 = icmp eq ptr %350, %43
  br i1 %351, label %352, label %356, !prof !758

352:                                              ; preds = %344, %344, %348
  %353 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1, i32 0, i32 0, i64 1
  %354 = load ptr, ptr %353, align 8, !tbaa !304
  %355 = icmp eq ptr %354, null
  br i1 %355, label %381, label %344, !prof !759, !llvm.loop !760

356:                                              ; preds = %348, %374
  %357 = phi ptr [ %377, %374 ], [ %340, %348 ]
  %358 = phi ptr [ %376, %374 ], [ %341, %348 ]
  %359 = phi ptr [ %375, %374 ], [ %342, %348 ]
  %360 = phi ptr [ %379, %374 ], [ %345, %348 ]
  %361 = load i32, ptr %360, align 8
  %362 = trunc i32 %361 to i16
  switch i16 %362, label %363 [
    i16 13, label %374
    i16 11, label %374
  ], !prof !761

363:                                              ; preds = %356
  %364 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1, i32 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !304
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %381, !prof !762

367:                                              ; preds = %363
  %368 = tail call ptr @new_insn_chain() #26
  store ptr %359, ptr %368, align 8, !tbaa !721
  store ptr %368, ptr %357, align 8, !tbaa !267
  %369 = getelementptr inbounds %struct.insn_chain, ptr %368, i64 0, i32 1
  %370 = load i32, ptr %50, align 8, !tbaa !411
  %371 = getelementptr inbounds %struct.insn_chain, ptr %368, i64 0, i32 4
  store i32 %370, ptr %371, align 8, !tbaa !724
  %372 = getelementptr inbounds %struct.insn_chain, ptr %368, i64 0, i32 3
  store ptr %360, ptr %372, align 8, !tbaa !723
  %373 = getelementptr inbounds %struct.insn_chain, ptr %368, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %373, ptr noundef %3) #26
  br label %374

374:                                              ; preds = %356, %356, %367
  %375 = phi ptr [ %359, %356 ], [ %368, %367 ], [ %359, %356 ]
  %376 = phi ptr [ %358, %356 ], [ %368, %367 ], [ %358, %356 ]
  %377 = phi ptr [ %357, %356 ], [ %369, %367 ], [ %357, %356 ]
  %378 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1, i32 0, i32 0, i64 1
  %379 = load ptr, ptr %378, align 8, !tbaa !304
  %380 = icmp eq ptr %379, null
  br i1 %380, label %381, label %356, !prof !763, !llvm.loop !764

381:                                              ; preds = %352, %374, %363, %332
  %382 = phi ptr [ %334, %332 ], [ %359, %363 ], [ %375, %374 ], [ %342, %352 ]
  %383 = phi ptr [ %335, %332 ], [ %358, %363 ], [ %376, %374 ], [ %341, %352 ]
  %384 = phi ptr [ %336, %332 ], [ %357, %363 ], [ %377, %374 ], [ %340, %352 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #28
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 5
  %386 = load ptr, ptr %385, align 8, !tbaa !630
  %387 = load ptr, ptr @cfun, align 8, !tbaa !267
  %388 = getelementptr inbounds %struct.function, ptr %387, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !385
  %390 = load ptr, ptr %389, align 8, !tbaa !387
  %391 = icmp eq ptr %386, %390
  br i1 %391, label %37, label %42, !prof !407, !llvm.loop !765

392:                                              ; preds = %37, %400
  %393 = phi i32 [ %401, %400 ], [ %40, %37 ]
  %394 = phi i64 [ %402, %400 ], [ 0, %37 ]
  %395 = getelementptr inbounds ptr, ptr %7, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !267
  %397 = icmp eq ptr %396, null
  br i1 %397, label %400, label %398, !prof !766

398:                                              ; preds = %392
  tail call void @free(ptr noundef nonnull %396) #27
  %399 = load i32, ptr @max_regno, align 4, !tbaa !280
  br label %400

400:                                              ; preds = %392, %398
  %401 = phi i32 [ %393, %392 ], [ %399, %398 ]
  %402 = add nuw nsw i64 %394, 1
  %403 = zext i32 %401 to i64
  %404 = icmp ult i64 %402, %403
  br i1 %404, label %392, label %405, !prof !767, !llvm.loop !768

405:                                              ; preds = %400, %37
  store ptr %38, ptr @reload_insn_chain, align 8, !tbaa !267
  store ptr null, ptr %39, align 8, !tbaa !267
  tail call void @free(ptr noundef %7) #27
  tail call void @free(ptr noundef %11) #27
  tail call void @bitmap_obstack_free(ptr noundef %3) #26
  tail call void @bitmap_obstack_free(ptr noundef %4) #26
  %406 = load ptr, ptr @dump_file, align 8, !tbaa !267
  %407 = icmp eq ptr %406, null
  br i1 %407, label %409, label %408, !prof !352

408:                                              ; preds = %405
  tail call fastcc void @print_insn_chains(ptr noundef nonnull %406) #27
  br label %409

409:                                              ; preds = %408, %405
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !769 !PGOFuncName !770 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !304
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !771 !PGOFuncName !772 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !304
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !773

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #26
  store i32 %8, ptr %2, align 8, !tbaa !304
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
define internal void @no_equiv(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !774 !PGOFuncName !775 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %32, !prof !776

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %9 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !581
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %32, label %15, !prof !777

15:                                               ; preds = %7
  store ptr %13, ptr %11, align 8, !tbaa !581
  %16 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10
  store ptr null, ptr %16, align 8, !tbaa !594
  %17 = getelementptr inbounds %struct.equivalence, ptr %9, i64 %10, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !575
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32, !prof !778

20:                                               ; preds = %15
  %21 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !267
  %22 = getelementptr inbounds ptr, ptr %21, i64 %10
  store ptr null, ptr %22, align 8, !tbaa !267
  %23 = icmp eq ptr %12, null
  br i1 %23, label %32, label %24, !prof !779

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %30, %24 ], [ %12, %20 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !304
  %28 = tail call ptr @find_reg_note(ptr noundef %27, i32 noundef 3, ptr noundef null) #26
  tail call void @remove_note(ptr noundef %27, ptr noundef %28) #26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !304
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !prof !780, !llvm.loop !781

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
define internal fastcc noundef i32 @validate_equiv_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !782 !PGOFuncName !783 {
  store ptr %2, ptr @equiv_mem, align 8, !tbaa !267
  store i1 false, ptr @equiv_mem_modified, align 4
  %4 = tail call i32 @side_effects_p(ptr noundef %2) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %62, !prof !784

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = load i1, ptr @equiv_mem_modified, align 4
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %62, label %10, !prof !393

10:                                               ; preds = %6, %56
  %11 = phi ptr [ %58, %56 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %56, !prof !785

16:                                               ; preds = %10
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %1) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %62, !prof !786

19:                                               ; preds = %16
  %20 = load i32, ptr %11, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %30, !prof !787

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
  %32 = load ptr, ptr %31, align 8, !tbaa !304
  tail call void @note_stores(ptr noundef %32, ptr noundef nonnull @validate_equiv_mem_from_store, ptr noundef null) #26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !304
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36, !prof !788

36:                                               ; preds = %30, %52
  %37 = phi ptr [ %54, %52 ], [ %34, %30 ]
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %52, !prof !789

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !304
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %52, !prof !790

49:                                               ; preds = %43
  %50 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %45, ptr noundef %2) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62, !prof !791

52:                                               ; preds = %36, %43, %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !304
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %36, !prof !792, !llvm.loop !793

56:                                               ; preds = %52, %30, %10
  %57 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !304
  %59 = icmp eq ptr %58, null
  %60 = load i1, ptr @equiv_mem_modified, align 4
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %10, !prof !794, !llvm.loop !795

62:                                               ; preds = %16, %23, %56, %49, %6, %3
  %63 = phi i32 [ 0, %3 ], [ 0, %6 ], [ 0, %49 ], [ 1, %16 ], [ 0, %23 ], [ 0, %56 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #11 !prof !796 !PGOFuncName !797 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !267
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !642
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_init_varies_p(ptr noundef %0) unnamed_addr #0 !prof !265 !PGOFuncName !798 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !304
  %11 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %10) #27
  %12 = icmp ne i32 %11, 0
  br label %66

13:                                               ; preds = %1
  %14 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.equivalence, ptr %14, i64 %16, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !614
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
  %29 = load ptr, ptr %28, align 8, !tbaa !267
  %30 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !304
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
  %40 = load i8, ptr %39, align 1, !tbaa !304
  switch i8 %40, label %64 [
    i8 101, label %46
    i8 69, label %41
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !304
  %44 = load i32, ptr %43, align 8, !tbaa !567
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %57, label %64

46:                                               ; preds = %36
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !304
  %49 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %48) #27
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %66

51:                                               ; preds = %57
  %52 = add nuw nsw i64 %58, 1
  %53 = load ptr, ptr %42, align 8, !tbaa !304
  %54 = load i32, ptr %53, align 8, !tbaa !567
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %64, !llvm.loop !799

57:                                               ; preds = %41, %51
  %58 = phi i64 [ %52, %51 ], [ 0, %41 ]
  %59 = phi ptr [ %53, %51 ], [ %43, %41 ]
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !267
  %62 = tail call fastcc i32 @equiv_init_varies_p(ptr noundef %61) #27
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %51, label %66

64:                                               ; preds = %51, %41, %36, %46
  %65 = icmp sgt i64 %37, 1
  br i1 %65, label %36, label %66, !llvm.loop !800

66:                                               ; preds = %46, %64, %57, %26, %23, %13, %20, %1, %1, %1, %1, %1, %1, %1, %5, %8
  %67 = phi i1 [ true, %5 ], [ %12, %8 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %13 ], [ %22, %20 ], [ true, %23 ], [ false, %26 ], [ true, %57 ], [ true, %46 ], [ false, %64 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_init_movable_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !801 !PGOFuncName !802 {
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
  ], !prof !803

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !304
  br label %3

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #27
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %13, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !607
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %16, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !607
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %24, label %20, !prof !804

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.equivalence, ptr %11, i64 %13, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !614
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %75, !prof !805

24:                                               ; preds = %20, %10
  %25 = load ptr, ptr @reg_info_p, align 8, !tbaa !267
  %26 = getelementptr inbounds %struct.reg_info_t, ptr %25, i64 %13, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !599
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %75, !prof !805

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
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !304
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %44, !prof !806

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %46 = zext i8 %42 to i64
  br label %47

47:                                               ; preds = %44, %73
  %48 = phi i64 [ %46, %44 ], [ %49, %73 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !304
  switch i8 %51, label %73 [
    i8 101, label %52
    i8 69, label %57
  ], !prof !807

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !304
  %55 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %54, i32 noundef %1) #27, !range !542
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %73, !prof !808

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !304
  %60 = load i32, ptr %59, align 8, !tbaa !567
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %57
  %63 = phi i64 [ %67, %66 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = load ptr, ptr %58, align 8, !tbaa !304
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !267
  %71 = tail call fastcc i32 @equiv_init_movable_p(ptr noundef %70, i32 noundef %1) #27, !range !542
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %62, !llvm.loop !809

73:                                               ; preds = %62, %47, %52
  %74 = icmp sgt i64 %48, 1
  br i1 %74, label %47, label %75, !prof !810, !llvm.loop !811

75:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %52, %73, %66, %36, %33, %20, %29, %24
  %76 = phi i32 [ 1, %20 ], [ 0, %24 ], [ %32, %29 ], [ 0, %33 ], [ 1, %36 ], [ 0, %66 ], [ 0, %52 ], [ 1, %73 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ]
  ret i32 %76
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @contains_replace_regs(ptr nocapture noundef readonly %0) unnamed_addr #17 !prof !812 !PGOFuncName !813 {
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
  ], !prof !814

4:                                                ; preds = %1
  %5 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.equivalence, ptr %5, i64 %7, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !614
  %10 = sext i8 %9 to i32
  br label %49

11:                                               ; preds = %1
  %12 = and i32 %2, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !267
  %16 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !304
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %49, label %19, !prof !393

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %19, %47
  %23 = phi i64 [ %21, %19 ], [ %24, %47 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !304
  switch i8 %26, label %47 [
    i8 101, label %27
    i8 69, label %32
  ], !prof !815

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !304
  %30 = tail call fastcc i32 @contains_replace_regs(ptr noundef %29) #27, !range !625
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %49, !prof !816

32:                                               ; preds = %22
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %34 = load ptr, ptr %33, align 8, !tbaa !304
  %35 = load i32, ptr %34, align 8, !tbaa !567
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
  %44 = load ptr, ptr %43, align 8, !tbaa !267
  %45 = tail call fastcc i32 @contains_replace_regs(ptr noundef %44) #27, !range !625
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %49, !llvm.loop !817

47:                                               ; preds = %37, %22, %27
  %48 = icmp sgt i64 %23, 1
  br i1 %48, label %22, label %49, !prof !818, !llvm.loop !819

49:                                               ; preds = %27, %47, %41, %11, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %50 = phi i32 [ %10, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %11 ], [ 1, %41 ], [ 1, %27 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @memref_used_between_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !820 !PGOFuncName !821 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !304
  %7 = load ptr, ptr %4, align 8, !tbaa !304
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %32, label %9, !prof !393

9:                                                ; preds = %3, %27
  %10 = phi ptr [ %28, %27 ], [ %7, %3 ]
  %11 = phi ptr [ %30, %27 ], [ %6, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -11
  %15 = icmp ult i32 %14, -3
  br i1 %15, label %27, label %16, !prof !822

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !304
  %19 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %18) #27, !range !542
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32, !prof !626

21:                                               ; preds = %16
  %22 = load i32, ptr %11, align 8
  %23 = and i32 %22, 67174399
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %32, label %25, !prof !823

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 8, !tbaa !304
  br label %27

27:                                               ; preds = %25, %9
  %28 = phi ptr [ %26, %25 ], [ %10, %9 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !304
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %32, label %9, !prof !343, !llvm.loop !824

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
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #11 !prof !825 !PGOFuncName !826 {
  %2 = load ptr, ptr @df, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !419
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !827

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !422
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @simplify_replace_fn_rtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @adjust_cleared_regs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !265 !PGOFuncName !828 {
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
  %12 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #27
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.equivalence, ptr %12, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !606
  %17 = load ptr, ptr %16, align 8, !tbaa !267
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
define internal void @validate_equiv_mem_from_store(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !829 !PGOFuncName !830 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %13, !prof !831

7:                                                ; preds = %3
  %8 = load ptr, ptr @equiv_mem, align 8, !tbaa !267
  %9 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %0, ptr noundef %8) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21, !prof !831

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ %4, %3 ]
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %22, !prof !787

17:                                               ; preds = %13
  %18 = load ptr, ptr @equiv_mem, align 8, !tbaa !267
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
define internal fastcc noundef i32 @memref_referenced_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !832 !PGOFuncName !833 {
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
  ], !prof !834

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_equiv, align 8, !tbaa !267
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #27
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.equivalence, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !594
  %13 = icmp eq ptr %12, null
  br i1 %13, label %75, label %34, !prof !835

14:                                               ; preds = %3
  %15 = tail call i32 @true_dependence(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @rtx_varies_p) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %75, !prof !626

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !304
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %28, !prof !626

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !304
  %26 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %25) #27, !range !542
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %75, !prof !626

28:                                               ; preds = %17
  %29 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef nonnull %19) #27, !range !542
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !304
  br label %34

34:                                               ; preds = %31, %7
  %35 = phi ptr [ %33, %31 ], [ %12, %7 ]
  br label %3

36:                                               ; preds = %3, %14
  %37 = and i32 %5, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !304
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %44, !prof !836

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %46 = zext i8 %42 to i64
  br label %47

47:                                               ; preds = %44, %73
  %48 = phi i64 [ %46, %44 ], [ %49, %73 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !304
  switch i8 %51, label %73 [
    i8 101, label %52
    i8 69, label %57
  ], !prof !837

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !304
  %55 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %54) #27, !range !542
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %75, !prof !838

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !304
  %60 = load i32, ptr %59, align 8, !tbaa !567
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %66, %57
  %63 = phi i64 [ %67, %66 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = load ptr, ptr %58, align 8, !tbaa !304
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !267
  %71 = tail call fastcc i32 @memref_referenced_p(ptr noundef %0, ptr noundef %70) #27, !range !542
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %62, label %75, !llvm.loop !839

73:                                               ; preds = %62, %47, %52
  %74 = icmp sgt i64 %48, 1
  br i1 %74, label %47, label %75, !prof !840, !llvm.loop !841

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
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #18 !prof !409 !PGOFuncName !842 {
  store i32 0, ptr %0, align 4, !tbaa !843
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #19 !prof !845 !PGOFuncName !846 {
  %3 = load i32, ptr %0, align 4, !tbaa !843
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !280
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !380

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !267
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !847

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !267
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !843
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !848, !llvm.loop !849

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #20 !prof !850 !PGOFuncName !851 {
  %4 = zext nneg i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !304
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %12, %3
  %10 = phi i64 [ %14, %12 ], [ %8, %3 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19, !prof !852

12:                                               ; preds = %9
  %13 = sext i32 %0 to i64
  %14 = add nsw i64 %10, -1
  %15 = add nuw nsw i64 %14, %13
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %9, label %19, !prof !853, !llvm.loop !854

19:                                               ; preds = %9, %12
  %20 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !351 !PGOFuncName !855 {
  %2 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !267
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2, i32 noundef %0) #27, !range !542
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !352

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #26
  store ptr %6, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !267
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #16 !prof !351 !PGOFuncName !856 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !352

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !857
  %7 = load i32, ptr %0, align 8, !tbaa !702
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #21 !prof !858 !PGOFuncName !859 {
  %5 = load ptr, ptr %1, align 8, !tbaa !650
  store ptr %5, ptr %0, align 8, !tbaa !860
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !862
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !414

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !860
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !863
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !865

14:                                               ; preds = %9
  %15 = shl i32 %12, 7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %2, %9 ]
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !866
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !303
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %25 = and i32 %17, 63
  %26 = zext nneg i32 %25 to i64
  %27 = lshr i64 %23, %26
  store i64 %27, ptr %24, align 8, !tbaa !867
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add i32 %17, %29
  store i32 %30, ptr %3, align 4, !tbaa !280
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #19 !prof !868 !PGOFuncName !869 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !867
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !870

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !871

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !280
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !872, !llvm.loop !873

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !280
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !280
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !866
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !860
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !866
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !874

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !303
  store i64 %35, ptr %3, align 8, !tbaa !867
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !875

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !280
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !280
  %40 = load i32, ptr %23, align 8, !tbaa !866
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !866
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !876, !llvm.loop !877

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !878
  store ptr %44, ptr %0, align 8, !tbaa !860
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !879

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !863
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !280
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !867
  store i32 %16, ptr %1, align 4, !tbaa !280
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #22 !prof !880 !PGOFuncName !881 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !867
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !867
  %6 = load i32, ptr %1, align 4, !tbaa !280
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @pseudo_for_reload_consideration_p(i32 noundef %0) unnamed_addr #11 !prof !882 !PGOFuncName !883 {
  %2 = load ptr, ptr @reg_renumber, align 8, !tbaa !267
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !291
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %14, label %7, !prof !884

7:                                                ; preds = %1
  %8 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !304
  %9 = icmp ne i8 %8, 0
  %10 = load i32, ptr @flag_ira_share_spill_slots, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !prof !885
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %7 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @new_insn_chain() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_live_subregs(i8 noundef zeroext %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !886 !PGOFuncName !887 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %7) #27
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !267
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !304
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %21, label %22, !prof !750

21:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 2817, ptr noundef nonnull @.str.41) #26
  br label %22

22:                                               ; preds = %5, %21
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !280
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39, !prof !749

27:                                               ; preds = %22
  %28 = getelementptr inbounds ptr, ptr %1, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !267
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !prof !749

31:                                               ; preds = %27
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %19) #26
  store ptr %32, ptr %28, align 8, !tbaa !267
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = icmp eq i8 %0, 0
  br i1 %35, label %37, label %36, !prof !749

36:                                               ; preds = %33
  tail call void @sbitmap_ones(ptr noundef %34) #26
  br label %38

37:                                               ; preds = %33
  tail call void @sbitmap_zero(ptr noundef %34) #26
  br label %38

38:                                               ; preds = %37, %36
  store i32 %19, ptr %24, align 4, !tbaa !280
  br label %39

39:                                               ; preds = %22, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 !prof !265 !PGOFuncName !888 {
  %3 = load ptr, ptr %0, align 8, !tbaa !889
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
  %15 = load i64, ptr %14, align 8, !tbaa !303
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !304
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !304
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !303
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !303
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 !prof !886 !PGOFuncName !891 {
  %3 = load ptr, ptr %0, align 8, !tbaa !889
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !749

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
  %15 = load i64, ptr %14, align 8, !tbaa !303
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !304
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !304
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !303
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !303
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_insn_chains(ptr noundef %0) unnamed_addr #0 !prof !265 !PGOFuncName !892 {
  %2 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !267
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @print_insn_chain(ptr noundef %0, ptr noundef nonnull %5) #27
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !893

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
define internal fastcc void @print_insn_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !265 !PGOFuncName !894 {
  %3 = getelementptr inbounds %struct.insn_chain, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !723
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !304
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!263}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!35 = !{ptr @ira_allocate, ptr @xmalloc, i64 214421}
!36 = !{ptr @ira_free, ptr @free, i64 214421}
!37 = !{ptr @ira_allocate_bitmap, ptr @bitmap_obstack_alloc_stat, i64 418}
!38 = !{ptr @ira_init_register_move_cost, ptr @init_move_cost, i64 1}
!39 = !{ptr @ira_init_register_move_cost, ptr @xmalloc, i64 4}
!40 = !{ptr @ira_init_once, ptr @ira_init_costs_once, i64 1}
!41 = !{ptr @ira_init, ptr @free_register_move_costs, i64 1}
!42 = !{ptr @ira_init, ptr @setup_reg_mode_hard_regset, i64 1}
!43 = !{ptr @ira_init, ptr @setup_alloc_regs, i64 1}
!44 = !{ptr @ira_init, ptr @setup_class_subset_and_memory_move_costs, i64 1}
!45 = !{ptr @ira_init, ptr @find_reg_class_closure, i64 1}
!46 = !{ptr @ira_init, ptr @setup_hard_regno_cover_class, i64 1}
!47 = !{ptr @ira_init, ptr @setup_reg_class_nregs, i64 1}
!48 = !{ptr @ira_init, ptr @setup_prohibited_class_mode_regs, i64 1}
!49 = !{ptr @ira_init, ptr @ira_init_costs, i64 1}
!50 = !{ptr @free_register_move_costs, ptr @free, i64 4}
!51 = !{ptr @setup_alloc_regs, ptr @setup_class_hard_regs, i64 1}
!52 = !{ptr @setup_alloc_regs, ptr @setup_available_class_regs, i64 1}
!53 = !{ptr @setup_class_subset_and_memory_move_costs, ptr @ix86_memory_move_cost, i64 2184}
!54 = !{ptr @setup_class_subset_and_memory_move_costs, ptr @hard_reg_set_subset_p, i64 365}
!55 = !{ptr @find_reg_class_closure, ptr @setup_reg_subclasses, i64 1}
!56 = !{ptr @find_reg_class_closure, ptr @setup_cover_and_important_classes, i64 1}
!57 = !{ptr @find_reg_class_closure, ptr @setup_class_translate, i64 1}
!58 = !{ptr @find_reg_class_closure, ptr @reorder_important_classes, i64 1}
!59 = !{ptr @find_reg_class_closure, ptr @setup_reg_class_relations, i64 1}
!60 = !{ptr @setup_reg_class_nregs, ptr @reg_classes_intersect_p, i64 1175}
!61 = !{ptr @setup_prohibited_class_mode_regs, ptr @ix86_hard_regno_mode_ok, i64 610}
!62 = !{ptr @ira_finish_once, ptr @ira_finish_costs_once, i64 1}
!63 = !{ptr @ira_finish_once, ptr @free_register_move_costs, i64 1}
!64 = !{ptr @ira_setup_eliminable_regset, ptr @compute_regs_asm_clobbered, i64 38}
!65 = !{ptr @ira_setup_eliminable_regset, ptr @error, i64 1}
!66 = !{ptr @compute_regs_asm_clobbered, ptr @insn_contains_asm, i64 863787}
!67 = !{ptr @mark_elimination, ptr @df_lr_get_bb_info, i64 307266}
!68 = !{ptr @mark_elimination, ptr @bitmap_bit_p, i64 307266}
!69 = !{ptr @mark_elimination, ptr @bitmap_clear_bit, i64 307265}
!70 = !{ptr @mark_elimination, ptr @bitmap_set_bit, i64 307265}
!71 = !{ptr @rest_of_handle_ira, ptr @ira, i64 38}
!72 = !{ptr @setup_reg_subclasses, ptr @hard_reg_set_empty_p, i64 13}
!73 = !{ptr @setup_reg_subclasses, ptr @hard_reg_set_subset_p, i64 278}
!74 = !{ptr @setup_cover_and_important_classes, ptr @regclass_for_constraint, i64 108}
!75 = !{ptr @setup_cover_and_important_classes, ptr @hard_reg_set_equal_p, i64 56}
!76 = !{ptr @setup_cover_and_important_classes, ptr @reg_classes_intersect_p, i64 3}
!77 = !{ptr @setup_cover_and_important_classes, ptr @hard_reg_set_empty_p, i64 16}
!78 = !{ptr @setup_cover_and_important_classes, ptr @hard_reg_set_subset_p, i64 18}
!79 = !{ptr @setup_class_translate, ptr @hard_reg_set_equal_p, i64 213}
!80 = !{ptr @setup_class_translate, ptr @hard_reg_set_empty_p, i64 6}
!81 = !{ptr @reorder_important_classes, ptr @spec_qsort, i64 1}
!82 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_empty_p, i64 419}
!83 = !{ptr @setup_reg_class_relations, ptr @reg_class_subset_p, i64 2}
!84 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_intersect_p, i64 357}
!85 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_subset_p, i64 14853}
!86 = !{ptr @setup_reg_class_relations, ptr @hard_reg_set_equal_p, i64 885}
!87 = !{ptr @insn_contains_asm, ptr @for_each_rtx, i64 893503}
!88 = !{ptr @ira, ptr @timevar_push_1, i64 4}
!89 = !{ptr @ira, ptr @init_caller_save, i64 37}
!90 = !{ptr @ira, ptr @setup_prohibited_mode_move_regs, i64 38}
!91 = !{ptr @ira, ptr @df_note_add_problem, i64 38}
!92 = !{ptr @ira, ptr @df_live_add_problem, i64 38}
!93 = !{ptr @ira, ptr @df_live_set_all_dirty, i64 1}
!94 = !{ptr @ira, ptr @df_analyze, i64 76}
!95 = !{ptr @ira, ptr @df_clear_flags, i64 38}
!96 = !{ptr @ira, ptr @regstat_init_n_sets_and_refs, i64 39}
!97 = !{ptr @ira, ptr @regstat_compute_ri, i64 39}
!98 = !{ptr @ira, ptr @generate_setjmp_warnings, i64 1}
!99 = !{ptr @ira, ptr @leaf_function_p, i64 38}
!100 = !{ptr @ira, ptr @resize_reg_info, i64 38}
!101 = !{ptr @ira, ptr @ira_set_pseudo_classes, i64 1}
!102 = !{ptr @ira, ptr @update_equiv_regs, i64 38}
!103 = !{ptr @ira, ptr @bitmap_obstack_initialize, i64 38}
!104 = !{ptr @ira, ptr @max_reg_num, i64 188}
!105 = !{ptr @ira, ptr @ira_allocate, i64 111}
!106 = !{ptr @ira, ptr @find_reg_equiv_invariant_const, i64 37}
!107 = !{ptr @ira, ptr @get_insns, i64 77}
!108 = !{ptr @ira, ptr @rebuild_jump_labels, i64 1}
!109 = !{ptr @ira, ptr @purge_all_dead_edges, i64 1}
!110 = !{ptr @ira, ptr @timevar_pop_1, i64 4}
!111 = !{ptr @ira, ptr @ira_setup_eliminable_regset, i64 38}
!112 = !{ptr @ira, ptr @flow_loops_find, i64 39}
!113 = !{ptr @ira, ptr @record_loop_exits, i64 39}
!114 = !{ptr @ira, ptr @fwrite, i64 1}
!115 = !{ptr @ira, ptr @ira_build, i64 38}
!116 = !{ptr @ira, ptr @too_high_register_pressure_p, i64 38}
!117 = !{ptr @ira, ptr @ira_color, i64 38}
!118 = !{ptr @ira, ptr @ira_emit, i64 38}
!119 = !{ptr @ira, ptr @ira_initiate_assign, i64 37}
!120 = !{ptr @ira, ptr @expand_reg_info, i64 1}
!121 = !{ptr @ira, ptr @setup_preferred_alternate_classes_for_new_pseudos, i64 1}
!122 = !{ptr @ira, ptr @ira_flattening, i64 1}
!123 = !{ptr @ira, ptr @setup_allocno_assignment_flags, i64 1}
!124 = !{ptr @ira, ptr @ira_reassign_conflict_allocnos, i64 1}
!125 = !{ptr @ira, ptr @setup_reg_renumber, i64 38}
!126 = !{ptr @ira, ptr @calculate_allocation_cost, i64 38}
!127 = !{ptr @ira, ptr @delete_trivially_dead_insns, i64 38}
!128 = !{ptr @ira, ptr @VEC_rtx_gc_safe_grow, i64 38}
!129 = !{ptr @ira, ptr @VEC_rtx_base_address, i64 76}
!130 = !{ptr @ira, ptr @regstat_free_n_sets_and_refs, i64 39}
!131 = !{ptr @ira, ptr @regstat_free_ri, i64 39}
!132 = !{ptr @ira, ptr @allocate_initial_values, i64 38}
!133 = !{ptr @ira, ptr @fix_reg_equiv_init, i64 37}
!134 = !{ptr @ira, ptr @df_set_flags, i64 38}
!135 = !{ptr @ira, ptr @build_insn_chain, i64 38}
!136 = !{ptr @ira, ptr @reload, i64 38}
!137 = !{ptr @ira, ptr @finish_subregs_of_mode, i64 38}
!138 = !{ptr @ira, ptr @ira_free, i64 111}
!139 = !{ptr @ira, ptr @ira_finish_assign, i64 37}
!140 = !{ptr @ira, ptr @ira_destroy, i64 38}
!141 = !{ptr @ira, ptr @flow_loops_free, i64 38}
!142 = !{ptr @ira, ptr @free_dominance_info, i64 38}
!143 = !{ptr @ira, ptr @cleanup_cfg, i64 37}
!144 = !{ptr @ira, ptr @bitmap_obstack_release, i64 38}
!145 = !{ptr @ira, ptr @df_finish_pass, i64 38}
!146 = !{ptr @ira, ptr @df_scan_alloc, i64 38}
!147 = !{ptr @ira, ptr @df_scan_blocks, i64 38}
!148 = !{ptr @setup_prohibited_mode_move_regs, ptr @gen_rtx_REG, i64 4}
!149 = !{ptr @setup_prohibited_mode_move_regs, ptr @gen_rtx_fmt_ee_stat, i64 2}
!150 = !{ptr @setup_prohibited_mode_move_regs, ptr @gen_rtx_fmt_iuuBieie_stat, i64 2}
!151 = !{ptr @setup_prohibited_mode_move_regs, ptr @ix86_hard_regno_mode_ok, i64 4381}
!152 = !{ptr @setup_prohibited_mode_move_regs, ptr @rhs_regno, i64 1780}
!153 = !{ptr @setup_prohibited_mode_move_regs, ptr @df_ref_change_reg_with_loc, i64 1780}
!154 = !{ptr @setup_prohibited_mode_move_regs, ptr @recog_memoized, i64 890}
!155 = !{ptr @setup_prohibited_mode_move_regs, ptr @extract_insn, i64 227}
!156 = !{ptr @setup_prohibited_mode_move_regs, ptr @constrain_operands, i64 227}
!157 = !{ptr @update_equiv_regs, ptr @xcalloc, i64 38}
!158 = !{ptr @update_equiv_regs, ptr @ggc_alloc_cleared_stat, i64 38}
!159 = !{ptr @update_equiv_regs, ptr @init_alias_analysis, i64 38}
!160 = !{ptr @update_equiv_regs, ptr @no_equiv, i64 1703}
!161 = !{ptr @update_equiv_regs, ptr @single_set_2, i64 2}
!162 = !{ptr @update_equiv_regs, ptr @note_stores, i64 510206}
!163 = !{ptr @update_equiv_regs, ptr @find_reg_note, i64 978027}
!164 = !{ptr @update_equiv_regs, ptr @fancy_abort, i64 3}
!165 = !{ptr @update_equiv_regs, ptr @rhs_regno, i64 778518}
!166 = !{ptr @update_equiv_regs, ptr @rtx_equal_p, i64 24532}
!167 = !{ptr @update_equiv_regs, ptr @gen_rtx_fmt_ue_stat, i64 139171}
!168 = !{ptr @update_equiv_regs, ptr @reg_preferred_class, i64 1055625}
!169 = !{ptr @update_equiv_regs, ptr @rtx_varies_p, i64 112517}
!170 = !{ptr @update_equiv_regs, ptr @copy_rtx, i64 25503}
!171 = !{ptr @update_equiv_regs, ptr @set_unique_reg_note, i64 31810}
!172 = !{ptr @update_equiv_regs, ptr @remove_note, i64 6316}
!173 = !{ptr @update_equiv_regs, ptr @validate_equiv_mem, i64 18559}
!174 = !{ptr @update_equiv_regs, ptr @REG_N_REFS, i64 24888}
!175 = !{ptr @update_equiv_regs, ptr @equiv_init_varies_p, i64 1}
!176 = !{ptr @update_equiv_regs, ptr @equiv_init_movable_p, i64 24493}
!177 = !{ptr @update_equiv_regs, ptr @get_insns, i64 38}
!178 = !{ptr @update_equiv_regs, ptr @contains_replace_regs, i64 8}
!179 = !{ptr @update_equiv_regs, ptr @memref_used_between_p, i64 6}
!180 = !{ptr @update_equiv_regs, ptr @df_notes_rescan, i64 5}
!181 = !{ptr @update_equiv_regs, ptr @bitmap_obstack_alloc_stat, i64 37}
!182 = !{ptr @update_equiv_regs, ptr @reg_mentioned_p, i64 311938}
!183 = !{ptr @update_equiv_regs, ptr @can_throw_internal, i64 23749}
!184 = !{ptr @update_equiv_regs, ptr @asm_noperands, i64 23748}
!185 = !{ptr @update_equiv_regs, ptr @validate_replace_rtx, i64 23747}
!186 = !{ptr @update_equiv_regs, ptr @remove_death, i64 1}
!187 = !{ptr @update_equiv_regs, ptr @delete_insn, i64 10415}
!188 = !{ptr @update_equiv_regs, ptr @prev_nondebug_insn, i64 23747}
!189 = !{ptr @update_equiv_regs, ptr @emit_insn_before, i64 10414}
!190 = !{ptr @update_equiv_regs, ptr @df_insn_rescan, i64 10420}
!191 = !{ptr @update_equiv_regs, ptr @bitmap_set_bit, i64 10415}
!192 = !{ptr @update_equiv_regs, ptr @df_live_get_bb_info, i64 287868}
!193 = !{ptr @update_equiv_regs, ptr @bitmap_and_compl_into, i64 575736}
!194 = !{ptr @update_equiv_regs, ptr @df_lr_get_bb_info, i64 287868}
!195 = !{ptr @update_equiv_regs, ptr @simplify_replace_fn_rtx, i64 9}
!196 = !{ptr @update_equiv_regs, ptr @bitmap_obstack_free, i64 37}
!197 = !{ptr @update_equiv_regs, ptr @end_alias_analysis, i64 38}
!198 = !{ptr @update_equiv_regs, ptr @free, i64 38}
!199 = !{ptr @find_reg_equiv_invariant_const, ptr @find_reg_note, i64 24803}
!200 = !{ptr @find_reg_equiv_invariant_const, ptr @function_invariant_p, i64 31079}
!201 = !{ptr @find_reg_equiv_invariant_const, ptr @memory_operand, i64 24795}
!202 = !{ptr @setup_reg_renumber, ptr @ira_allocno_iter_init, i64 38}
!203 = !{ptr @setup_reg_renumber, ptr @ira_allocno_iter_cond, i64 104717}
!204 = !{ptr @setup_reg_renumber, ptr @ira_free_allocno_updated_costs, i64 104679}
!205 = !{ptr @setup_reg_renumber, ptr @rhs_regno, i64 104679}
!206 = !{ptr @setup_reg_renumber, ptr @ira_hard_reg_not_in_set_p, i64 712}
!207 = !{ptr @calculate_allocation_cost, ptr @ira_allocno_iter_init, i64 38}
!208 = !{ptr @calculate_allocation_cost, ptr @ira_allocno_iter_cond, i64 104717}
!209 = !{ptr @calculate_allocation_cost, ptr @fprintf, i64 2}
!210 = !{ptr @VEC_rtx_gc_safe_grow, ptr @VEC_rtx_gc_reserve_exact, i64 38}
!211 = !{ptr @fix_reg_equiv_init, ptr @max_reg_num, i64 38}
!212 = !{ptr @fix_reg_equiv_init, ptr @ggc_realloc_stat, i64 1}
!213 = !{ptr @fix_reg_equiv_init, ptr @single_set_2, i64 76}
!214 = !{ptr @fix_reg_equiv_init, ptr @rhs_regno, i64 432}
!215 = !{ptr @fix_reg_equiv_init, ptr @fancy_abort, i64 119}
!216 = !{ptr @build_insn_chain, ptr @bitmap_obstack_alloc_stat, i64 76}
!217 = !{ptr @build_insn_chain, ptr @xcalloc, i64 38}
!218 = !{ptr @build_insn_chain, ptr @xmalloc, i64 38}
!219 = !{ptr @build_insn_chain, ptr @bitmap_set_bit, i64 1777094}
!220 = !{ptr @build_insn_chain, ptr @bitmap_clear, i64 151664}
!221 = !{ptr @build_insn_chain, ptr @df_lr_get_bb_info, i64 303328}
!222 = !{ptr @build_insn_chain, ptr @bmp_iter_set_init, i64 303328}
!223 = !{ptr @build_insn_chain, ptr @bmp_iter_set, i64 1138718}
!224 = !{ptr @build_insn_chain, ptr @bmp_iter_next, i64 835390}
!225 = !{ptr @build_insn_chain, ptr @pseudo_for_reload_consideration_p, i64 684953}
!226 = !{ptr @build_insn_chain, ptr @new_insn_chain, i64 653856}
!227 = !{ptr @build_insn_chain, ptr @RESET_BIT, i64 8}
!228 = !{ptr @build_insn_chain, ptr @bitmap_clear_bit, i64 3381754}
!229 = !{ptr @build_insn_chain, ptr @bitmap_and_compl_into, i64 653810}
!230 = !{ptr @build_insn_chain, ptr @bitmap_copy, i64 653856}
!231 = !{ptr @build_insn_chain, ptr @bitmap_bit_p, i64 540773}
!232 = !{ptr @build_insn_chain, ptr @init_live_subregs, i64 195}
!233 = !{ptr @build_insn_chain, ptr @SET_BIT, i64 195}
!234 = !{ptr @build_insn_chain, ptr @free, i64 274}
!235 = !{ptr @build_insn_chain, ptr @bitmap_obstack_free, i64 76}
!236 = !{ptr @build_insn_chain, ptr @print_insn_chains, i64 1}
!237 = !{ptr @recog_memoized, ptr @recog, i64 935}
!238 = !{ptr @no_equiv, ptr @rhs_regno, i64 286608}
!239 = !{ptr @no_equiv, ptr @find_reg_note, i64 609}
!240 = !{ptr @no_equiv, ptr @remove_note, i64 609}
!241 = !{ptr @validate_equiv_mem, ptr @side_effects_p, i64 18975}
!242 = !{ptr @validate_equiv_mem, ptr @find_reg_note, i64 43297}
!243 = !{ptr @validate_equiv_mem, ptr @note_stores, i64 24479}
!244 = !{ptr @validate_equiv_mem, ptr @reg_overlap_mentioned_p, i64 68}
!245 = !{ptr @equiv_init_movable_p, ptr @rhs_regno, i64 65}
!246 = !{ptr @equiv_init_movable_p, ptr @rtx_varies_p, i64 62}
!247 = !{ptr @equiv_init_movable_p, ptr @equiv_init_movable_p, i64 184258}
!248 = !{ptr @contains_replace_regs, ptr @rhs_regno, i64 5}
!249 = !{ptr @contains_replace_regs, ptr @contains_replace_regs, i64 16}
!250 = !{ptr @memref_used_between_p, ptr @memref_referenced_p, i64 6}
!251 = !{ptr @validate_equiv_mem_from_store, ptr @reg_overlap_mentioned_p, i64 24674}
!252 = !{ptr @validate_equiv_mem_from_store, ptr @true_dependence, i64 1}
!253 = !{ptr @memref_referenced_p, ptr @rhs_regno, i64 22}
!254 = !{ptr @memref_referenced_p, ptr @true_dependence, i64 8}
!255 = !{ptr @memref_referenced_p, ptr @memref_referenced_p, i64 51}
!256 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @VEC_rtx_base_space, i64 38}
!257 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 37}
!258 = !{ptr @init_live_subregs, ptr @rhs_regno, i64 202}
!259 = !{ptr @init_live_subregs, ptr @fancy_abort, i64 1}
!260 = !{ptr @init_live_subregs, ptr @sbitmap_alloc, i64 200}
!261 = !{ptr @init_live_subregs, ptr @sbitmap_ones, i64 1}
!262 = !{ptr @init_live_subregs, ptr @sbitmap_zero, i64 200}
!263 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!264 = !{!"function_entry_count", i64 214421}
!265 = !{!"function_entry_count", i64 0}
!266 = !{!"function_entry_count", i64 418}
!267 = !{!268, !268, i64 0}
!268 = !{!"any pointer", !269, i64 0}
!269 = !{!"omnipotent char", !270, i64 0}
!270 = !{!"Simple C/C++ TBAA"}
!271 = !{!272, !273, i64 0}
!272 = !{!"ira_allocno", !273, i64 0, !273, i64 4, !273, i64 8, !273, i64 12, !268, i64 16, !268, i64 24, !268, i64 32, !273, i64 40, !273, i64 44, !273, i64 48, !273, i64 52, !273, i64 56, !273, i64 60, !273, i64 64, !273, i64 68, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !273, i64 120, !273, i64 124, !268, i64 128, !273, i64 136, !273, i64 140, !274, i64 144, !274, i64 152, !273, i64 160, !273, i64 164, !273, i64 168, !273, i64 172, !273, i64 172, !273, i64 172, !273, i64 172, !273, i64 172, !273, i64 172, !273, i64 172, !273, i64 172, !273, i64 173, !273, i64 173, !273, i64 173, !273, i64 173, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !273, i64 216, !273, i64 220, !268, i64 224, !268, i64 232, !273, i64 240}
!273 = !{!"int", !269, i64 0}
!274 = !{!"long", !269, i64 0}
!275 = !{!272, !273, i64 4}
!276 = !{!272, !268, i64 32}
!277 = !{!278, !268, i64 0}
!278 = !{!"ira_loop_tree_node", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !273, i64 56, !269, i64 60, !268, i64 64, !269, i64 72, !269, i64 76, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208}
!279 = !{!278, !268, i64 8}
!280 = !{!273, !273, i64 0}
!281 = !{!272, !273, i64 12}
!282 = distinct !{!282, !283}
!283 = !{!"llvm.loop.mustprogress"}
!284 = distinct !{!284, !283}
!285 = !{!"ira.c:print_class_cover"}
!286 = distinct !{!286, !283}
!287 = distinct !{!287, !283}
!288 = !{!"function_entry_count", i64 2}
!289 = !{!"branch_weights", i32 3, i32 1}
!290 = !{!"branch_weights", i32 905, i32 555}
!291 = !{!292, !292, i64 0}
!292 = !{!"short", !269, i64 0}
!293 = !{!"branch_weights", i32 55, i32 1404}
!294 = distinct !{!294, !283}
!295 = !{!"branch_weights", i32 3, i32 52}
!296 = distinct !{!296, !283}
!297 = !{!"function_entry_count", i64 1}
!298 = !{!"ira.c:free_register_move_costs"}
!299 = !{!"branch_weights", i32 173, i32 3}
!300 = !{!"branch_weights", i32 3, i32 172}
!301 = distinct !{!301, !283}
!302 = !{!"ira.c:setup_reg_mode_hard_regset"}
!303 = !{!274, !274, i64 0}
!304 = !{!269, !269, i64 0}
!305 = !{!"branch_weights", i32 1, i32 4611}
!306 = !{!"branch_weights", i32 10529, i32 263}
!307 = !{!"branch_weights", i32 6180, i32 4611}
!308 = distinct !{!308, !283}
!309 = !{!"branch_weights", i32 88, i32 4524}
!310 = distinct !{!310, !283}
!311 = !{!"branch_weights", i32 2, i32 86}
!312 = distinct !{!312, !283}
!313 = !{!"ira.c:setup_alloc_regs"}
!314 = !{!"branch_weights", i32 2, i32 1}
!315 = !{!"ira.c:setup_class_subset_and_memory_move_costs"}
!316 = distinct !{!316, !283}
!317 = !{!"branch_weights", i32 2, i32 27}
!318 = !{!"branch_weights", i32 110, i32 2154}
!319 = !{!"branch_weights", i32 104, i32 2160}
!320 = !{!"branch_weights", i32 27, i32 2236}
!321 = distinct !{!321, !283}
!322 = !{i8 0, i8 2}
!323 = !{!"branch_weights", i32 28, i32 702}
!324 = distinct !{!324, !283}
!325 = !{!"branch_weights", i32 2, i32 26}
!326 = distinct !{!326, !283}
!327 = !{!"ira.c:find_reg_class_closure"}
!328 = !{!"ira.c:setup_hard_regno_cover_class"}
!329 = !{!"branch_weights", i32 159, i32 1}
!330 = !{!"branch_weights", i32 159, i32 245}
!331 = distinct !{!331, !283}
!332 = !{!"branch_weights", i32 15, i32 87}
!333 = !{!"branch_weights", i32 2, i32 52}
!334 = distinct !{!334, !283}
!335 = !{!"ira.c:setup_reg_class_nregs"}
!336 = !{!"branch_weights", i32 871, i32 1480}
!337 = !{!"branch_weights", i32 18, i32 794}
!338 = !{!"branch_weights", i32 6, i32 2345}
!339 = !{!"branch_weights", i32 28, i32 2322}
!340 = distinct !{!340, !283}
!341 = distinct !{!341, !283}
!342 = !{!"ira.c:setup_prohibited_class_mode_regs"}
!343 = !{!"branch_weights", i32 127, i32 1}
!344 = !{!"branch_weights", i32 174, i32 1}
!345 = !{!"branch_weights", i32 1039, i32 181}
!346 = !{!"branch_weights", i32 1045, i32 174}
!347 = distinct !{!347, !283}
!348 = distinct !{!348, !283}
!349 = !{!"branch_weights", i32 65, i32 127}
!350 = distinct !{!350, !283}
!351 = !{!"function_entry_count", i64 38}
!352 = !{!"branch_weights", i32 39, i32 1}
!353 = !{!354, !268, i64 1768}
!354 = !{!"gcc_target", !355, i64 0, !357, i64 368, !358, i64 664, !273, i64 744, !268, i64 752, !268, i64 760, !268, i64 768, !268, i64 776, !268, i64 784, !268, i64 792, !268, i64 800, !268, i64 808, !268, i64 816, !268, i64 824, !268, i64 832, !268, i64 840, !268, i64 848, !268, i64 856, !268, i64 864, !268, i64 872, !268, i64 880, !268, i64 888, !268, i64 896, !268, i64 904, !268, i64 912, !268, i64 920, !268, i64 928, !268, i64 936, !268, i64 944, !268, i64 952, !268, i64 960, !268, i64 968, !268, i64 976, !268, i64 984, !268, i64 992, !268, i64 1000, !268, i64 1008, !268, i64 1016, !268, i64 1024, !268, i64 1032, !268, i64 1040, !268, i64 1048, !268, i64 1056, !274, i64 1064, !274, i64 1072, !268, i64 1080, !268, i64 1088, !268, i64 1096, !268, i64 1104, !268, i64 1112, !268, i64 1120, !268, i64 1128, !268, i64 1136, !268, i64 1144, !268, i64 1152, !268, i64 1160, !268, i64 1168, !359, i64 1176, !268, i64 1232, !268, i64 1240, !268, i64 1248, !268, i64 1256, !268, i64 1264, !268, i64 1272, !268, i64 1280, !268, i64 1288, !268, i64 1296, !268, i64 1304, !268, i64 1312, !268, i64 1320, !268, i64 1328, !268, i64 1336, !268, i64 1344, !268, i64 1352, !268, i64 1360, !268, i64 1368, !268, i64 1376, !268, i64 1384, !268, i64 1392, !268, i64 1400, !268, i64 1408, !268, i64 1416, !268, i64 1424, !268, i64 1432, !268, i64 1440, !268, i64 1448, !268, i64 1456, !274, i64 1464, !360, i64 1472, !268, i64 1664, !268, i64 1672, !268, i64 1680, !268, i64 1688, !268, i64 1696, !268, i64 1704, !268, i64 1712, !268, i64 1720, !268, i64 1728, !268, i64 1736, !268, i64 1744, !268, i64 1752, !268, i64 1760, !268, i64 1768, !268, i64 1776, !361, i64 1784, !362, i64 1792, !363, i64 1896, !364, i64 1968, !268, i64 2016, !269, i64 2024, !269, i64 2025, !269, i64 2026, !269, i64 2027, !269, i64 2028, !269, i64 2029, !269, i64 2030, !269, i64 2031, !269, i64 2032, !269, i64 2033, !269, i64 2034, !269, i64 2035}
!355 = !{!"asm_out", !268, i64 0, !268, i64 8, !268, i64 16, !356, i64 24, !356, i64 56, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !268, i64 232, !268, i64 240, !268, i64 248, !268, i64 256, !268, i64 264, !268, i64 272, !268, i64 280, !268, i64 288, !268, i64 296, !268, i64 304, !268, i64 312, !268, i64 320, !268, i64 328, !268, i64 336, !268, i64 344, !268, i64 352, !268, i64 360}
!356 = !{!"asm_int_op", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24}
!357 = !{!"sched", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !268, i64 232, !268, i64 240, !268, i64 248, !268, i64 256, !268, i64 264, !268, i64 272, !268, i64 280, !268, i64 288}
!358 = !{!"vectorize", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72}
!359 = !{!"addr_space", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48}
!360 = !{!"calls", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184}
!361 = !{!"c", !268, i64 0}
!362 = !{!"cxx", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96}
!363 = !{!"emutls", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !269, i64 64, !269, i64 65}
!364 = !{!"target_option_hooks", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40}
!365 = !{!366, !269, i64 477}
!366 = !{!"rtl_data", !367, i64 0, !368, i64 40, !369, i64 96, !370, i64 112, !372, i64 208, !373, i64 248, !273, i64 312, !268, i64 320, !268, i64 328, !268, i64 336, !268, i64 344, !268, i64 352, !268, i64 360, !268, i64 368, !268, i64 376, !268, i64 384, !268, i64 392, !274, i64 400, !268, i64 408, !268, i64 416, !268, i64 424, !273, i64 432, !273, i64 436, !273, i64 440, !273, i64 444, !273, i64 448, !273, i64 452, !268, i64 456, !269, i64 464, !269, i64 465, !269, i64 466, !269, i64 467, !269, i64 468, !269, i64 469, !269, i64 470, !269, i64 471, !269, i64 472, !269, i64 473, !269, i64 474, !269, i64 475, !269, i64 476, !269, i64 477, !269, i64 478, !269, i64 479, !269, i64 480, !269, i64 481, !269, i64 482, !269, i64 483, !269, i64 484, !269, i64 485}
!367 = !{!"expr_status", !273, i64 0, !273, i64 4, !273, i64 8, !268, i64 16, !268, i64 24, !268, i64 32}
!368 = !{!"emit_status", !273, i64 0, !273, i64 4, !268, i64 8, !268, i64 16, !268, i64 24, !273, i64 32, !273, i64 36, !273, i64 40, !273, i64 44, !268, i64 48}
!369 = !{!"varasm_status", !268, i64 0, !273, i64 8}
!370 = !{!"incoming_args", !273, i64 0, !273, i64 4, !273, i64 8, !268, i64 16, !371, i64 24, !268, i64 88}
!371 = !{!"ix86_args", !273, i64 0, !273, i64 4, !273, i64 8, !273, i64 12, !273, i64 16, !273, i64 20, !273, i64 24, !273, i64 28, !273, i64 32, !273, i64 36, !273, i64 40, !273, i64 44, !273, i64 48, !273, i64 52, !273, i64 56, !273, i64 60}
!372 = !{!"function_subsections", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32}
!373 = !{!"rtl_eh", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !269, i64 48}
!374 = !{!354, !268, i64 1776}
!375 = !{!376, !273, i64 0}
!376 = !{!"", !273, i64 0, !273, i64 4}
!377 = !{!376, !273, i64 4}
!378 = !{!"branch_weights", i32 77, i32 77}
!379 = !{!"branch_weights", i32 1, i32 77}
!380 = !{!"branch_weights", i32 153, i32 1}
!381 = !{!"branch_weights", i32 0, i32 -2147483648}
!382 = !{!"branch_weights", i32 39, i32 114}
!383 = distinct !{!383, !283}
!384 = !{!"ira.c:compute_regs_asm_clobbered"}
!385 = !{!386, !268, i64 8}
!386 = !{!"function", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !273, i64 104, !273, i64 108, !273, i64 112, !273, i64 116, !273, i64 120, !273, i64 124, !268, i64 128, !273, i64 136, !273, i64 137, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139}
!387 = !{!388, !268, i64 0}
!388 = !{!"control_flow_graph", !268, i64 0, !268, i64 8, !268, i64 16, !273, i64 24, !273, i64 28, !273, i64 32, !268, i64 40, !273, i64 48, !269, i64 52, !269, i64 60, !273, i64 68, !273, i64 72}
!389 = !{!390, !268, i64 56}
!390 = !{!"basic_block_def", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !269, i64 32, !268, i64 48, !268, i64 56, !269, i64 64, !274, i64 72, !273, i64 80, !273, i64 84, !273, i64 88, !273, i64 92, !273, i64 96}
!391 = !{!388, !268, i64 8}
!392 = !{!"branch_weights", i32 1, i32 155}
!393 = !{!"branch_weights", i32 1, i32 127}
!394 = !{!395, !268, i64 0}
!395 = !{!"rtl_bb_info", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !273, i64 32}
!396 = !{!"branch_weights", i32 155655, i32 893504}
!397 = !{!"branch_weights", i32 893504, i32 1}
!398 = !{!399, !268, i64 248}
!399 = !{!"df", !269, i64 0, !269, i64 64, !268, i64 128, !400, i64 136, !400, i64 176, !268, i64 216, !268, i64 224, !268, i64 232, !273, i64 240, !273, i64 244, !268, i64 248, !273, i64 256, !273, i64 260, !268, i64 264, !268, i64 272, !268, i64 280, !268, i64 288, !268, i64 296, !268, i64 304, !268, i64 312, !268, i64 320, !268, i64 328, !268, i64 336, !273, i64 344, !273, i64 348, !268, i64 352, !273, i64 360, !273, i64 364, !269, i64 365, !269, i64 366}
!400 = !{!"df_ref_info", !268, i64 0, !268, i64 8, !268, i64 16, !273, i64 24, !273, i64 28, !273, i64 32, !273, i64 36}
!401 = !{!402, !268, i64 8}
!402 = !{!"df_insn_info", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !273, i64 40}
!403 = distinct !{!403, !283}
!404 = distinct !{!404, !283}
!405 = !{!"branch_weights", i32 127, i32 134292097}
!406 = distinct !{!406, !283}
!407 = !{!"branch_weights", i32 155, i32 622465}
!408 = distinct !{!408, !283}
!409 = !{!"function_entry_count", i64 76}
!410 = !{!"branch_weights", i32 1, i32 153}
!411 = !{!390, !273, i64 80}
!412 = !{!413, !268, i64 16}
!413 = !{!"df_lr_bb_info", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24}
!414 = !{!"branch_weights", i32 1, i32 311309}
!415 = !{!"branch_weights", i32 153, i32 622465}
!416 = distinct !{!416, !283}
!417 = !{!"function_entry_count", i64 933402}
!418 = !{!"ira.c:df_lr_get_bb_info"}
!419 = !{!420, !273, i64 16}
!420 = !{!"dataflow", !268, i64 0, !268, i64 8, !273, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !273, i64 48, !269, i64 52, !269, i64 53, !269, i64 54}
!421 = !{!"branch_weights", i32 933403, i32 1}
!422 = !{!420, !268, i64 8}
!423 = !{!"ira.c:gate_ira"}
!424 = !{!"ira.c:rest_of_handle_ira"}
!425 = !{!"ira.c:setup_class_hard_regs"}
!426 = !{!"branch_weights", i32 1432, i32 1}
!427 = !{!"branch_weights", i32 1329, i32 104}
!428 = !{!"branch_weights", i32 28, i32 1404}
!429 = distinct !{!429, !283}
!430 = distinct !{!430, !283}
!431 = !{!"ira.c:setup_available_class_regs"}
!432 = distinct !{!432, !283}
!433 = distinct !{!433, !283}
!434 = !{!"function_entry_count", i64 31100}
!435 = !{!"ira.c:hard_reg_set_subset_p"}
!436 = !{!"ira.c:setup_reg_subclasses"}
!437 = !{!"branch_weights", i32 28, i32 140}
!438 = distinct !{!438, !283, !439, !440}
!439 = !{!"llvm.loop.isvectorized", i32 1}
!440 = !{!"llvm.loop.unroll.runtime.disable"}
!441 = distinct !{!441, !283}
!442 = !{!"branch_weights", i32 24, i32 4}
!443 = !{!"branch_weights", i32 24, i32 599}
!444 = !{!"branch_weights", i32 453, i32 147}
!445 = !{!"branch_weights", i32 147, i32 1049}
!446 = distinct !{!446, !283}
!447 = !{!"branch_weights", i32 24, i32 598}
!448 = distinct !{!448, !283}
!449 = distinct !{!449, !283}
!450 = !{!"ira.c:setup_cover_and_important_classes"}
!451 = !{!354, !268, i64 1720}
!452 = !{!"branch_weights", i32 1, i32 2}
!453 = !{!"branch_weights", i32 127, i32 193}
!454 = distinct !{!454, !283}
!455 = distinct !{!455, !283}
!456 = distinct !{!456, !283}
!457 = distinct !{!457, !283}
!458 = !{!"branch_weights", i32 1, i32 159}
!459 = !{!"branch_weights", i32 1, i32 7}
!460 = !{!"branch_weights", i32 7, i32 1}
!461 = !{!"branch_weights", i32 159, i32 65}
!462 = distinct !{!462, !283}
!463 = !{!"branch_weights", i32 3, i32 3}
!464 = distinct !{!464, !283}
!465 = !{!"branch_weights", i32 -2147483648, i32 0}
!466 = !{!"branch_weights", i32 24, i32 5}
!467 = !{!"branch_weights", i32 143, i32 1}
!468 = !{!"branch_weights", i32 3, i32 41}
!469 = !{!"branch_weights", i32 37, i32 5}
!470 = !{!"branch_weights", i32 23, i32 15}
!471 = !{!"branch_weights", i32 143, i32 201}
!472 = distinct !{!472, !283}
!473 = !{!"branch_weights", i32 404269678, i32 1743213970}
!474 = distinct !{!474, !283}
!475 = !{!"ira.c:setup_class_translate"}
!476 = distinct !{!476, !283}
!477 = distinct !{!477, !283}
!478 = !{!"branch_weights", i32 1, i32 3}
!479 = !{!"branch_weights", i32 1, i32 191}
!480 = !{!"branch_weights", i32 19, i32 1}
!481 = !{!"branch_weights", i32 191, i32 1025}
!482 = distinct !{!482, !283}
!483 = !{!"branch_weights", i32 127, i32 65}
!484 = distinct !{!484, !283}
!485 = !{!"branch_weights", i32 7, i32 21}
!486 = !{!"branch_weights", i32 223, i32 1}
!487 = !{!"branch_weights", i32 7, i32 7}
!488 = !{!"branch_weights", i32 7, i32 516}
!489 = distinct !{!489, !283}
!490 = !{!"branch_weights", i32 24, i32 16}
!491 = !{!"branch_weights", i32 223, i32 193}
!492 = distinct !{!492, !283}
!493 = distinct !{!493, !283}
!494 = !{!"ira.c:reorder_important_classes"}
!495 = distinct !{!495, !283}
!496 = !{!"branch_weights", i32 127, i32 961}
!497 = distinct !{!497, !283}
!498 = !{!"ira.c:setup_reg_class_relations"}
!499 = distinct !{!499, !283}
!500 = !{!"branch_weights", i32 622, i32 109}
!501 = !{!"branch_weights", i32 93, i32 17}
!502 = !{!"branch_weights", i32 12, i32 5}
!503 = !{!"branch_weights", i32 1, i32 5}
!504 = !{!"branch_weights", i32 5, i32 0}
!505 = !{!"branch_weights", i32 282, i32 433}
!506 = !{!"branch_weights", i32 177, i32 257}
!507 = !{!"branch_weights", i32 209, i32 49}
!508 = !{!"branch_weights", i32 49, i32 59}
!509 = distinct !{!509, !283}
!510 = !{!"branch_weights", i32 713, i32 1}
!511 = !{!"branch_weights", i32 10245, i32 1165}
!512 = !{!"branch_weights", i32 1092, i32 74}
!513 = !{!"branch_weights", i32 26, i32 49}
!514 = !{!"branch_weights", i32 25, i32 25}
!515 = !{!"branch_weights", i32 5327, i32 6083}
!516 = !{!"branch_weights", i32 714, i32 5370}
!517 = !{!"branch_weights", i32 3673, i32 1698}
!518 = !{!"branch_weights", i32 1614, i32 85}
!519 = !{!"branch_weights", i32 65, i32 21}
!520 = !{!"branch_weights", i32 713, i32 10696}
!521 = distinct !{!521, !283}
!522 = distinct !{!522, !283}
!523 = distinct !{!523, !283}
!524 = !{!"function_entry_count", i64 906}
!525 = !{!"ira.c:hard_reg_set_empty_p"}
!526 = !{!"function_entry_count", i64 1810}
!527 = !{!"ira.c:hard_reg_set_equal_p"}
!528 = !{!"function_entry_count", i64 23}
!529 = !{!"ira.c:comp_reg_classes_func"}
!530 = !{!"branch_weights", i32 576, i32 49}
!531 = !{!"branch_weights", i32 16, i32 9}
!532 = !{!"function_entry_count", i64 713}
!533 = !{!"ira.c:hard_reg_set_intersect_p"}
!534 = !{!"function_entry_count", i64 893503}
!535 = !{!"ira.c:insn_contains_asm"}
!536 = !{!"function_entry_count", i64 6172023}
!537 = !{!"ira.c:insn_contains_asm_1"}
!538 = !{!"branch_weights", i32 692635, i32 5479390}
!539 = !{!"ira.c:ira"}
!540 = !{!"branch_weights", i32 1, i32 39}
!541 = !{!"branch_weights", i32 39, i32 1561}
!542 = !{i32 0, i32 2}
!543 = !{!386, !268, i64 32}
!544 = !{!390, !268, i64 24}
!545 = !{!"branch_weights", i32 155, i32 622769}
!546 = distinct !{!546, !283}
!547 = !{!"ira.c:setup_prohibited_mode_move_regs"}
!548 = !{!"branch_weights", i32 38, i32 2}
!549 = !{!"branch_weights", i32 3676, i32 937}
!550 = !{!"branch_weights", i32 699, i32 239}
!551 = !{!"branch_weights", i32 103, i32 137}
!552 = distinct !{!552, !283}
!553 = distinct !{!553, !283}
!554 = !{!"ira.c:update_equiv_regs"}
!555 = distinct !{!555, !283}
!556 = !{!390, !273, i64 84}
!557 = !{!395, !268, i64 8}
!558 = !{!"branch_weights", i32 1, i32 155654}
!559 = !{!"branch_weights", i32 -1362549780, i32 1268670193}
!560 = !{!"branch_weights", i32 85842, i32 537835}
!561 = !{!"branch_weights", i32 1, i32 537835}
!562 = !{!"branch_weights", i32 537835, i32 0}
!563 = distinct !{!563, !283}
!564 = !{!"branch_weights", i32 2147479656, i32 3992}
!565 = !{!"branch_weights", i32 613018, i32 1}
!566 = !{!"branch_weights", i32 8268, i32 613018}
!567 = !{!568, !273, i64 0}
!568 = !{!"rtvec_def", !273, i64 0, !269, i64 8}
!569 = !{!"branch_weights", i32 8267, i32 1}
!570 = !{!"branch_weights", i32 8268, i32 8268}
!571 = !{!"branch_weights", i32 8268, i32 8267}
!572 = distinct !{!572, !283}
!573 = !{!"branch_weights", i32 621248, i32 38}
!574 = !{!"branch_weights", i32 38, i32 1}
!575 = !{!576, !273, i64 28}
!576 = !{!"equivalence", !268, i64 0, !268, i64 8, !268, i64 16, !273, i64 24, !273, i64 28, !269, i64 32}
!577 = !{!"branch_weights", i32 1, i32 38}
!578 = !{!"branch_weights", i32 1, i32 621285}
!579 = !{!"branch_weights", i32 384248, i32 237038}
!580 = !{!"branch_weights", i32 217770, i32 166479}
!581 = !{!576, !268, i64 16}
!582 = !{!"branch_weights", i32 58549, i32 107931}
!583 = !{!"branch_weights", i32 1, i32 107931}
!584 = !{!"branch_weights", i32 107762, i32 170}
!585 = !{!"branch_weights", i32 7108, i32 100655}
!586 = !{!"branch_weights", i32 282186, i32 2147201462}
!587 = !{!"branch_weights", i32 1, i32 7277}
!588 = !{!399, !268, i64 216}
!589 = !{!590, !273, i64 8}
!590 = !{!"df_reg_info", !268, i64 0, !273, i64 8}
!591 = !{!"branch_weights", i32 105534, i32 2398}
!592 = !{!"branch_weights", i32 1641, i32 758}
!593 = !{!"branch_weights", i32 659, i32 100}
!594 = !{!576, !268, i64 0}
!595 = !{!"branch_weights", i32 659, i32 1}
!596 = !{!"branch_weights", i32 172020420, i32 -1665218153}
!597 = !{!"branch_weights", i32 6450, i32 71}
!598 = !{!"branch_weights", i32 99706, i32 6487}
!599 = !{!600, !273, i64 24}
!600 = !{!"reg_info_t", !273, i64 0, !273, i64 4, !273, i64 8, !273, i64 12, !273, i64 16, !273, i64 20, !273, i64 24}
!601 = !{!"branch_weights", i32 89174, i32 10533}
!602 = !{!"branch_weights", i32 18969, i32 70206}
!603 = !{!"branch_weights", i32 7, i32 18963}
!604 = !{!"branch_weights", i32 25412, i32 38}
!605 = !{!"branch_weights", i32 647651601, i32 25450, i32 25449}
!606 = !{!576, !268, i64 8}
!607 = !{!576, !273, i64 24}
!608 = !{!600, !273, i64 8}
!609 = !{!"branch_weights", i32 647651601, i32 50899}
!610 = !{!"branch_weights", i32 25047, i32 403}
!611 = !{!"branch_weights", i32 1, i32 25047}
!612 = !{!"branch_weights", i32 25047, i32 1}
!613 = !{!"branch_weights", i32 48, i32 25000}
!614 = !{!576, !269, i64 32}
!615 = !{!"branch_weights", i32 155654, i32 737850}
!616 = distinct !{!616, !283}
!617 = !{!"branch_weights", i32 -1209460143, i32 1371045855}
!618 = !{!"branch_weights", i32 81709, i32 539577}
!619 = !{!"branch_weights", i32 69016, i32 12694}
!620 = !{!"branch_weights", i32 69016, i32 1}
!621 = !{!"branch_weights", i32 14004, i32 55013}
!622 = !{!"branch_weights", i32 14004, i32 1}
!623 = !{!"branch_weights", i32 28009, i32 196112016}
!624 = !{!"branch_weights", i32 8, i32 13997}
!625 = !{i32 -128, i32 128}
!626 = !{!"branch_weights", i32 8, i32 1}
!627 = !{!"branch_weights", i32 1, i32 8}
!628 = !{!"branch_weights", i32 155, i32 3603217}
!629 = distinct !{!629, !283}
!630 = !{!390, !268, i64 48}
!631 = distinct !{!631, !283}
!632 = !{!"branch_weights", i32 155330, i32 468348}
!633 = !{!"branch_weights", i32 155330, i32 1}
!634 = !{!"branch_weights", i32 59766, i32 563911}
!635 = !{!"branch_weights", i32 328356, i32 235556}
!636 = !{!"branch_weights", i32 1, i32 328356}
!637 = !{!"branch_weights", i32 303357, i32 25000}
!638 = !{!"branch_weights", i32 1, i32 25000}
!639 = !{!"branch_weights", i32 25000, i32 1}
!640 = distinct !{!640, !283}
!641 = distinct !{!641, !283}
!642 = !{!643, !273, i64 4}
!643 = !{!"regstat_n_sets_and_refs_t", !273, i64 0, !273, i64 4}
!644 = !{!600, !273, i64 0}
!645 = !{!"branch_weights", i32 14037, i32 10964}
!646 = !{!"branch_weights", i32 1, i32 10964}
!647 = !{!"branch_weights", i32 563911, i32 0}
!648 = distinct !{!648, !283}
!649 = distinct !{!649, !283}
!650 = !{!651, !268, i64 0}
!651 = !{!"bitmap_head_def", !268, i64 0, !268, i64 8, !273, i64 16, !268, i64 24}
!652 = !{!"branch_weights", i32 11, i32 29}
!653 = !{!"branch_weights", i32 1, i32 231}
!654 = !{!655, !268, i64 16}
!655 = !{!"df_live_bb_info", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24}
!656 = !{!655, !268, i64 24}
!657 = !{!413, !268, i64 24}
!658 = !{!"branch_weights", i32 231, i32 1242921}
!659 = distinct !{!659, !283}
!660 = !{!"branch_weights", i32 29, i32 1}
!661 = distinct !{!661, !283}
!662 = !{!"ira.c:find_reg_equiv_invariant_const"}
!663 = !{!"branch_weights", i32 155, i32 1}
!664 = !{!"branch_weights", i32 264533, i32 25456}
!665 = !{!"branch_weights", i32 8, i32 25449}
!666 = !{!"branch_weights", i32 6450, i32 164171500}
!667 = !{!"branch_weights", i32 6450, i32 19000}
!668 = !{!"branch_weights", i32 1, i32 6450}
!669 = !{!"branch_weights", i32 1950419, i32 -102215343}
!670 = !{!"branch_weights", i32 25456, i32 0}
!671 = distinct !{!671, !283}
!672 = !{!"branch_weights", i32 1159801, i32 155}
!673 = distinct !{!673, !283}
!674 = !{!"ira.c:too_high_register_pressure_p"}
!675 = !{!"branch_weights", i32 155, i32 153}
!676 = distinct !{!676, !283}
!677 = !{!"ira.c:expand_reg_info"}
!678 = distinct !{!678, !283}
!679 = !{!"ira.c:setup_preferred_alternate_classes_for_new_pseudos"}
!680 = distinct !{!680, !283}
!681 = !{!"ira.c:setup_allocno_assignment_flags"}
!682 = !{!272, !273, i64 60}
!683 = !{!272, !273, i64 52}
!684 = distinct !{!684, !283}
!685 = !{!"ira.c:setup_reg_renumber"}
!686 = !{!"branch_weights", i32 1, i32 107434}
!687 = !{!272, !268, i64 16}
!688 = !{!"branch_weights", i32 107132, i32 303}
!689 = !{!272, !273, i64 168}
!690 = !{!"branch_weights", i32 106402, i32 731}
!691 = !{!272, !273, i64 8}
!692 = !{!"branch_weights", i32 67, i32 665}
!693 = !{!"branch_weights", i32 155, i32 429581}
!694 = distinct !{!694, !283}
!695 = !{!"ira.c:calculate_allocation_cost"}
!696 = !{!"branch_weights", i32 303, i32 107132}
!697 = !{!272, !268, i64 184}
!698 = !{!"branch_weights", i32 39560, i32 67573}
!699 = !{!272, !273, i64 48}
!700 = distinct !{!700, !283}
!701 = !{!"ira.c:VEC_rtx_gc_safe_grow"}
!702 = !{!703, !273, i64 0}
!703 = !{!"VEC_rtx_base", !273, i64 0, !273, i64 4, !269, i64 8}
!704 = !{}
!705 = !{!"ira.c:VEC_rtx_base_address"}
!706 = !{!"ira.c:fix_reg_equiv_init"}
!707 = distinct !{!707, !283}
!708 = distinct !{!708, !283}
!709 = distinct !{!709, !283}
!710 = !{!"ira.c:build_insn_chain"}
!711 = !{!"branch_weights", i32 1901, i32 115}
!712 = !{!"branch_weights", i32 39, i32 1976}
!713 = distinct !{!713, !283}
!714 = !{!"branch_weights", i32 1, i32 944214173}
!715 = !{!"branch_weights", i32 944214173, i32 -1461997263}
!716 = distinct !{!716, !283}
!717 = !{!"branch_weights", i32 1, i32 234700}
!718 = !{!"branch_weights", i32 155654, i32 79046}
!719 = distinct !{!719, !283}
!720 = !{!"branch_weights", i32 -721620007, i32 1147606743, i32 5283}
!721 = !{!722, !268, i64 0}
!722 = !{!"insn_chain", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !273, i64 32, !273, i64 36, !273, i64 36, !273, i64 36, !273, i64 36, !651, i64 40, !651, i64 72, !268, i64 104, !273, i64 112, !274, i64 120}
!723 = !{!722, !268, i64 24}
!724 = !{!722, !273, i64 32}
!725 = !{!"branch_weights", i32 -1650608249, i32 223140569}
!726 = !{!"branch_weights", i32 1, i32 623676}
!727 = !{!"branch_weights", i32 392800, i32 3105311}
!728 = !{!"branch_weights", i32 226168, i32 166633}
!729 = !{!"branch_weights", i32 66797, i32 159372}
!730 = !{!"branch_weights", i32 1, i32 166633}
!731 = !{!"branch_weights", i32 2147483354, i32 294}
!732 = !{!"branch_weights", i32 166331, i32 303}
!733 = !{!"branch_weights", i32 1, i32 303}
!734 = !{!"branch_weights", i32 3498110, i32 1}
!735 = !{!"branch_weights", i32 1, i32 3498110}
!736 = distinct !{!736, !283}
!737 = !{!"branch_weights", i32 623676, i32 2874434}
!738 = distinct !{!738, !283}
!739 = !{!402, !268, i64 16}
!740 = !{!"branch_weights", i32 64499, i32 559178}
!741 = !{!"branch_weights", i32 559178, i32 1}
!742 = !{!"branch_weights", i32 332570, i32 226609}
!743 = !{!"branch_weights", i32 217850, i32 114721}
!744 = !{!"branch_weights", i32 66666, i32 151185}
!745 = !{!"branch_weights", i32 1, i32 114721}
!746 = !{!"branch_weights", i32 1428244077, i32 719239571}
!747 = !{!"branch_weights", i32 1, i32 190617}
!748 = !{!"branch_weights", i32 203, i32 558976}
!749 = !{!"branch_weights", i32 203, i32 1}
!750 = !{!"branch_weights", i32 1, i32 203}
!751 = !{!"branch_weights", i32 202, i32 1}
!752 = distinct !{!752, !283}
!753 = !{!"branch_weights", i32 559178, i32 0}
!754 = distinct !{!754, !283}
!755 = distinct !{!755, !283}
!756 = !{!"branch_weights", i32 1760823854, i32 386659794}
!757 = !{!"branch_weights", i32 -243183377, i32 140595378, i32 2005316380}
!758 = !{!"branch_weights", i32 162918, i32 155655}
!759 = !{!"branch_weights", i32 155, i32 1273981}
!760 = distinct !{!760, !283}
!761 = !{!"branch_weights", i32 -1265648569, i32 19460, i32 467058}
!762 = !{!"branch_weights", i32 47, i32 155617}
!763 = !{!"branch_weights", i32 155, i32 622589}
!764 = distinct !{!764, !283}
!765 = distinct !{!765, !283}
!766 = !{!"branch_weights", i32 291801, i32 203}
!767 = !{!"branch_weights", i32 1167857, i32 155}
!768 = distinct !{!768, !283}
!769 = !{!"function_entry_count", i64 1203393}
!770 = !{!"ira.c:rhs_regno"}
!771 = !{!"function_entry_count", i64 936}
!772 = !{!"ira.c:recog_memoized"}
!773 = !{!"branch_weights", i32 937, i32 1}
!774 = !{!"function_entry_count", i64 523645}
!775 = !{!"ira.c:no_equiv"}
!776 = !{!"branch_weights", i32 286609, i32 237038}
!777 = !{!"branch_weights", i32 284640, i32 1970}
!778 = !{!"branch_weights", i32 1970, i32 1}
!779 = !{!"branch_weights", i32 1361, i32 609}
!780 = !{!"branch_weights", i32 609, i32 0}
!781 = distinct !{!781, !283}
!782 = !{!"function_entry_count", i64 18975}
!783 = !{!"ira.c:validate_equiv_mem"}
!784 = !{!"branch_weights", i32 18976, i32 1}
!785 = !{!"branch_weights", i32 -802990298, i32 1111563655}
!786 = !{!"branch_weights", i32 24676, i32 18970}
!787 = !{!"branch_weights", i32 1, i32 24676}
!788 = !{!"branch_weights", i32 24600, i32 70}
!789 = !{!"branch_weights", i32 4971, i32 70}
!790 = !{!"branch_weights", i32 70, i32 1}
!791 = !{!"branch_weights", i32 64, i32 7}
!792 = !{!"branch_weights", i32 70, i32 0}
!793 = distinct !{!793, !283}
!794 = !{!"branch_weights", i32 127, i32 7365121}
!795 = distinct !{!795, !283}
!796 = !{!"function_entry_count", i64 25448}
!797 = !{!"ira.c:REG_N_REFS"}
!798 = !{!"ira.c:equiv_init_varies_p"}
!799 = distinct !{!799, !283}
!800 = distinct !{!800, !283}
!801 = !{!"function_entry_count", i64 95642}
!802 = !{!"ira.c:equiv_init_movable_p"}
!803 = !{!"branch_weights", i32 70550, i32 25047, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 48, i32 1, i32 1}
!804 = !{!"branch_weights", i32 1, i32 48}
!805 = !{!"branch_weights", i32 48, i32 1}
!806 = !{!"branch_weights", i32 1, i32 70455}
!807 = !{!"branch_weights", i32 1, i32 45551, i32 1}
!808 = !{!"branch_weights", i32 95, i32 45457}
!809 = distinct !{!809, !283}
!810 = !{!"branch_weights", i32 65616, i32 70455}
!811 = distinct !{!811, !283}
!812 = !{!"function_entry_count", i64 21}
!813 = !{!"ira.c:contains_replace_regs"}
!814 = !{!"branch_weights", i32 8, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 8}
!815 = !{!"branch_weights", i32 1, i32 15, i32 1}
!816 = !{!"branch_weights", i32 15, i32 1}
!817 = distinct !{!817, !283}
!818 = !{!"branch_weights", i32 113, i32 127}
!819 = distinct !{!819, !283}
!820 = !{!"function_entry_count", i64 7}
!821 = !{!"ira.c:memref_used_between_p"}
!822 = !{!"branch_weights", i32 80, i32 568}
!823 = !{!"branch_weights", i32 1, i32 17}
!824 = distinct !{!824, !283}
!825 = !{!"function_entry_count", i64 310786}
!826 = !{!"ira.c:df_live_get_bb_info"}
!827 = !{!"branch_weights", i32 310787, i32 1}
!828 = !{!"ira.c:adjust_cleared_regs"}
!829 = !{!"function_entry_count", i64 24675}
!830 = !{!"ira.c:validate_equiv_mem_from_store"}
!831 = !{!"branch_weights", i32 24676, i32 1}
!832 = !{!"function_entry_count", i64 49}
!833 = !{!"ira.c:memref_referenced_p"}
!834 = !{!"branch_weights", i32 8, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 22, i32 8, i32 8}
!835 = !{!"branch_weights", i32 15, i32 8}
!836 = !{!"branch_weights", i32 1, i32 239}
!837 = !{!"branch_weights", i32 1, i32 22, i32 1}
!838 = !{!"branch_weights", i32 22, i32 1}
!839 = distinct !{!839, !283}
!840 = !{!"branch_weights", i32 225, i32 239}
!841 = distinct !{!841, !283}
!842 = !{!"ira.c:ira_allocno_iter_init"}
!843 = !{!844, !273, i64 0}
!844 = !{!"", !273, i64 0}
!845 = !{!"function_entry_count", i64 214942}
!846 = !{!"ira.c:ira_allocno_iter_cond"}
!847 = !{!"branch_weights", i32 1, i32 214867}
!848 = !{!"branch_weights", i32 153, i32 429581}
!849 = distinct !{!849, !283}
!850 = !{!"function_entry_count", i64 730}
!851 = !{!"ira.c:ira_hard_reg_not_in_set_p"}
!852 = !{!"branch_weights", i32 731, i32 665}
!853 = !{!"branch_weights", i32 665, i32 67}
!854 = distinct !{!854, !283}
!855 = !{!"ira.c:VEC_rtx_gc_reserve_exact"}
!856 = !{!"ira.c:VEC_rtx_base_space"}
!857 = !{!703, !273, i64 4}
!858 = !{!"function_entry_count", i64 311308}
!859 = !{!"ira.c:bmp_iter_set_init"}
!860 = !{!861, !268, i64 0}
!861 = !{!"", !268, i64 0, !268, i64 8, !273, i64 16, !274, i64 24}
!862 = !{!861, !268, i64 8}
!863 = !{!864, !273, i64 16}
!864 = !{!"bitmap_element_def", !268, i64 0, !268, i64 8, !273, i64 16, !269, i64 24}
!865 = !{!"branch_weights", i32 311309, i32 1}
!866 = !{!861, !273, i64 16}
!867 = !{!861, !274, i64 24}
!868 = !{!"function_entry_count", i64 1168684}
!869 = !{!"ira.c:bmp_iter_set"}
!870 = !{!"branch_weights", i32 410274, i32 758412}
!871 = !{!"branch_weights", i32 1011150, i32 1}
!872 = !{!"branch_weights", i32 9288339, i32 1011150}
!873 = distinct !{!873, !283}
!874 = !{!"branch_weights", i32 1, i32 408887}
!875 = !{!"branch_weights", i32 451463, i32 252740}
!876 = !{!"branch_weights", i32 408887, i32 295315}
!877 = distinct !{!877, !283}
!878 = !{!864, !268, i64 0}
!879 = !{!"branch_weights", i32 157535, i32 251354}
!880 = !{!"function_entry_count", i64 857376}
!881 = !{!"ira.c:bmp_iter_next"}
!882 = !{!"function_entry_count", i64 706667}
!883 = !{!"ira.c:pseudo_for_reload_consideration_p"}
!884 = !{!"branch_weights", i32 705762, i32 907}
!885 = !{!"branch_weights", i32 907, i32 1}
!886 = !{!"function_entry_count", i64 202}
!887 = !{!"ira.c:init_live_subregs"}
!888 = !{!"ira.c:RESET_BIT"}
!889 = !{!890, !268, i64 0}
!890 = !{!"simple_bitmap_def", !268, i64 0, !273, i64 8, !273, i64 12, !269, i64 16}
!891 = !{!"ira.c:SET_BIT"}
!892 = !{!"ira.c:print_insn_chains"}
!893 = distinct !{!893, !283}
!894 = !{!"ira.c:print_insn_chain"}
