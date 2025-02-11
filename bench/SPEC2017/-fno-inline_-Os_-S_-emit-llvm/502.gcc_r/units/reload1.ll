; ModuleID = 'reload1.c'
source_filename = "reload1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
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
%struct.reload = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.elim_table_1 = type { i32, i32 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_chain = type { ptr, ptr, ptr, ptr, i32, i8, %struct.bitmap_head_def, %struct.bitmap_head_def, ptr, i32, i64 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.elim_table = type { i32, i32, i64, i32, i32, i64, i64, i32, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.VEC_rtx_p_base = type { i32, i32, [1 x ptr] }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@reload_in_progress = dso_local local_unnamed_addr global i32 0, align 4
@spill_indirect_levels = internal unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@indirect_symref_ok = dso_local local_unnamed_addr global i8 0, align 1
@double_reg_address_ok = dso_local local_unnamed_addr global i8 0, align 1
@reload_obstack = internal global %struct.obstack zeroinitializer, align 8
@reload_startobj = internal unnamed_addr global ptr null, align 8
@spilled_pseudos = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@changed_allocation_pseudos = internal global %struct.bitmap_head_def zeroinitializer, align 8
@pseudos_counted = internal global %struct.bitmap_head_def zeroinitializer, align 8
@unused_insn_chains = internal unnamed_addr global ptr null, align 8
@reg_renumber = external local_unnamed_addr global ptr, align 8
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reload1.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@failure = internal unnamed_addr global i1 false, align 4
@reload_firstobj = internal unnamed_addr global ptr null, align 8
@reload_first_uid = dso_local local_unnamed_addr global i32 0, align 4
@spill_stack_slot = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@spill_stack_slot_width = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@max_regno = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@reg_equiv_constant = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_invariant = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_mem = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_alt_mem_list = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_address = dso_local local_unnamed_addr global ptr null, align 8
@reg_max_ref_width = internal unnamed_addr global ptr null, align 8
@reg_old_renumber = internal unnamed_addr global ptr null, align 8
@pseudo_forbidden_regs = internal unnamed_addr global ptr null, align 8
@pseudo_previous_regs = internal unnamed_addr global ptr null, align 8
@bad_spill_regs_global = internal unnamed_addr global i64 0, align 8
@num_eliminable_invariants = internal unnamed_addr global i32 0, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reg_equiv_memory_loc = dso_local local_unnamed_addr global ptr null, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reg_equiv_init = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"init_insns for %u: \00", align 1
@first_label_num = internal unnamed_addr global i32 0, align 4
@num_labels = internal unnamed_addr global i32 0, align 4
@offsets_known_at = internal unnamed_addr global ptr null, align 8
@offsets_at = internal unnamed_addr global ptr null, align 8
@temp_pseudo_reg_arr = internal unnamed_addr global ptr null, align 8
@num_eliminable = internal unnamed_addr global i32 0, align 4
@insns_need_reload = internal unnamed_addr global ptr null, align 8
@something_needs_elimination = internal unnamed_addr global i1 false, align 4
@last_spill_reg = internal unnamed_addr global i32 0, align 4
@used_spill_regs = internal unnamed_addr global i64 0, align 8
@reg_eliminate = internal unnamed_addr global ptr null, align 8
@caller_save_needed = dso_local local_unnamed_addr global i32 0, align 4
@something_needs_operands_changed = internal unnamed_addr global i32 0, align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@df = external local_unnamed_addr global ptr, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.5 = private unnamed_addr constant [43 x i8] c"%<asm%> operand has impossible constraints\00", align 1
@flag_stack_check = external local_unnamed_addr global i32, align 4
@reload.verbose_warned = internal unnamed_addr global i1 false, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"frame size too large for reliable stack checking\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"try reducing the number of local variables\00", align 1
@reg_equiv_memory_loc_vec = dso_local local_unnamed_addr global ptr null, align 8
@n_spills = internal unnamed_addr global i32 0, align 4
@spill_regs = internal unnamed_addr global [53 x i16] zeroinitializer, align 16
@substitute_stack = internal unnamed_addr global ptr null, align 8
@rld = external global [180 x %struct.reload], align 16
@spill_reg_order = internal global [53 x i16] zeroinitializer, align 16
@reload_spill_index = internal unnamed_addr global [180 x i32] zeroinitializer, align 16
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@reg_equiv_init_size = dso_local local_unnamed_addr global i32 0, align 4
@reload_in_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@reload_out_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@reload_insn_chain = dso_local local_unnamed_addr global ptr null, align 8
@num_not_at_initial_offset = dso_local local_unnamed_addr global i32 0, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@optimize = external local_unnamed_addr global i32, align 4
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@recog_data = external global %struct.recog_data, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reload_insn_firstobj = internal unnamed_addr global ptr null, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@n_reloads = external local_unnamed_addr global i32, align 4
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@reload_order = internal global [180 x i16] zeroinitializer, align 16
@used_spill_regs_local = internal unnamed_addr global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Spilling for insn %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"reload failure for reload %d\0A\00", align 1
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@fixed_reg_set = external local_unnamed_addr global i64, align 8
@bad_spill_regs = internal unnamed_addr global i64 0, align 8
@spill_cost = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@spill_add_cost = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@hard_regno_to_pseudo_regno = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_info_p = external local_unnamed_addr global ptr, align 8
@find_reg.regno_pseudo_regs = internal global [53 x i32] zeroinitializer, align 16
@find_reg.best_regno_pseudo_regs = internal global [53 x i32] zeroinitializer, align 16
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@inv_reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@.str.10 = private unnamed_addr constant [28 x i8] c"Using reg %d for reload %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"can't find a register in class %qs while reloading %<asm%>\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.12 = private unnamed_addr constant [48 x i8] c"unable to find a register to spill in class %qs\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\0AReloads for insn # %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"this is the insn:\00", align 1
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@reg_eliminate_1 = internal unnamed_addr constant [4 x %struct.elim_table_1] [%struct.elim_table_1 { i32 16, i32 7 }, %struct.elim_table_1 { i32 16, i32 6 }, %struct.elim_table_1 { i32 20, i32 7 }, %struct.elim_table_1 { i32 20, i32 6 }], align 16
@.str.15 = private unnamed_addr constant [29 x i8] c" Register %d now on stack.\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c" Register %d now in %d.\0A\0A\00", align 1
@spill_reg_rtx = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@spill_reg_store = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@reg_last_reload_reg = internal unnamed_addr global ptr null, align 8
@reg_has_output_reload = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reg_reloaded_valid = internal unnamed_addr global i64 0, align 8
@reg_is_output_reload = internal unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [43 x i8] c"%<asm%> operand requires impossible reload\00", align 1
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@reg_class_superunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@reg_reloaded_contents = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@n_earlyclobbers = external local_unnamed_addr global i32, align 4
@reload_earlyclobbers = external local_unnamed_addr global [30 x ptr], align 16
@reg_used_in_insn = internal global i64 0, align 8
@reg_reloaded_dead = internal unnamed_addr global i64 0, align 8
@reload_override_in = internal unnamed_addr global [180 x ptr] zeroinitializer, align 16
@reg_reloaded_insn = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@reload_inheritance_insn = internal unnamed_addr global [180 x ptr] zeroinitializer, align 16
@reload_inherited = internal unnamed_addr global [180 x i8] zeroinitializer, align 16
@reload_reg_used_for_inherit = internal unnamed_addr global i64 0, align 8
@reload_reg_unavailable = internal unnamed_addr global i64 0, align 8
@reload_reg_used_at_all = internal unnamed_addr global i64 0, align 8
@reload_reg_used = internal unnamed_addr global i64 0, align 8
@reload_reg_used_in_op_addr = internal unnamed_addr global i64 0, align 8
@reload_reg_used_in_op_addr_reload = internal unnamed_addr global i64 0, align 8
@reload_reg_used_in_insn = internal unnamed_addr global i64 0, align 8
@reload_reg_used_in_other_addr = internal unnamed_addr global i64 0, align 8
@reload_n_operands = external local_unnamed_addr global i32, align 4
@reload_reg_used_in_output = internal unnamed_addr global [30 x i64] zeroinitializer, align 16
@reload_reg_used_in_input = internal unnamed_addr global [30 x i64] zeroinitializer, align 16
@reload_reg_used_in_input_addr = internal unnamed_addr global [30 x i64] zeroinitializer, align 16
@reload_reg_used_in_inpaddr_addr = internal unnamed_addr global [30 x i64] zeroinitializer, align 16
@reload_reg_used_in_output_addr = internal unnamed_addr global [30 x i64] zeroinitializer, align 16
@reload_reg_used_in_outaddr_addr = internal unnamed_addr global [30 x i64] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [32 x i8] c"could not find a spill register\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"%<asm%> operand constraint incompatible with operand size\00", align 1
@reg_reloaded_died = internal unnamed_addr global i64 0, align 8
@other_output_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@outaddr_address_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@output_address_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@output_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@inpaddr_address_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@input_address_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@input_reload_insns = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@other_input_address_reload_insns = internal unnamed_addr global ptr null, align 8
@other_input_reload_insns = internal unnamed_addr global ptr null, align 8
@operand_reload_insns = internal unnamed_addr global ptr null, align 8
@other_operand_reload_insns = internal unnamed_addr global ptr null, align 8
@new_spill_reg_store = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@reload_reg_rtx_for_output = internal unnamed_addr global [180 x ptr] zeroinitializer, align 16
@spill_reg_stored_to = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@reload_reg_rtx_for_input = internal unnamed_addr global [180 x ptr] zeroinitializer, align 16
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.20 = private unnamed_addr constant [26 x i8] c"Failure trying to reload:\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"VOIDmode on an output\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"output operand is constant in %<asm%>\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16
@.str.23 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_reload() local_unnamed_addr #0 {
  %1 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 58) #22
  %2 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4) #22
  %3 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %1, ptr noundef %2) #22
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #22
  store i8 0, ptr @spill_indirect_levels, align 1, !tbaa !5
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %4, i8 noundef zeroext 0) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %0, %7
  %8 = phi ptr [ %11, %7 ], [ %4, %0 ]
  %9 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !5
  %10 = add i8 %9, 1
  store i8 %10, ptr @spill_indirect_levels, align 1, !tbaa !5
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %8) #22
  %12 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %11, i8 noundef zeroext 0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7, !llvm.loop !8

14:                                               ; preds = %7, %0
  %15 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef nonnull @.str) #22
  %16 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %15) #22
  %17 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %16, i8 noundef zeroext 0) #22
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr @indirect_symref_ok, align 1, !tbaa !5
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 53
  br i1 %21, label %31, label %22, !llvm.loop !10

22:                                               ; preds = %14, %19
  %23 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %24 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 6) #22
  %25 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %23) #22
  %26 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %24, ptr noundef %25) #22
  %27 = tail call ptr @plus_constant(ptr noundef %26, i64 noundef 4) #22
  %28 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %27, i8 noundef zeroext 0) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30

30:                                               ; preds = %22
  store i8 1, ptr @double_reg_address_ok, align 1, !tbaa !5
  br label %31

31:                                               ; preds = %19, %30
  %32 = tail call i32 @_obstack_begin(ptr noundef nonnull @reload_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %40 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %42

42:                                               ; preds = %31, %39
  %43 = phi ptr [ %34, %31 ], [ %41, %39 ]
  %44 = phi i64 [ 0, %31 ], [ %40, %39 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %50 = or i8 %49, 2
  store i8 %50, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %51

51:                                               ; preds = %42, %48
  %52 = ptrtoint ptr %46 to i64
  store i64 %52, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %53 = ptrtoint ptr %45 to i64
  %54 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = xor i32 %54, -1
  %58 = sext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = inttoptr i64 %59 to ptr
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %59, %62
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %65, %62
  %67 = icmp sgt i64 %63, %66
  %68 = select i1 %67, ptr %64, ptr %60
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %46, ptr @reload_startobj, align 8, !tbaa !21
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @spilled_pseudos) #23
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @changed_allocation_pseudos) #23
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @pseudos_counted) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #3

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @new_insn_chain() local_unnamed_addr #0 {
  %1 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %42

3:                                                ; preds = %0
  store i64 128, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 128
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 128) #22
  %11 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %5, %3 ], [ %12, %10 ]
  %15 = phi i64 [ 128, %3 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  %39 = select i1 %38, ptr %35, ptr %31
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %40 = getelementptr inbounds %struct.insn_chain, ptr %17, i64 0, i32 6
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %40) #23
  %41 = getelementptr inbounds %struct.insn_chain, ptr %17, i64 0, i32 7
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %41) #23
  br label %44

42:                                               ; preds = %0
  %43 = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %43, ptr @unused_insn_chains, align 8, !tbaa !21
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi ptr [ %17, %22 ], [ %1, %42 ]
  %46 = getelementptr inbounds %struct.insn_chain, ptr %45, i64 0, i32 5
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, -16
  store i8 %48, ptr %46, align 4
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_use_by_pseudos(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 53, ptr noundef nonnull %3) #23
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2, %29
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %9 = load i32, ptr %3, align 4, !tbaa !27
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %8, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !28
  %13 = icmp slt i16 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %16 = icmp ne i8 %15, 0
  %17 = load i32, ptr @reload_completed, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2) #22
  br label %29

21:                                               ; preds = %7
  %22 = zext nneg i16 %12 to i32
  %23 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %24 = getelementptr inbounds ptr, ptr %23, i64 %10
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  tail call fastcc void @add_to_hard_reg_set(ptr noundef %0, i32 noundef %28, i32 noundef %22) #23
  br label %29

29:                                               ; preds = %20, %14, %21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %7, !llvm.loop !30

32:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 {
  %5 = load ptr, ptr %1, align 8, !tbaa !31
  store ptr %5, ptr %0, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !34
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !32
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !37
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !39
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !27
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !40

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !27
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !27
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !37
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !32
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !37
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !38
  store i64 %35, ptr %3, align 8, !tbaa !39
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !27
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !27
  %40 = load i32, ptr %23, align 8, !tbaa !37
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !37
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !41

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !42
  store ptr %44, ptr %0, align 8, !tbaa !32
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !35
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !27
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !39
  store i32 %16, ptr %1, align 4, !tbaa !27
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #23
  %5 = load i64, ptr %0, align 8, !tbaa !38
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !llvm.loop !43

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !39
  %6 = load i32, ptr %1, align 4, !tbaa !27
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reload(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  tail call void @init_recog() #22
  store i1 false, ptr @failure, align 4
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %11 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %5, %2 ], [ %12, %10 ]
  %15 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  %39 = select i1 %38, ptr %35, ptr %31
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %17, ptr @reload_firstobj, align 8, !tbaa !21
  %40 = tail call ptr @emit_note(i32 noundef 0) #22
  %41 = tail call i32 @get_max_uid() #22
  store i32 %41, ptr @reload_first_uid, align 4, !tbaa !27
  tail call void @clear_secondary_mem() #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_stack_slot, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_stack_slot_width, i8 0, i64 212, i1 false)
  tail call void @init_save_areas() #22
  %42 = load i32, ptr @max_regno, align 4, !tbaa !27
  %43 = icmp sgt i32 %42, 53
  br i1 %43, label %44, label %49

44:                                               ; preds = %22, %44
  %45 = phi i32 [ %46, %44 ], [ 53, %22 ]
  tail call void @mark_home_live(i32 noundef %45) #23
  %46 = add nuw nsw i32 %45, 1
  %47 = load i32, ptr @max_regno, align 4, !tbaa !27
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %44, label %49, !llvm.loop !44

49:                                               ; preds = %44, %22
  %50 = load ptr, ptr @cfun, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 20
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = tail call fastcc zeroext i8 @has_nonexceptional_receiver() #23, !range !26
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !45
  br label %62

59:                                               ; preds = %55, %49
  %60 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !45
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %58, %59
  br label %63

63:                                               ; preds = %62, %74
  %64 = phi i64 [ %75, %74 ], [ 0, %62 ]
  %65 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %64
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = trunc i64 %64 to i32
  tail call void @df_set_regs_ever_live(i32 noundef %73, i8 noundef zeroext 1) #22
  br label %74

74:                                               ; preds = %63, %68, %72
  %75 = add nuw nsw i64 %64, 1
  %76 = icmp eq i64 %75, 53
  br i1 %76, label %77, label %63, !llvm.loop !54

77:                                               ; preds = %74, %59
  %78 = load i32, ptr @max_regno, align 4, !tbaa !27
  %79 = sext i32 %78 to i64
  %80 = tail call ptr @xcalloc(i64 noundef %79, i64 noundef 8) #22
  store ptr %80, ptr @reg_equiv_constant, align 8, !tbaa !21
  %81 = load i32, ptr @max_regno, align 4, !tbaa !27
  %82 = sext i32 %81 to i64
  %83 = tail call ptr @xcalloc(i64 noundef %82, i64 noundef 8) #22
  store ptr %83, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %84 = load i32, ptr @max_regno, align 4, !tbaa !27
  %85 = sext i32 %84 to i64
  %86 = tail call ptr @xcalloc(i64 noundef %85, i64 noundef 8) #22
  store ptr %86, ptr @reg_equiv_mem, align 8, !tbaa !21
  %87 = load i32, ptr @max_regno, align 4, !tbaa !27
  %88 = sext i32 %87 to i64
  %89 = tail call ptr @xcalloc(i64 noundef %88, i64 noundef 8) #22
  store ptr %89, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !21
  %90 = load i32, ptr @max_regno, align 4, !tbaa !27
  %91 = sext i32 %90 to i64
  %92 = tail call ptr @xcalloc(i64 noundef %91, i64 noundef 8) #22
  store ptr %92, ptr @reg_equiv_address, align 8, !tbaa !21
  %93 = load i32, ptr @max_regno, align 4, !tbaa !27
  %94 = sext i32 %93 to i64
  %95 = tail call ptr @xcalloc(i64 noundef %94, i64 noundef 4) #22
  store ptr %95, ptr @reg_max_ref_width, align 8, !tbaa !21
  %96 = load i32, ptr @max_regno, align 4, !tbaa !27
  %97 = sext i32 %96 to i64
  %98 = tail call ptr @xcalloc(i64 noundef %97, i64 noundef 2) #22
  store ptr %98, ptr @reg_old_renumber, align 8, !tbaa !21
  %99 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %100 = load i32, ptr @max_regno, align 4, !tbaa !27
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %98, ptr align 2 %99, i64 %102, i1 false)
  %103 = load i32, ptr @max_regno, align 4, !tbaa !27
  %104 = sext i32 %103 to i64
  %105 = shl nsw i64 %104, 3
  %106 = tail call ptr @xmalloc(i64 noundef %105) #22
  store ptr %106, ptr @pseudo_forbidden_regs, align 8, !tbaa !21
  %107 = load i32, ptr @max_regno, align 4, !tbaa !27
  %108 = sext i32 %107 to i64
  %109 = tail call ptr @xcalloc(i64 noundef %108, i64 noundef 8) #22
  store ptr %109, ptr @pseudo_previous_regs, align 8, !tbaa !21
  store i64 0, ptr @bad_spill_regs_global, align 8, !tbaa !38
  store i32 0, ptr @num_eliminable_invariants, align 4, !tbaa !27
  %110 = icmp eq ptr %0, null
  br i1 %110, label %259, label %111

111:                                              ; preds = %77, %255
  %112 = phi ptr [ %257, %255 ], [ %0, %77 ]
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = add nsw i32 %114, -7
  %116 = icmp ult i32 %115, 4
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 23
  br i1 %122, label %134, label %123

123:                                              ; preds = %117
  %124 = tail call ptr @single_set_2(ptr noundef nonnull %112, ptr noundef nonnull %119) #22
  %125 = load i32, ptr %112, align 8
  %126 = and i32 %125, 65535
  %127 = add nsw i32 %126, -7
  br label %128

128:                                              ; preds = %111, %123
  %129 = phi i32 [ %115, %111 ], [ %127, %123 ]
  %130 = phi i32 [ %114, %111 ], [ %126, %123 ]
  %131 = phi i32 [ %113, %111 ], [ %125, %123 ]
  %132 = phi ptr [ null, %111 ], [ %124, %123 ]
  %133 = icmp ult i32 %129, 4
  br i1 %133, label %134, label %149

134:                                              ; preds = %117, %128
  %135 = phi ptr [ %132, %128 ], [ %119, %117 ]
  %136 = phi i32 [ %131, %128 ], [ %113, %117 ]
  %137 = phi i32 [ %130, %128 ], [ %114, %117 ]
  %138 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = icmp ne i32 %141, 24
  %143 = and i32 %136, 16711680
  %144 = icmp eq i32 %143, 0
  %145 = or i1 %144, %142
  br i1 %145, label %149, label %146

146:                                              ; preds = %134
  %147 = and i32 %136, -16711681
  store i32 %147, ptr %112, align 8
  %148 = and i32 %136, 65535
  br label %149

149:                                              ; preds = %128, %146, %134
  %150 = phi ptr [ %132, %128 ], [ %135, %146 ], [ %135, %134 ]
  %151 = phi i32 [ %130, %128 ], [ %148, %146 ], [ %137, %134 ]
  %152 = add nsw i32 %151, -11
  %153 = icmp ult i32 %152, -3
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %156) #23
  br label %157

157:                                              ; preds = %149, %154
  %158 = icmp eq ptr %150, null
  br i1 %158, label %255, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 37
  br i1 %164, label %165, label %255

165:                                              ; preds = %159
  %166 = tail call ptr @find_reg_note(ptr noundef nonnull %112, i32 noundef 3, ptr noundef null) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %255, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %160, align 8, !tbaa !5
  %170 = tail call fastcc i32 @rhs_regno(ptr noundef %169) #23
  %171 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = icmp slt i32 %170, 58
  br i1 %173, label %255, label %174

174:                                              ; preds = %168
  %175 = tail call i32 @function_invariant_p(ptr noundef %172) #23, !range !55
  %176 = icmp ne i32 %175, 0
  %177 = load i32, ptr @flag_pic, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load i32, ptr %172, align 8
  %182 = and i32 %181, 65535
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !27
  %186 = icmp eq i32 %185, 9
  br i1 %186, label %187, label %251

187:                                              ; preds = %180
  %188 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %172) #22
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %251, label %190

190:                                              ; preds = %187, %174
  %191 = tail call i32 @memory_operand(ptr noundef %172, i32 noundef 0) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = tail call ptr @copy_rtx(ptr noundef %172) #22
  %195 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %196 = zext nneg i32 %170 to i64
  %197 = getelementptr inbounds ptr, ptr %195, i64 %196
  store ptr %194, ptr %197, align 8, !tbaa !21
  br label %255

198:                                              ; preds = %190
  %199 = tail call i32 @function_invariant_p(ptr noundef %172) #23, !range !55
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %247, label %201

201:                                              ; preds = %198
  %202 = load i32, ptr %172, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 49
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = tail call ptr @copy_rtx(ptr noundef nonnull %172) #22
  %207 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %208 = zext nneg i32 %170 to i64
  %209 = getelementptr inbounds ptr, ptr %207, i64 %208
  store ptr %206, ptr %209, align 8, !tbaa !21
  %210 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !27
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr @num_eliminable_invariants, align 4, !tbaa !27
  br label %255

212:                                              ; preds = %201
  %213 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !21
  %214 = icmp eq ptr %172, %213
  %215 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %216 = icmp eq ptr %172, %215
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %220 = zext nneg i32 %170 to i64
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  store ptr %172, ptr %221, align 8, !tbaa !21
  %222 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !27
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr @num_eliminable_invariants, align 4, !tbaa !27
  br label %255

224:                                              ; preds = %212
  %225 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %172) #22
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %229 = zext nneg i32 %170 to i64
  %230 = getelementptr inbounds ptr, ptr %228, i64 %229
  store ptr %172, ptr %230, align 8, !tbaa !21
  br label %255

231:                                              ; preds = %224
  %232 = load ptr, ptr %160, align 8, !tbaa !5
  %233 = load i32, ptr %232, align 8
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  %236 = tail call ptr @force_const_mem(i32 noundef %235, ptr noundef nonnull %172) #22
  %237 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %238 = zext nneg i32 %170 to i64
  %239 = getelementptr inbounds ptr, ptr %237, i64 %238
  store ptr %236, ptr %239, align 8, !tbaa !21
  %240 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %241 = getelementptr inbounds ptr, ptr %240, i64 %238
  %242 = load ptr, ptr %241, align 8, !tbaa !21
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %255

244:                                              ; preds = %231
  %245 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %246 = getelementptr inbounds ptr, ptr %245, i64 %238
  store ptr null, ptr %246, align 8, !tbaa !21
  br label %255

247:                                              ; preds = %198
  %248 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %249 = zext nneg i32 %170 to i64
  %250 = getelementptr inbounds ptr, ptr %248, i64 %249
  store ptr null, ptr %250, align 8, !tbaa !21
  br label %255

251:                                              ; preds = %187, %180
  %252 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %253 = zext nneg i32 %170 to i64
  %254 = getelementptr inbounds ptr, ptr %252, i64 %253
  store ptr null, ptr %254, align 8, !tbaa !21
  br label %255

255:                                              ; preds = %247, %165, %168, %157, %159, %251, %218, %231, %244, %227, %205, %193
  %256 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 2
  %257 = load ptr, ptr %256, align 8, !tbaa !5
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %111, !llvm.loop !56

259:                                              ; preds = %255, %77
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %261 = icmp ne ptr %260, null
  %262 = load i32, ptr @max_regno, align 4
  %263 = icmp sgt i32 %262, 53
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %292

265:                                              ; preds = %259
  %266 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  br label %267

267:                                              ; preds = %265, %286
  %268 = phi i32 [ %262, %265 ], [ %287, %286 ]
  %269 = phi ptr [ %266, %265 ], [ %288, %286 ]
  %270 = phi i64 [ 53, %265 ], [ %289, %286 ]
  %271 = getelementptr inbounds ptr, ptr %269, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !21
  %273 = icmp eq ptr %272, null
  br i1 %273, label %286, label %274

274:                                              ; preds = %267
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %276 = trunc i64 %270 to i32
  %277 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.3, i32 noundef %276) #23
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %279 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %280 = getelementptr inbounds ptr, ptr %279, i64 %270
  %281 = load ptr, ptr %280, align 8, !tbaa !21
  tail call void @print_inline_rtx(ptr noundef %278, ptr noundef %281, i32 noundef 20) #22
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %283 = tail call i32 @fputc(i32 10, ptr %282)
  %284 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %285 = load i32, ptr @max_regno, align 4, !tbaa !27
  br label %286

286:                                              ; preds = %267, %274
  %287 = phi i32 [ %268, %267 ], [ %285, %274 ]
  %288 = phi ptr [ %269, %267 ], [ %284, %274 ]
  %289 = add nuw nsw i64 %270, 1
  %290 = sext i32 %287 to i64
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %267, label %292, !llvm.loop !57

292:                                              ; preds = %286, %259
  tail call fastcc void @init_elim_table() #23
  %293 = tail call i32 @get_first_label_num() #22
  store i32 %293, ptr @first_label_num, align 4, !tbaa !27
  %294 = tail call i32 @max_label_num() #22
  %295 = load i32, ptr @first_label_num, align 4, !tbaa !27
  %296 = sub nsw i32 %294, %295
  store i32 %296, ptr @num_labels, align 4, !tbaa !27
  %297 = sext i32 %296 to i64
  %298 = tail call ptr @xmalloc(i64 noundef %297) #22
  store ptr %298, ptr @offsets_known_at, align 8, !tbaa !21
  %299 = load i32, ptr @num_labels, align 4, !tbaa !27
  %300 = sext i32 %299 to i64
  %301 = shl nsw i64 %300, 5
  %302 = tail call ptr @xmalloc(i64 noundef %301) #22
  store ptr %302, ptr @offsets_at, align 8, !tbaa !21
  %303 = load i32, ptr @max_regno, align 4, !tbaa !27
  %304 = add nsw i32 %303, -58
  %305 = sext i32 %304 to i64
  %306 = shl nsw i64 %305, 2
  %307 = tail call ptr @xmalloc(i64 noundef %306) #22
  store ptr %307, ptr @temp_pseudo_reg_arr, align 8, !tbaa !21
  %308 = load i32, ptr @max_regno, align 4, !tbaa !27
  %309 = icmp sgt i32 %308, 58
  br i1 %309, label %310, label %320

310:                                              ; preds = %292, %310
  %311 = phi i64 [ %313, %310 ], [ 0, %292 ]
  %312 = phi i32 [ %315, %310 ], [ 58, %292 ]
  %313 = add nuw nsw i64 %311, 1
  %314 = getelementptr inbounds i32, ptr %307, i64 %311
  store i32 %312, ptr %314, align 4, !tbaa !27
  %315 = add nuw nsw i32 %312, 1
  %316 = load i32, ptr @max_regno, align 4, !tbaa !27
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %310, label %318, !llvm.loop !58

318:                                              ; preds = %310
  %319 = trunc i64 %313 to i32
  br label %320

320:                                              ; preds = %318, %292
  %321 = phi i32 [ 0, %292 ], [ %319, %318 ]
  %322 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !21
  tail call void @ira_sort_regnos_for_alter_reg(ptr noundef %307, i32 noundef %321, ptr noundef %325) #22
  br label %326

326:                                              ; preds = %324, %320
  %327 = icmp eq i32 %321, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %326
  %329 = zext i32 %321 to i64
  br label %335

330:                                              ; preds = %335, %326
  %331 = icmp ne ptr %0, null
  %332 = load i32, ptr @num_eliminable, align 4
  %333 = icmp ne i32 %332, 0
  %334 = select i1 %331, i1 %333, i1 false
  br i1 %334, label %342, label %360

335:                                              ; preds = %328, %335
  %336 = phi i64 [ 0, %328 ], [ %340, %335 ]
  %337 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !21
  %338 = getelementptr inbounds i32, ptr %337, i64 %336
  %339 = load i32, ptr %338, align 4, !tbaa !27
  tail call fastcc void @alter_reg(i32 noundef %339, i32 noundef -1, i8 noundef zeroext 0) #23
  %340 = add nuw nsw i64 %336, 1
  %341 = icmp eq i64 %340, %329
  br i1 %341, label %330, label %335, !llvm.loop !59

342:                                              ; preds = %330, %353
  %343 = phi i32 [ %354, %353 ], [ %332, %330 ]
  %344 = phi ptr [ %356, %353 ], [ %0, %330 ]
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 65535
  %347 = add nsw i32 %346, -7
  %348 = icmp ult i32 %347, 4
  br i1 %348, label %349, label %353

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 1
  %351 = load ptr, ptr %350, align 8, !tbaa !5
  tail call void @note_stores(ptr noundef %351, ptr noundef nonnull @mark_not_eliminable, ptr noundef null) #22
  %352 = load i32, ptr @num_eliminable, align 4
  br label %353

353:                                              ; preds = %342, %349
  %354 = phi i32 [ %343, %342 ], [ %352, %349 ]
  %355 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1, i32 0, i32 0, i64 2
  %356 = load ptr, ptr %355, align 8, !tbaa !5
  %357 = icmp ne ptr %356, null
  %358 = icmp ne i32 %354, 0
  %359 = select i1 %357, i1 %358, i1 false
  br i1 %359, label %342, label %360, !llvm.loop !60

360:                                              ; preds = %353, %330
  tail call fastcc void @maybe_fix_stack_asms() #23
  store ptr null, ptr @insns_need_reload, align 8, !tbaa !21
  store i1 false, ptr @something_needs_elimination, align 4
  store i32 -1, ptr @last_spill_reg, align 4, !tbaa !27
  store i64 0, ptr @used_spill_regs, align 8, !tbaa !38
  %361 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %362 = getelementptr inbounds %struct.elim_table, ptr %361, i64 4
  br label %363

363:                                              ; preds = %360, %383
  %364 = phi ptr [ %384, %383 ], [ %361, %360 ]
  %365 = phi ptr [ %385, %383 ], [ %362, %360 ]
  %366 = phi ptr [ %374, %383 ], [ %361, %360 ]
  %367 = load i32, ptr %366, align 8, !tbaa !61
  br label %368

368:                                              ; preds = %376, %363
  %369 = phi i32 [ 0, %363 ], [ %373, %376 ]
  %370 = phi ptr [ %366, %363 ], [ %374, %376 ]
  %371 = getelementptr inbounds %struct.elim_table, ptr %370, i64 0, i32 3
  %372 = load i32, ptr %371, align 8, !tbaa !63
  %373 = or i32 %372, %369
  %374 = getelementptr inbounds %struct.elim_table, ptr %370, i64 1
  %375 = icmp ult ptr %374, %365
  br i1 %375, label %376, label %379

376:                                              ; preds = %368
  %377 = load i32, ptr %374, align 8, !tbaa !61
  %378 = icmp eq i32 %377, %367
  br i1 %378, label %368, label %379, !llvm.loop !64

379:                                              ; preds = %368, %376
  %380 = icmp eq i32 %373, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %379
  tail call fastcc void @spill_hard_reg(i32 noundef %367) #23
  %382 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi ptr [ %382, %381 ], [ %364, %379 ]
  %385 = getelementptr inbounds %struct.elim_table, ptr %384, i64 4
  %386 = icmp ult ptr %374, %385
  br i1 %386, label %363, label %387, !llvm.loop !65

387:                                              ; preds = %383
  %388 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %387
  tail call fastcc void @spill_hard_reg(i32 noundef 6) #23
  br label %391

391:                                              ; preds = %390, %387
  %392 = tail call fastcc i32 @finish_spills(i32 noundef %1) #23, !range !55
  store i32 1, ptr @reload_in_progress, align 4, !tbaa !27
  br label %393

393:                                              ; preds = %598, %391
  %394 = tail call i64 @get_frame_size() #22
  tail call fastcc void @set_initial_elim_offsets() #23
  tail call fastcc void @set_initial_label_offsets() #23
  %395 = load i32, ptr @max_regno, align 4, !tbaa !27
  %396 = icmp sgt i32 %395, 53
  br i1 %396, label %397, label %480

397:                                              ; preds = %393, %475
  %398 = phi i64 [ %476, %475 ], [ 53, %393 ]
  %399 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %400 = getelementptr inbounds i16, ptr %399, i64 %398
  %401 = load i16, ptr %400, align 2, !tbaa !28
  %402 = icmp slt i16 %401, 0
  br i1 %402, label %403, label %475

403:                                              ; preds = %397
  %404 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %405 = getelementptr inbounds ptr, ptr %404, i64 %398
  %406 = load ptr, ptr %405, align 8, !tbaa !21
  %407 = icmp eq ptr %406, null
  br i1 %407, label %475, label %408

408:                                              ; preds = %403
  %409 = tail call ptr @eliminate_regs(ptr noundef nonnull %406, i32 noundef 0, ptr noundef null) #23
  %410 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %411 = getelementptr inbounds ptr, ptr %410, i64 %398
  %412 = load ptr, ptr %411, align 8, !tbaa !21
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 16
  %415 = and i32 %414, 255
  %416 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !5
  %418 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1, i32 0, i32 0, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !5
  %420 = icmp eq ptr %419, null
  br i1 %420, label %424, label %421

421:                                              ; preds = %408
  %422 = getelementptr inbounds %struct.mem_attrs, ptr %419, i64 0, i32 5
  %423 = load i8, ptr %422, align 8, !tbaa !67
  br label %424

424:                                              ; preds = %408, %421
  %425 = phi i8 [ %423, %421 ], [ 0, %408 ]
  %426 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %415, ptr noundef %417, i8 noundef zeroext %425) #22
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %433, label %428

428:                                              ; preds = %424
  %429 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %430 = getelementptr inbounds ptr, ptr %429, i64 %398
  store ptr %409, ptr %430, align 8, !tbaa !21
  %431 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !21
  %432 = getelementptr inbounds ptr, ptr %431, i64 %398
  store ptr null, ptr %432, align 8, !tbaa !21
  br label %475

433:                                              ; preds = %424
  %434 = load ptr, ptr %416, align 8, !tbaa !5
  %435 = load i32, ptr %434, align 8
  %436 = and i32 %435, 65535
  %437 = zext nneg i32 %436 to i64
  %438 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !27
  %440 = icmp eq i32 %439, 9
  br i1 %440, label %464, label %441

441:                                              ; preds = %433
  %442 = trunc i32 %435 to i16
  switch i16 %442, label %469 [
    i16 37, label %443
    i16 49, label %446
  ]

443:                                              ; preds = %441
  %444 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %434) #23
  %445 = icmp ult i32 %444, 53
  br i1 %445, label %464, label %469

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.rtx_def, ptr %434, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !5
  %449 = load i32, ptr %448, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 37
  br i1 %451, label %452, label %469

452:                                              ; preds = %446
  %453 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %448) #23
  %454 = icmp ult i32 %453, 53
  br i1 %454, label %455, label %469

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.rtx_def, ptr %434, i64 0, i32 1, i32 0, i32 0, i64 1
  %457 = load ptr, ptr %456, align 8, !tbaa !5
  %458 = load i32, ptr %457, align 8
  %459 = and i32 %458, 65535
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !27
  %463 = icmp eq i32 %462, 9
  br i1 %463, label %464, label %469

464:                                              ; preds = %455, %443, %433
  %465 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !21
  %466 = getelementptr inbounds ptr, ptr %465, i64 %398
  store ptr %434, ptr %466, align 8, !tbaa !21
  %467 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %468 = getelementptr inbounds ptr, ptr %467, i64 %398
  store ptr null, ptr %468, align 8, !tbaa !21
  br label %475

469:                                              ; preds = %441, %443, %455, %452, %446
  %470 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %471 = getelementptr inbounds ptr, ptr %470, i64 %398
  store ptr null, ptr %471, align 8, !tbaa !21
  %472 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %473 = getelementptr inbounds ptr, ptr %472, i64 %398
  store ptr null, ptr %473, align 8, !tbaa !21
  %474 = trunc i64 %398 to i32
  tail call fastcc void @alter_reg(i32 noundef %474, i32 noundef -1, i8 noundef zeroext 1) #23
  br label %475

475:                                              ; preds = %428, %469, %464, %397, %403
  %476 = add nuw nsw i64 %398, 1
  %477 = load i32, ptr @max_regno, align 4, !tbaa !27
  %478 = sext i32 %477 to i64
  %479 = icmp slt i64 %476, %478
  br i1 %479, label %397, label %480, !llvm.loop !69

480:                                              ; preds = %475, %393
  %481 = load i32, ptr @caller_save_needed, align 4, !tbaa !27
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %484, label %483

483:                                              ; preds = %480
  tail call void @setup_save_areas() #22
  br label %484

484:                                              ; preds = %483, %480
  %485 = tail call i64 @get_frame_size() #22
  %486 = icmp eq i64 %394, %485
  br i1 %486, label %487, label %598

487:                                              ; preds = %484
  %488 = icmp ne i64 %394, 0
  %489 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %488, i1 %490, i1 false
  br i1 %491, label %492, label %496

492:                                              ; preds = %487
  %493 = tail call ptr @assign_stack_local(i32 noundef 1, i64 noundef 0, i32 noundef %489) #22
  %494 = tail call i64 @get_frame_size() #22
  %495 = icmp eq i64 %394, %494
  br i1 %495, label %496, label %598

496:                                              ; preds = %492, %487
  %497 = load i32, ptr @caller_save_needed, align 4, !tbaa !27
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %536, label %499

499:                                              ; preds = %496
  tail call void @save_call_clobbered_regs() #22
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %500 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %501 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %502 = ptrtoint ptr %500 to i64
  %503 = ptrtoint ptr %501 to i64
  %504 = sub i64 %502, %503
  %505 = icmp slt i64 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %499
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %507 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %508 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %509

509:                                              ; preds = %499, %506
  %510 = phi ptr [ %501, %499 ], [ %508, %506 ]
  %511 = phi i64 [ 0, %499 ], [ %507, %506 ]
  %512 = getelementptr inbounds i8, ptr %510, i64 %511
  %513 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %514 = icmp eq ptr %512, %513
  br i1 %514, label %515, label %518

515:                                              ; preds = %509
  %516 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %517 = or i8 %516, 2
  store i8 %517, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %518

518:                                              ; preds = %509, %515
  %519 = ptrtoint ptr %513 to i64
  store i64 %519, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %520 = ptrtoint ptr %512 to i64
  %521 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %522 = sext i32 %521 to i64
  %523 = add nsw i64 %522, %520
  %524 = xor i32 %521, -1
  %525 = sext i32 %524 to i64
  %526 = and i64 %523, %525
  %527 = inttoptr i64 %526 to ptr
  %528 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %529 = ptrtoint ptr %528 to i64
  %530 = sub i64 %526, %529
  %531 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %532 = ptrtoint ptr %531 to i64
  %533 = sub i64 %532, %529
  %534 = icmp sgt i64 %530, %533
  %535 = select i1 %534, ptr %531, ptr %527
  store ptr %535, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %535, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %513, ptr @reload_firstobj, align 8, !tbaa !21
  br label %536

536:                                              ; preds = %518, %496
  tail call fastcc void @calculate_needs_all_insns(i32 noundef %1) #23
  %537 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %536
  tail call void @bitmap_clear(ptr noundef nonnull @spilled_pseudos) #22
  br label %540

540:                                              ; preds = %539, %536
  %541 = tail call i64 @get_frame_size() #22
  %542 = icmp eq i64 %394, %541
  br i1 %542, label %543, label %547

543:                                              ; preds = %540
  %544 = tail call fastcc zeroext i8 @verify_initial_elim_offsets() #23, !range !26
  %545 = xor i8 %544, 1
  %546 = zext nneg i8 %545 to i32
  br label %547

547:                                              ; preds = %543, %540
  %548 = phi i32 [ 1, %540 ], [ %546, %543 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !38
  call fastcc void @update_eliminables(ptr noundef nonnull %3) #23
  %549 = load i64, ptr %3, align 8, !tbaa !38
  %550 = xor i64 %549, -1
  %551 = load i64, ptr @used_spill_regs, align 8, !tbaa !38
  %552 = and i64 %551, %550
  store i64 %552, ptr @used_spill_regs, align 8, !tbaa !38
  br label %553

553:                                              ; preds = %547, %562
  %554 = phi i64 [ 0, %547 ], [ %565, %562 ]
  %555 = phi i32 [ 0, %547 ], [ %564, %562 ]
  %556 = phi i32 [ %548, %547 ], [ %563, %562 ]
  %557 = shl nuw nsw i64 1, %554
  %558 = and i64 %557, %549
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %562, label %560

560:                                              ; preds = %553
  %561 = trunc i64 %554 to i32
  tail call fastcc void @spill_hard_reg(i32 noundef %561) #23
  br label %562

562:                                              ; preds = %553, %560
  %563 = phi i32 [ 1, %560 ], [ %556, %553 ]
  %564 = phi i32 [ 1, %560 ], [ %555, %553 ]
  %565 = add nuw nsw i64 %554, 1
  %566 = icmp eq i64 %565, 53
  br i1 %566, label %567, label %553, !llvm.loop !70

567:                                              ; preds = %562
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  tail call fastcc void @select_reload_regs() #23
  %568 = load i1, ptr @failure, align 4
  br i1 %568, label %709, label %569

569:                                              ; preds = %567
  %570 = load ptr, ptr @insns_need_reload, align 8, !tbaa !21
  %571 = icmp ne ptr %570, null
  %572 = icmp ne i32 %564, 0
  %573 = select i1 %571, i1 true, i1 %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %569
  %575 = tail call fastcc i32 @finish_spills(i32 noundef %1) #23, !range !55
  %576 = or i32 %575, %563
  br label %577

577:                                              ; preds = %569, %574
  %578 = phi i32 [ %576, %574 ], [ %563, %569 ]
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %601, label %580

580:                                              ; preds = %577
  %581 = load i32, ptr @caller_save_needed, align 4, !tbaa !27
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %584, label %583

583:                                              ; preds = %580
  tail call fastcc void @delete_caller_save_insns() #23
  br label %584

584:                                              ; preds = %583, %580
  %585 = load ptr, ptr @reload_firstobj, align 8, !tbaa !21
  %586 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %587 = ptrtoint ptr %585 to i64
  %588 = ptrtoint ptr %586 to i64
  %589 = sub i64 %587, %588
  store i64 %589, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %590 = icmp sgt i64 %589, 0
  br i1 %590, label %591, label %599

591:                                              ; preds = %584
  %592 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %593 = ptrtoint ptr %592 to i64
  %594 = sub i64 %593, %588
  %595 = icmp slt i64 %589, %594
  br i1 %595, label %596, label %599

596:                                              ; preds = %591
  %597 = getelementptr inbounds i8, ptr %586, i64 %589
  store ptr %597, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %597, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %598

598:                                              ; preds = %596, %599, %492, %484
  br label %393

599:                                              ; preds = %591, %584
  %600 = getelementptr inbounds i8, ptr %586, i64 %589
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %600) #22
  br label %598

601:                                              ; preds = %577
  %602 = icmp eq i32 %1, 0
  br i1 %602, label %621, label %603

603:                                              ; preds = %601
  %604 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %605

605:                                              ; preds = %603, %616
  %606 = phi ptr [ %617, %616 ], [ %604, %603 ]
  %607 = phi ptr [ %618, %616 ], [ %604, %603 ]
  %608 = getelementptr inbounds %struct.elim_table, ptr %607, i64 0, i32 3
  %609 = load i32, ptr %608, align 8, !tbaa !63
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %605
  %612 = load i32, ptr %607, align 8, !tbaa !61
  %613 = getelementptr inbounds %struct.elim_table, ptr %607, i64 0, i32 1
  %614 = load i32, ptr %613, align 4, !tbaa !71
  tail call void @mark_elimination(i32 noundef %612, i32 noundef %614) #22
  %615 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %616

616:                                              ; preds = %605, %611
  %617 = phi ptr [ %606, %605 ], [ %615, %611 ]
  %618 = getelementptr inbounds %struct.elim_table, ptr %607, i64 1
  %619 = getelementptr inbounds %struct.elim_table, ptr %617, i64 4
  %620 = icmp ult ptr %618, %619
  br i1 %620, label %605, label %621, !llvm.loop !72

621:                                              ; preds = %616, %601
  %622 = load i32, ptr @max_regno, align 4, !tbaa !27
  %623 = icmp sgt i32 %622, 53
  br i1 %623, label %624, label %667

624:                                              ; preds = %621, %662
  %625 = phi i32 [ %663, %662 ], [ %622, %621 ]
  %626 = phi i64 [ %664, %662 ], [ 53, %621 ]
  %627 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %628 = getelementptr inbounds i16, ptr %627, i64 %626
  %629 = load i16, ptr %628, align 2, !tbaa !28
  %630 = icmp slt i16 %629, 0
  br i1 %630, label %631, label %662

631:                                              ; preds = %624
  %632 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %633 = getelementptr inbounds ptr, ptr %632, i64 %626
  %634 = load ptr, ptr %633, align 8, !tbaa !21
  %635 = icmp eq ptr %634, null
  br i1 %635, label %662, label %636

636:                                              ; preds = %631, %656
  %637 = phi ptr [ %658, %656 ], [ %634, %631 ]
  %638 = getelementptr inbounds %struct.rtx_def, ptr %637, i64 0, i32 1
  %639 = load ptr, ptr %638, align 8, !tbaa !5
  %640 = load i32, ptr %639, align 8
  %641 = and i32 %640, 65535
  %642 = icmp eq i32 %641, 13
  br i1 %642, label %656, label %643

643:                                              ; preds = %636
  %644 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %639) #22
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %646, label %656

646:                                              ; preds = %643
  %647 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %648 = getelementptr inbounds ptr, ptr %647, i64 %626
  %649 = load ptr, ptr %648, align 8, !tbaa !21
  %650 = getelementptr inbounds %struct.rtx_def, ptr %639, i64 1
  %651 = load ptr, ptr %650, align 8, !tbaa !5
  %652 = tail call i32 @reg_set_p(ptr noundef %649, ptr noundef %651) #22
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %646
  tail call fastcc void @delete_dead_insn(ptr noundef nonnull %639) #23
  br label %656

655:                                              ; preds = %646
  tail call void @set_insn_deleted(ptr noundef nonnull %639) #22
  br label %656

656:                                              ; preds = %654, %655, %636, %643
  %657 = getelementptr inbounds %struct.rtx_def, ptr %637, i64 0, i32 1, i32 0, i32 0, i64 1
  %658 = load ptr, ptr %657, align 8, !tbaa !5
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %636, !llvm.loop !73

660:                                              ; preds = %656
  %661 = load i32, ptr @max_regno, align 4, !tbaa !27
  br label %662

662:                                              ; preds = %660, %624, %631
  %663 = phi i32 [ %661, %660 ], [ %625, %624 ], [ %625, %631 ]
  %664 = add nuw nsw i64 %626, 1
  %665 = sext i32 %663 to i64
  %666 = icmp slt i64 %664, %665
  br i1 %666, label %624, label %667, !llvm.loop !74

667:                                              ; preds = %662, %621
  %668 = load ptr, ptr @insns_need_reload, align 8, !tbaa !21
  %669 = icmp ne ptr %668, null
  %670 = load i1, ptr @something_needs_elimination, align 4
  %671 = select i1 %669, i1 true, i1 %670
  %672 = load i32, ptr @something_needs_operands_changed, align 4
  %673 = icmp ne i32 %672, 0
  %674 = select i1 %671, i1 true, i1 %673
  br i1 %674, label %675, label %684

675:                                              ; preds = %667
  %676 = tail call i64 @get_frame_size() #22
  tail call fastcc void @reload_as_needed(i32 noundef %1) #23
  %677 = tail call i64 @get_frame_size() #22
  %678 = icmp eq i64 %676, %677
  br i1 %678, label %680, label %679

679:                                              ; preds = %675
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1188, ptr noundef nonnull @.str.2) #22
  br label %680

680:                                              ; preds = %675, %679
  %681 = tail call fastcc zeroext i8 @verify_initial_elim_offsets() #23, !range !26
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %683, label %684

683:                                              ; preds = %680
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1190, ptr noundef nonnull @.str.2) #22
  br label %684

684:                                              ; preds = %683, %680, %667
  %685 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %687, label %709

687:                                              ; preds = %684
  %688 = load ptr, ptr @cfun, align 8, !tbaa !21
  %689 = getelementptr inbounds %struct.function, ptr %688, i64 0, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !75
  %691 = load ptr, ptr %690, align 8, !tbaa !77
  %692 = getelementptr inbounds %struct.basic_block_def, ptr %691, i64 0, i32 6
  %693 = load ptr, ptr %692, align 8, !tbaa !79
  %694 = getelementptr inbounds %struct.control_flow_graph, ptr %690, i64 0, i32 1
  %695 = load ptr, ptr %694, align 8, !tbaa !81
  %696 = icmp eq ptr %693, %695
  br i1 %696, label %709, label %697

697:                                              ; preds = %687, %697
  %698 = phi ptr [ %702, %697 ], [ %693, %687 ]
  %699 = tail call ptr @df_get_live_in(ptr noundef %698) #22
  %700 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %699, i32 noundef 6) #22
  %701 = getelementptr inbounds %struct.basic_block_def, ptr %698, i64 0, i32 6
  %702 = load ptr, ptr %701, align 8, !tbaa !79
  %703 = load ptr, ptr @cfun, align 8, !tbaa !21
  %704 = getelementptr inbounds %struct.function, ptr %703, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !75
  %706 = getelementptr inbounds %struct.control_flow_graph, ptr %705, i64 0, i32 1
  %707 = load ptr, ptr %706, align 8, !tbaa !81
  %708 = icmp eq ptr %702, %707
  br i1 %708, label %709, label %697, !llvm.loop !82

709:                                              ; preds = %567, %697, %687, %684
  tail call void @bitmap_clear(ptr noundef nonnull @changed_allocation_pseudos) #22
  tail call void @bitmap_clear(ptr noundef nonnull @spilled_pseudos) #22
  store i32 0, ptr @reload_in_progress, align 4, !tbaa !27
  %710 = load i32, ptr @max_regno, align 4, !tbaa !27
  %711 = icmp sgt i32 %710, 53
  br i1 %711, label %712, label %896

712:                                              ; preds = %709, %891
  %713 = phi i64 [ %892, %891 ], [ 53, %709 ]
  %714 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %715 = getelementptr inbounds ptr, ptr %714, i64 %713
  %716 = load ptr, ptr %715, align 8, !tbaa !21
  %717 = icmp eq ptr %716, null
  br i1 %717, label %721, label %718

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.rtx_def, ptr %716, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !5
  br label %721

721:                                              ; preds = %718, %712
  %722 = phi ptr [ %720, %718 ], [ null, %712 ]
  %723 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !21
  %724 = getelementptr inbounds ptr, ptr %723, i64 %713
  %725 = load ptr, ptr %724, align 8, !tbaa !21
  %726 = icmp eq ptr %725, null
  %727 = select i1 %726, ptr %722, ptr %725
  %728 = icmp eq ptr %727, null
  br i1 %728, label %807, label %729

729:                                              ; preds = %721
  %730 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %731 = getelementptr inbounds i16, ptr %730, i64 %713
  %732 = load i16, ptr %731, align 2, !tbaa !28
  %733 = icmp slt i16 %732, 0
  br i1 %733, label %734, label %804

734:                                              ; preds = %729
  %735 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %736 = getelementptr inbounds ptr, ptr %735, i64 %713
  %737 = load ptr, ptr %736, align 8, !tbaa !21
  %738 = load i32, ptr %737, align 8
  %739 = and i32 %738, -134283264
  %740 = or disjoint i32 %739, 43
  store i32 %740, ptr %737, align 8
  %741 = getelementptr inbounds %struct.rtx_def, ptr %737, i64 0, i32 1
  store ptr %727, ptr %741, align 8, !tbaa !5
  %742 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %743 = getelementptr inbounds ptr, ptr %742, i64 %713
  %744 = load ptr, ptr %743, align 8, !tbaa !21
  %745 = icmp eq ptr %744, null
  br i1 %745, label %797, label %746

746:                                              ; preds = %734
  %747 = load i32, ptr %744, align 8
  %748 = and i32 %747, 134217728
  %749 = or disjoint i32 %748, %740
  store i32 %749, ptr %737, align 8
  %750 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %751 = getelementptr inbounds ptr, ptr %750, i64 %713
  %752 = load ptr, ptr %751, align 8, !tbaa !21
  %753 = load i32, ptr %752, align 8
  %754 = and i32 %753, 268435456
  %755 = and i32 %749, -268500949
  %756 = or disjoint i32 %754, %755
  store i32 %756, ptr %737, align 8
  %757 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %758 = getelementptr inbounds ptr, ptr %757, i64 %713
  %759 = load ptr, ptr %758, align 8, !tbaa !21
  %760 = load i32, ptr %759, align 8
  %761 = and i32 %760, -2147483648
  %762 = and i32 %756, 2147418155
  %763 = or disjoint i32 %761, %762
  store i32 %763, ptr %737, align 8
  %764 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %765 = getelementptr inbounds ptr, ptr %764, i64 %713
  %766 = load ptr, ptr %765, align 8, !tbaa !21
  %767 = load i32, ptr %766, align 8
  %768 = and i32 %767, 33554432
  %769 = and i32 %763, -33619925
  %770 = or disjoint i32 %768, %769
  store i32 %770, ptr %737, align 8
  %771 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %772 = getelementptr inbounds ptr, ptr %771, i64 %713
  %773 = load ptr, ptr %772, align 8, !tbaa !21
  %774 = load i32, ptr %773, align 8
  %775 = and i32 %774, 67108864
  %776 = and i32 %770, -67174357
  %777 = or disjoint i32 %775, %776
  store i32 %777, ptr %737, align 8
  %778 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %779 = getelementptr inbounds ptr, ptr %778, i64 %713
  %780 = load ptr, ptr %779, align 8, !tbaa !21
  %781 = load i32, ptr %780, align 8
  %782 = and i32 %781, 16777216
  %783 = and i32 %777, -16842709
  %784 = or disjoint i32 %782, %783
  store i32 %784, ptr %737, align 8
  %785 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %786 = getelementptr inbounds ptr, ptr %785, i64 %713
  %787 = load ptr, ptr %786, align 8, !tbaa !21
  %788 = load i32, ptr %787, align 8
  %789 = and i32 %788, 1073741824
  %790 = and i32 %784, -1073807317
  %791 = or disjoint i32 %789, %790
  store i32 %791, ptr %737, align 8
  %792 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %793 = getelementptr inbounds ptr, ptr %792, i64 %713
  %794 = load ptr, ptr %793, align 8, !tbaa !21
  %795 = getelementptr inbounds %struct.rtx_def, ptr %794, i64 0, i32 1, i32 0, i32 0, i64 1
  %796 = load ptr, ptr %795, align 8, !tbaa !5
  br label %799

797:                                              ; preds = %734
  %798 = and i32 %740, 1744764971
  br label %799

799:                                              ; preds = %797, %746
  %800 = phi i32 [ %798, %797 ], [ %791, %746 ]
  %801 = phi ptr [ null, %797 ], [ %796, %746 ]
  %802 = getelementptr inbounds %struct.rtx_def, ptr %737, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %801, ptr %802, align 8
  %803 = or i32 %800, 33554432
  store i32 %803, ptr %737, align 8
  br label %807

804:                                              ; preds = %729
  br i1 %717, label %807, label %805

805:                                              ; preds = %804
  %806 = getelementptr inbounds %struct.rtx_def, ptr %716, i64 0, i32 1
  store ptr %727, ptr %806, align 8, !tbaa !5
  br label %807

807:                                              ; preds = %799, %805, %804, %721
  %808 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !27
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %891, label %810

810:                                              ; preds = %807
  %811 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %812 = getelementptr inbounds i16, ptr %811, i64 %713
  %813 = load i16, ptr %812, align 2, !tbaa !28
  %814 = icmp slt i16 %813, 0
  br i1 %814, label %815, label %891

815:                                              ; preds = %810
  %816 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %817 = getelementptr inbounds ptr, ptr %816, i64 %713
  %818 = load ptr, ptr %817, align 8, !tbaa !21
  %819 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %820 = getelementptr inbounds ptr, ptr %819, i64 %713
  %821 = load ptr, ptr %820, align 8, !tbaa !21
  %822 = icmp eq ptr %821, null
  br i1 %822, label %823, label %841

823:                                              ; preds = %815
  %824 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %825 = getelementptr inbounds ptr, ptr %824, i64 %713
  %826 = load ptr, ptr %825, align 8, !tbaa !21
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %841

828:                                              ; preds = %823
  %829 = icmp eq ptr %818, null
  br i1 %829, label %841, label %830

830:                                              ; preds = %828
  %831 = load i32, ptr %818, align 8
  %832 = trunc i32 %831 to i16
  switch i16 %832, label %841 [
    i16 43, label %833
    i16 37, label %836
  ]

833:                                              ; preds = %830
  %834 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !83
  %835 = tail call ptr %834(ptr noundef nonnull %818) #22
  br label %841

836:                                              ; preds = %830
  %837 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %818) #23
  %838 = zext i32 %837 to i64
  %839 = icmp eq i64 %713, %838
  %840 = select i1 %839, ptr null, ptr %818
  br label %841

841:                                              ; preds = %830, %836, %828, %823, %815, %833
  %842 = phi ptr [ %835, %833 ], [ %821, %815 ], [ %826, %823 ], [ %840, %836 ], [ null, %828 ], [ null, %830 ]
  %843 = icmp eq ptr %842, %818
  br i1 %843, label %891, label %844

844:                                              ; preds = %841
  %845 = load ptr, ptr @df, align 8, !tbaa !21
  %846 = getelementptr inbounds %struct.df, ptr %845, i64 0, i32 6
  %847 = load ptr, ptr %846, align 8, !tbaa !95
  %848 = getelementptr inbounds ptr, ptr %847, i64 %713
  %849 = load ptr, ptr %848, align 8, !tbaa !21
  %850 = load ptr, ptr %849, align 8, !tbaa !98
  %851 = icmp eq ptr %850, null
  br i1 %851, label %891, label %852

852:                                              ; preds = %844
  %853 = icmp eq ptr %842, null
  br label %854

854:                                              ; preds = %852, %889
  %855 = phi ptr [ %850, %852 ], [ %862, %889 ]
  %856 = getelementptr inbounds %struct.df_base_ref, ptr %855, i64 0, i32 3
  %857 = load ptr, ptr %856, align 8, !tbaa !5
  %858 = load ptr, ptr %857, align 8, !tbaa !100
  br label %859

859:                                              ; preds = %864, %854
  %860 = phi ptr [ %855, %854 ], [ %862, %864 ]
  %861 = getelementptr inbounds %struct.df_base_ref, ptr %860, i64 0, i32 4
  %862 = load ptr, ptr %861, align 8, !tbaa !5
  %863 = icmp eq ptr %862, null
  br i1 %863, label %869, label %864

864:                                              ; preds = %859
  %865 = getelementptr inbounds %struct.df_base_ref, ptr %862, i64 0, i32 3
  %866 = load ptr, ptr %865, align 8, !tbaa !5
  %867 = load ptr, ptr %866, align 8, !tbaa !100
  %868 = icmp eq ptr %867, %858
  br i1 %868, label %859, label %869, !llvm.loop !102

869:                                              ; preds = %859, %864
  %870 = load i32, ptr %858, align 8
  %871 = and i32 %870, 65535
  %872 = icmp eq i32 %871, 7
  br i1 %872, label %873, label %889

873:                                              ; preds = %869
  br i1 %853, label %874, label %881

874:                                              ; preds = %873
  %875 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %876 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %875) #22
  %877 = getelementptr inbounds %struct.rtx_def, ptr %858, i64 1
  %878 = load ptr, ptr %877, align 8, !tbaa !5
  %879 = getelementptr inbounds %struct.rtx_def, ptr %878, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %876, ptr %879, align 8, !tbaa !5
  %880 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %858) #22
  br label %889

881:                                              ; preds = %873
  %882 = getelementptr inbounds %struct.rtx_def, ptr %858, i64 1
  %883 = load ptr, ptr %882, align 8, !tbaa !5
  %884 = getelementptr inbounds %struct.rtx_def, ptr %883, i64 0, i32 1, i32 0, i32 0, i64 1
  %885 = load ptr, ptr %884, align 8, !tbaa !5
  %886 = tail call ptr @simplify_replace_rtx(ptr noundef %885, ptr noundef %818, ptr noundef nonnull %842) #22
  %887 = load ptr, ptr %882, align 8, !tbaa !5
  %888 = getelementptr inbounds %struct.rtx_def, ptr %887, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %886, ptr %888, align 8, !tbaa !5
  br label %889

889:                                              ; preds = %869, %881, %874
  %890 = icmp eq ptr %862, null
  br i1 %890, label %891, label %854, !llvm.loop !103

891:                                              ; preds = %889, %844, %841, %807, %810
  %892 = add nuw nsw i64 %713, 1
  %893 = load i32, ptr @max_regno, align 4, !tbaa !27
  %894 = sext i32 %893 to i64
  %895 = icmp slt i64 %892, %894
  br i1 %895, label %712, label %896, !llvm.loop !104

896:                                              ; preds = %891, %709
  store i32 1, ptr @reload_completed, align 4, !tbaa !27
  br i1 %110, label %1007, label %897

897:                                              ; preds = %896, %1003
  %898 = phi ptr [ %1005, %1003 ], [ %0, %896 ]
  %899 = load i32, ptr %898, align 8
  %900 = and i32 %899, 65535
  %901 = add nsw i32 %900, -7
  %902 = icmp ult i32 %901, 4
  br i1 %902, label %903, label %1003

903:                                              ; preds = %897
  %904 = icmp eq i32 %900, 10
  br i1 %904, label %905, label %908

905:                                              ; preds = %903
  %906 = getelementptr inbounds %struct.rtx_def, ptr %898, i64 1, i32 1, i32 0, i32 0, i64 2
  %907 = load ptr, ptr %906, align 8, !tbaa !5
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %906, i32 noundef 0, ptr noundef %907) #23
  br label %908

908:                                              ; preds = %905, %903
  %909 = getelementptr inbounds %struct.rtx_def, ptr %898, i64 1
  %910 = load ptr, ptr %909, align 8, !tbaa !5
  %911 = load i32, ptr %910, align 8
  %912 = and i32 %911, 65535
  %913 = icmp eq i32 %912, 24
  br i1 %913, label %914, label %924

914:                                              ; preds = %908
  %915 = load i32, ptr %898, align 8
  %916 = and i32 %915, 16711680
  %917 = icmp eq i32 %916, 917504
  br i1 %917, label %1001, label %918

918:                                              ; preds = %914
  %919 = tail call ptr @find_reg_note(ptr noundef nonnull %898, i32 noundef 4, ptr noundef null) #22
  %920 = icmp eq ptr %919, null
  br i1 %920, label %921, label %1001

921:                                              ; preds = %918
  %922 = load ptr, ptr %909, align 8, !tbaa !5
  %923 = load i32, ptr %922, align 8
  br label %924

924:                                              ; preds = %921, %908
  %925 = phi i32 [ %923, %921 ], [ %911, %908 ]
  %926 = phi ptr [ %922, %921 ], [ %910, %908 ]
  %927 = and i32 %925, 65535
  %928 = icmp eq i32 %927, 25
  br i1 %928, label %929, label %948

929:                                              ; preds = %924
  %930 = getelementptr inbounds %struct.rtx_def, ptr %926, i64 0, i32 1
  %931 = load ptr, ptr %930, align 8, !tbaa !5
  %932 = load i32, ptr %931, align 8
  %933 = and i32 %932, 16777215
  %934 = icmp eq i32 %933, 65579
  br i1 %934, label %935, label %944

935:                                              ; preds = %929
  %936 = getelementptr inbounds %struct.rtx_def, ptr %931, i64 0, i32 1
  %937 = load ptr, ptr %936, align 8, !tbaa !5
  %938 = load i32, ptr %937, align 8
  %939 = and i32 %938, 65535
  %940 = icmp eq i32 %939, 38
  %941 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %942 = icmp eq ptr %937, %941
  %943 = select i1 %940, i1 true, i1 %942
  br i1 %943, label %947, label %1001

944:                                              ; preds = %929
  %945 = and i32 %932, -2147418113
  %946 = icmp eq i32 %945, -2147483611
  br i1 %946, label %947, label %1001

947:                                              ; preds = %944, %935
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %930, i32 noundef 0, ptr noundef nonnull %926) #23
  br label %948

948:                                              ; preds = %924, %947
  %949 = load i32, ptr %898, align 8
  %950 = and i32 %949, 65535
  %951 = icmp eq i32 %950, 8
  br i1 %951, label %952, label %973

952:                                              ; preds = %948
  %953 = load ptr, ptr %909, align 8, !tbaa !5
  %954 = load i32, ptr %953, align 8
  %955 = and i32 %954, 65535
  %956 = icmp eq i32 %955, 23
  br i1 %956, label %957, label %973

957:                                              ; preds = %952
  %958 = getelementptr inbounds %struct.rtx_def, ptr %953, i64 0, i32 1, i32 0, i32 0, i64 1
  %959 = load ptr, ptr %958, align 8, !tbaa !5
  %960 = load i32, ptr %959, align 8
  %961 = and i32 %960, 65535
  %962 = icmp eq i32 %961, 37
  br i1 %962, label %963, label %973

963:                                              ; preds = %957
  %964 = getelementptr inbounds %struct.rtx_def, ptr %953, i64 0, i32 1
  %965 = load ptr, ptr %964, align 8, !tbaa !5
  %966 = load i32, ptr %965, align 8
  %967 = and i32 %966, 65535
  %968 = icmp eq i32 %967, 37
  br i1 %968, label %969, label %973

969:                                              ; preds = %963
  %970 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %959) #23
  %971 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %965) #23
  %972 = icmp eq i32 %970, %971
  br i1 %972, label %1001, label %973

973:                                              ; preds = %969, %963, %957, %952, %948
  %974 = getelementptr inbounds %struct.rtx_def, ptr %898, i64 1, i32 1, i32 0, i32 0, i64 1
  %975 = load ptr, ptr %974, align 8, !tbaa !21
  %976 = icmp eq ptr %975, null
  br i1 %976, label %993, label %977

977:                                              ; preds = %973, %989
  %978 = phi ptr [ %990, %989 ], [ %975, %973 ]
  %979 = phi ptr [ %991, %989 ], [ %974, %973 ]
  %980 = load i32, ptr %978, align 8
  %981 = lshr i32 %980, 16
  %982 = trunc i32 %981 to i8
  switch i8 %982, label %986 [
    i8 1, label %983
    i8 6, label %983
    i8 2, label %983
  ]

983:                                              ; preds = %977, %977, %977
  %984 = getelementptr inbounds %struct.rtx_def, ptr %978, i64 0, i32 1, i32 0, i32 0, i64 1
  %985 = load ptr, ptr %984, align 8, !tbaa !5
  store ptr %985, ptr %979, align 8, !tbaa !21
  br label %989

986:                                              ; preds = %977
  %987 = getelementptr inbounds %struct.rtx_def, ptr %978, i64 0, i32 1, i32 0, i32 0, i64 1
  %988 = load ptr, ptr %987, align 8, !tbaa !21
  br label %989

989:                                              ; preds = %986, %983
  %990 = phi ptr [ %985, %983 ], [ %988, %986 ]
  %991 = phi ptr [ %979, %983 ], [ %987, %986 ]
  %992 = icmp eq ptr %990, null
  br i1 %992, label %993, label %977, !llvm.loop !105

993:                                              ; preds = %989, %973
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %898) #22
  %994 = load ptr, ptr %909, align 8, !tbaa !5
  %995 = tail call i32 @asm_noperands(ptr noundef %994) #22
  %996 = icmp sgt i32 %995, -1
  br i1 %996, label %997, label %1003

997:                                              ; preds = %993
  tail call void @extract_insn(ptr noundef nonnull %898) #22
  %998 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1003

1000:                                             ; preds = %997
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %898, ptr noundef nonnull @.str.5) #22
  br label %1001

1001:                                             ; preds = %969, %914, %918, %944, %935, %1000
  %1002 = tail call ptr @delete_insn(ptr noundef nonnull %898) #22
  br label %1003

1003:                                             ; preds = %1001, %897, %997, %993
  %1004 = getelementptr inbounds %struct.rtx_def, ptr %898, i64 0, i32 1, i32 0, i32 0, i64 2
  %1005 = load ptr, ptr %1004, align 8, !tbaa !5
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %1007, label %897, !llvm.loop !106

1007:                                             ; preds = %1003, %896
  %1008 = load i32, ptr @flag_stack_check, align 4, !tbaa !27
  %1009 = icmp eq i32 %1008, 1
  br i1 %1009, label %1010, label %1040

1010:                                             ; preds = %1007
  %1011 = tail call i64 @get_frame_size() #22
  %1012 = add nsw i64 %1011, 16
  br label %1013

1013:                                             ; preds = %1010, %1029
  %1014 = phi i64 [ 0, %1010 ], [ %1031, %1029 ]
  %1015 = phi i64 [ %1012, %1010 ], [ %1030, %1029 ]
  %1016 = trunc i64 %1014 to i32
  %1017 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %1016) #22
  %1018 = icmp eq i8 %1017, 0
  br i1 %1018, label %1029, label %1019

1019:                                             ; preds = %1013
  %1020 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1014
  %1021 = load i8, ptr %1020, align 1, !tbaa !5
  %1022 = icmp eq i8 %1021, 0
  br i1 %1022, label %1023, label %1029

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %1014
  %1025 = load i8, ptr %1024, align 1, !tbaa !5
  %1026 = icmp eq i8 %1025, 0
  %1027 = add nsw i64 %1015, 4
  %1028 = select i1 %1026, i64 %1015, i64 %1027
  br label %1029

1029:                                             ; preds = %1023, %1013, %1019
  %1030 = phi i64 [ %1015, %1019 ], [ %1015, %1013 ], [ %1028, %1023 ]
  %1031 = add nuw nsw i64 %1014, 1
  %1032 = icmp eq i64 %1031, 53
  br i1 %1032, label %1033, label %1013, !llvm.loop !107

1033:                                             ; preds = %1029
  %1034 = icmp sgt i64 %1030, 4092
  br i1 %1034, label %1035, label %1040

1035:                                             ; preds = %1033
  %1036 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.6) #22
  %1037 = load i1, ptr @reload.verbose_warned, align 4
  br i1 %1037, label %1040, label %1038

1038:                                             ; preds = %1035
  %1039 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.7) #22
  store i1 true, ptr @reload.verbose_warned, align 4
  br label %1040

1040:                                             ; preds = %1033, %1038, %1035, %1007
  %1041 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %1042 = icmp eq ptr %1041, null
  br i1 %1042, label %1044, label %1043

1043:                                             ; preds = %1040
  tail call void @free(ptr noundef nonnull %1041) #23
  br label %1044

1044:                                             ; preds = %1043, %1040
  %1045 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1048, label %1047

1047:                                             ; preds = %1044
  tail call void @free(ptr noundef nonnull %1045) #23
  br label %1048

1048:                                             ; preds = %1047, %1044
  store ptr null, ptr @reg_equiv_constant, align 8, !tbaa !21
  store ptr null, ptr @reg_equiv_invariant, align 8, !tbaa !21
  tail call fastcc void @VEC_rtx_gc_free() #23
  store ptr null, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %1049 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !21
  tail call void @free(ptr noundef %1049) #23
  %1050 = load ptr, ptr @offsets_known_at, align 8, !tbaa !21
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1053, label %1052

1052:                                             ; preds = %1048
  tail call void @free(ptr noundef nonnull %1050) #23
  br label %1053

1053:                                             ; preds = %1052, %1048
  %1054 = load ptr, ptr @offsets_at, align 8, !tbaa !21
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1057, label %1056

1056:                                             ; preds = %1053
  tail call void @free(ptr noundef nonnull %1054) #23
  br label %1057

1057:                                             ; preds = %1056, %1053
  %1058 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !21
  br label %1059

1059:                                             ; preds = %1057, %1067
  %1060 = phi ptr [ %1058, %1057 ], [ %1068, %1067 ]
  %1061 = phi i64 [ 0, %1057 ], [ %1069, %1067 ]
  %1062 = getelementptr inbounds ptr, ptr %1060, i64 %1061
  %1063 = load ptr, ptr %1062, align 8, !tbaa !21
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1067, label %1065

1065:                                             ; preds = %1059
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %1062) #22
  %1066 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !21
  br label %1067

1067:                                             ; preds = %1059, %1065
  %1068 = phi ptr [ %1060, %1059 ], [ %1066, %1065 ]
  %1069 = add nuw nsw i64 %1061, 1
  %1070 = icmp eq i64 %1069, 53
  br i1 %1070, label %1071, label %1059, !llvm.loop !108

1071:                                             ; preds = %1067
  tail call void @free(ptr noundef %1068) #23
  %1072 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  tail call void @free(ptr noundef %1072) #23
  store ptr null, ptr @reg_equiv_init, align 8, !tbaa !21
  %1073 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !21
  tail call void @free(ptr noundef %1073) #23
  %1074 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !21
  tail call void @free(ptr noundef %1074) #23
  %1075 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !21
  tail call void @free(ptr noundef %1075) #23
  %1076 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !21
  tail call void @free(ptr noundef %1076) #23
  %1077 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !21
  tail call void @free(ptr noundef %1077) #23
  store i64 0, ptr @used_spill_regs, align 8, !tbaa !38
  %1078 = load i32, ptr @n_spills, align 4, !tbaa !27
  %1079 = icmp sgt i32 %1078, 0
  br i1 %1079, label %1080, label %1094

1080:                                             ; preds = %1071
  %1081 = zext nneg i32 %1078 to i64
  br label %1082

1082:                                             ; preds = %1080, %1082
  %1083 = phi i64 [ 0, %1080 ], [ %1091, %1082 ]
  %1084 = phi i64 [ 0, %1080 ], [ %1090, %1082 ]
  %1085 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %1083
  %1086 = load i16, ptr %1085, align 2, !tbaa !28
  %1087 = sext i16 %1086 to i64
  %1088 = and i64 %1087, 4294967295
  %1089 = shl nuw i64 1, %1088
  %1090 = or i64 %1089, %1084
  %1091 = add nuw nsw i64 %1083, 1
  %1092 = icmp eq i64 %1091, %1081
  br i1 %1092, label %1093, label %1082, !llvm.loop !109

1093:                                             ; preds = %1082
  store i64 %1090, ptr @used_spill_regs, align 8, !tbaa !38
  br label %1094

1094:                                             ; preds = %1093, %1071
  %1095 = load ptr, ptr @reload_startobj, align 8, !tbaa !21
  %1096 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %1097 = ptrtoint ptr %1095 to i64
  %1098 = ptrtoint ptr %1096 to i64
  %1099 = sub i64 %1097, %1098
  store i64 %1099, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %1100 = icmp sgt i64 %1099, 0
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1094
  %1102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %1103 = ptrtoint ptr %1102 to i64
  %1104 = sub i64 %1103, %1098
  %1105 = icmp slt i64 %1099, %1104
  br i1 %1105, label %1106, label %1108

1106:                                             ; preds = %1101
  %1107 = getelementptr inbounds i8, ptr %1096, i64 %1099
  store ptr %1107, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %1107, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %1110

1108:                                             ; preds = %1101, %1094
  %1109 = getelementptr inbounds i8, ptr %1096, i64 %1099
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %1109) #22
  br label %1110

1110:                                             ; preds = %1108, %1106
  store ptr null, ptr @unused_insn_chains, align 8, !tbaa !21
  tail call void @fixup_abnormal_edges() #23
  tail call void @unshare_all_rtl_again(ptr noundef %0) #22
  %1111 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %1112 = icmp eq i8 %1111, 0
  br i1 %1112, label %1113, label %1116

1113:                                             ; preds = %1110
  %1114 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !110
  %1115 = getelementptr inbounds i8, ptr %1114, i64 6
  store i8 8, ptr %1115, align 1, !tbaa !5
  br label %1116

1116:                                             ; preds = %1110, %1113
  tail call fastcc void @VEC_rtx_p_heap_free() #23
  %1117 = load i1, ptr @failure, align 4
  %1118 = zext i1 %1117 to i32
  ret i32 %1118
}

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_note(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_secondary_mem() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @init_save_areas() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_home_live(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !28
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %9 = getelementptr inbounds ptr, ptr %8, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  tail call fastcc void @mark_home_live_1(i32 noundef %0, i32 noundef %13) #23
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_nonexceptional_receiver() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %3 = load i32, ptr @optimize, align 4, !tbaa !27
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %110, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !111
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #22
  %15 = load ptr, ptr @cfun, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %32, label %24

24:                                               ; preds = %5, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %5 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !112
  %28 = and i32 %27, -3
  store i32 %28, ptr %26, align 8, !tbaa !112
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, %20
  br i1 %31, label %32, label %24, !llvm.loop !113

32:                                               ; preds = %24, %5
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !112
  %35 = or i32 %34, 2
  store i32 %35, ptr %33, align 8, !tbaa !112
  %36 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %20, ptr %14, align 8, !tbaa !21
  %37 = getelementptr inbounds i8, ptr %2, i64 8
  br label %41

38:                                               ; preds = %64, %41
  %39 = phi ptr [ %43, %41 ], [ %65, %64 ]
  %40 = icmp eq ptr %39, %14
  br i1 %40, label %70, label %41, !llvm.loop !114

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %36, %32 ], [ %39, %38 ]
  %43 = getelementptr inbounds ptr, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = tail call fastcc ptr @ei_start_1(ptr noundef %44) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !115
  store ptr %45, ptr %37, align 8, !tbaa.struct !116
  %46 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %45, ptr noundef nonnull %1) #23, !range !26
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %41, %64
  %49 = phi ptr [ %65, %64 ], [ %43, %41 ]
  %50 = load ptr, ptr %1, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !117
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load ptr, ptr %50, align 8, !tbaa !119
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !112
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = or disjoint i32 %58, 2
  store i32 %62, ptr %57, align 8, !tbaa !112
  %63 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %56, ptr %49, align 8, !tbaa !21
  br label %64

64:                                               ; preds = %55, %61, %48
  %65 = phi ptr [ %49, %48 ], [ %49, %55 ], [ %63, %61 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %66 = load i32, ptr %2, align 8
  %67 = load ptr, ptr %37, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %1) #23, !range !26
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %38, label %48, !llvm.loop !120

70:                                               ; preds = %38
  tail call void @free(ptr noundef %14) #23
  %71 = load ptr, ptr @cfun, align 8, !tbaa !21
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = load ptr, ptr %73, align 8, !tbaa !77
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !79
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !81
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %110, label %80

80:                                               ; preds = %70, %101
  %81 = phi ptr [ %103, %101 ], [ %76, %70 ]
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !112
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %81) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !115
  store ptr %87, ptr %37, align 8, !tbaa.struct !116
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %1) #23, !range !26
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86, %96
  %91 = load ptr, ptr %1, align 8, !tbaa !21
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !117
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %97 = load i32, ptr %2, align 8
  %98 = load ptr, ptr %37, align 8
  %99 = call fastcc zeroext i8 @ei_cond(i32 %97, ptr %98, ptr noundef nonnull %1) #23, !range !26
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %90, !llvm.loop !121

101:                                              ; preds = %96, %86, %80
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !79
  %104 = load ptr, ptr @cfun, align 8, !tbaa !21
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !81
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %80, !llvm.loop !122

110:                                              ; preds = %101, %90, %70, %0
  %111 = phi i8 [ 1, %0 ], [ 0, %70 ], [ 1, %90 ], [ 0, %101 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret i8 %111
}

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_paradoxical_subregs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %32 [
    i16 37, label %67
    i16 30, label %67
    i16 35, label %67
    i16 45, label %67
    i16 44, label %67
    i16 32, label %67
    i16 31, label %67
    i16 33, label %67
    i16 46, label %67
    i16 36, label %67
    i16 24, label %67
    i16 25, label %67
    i16 39, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %67

10:                                               ; preds = %4
  %11 = lshr i32 %2, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !21
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !27
  %22 = icmp ult i32 %21, %16
  br i1 %22, label %23, label %67

23:                                               ; preds = %10
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %17, i64 %25
  store i32 %16, ptr %26, align 4, !tbaa !27
  %27 = load ptr, ptr %5, align 8, !tbaa !5
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef %27) #23
  %29 = load i32, ptr %0, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  tail call fastcc void @mark_home_live_1(i32 noundef %28, i32 noundef %31) #23
  br label %67

32:                                               ; preds = %1
  %33 = and i32 %2, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %42 = zext i8 %38 to i64
  br label %43

43:                                               ; preds = %40, %65
  %44 = phi i64 [ %42, %40 ], [ %45, %65 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds i8, ptr %36, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5
  switch i8 %47, label %65 [
    i8 101, label %48
    i8 69, label %51
  ]

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %50) #23
  br label %65

51:                                               ; preds = %43
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = load i32, ptr %53, align 8, !tbaa !123
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %57, %56 ], [ %60, %58 ]
  %60 = add nsw i64 %59, -1
  %61 = load ptr, ptr %52, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %63) #23
  %64 = icmp ugt i64 %59, 1
  br i1 %64, label %58, label %65, !llvm.loop !125

65:                                               ; preds = %58, %51, %43, %48
  %66 = icmp sgt i64 %44, 1
  br i1 %66, label %43, label %67, !llvm.loop !126

67:                                               ; preds = %65, %32, %4, %10, %23, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @function_invariant_p(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !21
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !21
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %32, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 49
  br i1 %15, label %16, label %31

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, %9
  %20 = icmp eq ptr %18, %12
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !27
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %32, label %31

31:                                               ; preds = %16, %22, %14
  br label %32

32:                                               ; preds = %22, %8, %11, %1, %31
  %33 = phi i32 [ 0, %31 ], [ 1, %1 ], [ 1, %11 ], [ 1, %8 ], [ 1, %22 ]
  ret i32 %33
}

; Function Attrs: optsize
declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_elim_table() unnamed_addr #0 {
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @xcalloc(i64 noundef 4, i64 noundef 64) #22
  store ptr %4, ptr @reg_eliminate, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  store i32 0, ptr @num_eliminable, align 4, !tbaa !27
  br label %7

7:                                                ; preds = %5, %32
  %8 = phi ptr [ %38, %32 ], [ @reg_eliminate_1, %5 ]
  %9 = phi ptr [ %37, %32 ], [ %6, %5 ]
  %10 = load i32, ptr %8, align 4, !tbaa !127
  store i32 %10, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.elim_table_1, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !129
  %13 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !71
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !130
  %15 = tail call zeroext i8 %14(i32 noundef %10, i32 noundef %12) #22
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %13, align 4, !tbaa !71
  %19 = icmp eq i32 %18, 7
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !131
  %25 = icmp eq i8 %24, 0
  %26 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %27 = icmp ne i8 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ false, %17 ], [ %28, %23 ]
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %29, %7
  %33 = phi i1 [ false, %7 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 4
  store i32 %34, ptr %35, align 4, !tbaa !132
  %36 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 3
  store i32 %34, ptr %36, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct.elim_table, ptr %9, i64 1
  %38 = getelementptr inbounds %struct.elim_table_1, ptr %8, i64 1
  %39 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.elim_table, ptr %39, i64 4
  %41 = icmp ult ptr %37, %40
  br i1 %41, label %7, label %42, !llvm.loop !133

42:                                               ; preds = %32, %42
  %43 = phi ptr [ %55, %42 ], [ %39, %32 ]
  %44 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !63
  %46 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr @num_eliminable, align 4, !tbaa !27
  %48 = load i32, ptr %43, align 8, !tbaa !61
  %49 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %48) #22
  %50 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !134
  %51 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !71
  %53 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %52) #22
  %54 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 9
  store ptr %53, ptr %54, align 8, !tbaa !135
  %55 = getelementptr inbounds %struct.elim_table, ptr %43, i64 1
  %56 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %57 = getelementptr inbounds %struct.elim_table, ptr %56, i64 4
  %58 = icmp ult ptr %55, %57
  br i1 %58, label %42, label %59, !llvm.loop !136

59:                                               ; preds = %42
  ret void
}

; Function Attrs: optsize
declare i32 @get_first_label_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_label_num() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_sort_regnos_for_alter_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alter_reg(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %163, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %163

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %15 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %16 = getelementptr inbounds i16, ptr %15, i64 %5
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = sext i16 %17 to i32
  %19 = icmp slt i16 %17, 0
  %20 = select i1 %19, i32 %0, i32 %18
  tail call void @df_ref_change_reg_with_loc(i32 noundef %14, i32 noundef %20, ptr noundef nonnull %7) #22
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %22 = getelementptr inbounds i16, ptr %21, i64 %5
  %23 = load i16, ptr %22, align 2, !tbaa !28
  %24 = sext i16 %23 to i32
  %25 = icmp slt i16 %23, 0
  %26 = select i1 %25, i32 %0, i32 %24
  %27 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %28 = getelementptr inbounds ptr, ptr %27, i64 %5
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store i32 %26, ptr %30, align 8, !tbaa !5
  %31 = load i16, ptr %22, align 2, !tbaa !28
  %32 = icmp slt i16 %31, 0
  br i1 %32, label %33, label %163

33:                                               ; preds = %13
  %34 = tail call fastcc i32 @REG_N_REFS(i32 noundef %0) #23
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %163

36:                                               ; preds = %33
  %37 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %38 = getelementptr inbounds ptr, ptr %37, i64 %5
  %39 = load ptr, ptr %38, align 8, !tbaa !21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %163

41:                                               ; preds = %36
  %42 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %43 = getelementptr inbounds ptr, ptr %42, i64 %5
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %48 = getelementptr inbounds ptr, ptr %47, i64 %5
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %163

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %53 = getelementptr inbounds ptr, ptr %52, i64 %5
  %54 = load ptr, ptr %53, align 8, !tbaa !21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %163

56:                                               ; preds = %51
  %57 = load ptr, ptr %28, align 8, !tbaa !21
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = zext i8 %63 to i32
  %65 = tail call i32 @get_mode_alignment(i32 noundef %60) #22
  %66 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !21
  %67 = getelementptr inbounds i32, ptr %66, i64 %5
  %68 = load i32, ptr %67, align 4, !tbaa !27
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %64)
  %70 = shl i32 %68, 3
  %71 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %56
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %0) #22
  %75 = icmp eq i8 %2, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = tail call ptr @ira_reuse_stack_slot(i32 noundef %0, i32 noundef %64, i32 noundef %69) #22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %152

79:                                               ; preds = %56, %73, %76
  %80 = icmp eq i32 %1, -1
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = icmp eq i8 %2, 0
  %83 = load i8, ptr @ira_conflicts_p, align 1
  %84 = icmp ne i8 %83, 0
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %98

86:                                               ; preds = %81, %79
  %87 = zext i32 %69 to i64
  %88 = icmp ugt i32 %70, %65
  %89 = icmp ugt i32 %68, %64
  %90 = select i1 %88, i1 true, i1 %89
  %91 = sext i1 %90 to i32
  %92 = tail call ptr @assign_stack_local(i32 noundef %60, i64 noundef %87, i32 noundef %91) #22
  %93 = icmp eq i8 %2, 0
  %94 = load i8, ptr @ira_conflicts_p, align 1
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %152

97:                                               ; preds = %86
  tail call void @ira_mark_new_stack_slot(ptr noundef %92, i32 noundef %0, i32 noundef %69) #22
  br label %152

98:                                               ; preds = %81
  %99 = sext i32 %1 to i64
  %100 = getelementptr inbounds [53 x ptr], ptr @spill_stack_slot, i64 0, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !21
  %102 = icmp eq ptr %101, null
  br i1 %102, label %141, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds [53 x i32], ptr @spill_stack_slot_width, i64 0, i64 %99
  %105 = load i32, ptr %104, align 4, !tbaa !27
  %106 = icmp ult i32 %105, %69
  %107 = load i32, ptr %101, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  br i1 %106, label %125, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %113 = load i8, ptr %112, align 1, !tbaa !5
  %114 = icmp ult i8 %113, %63
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mem_attrs, ptr %117, i64 0, i32 4
  %121 = load i32, ptr %120, align 4, !tbaa !137
  br label %122

122:                                              ; preds = %115, %119
  %123 = phi i32 [ %121, %119 ], [ 8, %115 ]
  %124 = icmp ult i32 %123, %70
  br i1 %124, label %125, label %152

125:                                              ; preds = %103, %122, %111
  %126 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %127 = load i8, ptr %126, align 1, !tbaa !5
  %128 = icmp ugt i8 %127, %63
  %129 = select i1 %128, i32 %109, i32 %60
  %130 = tail call i32 @llvm.umax.i32(i32 %105, i32 %69)
  %131 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = icmp eq i32 %70, 0
  %136 = select i1 %135, i32 8, i32 %70
  br label %141

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.mem_attrs, ptr %132, i64 0, i32 4
  %139 = load i32, ptr %138, align 4, !tbaa !137
  %140 = tail call i32 @llvm.umax.i32(i32 %139, i32 %70)
  br label %141

141:                                              ; preds = %137, %134, %98
  %142 = phi i32 [ %70, %98 ], [ %136, %134 ], [ %140, %137 ]
  %143 = phi i32 [ %69, %98 ], [ %130, %134 ], [ %130, %137 ]
  %144 = phi i32 [ %60, %98 ], [ %129, %134 ], [ %129, %137 ]
  %145 = zext i32 %143 to i64
  %146 = icmp ugt i32 %142, %65
  %147 = icmp ugt i32 %143, %64
  %148 = select i1 %146, i1 true, i1 %147
  %149 = sext i1 %148 to i32
  %150 = tail call ptr @assign_stack_local(i32 noundef %144, i64 noundef %145, i32 noundef %149) #22
  store ptr %150, ptr %100, align 8, !tbaa !21
  %151 = getelementptr inbounds [53 x i32], ptr @spill_stack_slot_width, i64 0, i64 %99
  store i32 %143, ptr %151, align 4, !tbaa !27
  br label %152

152:                                              ; preds = %122, %86, %97, %141, %76
  %153 = phi ptr [ %77, %76 ], [ %150, %141 ], [ %92, %97 ], [ %92, %86 ], [ %101, %122 ]
  %154 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %155 = getelementptr inbounds ptr, ptr %154, i64 %5
  %156 = load ptr, ptr %155, align 8, !tbaa !21
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = tail call ptr @adjust_address_1(ptr noundef %153, i32 noundef %159, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  tail call void @set_mem_attrs_for_spill(ptr noundef %160) #22
  %161 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %162 = getelementptr inbounds ptr, ptr %161, i64 %5
  store ptr %160, ptr %162, align 8, !tbaa !21
  br label %163

163:                                              ; preds = %9, %3, %152, %51, %46, %36, %33, %13
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mark_not_eliminable(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #13 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !21
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %16 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %18

18:                                               ; preds = %14, %50
  %19 = phi i64 [ 0, %14 ], [ %52, %50 ]
  %20 = phi i32 [ %16, %14 ], [ %51, %50 ]
  %21 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %19, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %19, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !135
  %27 = icmp eq ptr %11, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 23
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load ptr, ptr %17, align 8, !tbaa !5
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 49
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = icmp eq ptr %39, %11
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %37, %32, %28
  store i32 0, ptr %21, align 8, !tbaa !63
  %48 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %19, i32 4
  store i32 0, ptr %48, align 4, !tbaa !132
  %49 = add nsw i32 %20, -1
  store i32 %49, ptr @num_eliminable, align 4, !tbaa !27
  br label %50

50:                                               ; preds = %18, %24, %41, %47
  %51 = phi i32 [ %20, %18 ], [ %20, %24 ], [ %20, %41 ], [ %49, %47 ]
  %52 = add nuw nsw i64 %19, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %18, !llvm.loop !138

54:                                               ; preds = %50, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_fix_stack_asms() unnamed_addr #0 {
  %1 = alloca [30 x ptr], align 16
  %2 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #24
  %3 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %0, %125
  %6 = phi ptr [ %126, %125 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.insn_chain, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %125

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = call i32 @asm_noperands(ptr noundef %15) #22
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %125, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !tbaa !139
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %125

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = load i32, ptr %27, align 8, !tbaa !123
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %54
  %33 = phi i64 [ 0, %30 ], [ %56, %54 ]
  %34 = phi i64 [ 0, %30 ], [ %55, %54 ]
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 25
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = call fastcc i32 @rhs_regno(ptr noundef nonnull %42) #23
  %48 = and i32 %47, -8
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = zext nneg i32 %47 to i64
  %52 = shl nuw nsw i64 1, %51
  %53 = or i64 %52, %34
  br label %54

54:                                               ; preds = %50, %46, %40, %32
  %55 = phi i64 [ %53, %50 ], [ %34, %46 ], [ %34, %40 ], [ %34, %32 ]
  %56 = add nuw nsw i64 %33, 1
  %57 = icmp eq i64 %56, %31
  br i1 %57, label %58, label %32, !llvm.loop !140

58:                                               ; preds = %54, %25
  %59 = phi i64 [ 0, %25 ], [ %55, %54 ]
  %60 = call ptr @decode_asm_operands(ptr noundef nonnull %21, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #22
  %61 = icmp eq i32 %16, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = call i32 @llvm.smax.i32(i32 %16, i32 1)
  %64 = zext nneg i32 %63 to i64
  br label %70

65:                                               ; preds = %110, %58
  %66 = phi i64 [ 0, %58 ], [ %87, %110 ]
  %67 = and i64 %66, %59
  %68 = getelementptr inbounds %struct.insn_chain, ptr %6, i64 0, i32 6
  %69 = getelementptr inbounds %struct.insn_chain, ptr %6, i64 0, i32 7
  br label %113

70:                                               ; preds = %62, %110
  %71 = phi i64 [ 0, %62 ], [ %111, %110 ]
  %72 = phi i64 [ 0, %62 ], [ %87, %110 ]
  %73 = getelementptr inbounds [30 x ptr], ptr %1, i64 0, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !21
  br label %75

75:                                               ; preds = %106, %70
  %76 = phi i64 [ %87, %106 ], [ %72, %70 ]
  %77 = phi ptr [ %107, %106 ], [ %74, %70 ]
  br label %78

78:                                               ; preds = %75, %102
  %79 = phi ptr [ %105, %102 ], [ %77, %75 ]
  %80 = phi i32 [ %103, %102 ], [ 0, %75 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5
  switch i8 %81, label %93 [
    i8 44, label %82
    i8 35, label %82
    i8 0, label %82
    i8 61, label %102
    i8 43, label %102
    i8 42, label %102
    i8 37, label %102
    i8 63, label %102
    i8 33, label %102
    i8 48, label %102
    i8 49, label %102
    i8 50, label %102
    i8 51, label %102
    i8 52, label %102
    i8 60, label %102
    i8 62, label %102
    i8 86, label %102
    i8 111, label %102
    i8 38, label %102
    i8 69, label %102
    i8 70, label %102
    i8 115, label %102
    i8 105, label %102
    i8 110, label %102
    i8 88, label %102
    i8 73, label %102
    i8 74, label %102
    i8 75, label %102
    i8 76, label %102
    i8 77, label %102
    i8 78, label %102
    i8 79, label %102
    i8 80, label %102
    i8 109, label %102
    i8 112, label %97
    i8 103, label %97
    i8 114, label %97
  ]

82:                                               ; preds = %78, %78, %78
  %83 = icmp eq i8 %81, 35
  %84 = sext i32 %80 to i64
  %85 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !38
  %87 = or i64 %86, %76
  %88 = getelementptr inbounds i8, ptr %79, i64 1
  br i1 %83, label %89, label %106

89:                                               ; preds = %82, %89
  %90 = phi ptr [ %91, %89 ], [ %88, %82 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load i8, ptr %90, align 1, !tbaa !5
  switch i8 %92, label %89 [
    i8 44, label %106
    i8 0, label %106
  ]

93:                                               ; preds = %78
  %94 = call i32 @lookup_constraint(ptr noundef nonnull %79) #22
  %95 = call i32 @regclass_for_constraint(i32 noundef %94) #22
  %96 = sext i32 %95 to i64
  br label %97

97:                                               ; preds = %78, %78, %78, %93
  %98 = phi i64 [ %96, %93 ], [ 13, %78 ], [ 13, %78 ], [ 13, %78 ]
  %99 = sext i32 %80 to i64
  %100 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %99, i64 %98
  %101 = load i32, ptr %100, align 4, !tbaa !27
  br label %102

102:                                              ; preds = %97, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78
  %103 = phi i32 [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %101, %97 ]
  %104 = call fastcc i64 @insn_constraint_len(i8 noundef signext %81) #23
  %105 = getelementptr inbounds i8, ptr %79, i64 %104
  br label %78

106:                                              ; preds = %89, %89, %82
  %107 = phi ptr [ %88, %82 ], [ %91, %89 ], [ %91, %89 ]
  %108 = phi i8 [ %81, %82 ], [ %92, %89 ], [ %92, %89 ]
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %75

110:                                              ; preds = %106
  %111 = add nuw nsw i64 %71, 1
  %112 = icmp eq i64 %111, %64
  br i1 %112, label %65, label %70, !llvm.loop !141

113:                                              ; preds = %65, %122
  %114 = phi i64 [ 0, %65 ], [ %123, %122 ]
  %115 = shl nuw nsw i64 1, %114
  %116 = and i64 %67, %115
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = trunc i64 %114 to i32
  %120 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %68, i32 noundef %119) #22
  %121 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %69, i32 noundef %119) #22
  br label %122

122:                                              ; preds = %113, %118
  %123 = add nuw nsw i64 %114, 1
  %124 = icmp eq i64 %123, 53
  br i1 %124, label %125, label %113, !llvm.loop !142

125:                                              ; preds = %122, %5, %18, %13
  %126 = load ptr, ptr %6, align 8, !tbaa !21
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %5, !llvm.loop !143

128:                                              ; preds = %125, %0
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spill_hard_reg(i32 noundef %0) unnamed_addr #0 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw i64 1, %2
  %4 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !38
  %5 = or i64 %4, %3
  store i64 %5, ptr @bad_spill_regs_global, align 8, !tbaa !38
  tail call void @df_set_regs_ever_live(i32 noundef %0, i8 noundef zeroext 1) #22
  %6 = load i32, ptr @max_regno, align 4, !tbaa !27
  %7 = icmp sgt i32 %6, 53
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  br label %10

10:                                               ; preds = %8, %34
  %11 = phi i32 [ %6, %8 ], [ %35, %34 ]
  %12 = phi ptr [ %9, %8 ], [ %36, %34 ]
  %13 = phi i64 [ 53, %8 ], [ %37, %34 ]
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !28
  %16 = sext i16 %15 to i32
  %17 = icmp slt i16 %15, 0
  %18 = icmp ugt i32 %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %22 = getelementptr inbounds ptr, ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = tail call fastcc i32 @end_hard_regno(i32 noundef %26, i32 noundef %16) #23
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = trunc i64 %13 to i32
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %30) #22
  %32 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %33 = load i32, ptr @max_regno, align 4, !tbaa !27
  br label %34

34:                                               ; preds = %10, %20, %29
  %35 = phi i32 [ %11, %10 ], [ %11, %20 ], [ %33, %29 ]
  %36 = phi ptr [ %12, %10 ], [ %12, %20 ], [ %32, %29 ]
  %37 = add nuw nsw i64 %13, 1
  %38 = sext i32 %35 to i64
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %10, label %40, !llvm.loop !144

40:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @finish_spills(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  store i32 0, ptr @n_spills, align 4, !tbaa !27
  %6 = load i64, ptr @used_spill_regs, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %1, %34
  %8 = phi i64 [ %6, %1 ], [ %35, %34 ]
  %9 = phi i64 [ 0, %1 ], [ %37, %34 ]
  %10 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %11 = shl nuw nsw i64 1, %9
  %12 = and i64 %8, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr @n_spills, align 4, !tbaa !27
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %9
  store i16 %16, ptr %17, align 2, !tbaa !28
  %18 = trunc i64 %9 to i32
  %19 = trunc i64 %9 to i16
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr @n_spills, align 4, !tbaa !27
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %21
  store i16 %19, ptr %22, align 2, !tbaa !28
  %23 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %18) #22
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 1, i32 %10
  br label %29

29:                                               ; preds = %25, %14
  %30 = phi i32 [ %10, %14 ], [ %28, %25 ]
  tail call void @df_set_regs_ever_live(i32 noundef %18, i8 noundef zeroext 1) #22
  %31 = load i64, ptr @used_spill_regs, align 8, !tbaa !38
  br label %34

32:                                               ; preds = %7
  %33 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %9
  store i16 -1, ptr %33, align 2, !tbaa !28
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi i64 [ %31, %29 ], [ %8, %32 ]
  %36 = phi i32 [ %30, %29 ], [ %10, %32 ]
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, 53
  br i1 %38, label %39, label %7, !llvm.loop !145

39:                                               ; preds = %34
  store i32 53, ptr %2, align 4, !tbaa !27
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull @spilled_pseudos, i32 noundef 53, ptr noundef nonnull %2) #23
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %41 = icmp eq i8 %40, 0
  %42 = load i8, ptr @ira_conflicts_p, align 1
  br i1 %41, label %85, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  br label %45

45:                                               ; preds = %43, %78
  %46 = phi ptr [ %79, %78 ], [ %44, %43 ]
  %47 = phi i8 [ %80, %78 ], [ %42, %43 ]
  %48 = phi i8 [ %81, %78 ], [ %42, %43 ]
  %49 = phi i32 [ %82, %78 ], [ %36, %43 ]
  %50 = icmp eq i8 %48, 0
  %51 = load i32, ptr %2, align 4, !tbaa !27
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %46, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !28
  %55 = icmp sgt i16 %54, -1
  br i1 %50, label %57, label %56

56:                                               ; preds = %45
  br i1 %55, label %62, label %78

57:                                               ; preds = %45
  br i1 %55, label %62, label %58

58:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3991, ptr noundef nonnull @.str.2) #22
  %59 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %60 = getelementptr inbounds i16, ptr %59, i64 %52
  %61 = load i16, ptr %60, align 2, !tbaa !28
  br label %62

62:                                               ; preds = %56, %57, %58
  %63 = phi ptr [ %46, %57 ], [ %59, %58 ], [ %46, %56 ]
  %64 = phi i16 [ %54, %57 ], [ %61, %58 ], [ %54, %56 ]
  %65 = getelementptr inbounds i16, ptr %63, i64 %52
  %66 = sext i16 %64 to i64
  %67 = and i64 %66, 4294967295
  %68 = shl nuw i64 1, %67
  %69 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !21
  %70 = getelementptr inbounds i64, ptr %69, i64 %52
  %71 = load i64, ptr %70, align 8, !tbaa !38
  %72 = or i64 %68, %71
  store i64 %72, ptr %70, align 8, !tbaa !38
  store i16 -1, ptr %65, align 2, !tbaa !28
  %73 = load i8, ptr @ira_conflicts_p, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  tail call void @ira_mark_allocation_change(i32 noundef %51) #22
  %76 = load i8, ptr @ira_conflicts_p, align 1
  %77 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  br label %78

78:                                               ; preds = %62, %75, %56
  %79 = phi ptr [ %46, %56 ], [ %77, %75 ], [ %63, %62 ]
  %80 = phi i8 [ %47, %56 ], [ %76, %75 ], [ 0, %62 ]
  %81 = phi i8 [ %48, %56 ], [ %76, %75 ], [ 0, %62 ]
  %82 = phi i32 [ %49, %56 ], [ 1, %75 ], [ 1, %62 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %45, !llvm.loop !146

85:                                               ; preds = %78, %39
  %86 = phi i8 [ %42, %39 ], [ %80, %78 ]
  %87 = phi i32 [ %36, %39 ], [ %82, %78 ]
  %88 = icmp ne i32 %0, 0
  %89 = icmp ne i8 %86, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %183

91:                                               ; preds = %85
  %92 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !21
  %93 = load i32, ptr @max_regno, align 4, !tbaa !27
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %92, i8 0, i64 %95, i1 false)
  %96 = load ptr, ptr @insns_need_reload, align 8, !tbaa !21
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %135, %91
  %99 = load i32, ptr @max_regno, align 4, !tbaa !27
  %100 = icmp ugt i32 %99, 53
  br i1 %100, label %101, label %173

101:                                              ; preds = %98
  %102 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !21
  %103 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  br label %139

104:                                              ; preds = %91, %135
  %105 = phi ptr [ %137, %135 ], [ %96, %91 ]
  %106 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %106, i32 noundef 53, ptr noundef nonnull %2) #23
  %107 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 10
  br label %111

111:                                              ; preds = %109, %111
  %112 = load i64, ptr %110, align 8, !tbaa !147
  %113 = load i32, ptr %2, align 4, !tbaa !27
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, ptr %92, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !38
  %117 = or i64 %116, %112
  store i64 %117, ptr %115, align 8, !tbaa !38
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %111, !llvm.loop !148

120:                                              ; preds = %111, %104
  %121 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %121, i32 noundef 53, ptr noundef nonnull %2) #23
  %122 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 10
  br label %126

126:                                              ; preds = %124, %126
  %127 = load i64, ptr %125, align 8, !tbaa !147
  %128 = load i32, ptr %2, align 4, !tbaa !27
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, ptr %92, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !38
  %132 = or i64 %131, %127
  store i64 %132, ptr %130, align 8, !tbaa !38
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %133 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %126, !llvm.loop !149

135:                                              ; preds = %126, %120
  %136 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !21
  %138 = icmp eq ptr %137, null
  br i1 %138, label %98, label %104, !llvm.loop !150

139:                                              ; preds = %101, %162
  %140 = phi ptr [ %103, %101 ], [ %163, %162 ]
  %141 = phi ptr [ %102, %101 ], [ %164, %162 ]
  %142 = phi i64 [ 53, %101 ], [ %166, %162 ]
  %143 = phi i32 [ 0, %101 ], [ %165, %162 ]
  %144 = getelementptr inbounds i16, ptr %141, i64 %142
  %145 = load i16, ptr %144, align 2, !tbaa !28
  %146 = getelementptr inbounds i16, ptr %140, i64 %142
  %147 = load i16, ptr %146, align 2, !tbaa !28
  %148 = icmp eq i16 %145, %147
  br i1 %148, label %162, label %149

149:                                              ; preds = %139
  %150 = icmp slt i16 %147, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %149
  %152 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !21
  %153 = add i32 %143, 1
  %154 = zext i32 %143 to i64
  %155 = getelementptr inbounds i32, ptr %152, i64 %154
  %156 = trunc i64 %142 to i32
  store i32 %156, ptr %155, align 4, !tbaa !27
  br label %162

157:                                              ; preds = %149
  %158 = trunc i64 %142 to i32
  %159 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %158) #22
  %160 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !21
  %161 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  br label %162

162:                                              ; preds = %139, %157, %151
  %163 = phi ptr [ %140, %151 ], [ %161, %157 ], [ %140, %139 ]
  %164 = phi ptr [ %141, %151 ], [ %160, %157 ], [ %141, %139 ]
  %165 = phi i32 [ %153, %151 ], [ %143, %157 ], [ %143, %139 ]
  %166 = add nuw nsw i64 %142, 1
  %167 = load i32, ptr @max_regno, align 4, !tbaa !27
  %168 = zext i32 %167 to i64
  %169 = icmp ult i64 %166, %168
  br i1 %169, label %139, label %170, !llvm.loop !151

170:                                              ; preds = %162
  %171 = trunc i64 %166 to i32
  %172 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !21
  br label %173

173:                                              ; preds = %170, %98
  %174 = phi ptr [ %92, %98 ], [ %172, %170 ]
  %175 = phi i32 [ 53, %98 ], [ %171, %170 ]
  %176 = phi i32 [ 0, %98 ], [ %165, %170 ]
  store i32 %175, ptr %2, align 4, !tbaa !27
  %177 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !21
  %178 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !38
  %179 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !21
  %180 = tail call zeroext i8 @ira_reassign_pseudos(ptr noundef %177, i32 noundef %176, i64 noundef %178, ptr noundef %174, ptr noundef %179, ptr noundef nonnull @spilled_pseudos) #22
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, i32 %87, i32 1
  br label %183

183:                                              ; preds = %173, %85
  %184 = phi i32 [ %182, %173 ], [ %87, %85 ]
  %185 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !21
  %186 = icmp eq ptr %185, null
  br i1 %186, label %215, label %187

187:                                              ; preds = %183, %212
  %188 = phi ptr [ %213, %212 ], [ %185, %183 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %189 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 6
  %193 = call zeroext i8 @bitmap_and_compl_into(ptr noundef nonnull %192, ptr noundef nonnull @spilled_pseudos) #22
  %194 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 7
  %195 = call zeroext i8 @bitmap_and_compl_into(ptr noundef nonnull %194, ptr noundef nonnull @spilled_pseudos) #22
  br label %196

196:                                              ; preds = %191, %187
  %197 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 5
  %198 = load i8, ptr %197, align 4
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %196
  store i64 0, ptr %4, align 8, !tbaa !38
  %202 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %202) #22
  store i64 0, ptr %5, align 8, !tbaa !38
  %203 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %5, ptr noundef nonnull %203) #22
  %204 = load i64, ptr %5, align 8, !tbaa !38
  %205 = load i64, ptr %4, align 8, !tbaa !38
  %206 = or i64 %205, %204
  store i64 %206, ptr %4, align 8, !tbaa !38
  call void @compute_use_by_pseudos(ptr noundef nonnull %4, ptr noundef nonnull %202) #23
  call void @compute_use_by_pseudos(ptr noundef nonnull %4, ptr noundef nonnull %203) #23
  %207 = load i64, ptr %4, align 8, !tbaa !38
  %208 = xor i64 %207, -1
  %209 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 10
  %210 = load i64, ptr @used_spill_regs, align 8, !tbaa !38
  %211 = and i64 %210, %208
  store i64 %211, ptr %209, align 8, !tbaa !147
  br label %212

212:                                              ; preds = %201, %196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %213 = load ptr, ptr %188, align 8, !tbaa !21
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %187, !llvm.loop !152

215:                                              ; preds = %212, %183
  call void @bitmap_clear(ptr noundef nonnull @changed_allocation_pseudos) #22
  %216 = load i32, ptr @max_regno, align 4, !tbaa !27
  %217 = icmp ugt i32 %216, 53
  br i1 %217, label %218, label %253

218:                                              ; preds = %215, %248
  %219 = phi i64 [ %249, %248 ], [ 53, %215 ]
  %220 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %221 = getelementptr inbounds i16, ptr %220, i64 %219
  %222 = load i16, ptr %221, align 2, !tbaa !28
  %223 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !21
  %224 = getelementptr inbounds i16, ptr %223, i64 %219
  %225 = load i16, ptr %224, align 2, !tbaa !28
  %226 = icmp eq i16 %225, %222
  br i1 %226, label %248, label %227

227:                                              ; preds = %218
  %228 = trunc i64 %219 to i32
  %229 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @changed_allocation_pseudos, i32 noundef %228) #22
  %230 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !21
  %231 = getelementptr inbounds i16, ptr %230, i64 %219
  %232 = load i16, ptr %231, align 2, !tbaa !28
  %233 = sext i16 %232 to i32
  call fastcc void @alter_reg(i32 noundef %228, i32 noundef %233, i8 noundef zeroext 0) #23
  %234 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !21
  %235 = getelementptr inbounds i16, ptr %234, i64 %219
  store i16 %222, ptr %235, align 2, !tbaa !28
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %237 = icmp eq ptr %236, null
  br i1 %237, label %248, label %238

238:                                              ; preds = %227
  %239 = icmp eq i16 %222, -1
  br i1 %239, label %240, label %242

240:                                              ; preds = %238
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.15, i32 noundef %228) #23
  br label %248

242:                                              ; preds = %238
  %243 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %244 = getelementptr inbounds i16, ptr %243, i64 %219
  %245 = load i16, ptr %244, align 2, !tbaa !28
  %246 = sext i16 %245 to i32
  %247 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.16, i32 noundef %228, i32 noundef %246) #23
  br label %248

248:                                              ; preds = %227, %242, %240, %218
  %249 = add nuw nsw i64 %219, 1
  %250 = load i32, ptr @max_regno, align 4, !tbaa !27
  %251 = zext i32 %250 to i64
  %252 = icmp ult i64 %249, %251
  br i1 %252, label %218, label %253, !llvm.loop !153

253:                                              ; preds = %248, %215
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %184
}

; Function Attrs: optsize
declare i64 @get_frame_size() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_initial_elim_offsets() unnamed_addr #0 {
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi ptr [ %11, %2 ], [ %1, %0 ]
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !71
  %7 = tail call i64 @ix86_initial_elimination_offset(i32 noundef %4, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 2
  store i64 %7, ptr %8, align 8, !tbaa !154
  %9 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 5
  store i64 %7, ptr %9, align 8, !tbaa !155
  %10 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 6
  store i64 %7, ptr %10, align 8, !tbaa !156
  %11 = getelementptr inbounds %struct.elim_table, ptr %3, i64 1
  %12 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.elim_table, ptr %12, i64 4
  %14 = icmp ult ptr %11, %13
  br i1 %14, label %2, label %15, !llvm.loop !157

15:                                               ; preds = %2
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_initial_label_offsets() unnamed_addr #0 {
  %1 = load ptr, ptr @offsets_known_at, align 8, !tbaa !21
  %2 = load i32, ptr @num_labels, align 4, !tbaa !27
  %3 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %3, i1 false)
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %0, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @set_label_offsets(ptr noundef nonnull %9, ptr noundef null, i32 noundef 1) #23
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !158

16:                                               ; preds = %12, %0
  tail call void @for_each_eh_label(ptr noundef nonnull @set_initial_eh_label_offset) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @eliminate_regs(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setup_save_areas() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @save_call_clobbered_regs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calculate_needs_all_insns(i32 noundef %0) unnamed_addr #0 {
  store i1 false, ptr @something_needs_elimination, align 4
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  %37 = select i1 %36, ptr %33, ptr %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %15, ptr @reload_insn_firstobj, align 8, !tbaa !21
  %38 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %253, label %40

40:                                               ; preds = %20, %250
  %41 = phi ptr [ %251, %250 ], [ @insns_need_reload, %20 ]
  %42 = phi ptr [ %45, %250 ], [ %38, %20 ]
  %43 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = load ptr, ptr %42, align 8, !tbaa !24
  %46 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 9
  store i32 0, ptr %46, align 8, !tbaa !159
  %47 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, -8
  store i8 %49, ptr %47, align 4
  %50 = load i32, ptr %44, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %58 [
    i16 12, label %56
    i16 9, label %56
    i16 8, label %52
    i16 7, label %52
    i16 10, label %52
  ]

52:                                               ; preds = %40, %40, %40
  %53 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %40, %40, %52
  tail call fastcc void @set_label_offsets(ptr noundef nonnull %44, ptr noundef nonnull %44, i32 noundef 0) #23
  %57 = load i32, ptr %44, align 8
  br label %58

58:                                               ; preds = %40, %56, %52
  %59 = phi i32 [ %50, %40 ], [ %57, %56 ], [ %50, %52 ]
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %250

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = load i32, ptr %65, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 23
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = tail call ptr @single_set_2(ptr noundef nonnull %44, ptr noundef nonnull %65) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %107, label %76

76:                                               ; preds = %63, %73
  %77 = phi ptr [ %74, %73 ], [ %65, %63 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %107

83:                                               ; preds = %76
  %84 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #23
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16, ptr %84, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !28
  %89 = icmp slt i16 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %92 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #23
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !21
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !21
  %99 = getelementptr inbounds ptr, ptr %98, i64 %93
  %100 = load ptr, ptr %99, align 8, !tbaa !21
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %97, %90
  %103 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %104 = getelementptr inbounds ptr, ptr %103, i64 %93
  %105 = load ptr, ptr %104, align 8, !tbaa !21
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %250

107:                                              ; preds = %102, %97, %83, %76, %73
  %108 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %109 = icmp ne i32 %108, 0
  %110 = load i32, ptr @num_eliminable_invariants, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = tail call fastcc i32 @eliminate_regs_in_insn(ptr noundef nonnull %44, i32 noundef 0) #23
  br label %115

115:                                              ; preds = %107, %113
  %116 = phi i32 [ %114, %113 ], [ 0, %107 ]
  %117 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !5
  %118 = sext i8 %117 to i32
  %119 = tail call i32 @find_reloads(ptr noundef nonnull %44, i32 noundef 0, i32 noundef %118, i32 noundef %0, ptr noundef nonnull @spill_reg_order) #22
  %120 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !27
  %121 = icmp ne i32 %120, 0
  %122 = load i32, ptr @n_reloads, align 4
  %123 = icmp sgt i32 %122, 1
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %125, label %204

125:                                              ; preds = %115
  %126 = load i32, ptr %44, align 8
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -7
  %129 = icmp ult i32 %128, 4
  br i1 %129, label %130, label %204

130:                                              ; preds = %125
  %131 = load ptr, ptr %64, align 8, !tbaa !5
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 23
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = tail call ptr @single_set_2(ptr noundef nonnull %44, ptr noundef nonnull %131) #22
  %137 = icmp eq ptr %136, null
  br i1 %137, label %204, label %138

138:                                              ; preds = %130, %135
  %139 = phi ptr [ %136, %135 ], [ %131, %130 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %141 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = load ptr, ptr %140, align 8, !tbaa !5
  %144 = icmp eq ptr %142, %143
  %145 = load i32, ptr %142, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 37
  %148 = select i1 %144, i1 %147, i1 false
  br i1 %148, label %149, label %152

149:                                              ; preds = %138
  %150 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %142) #23
  %151 = icmp ugt i32 %150, 52
  br i1 %151, label %185, label %154

152:                                              ; preds = %138
  %153 = icmp eq i32 %146, 37
  br i1 %153, label %154, label %204

154:                                              ; preds = %149, %152
  %155 = load i32, ptr %143, align 8
  %156 = and i32 %155, 65535
  %157 = icmp eq i32 %156, 37
  br i1 %157, label %158, label %204

158:                                              ; preds = %154
  %159 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %160 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %142) #23
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i16, ptr %159, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !28
  %164 = icmp slt i16 %163, 0
  br i1 %164, label %165, label %204

165:                                              ; preds = %158
  %166 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %143) #23
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i16, ptr %159, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !28
  %170 = icmp slt i16 %169, 0
  br i1 %170, label %171, label %204

171:                                              ; preds = %165
  %172 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %173 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %142) #23
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds ptr, ptr %172, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !21
  %177 = icmp eq ptr %176, null
  br i1 %177, label %204, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds ptr, ptr %172, i64 %167
  %180 = load ptr, ptr %179, align 8, !tbaa !21
  %181 = icmp eq ptr %180, null
  br i1 %181, label %204, label %182

182:                                              ; preds = %178
  %183 = tail call i32 @rtx_equal_p(ptr noundef nonnull %176, ptr noundef nonnull %180) #22
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %182, %149
  %186 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %140, align 8, !tbaa !5
  %190 = tail call fastcc i32 @rhs_regno(ptr noundef %189) #23
  %191 = load ptr, ptr %141, align 8, !tbaa !5
  %192 = tail call fastcc i32 @rhs_regno(ptr noundef %191) #23
  tail call void @ira_mark_memory_move_deletion(i32 noundef %190, i32 noundef %192) #22
  br label %193

193:                                              ; preds = %188, %185
  %194 = tail call ptr @delete_insn(ptr noundef nonnull %44) #22
  %195 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !160
  %197 = icmp eq ptr %196, null
  %198 = select i1 %197, ptr @reload_insn_chain, ptr %196
  store ptr %45, ptr %198, align 8, !tbaa !21
  %199 = icmp eq ptr %45, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.insn_chain, ptr %45, i64 0, i32 1
  store ptr %196, ptr %201, align 8, !tbaa !160
  br label %202

202:                                              ; preds = %200, %193
  %203 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !21
  store ptr %203, ptr %42, align 8, !tbaa !24
  store ptr %42, ptr @unused_insn_chains, align 8, !tbaa !21
  br label %250

204:                                              ; preds = %125, %182, %178, %171, %165, %158, %154, %152, %135, %115
  %205 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  tail call fastcc void @update_eliminable_offsets() #23
  br label %208

208:                                              ; preds = %207, %204
  %209 = trunc i32 %116 to i8
  %210 = load i8, ptr %47, align 4
  %211 = shl i8 %209, 2
  %212 = and i8 %211, 4
  %213 = and i8 %210, -8
  %214 = or disjoint i8 %213, %212
  %215 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %216 = icmp sgt i32 %215, 0
  %217 = zext i1 %216 to i8
  %218 = trunc i32 %119 to i8
  %219 = shl i8 %218, 1
  %220 = and i8 %219, 2
  %221 = or disjoint i8 %214, %220
  %222 = or disjoint i8 %221, %217
  store i8 %222, ptr %47, align 4
  %223 = icmp eq i32 %116, 0
  br i1 %223, label %243, label %224

224:                                              ; preds = %208
  %225 = load ptr, ptr @reload_insn_firstobj, align 8, !tbaa !21
  %226 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %227 = ptrtoint ptr %225 to i64
  %228 = ptrtoint ptr %226 to i64
  %229 = sub i64 %227, %228
  store i64 %229, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %224
  %232 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %233 = ptrtoint ptr %232 to i64
  %234 = sub i64 %233, %228
  %235 = icmp slt i64 %229, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = getelementptr inbounds i8, ptr %226, i64 %229
  store ptr %237, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %237, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %241

238:                                              ; preds = %231, %224
  %239 = getelementptr inbounds i8, ptr %226, i64 %229
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %239) #22
  %240 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %241

241:                                              ; preds = %238, %236
  %242 = phi i32 [ %240, %238 ], [ %215, %236 ]
  store ptr %65, ptr %64, align 8, !tbaa !5
  store i32 %67, ptr %66, align 8, !tbaa !5
  store ptr %69, ptr %68, align 8, !tbaa !5
  store i1 true, ptr @something_needs_elimination, align 4
  br label %243

243:                                              ; preds = %241, %208
  %244 = phi i32 [ %242, %241 ], [ %215, %208 ]
  %245 = load i32, ptr @something_needs_operands_changed, align 4, !tbaa !27
  %246 = or i32 %245, %119
  store i32 %246, ptr @something_needs_operands_changed, align 4, !tbaa !27
  %247 = icmp eq i32 %244, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  tail call fastcc void @copy_reloads(ptr noundef nonnull %42) #23
  store ptr %42, ptr %41, align 8, !tbaa !21
  %249 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 2
  br label %250

250:                                              ; preds = %202, %102, %248, %243, %58
  %251 = phi ptr [ %41, %58 ], [ %41, %102 ], [ %249, %248 ], [ %41, %243 ], [ %41, %202 ]
  %252 = icmp eq ptr %45, null
  br i1 %252, label %253, label %40, !llvm.loop !161

253:                                              ; preds = %250, %20
  %254 = phi ptr [ @insns_need_reload, %20 ], [ %251, %250 ]
  store ptr null, ptr %254, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @verify_initial_elim_offsets() unnamed_addr #0 {
  %1 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %14, %5 ]
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.elim_table, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = tail call i64 @ix86_initial_elimination_offset(i32 noundef %7, i32 noundef %9) #22
  %11 = getelementptr inbounds %struct.elim_table, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !154
  %13 = icmp eq i64 %10, %12
  %14 = getelementptr inbounds %struct.elim_table, ptr %6, i64 1
  %15 = load ptr, ptr @reg_eliminate, align 8
  %16 = getelementptr inbounds %struct.elim_table, ptr %15, i64 4
  %17 = icmp ult ptr %14, %16
  %18 = select i1 %13, i1 %17, i1 false
  br i1 %18, label %5, label %19, !llvm.loop !162

19:                                               ; preds = %5
  %20 = zext i1 %13 to i8
  br label %21

21:                                               ; preds = %19, %0
  %22 = phi i8 [ 1, %0 ], [ %20, %19 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_eliminables(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %3 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !163
  %10 = tail call zeroext i8 %9() #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, ptr %5, align 8, !tbaa !61
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ %6, %4 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !130
  %17 = getelementptr inbounds %struct.elim_table, ptr %5, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !71
  %19 = tail call zeroext i8 %16(i32 noundef %15, i32 noundef %18) #22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %8
  %22 = getelementptr inbounds %struct.elim_table, ptr %5, i64 0, i32 3
  store i32 0, ptr %22, align 8, !tbaa !63
  br label %23

23:                                               ; preds = %14, %21
  %24 = getelementptr inbounds %struct.elim_table, ptr %5, i64 1
  %25 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.elim_table, ptr %25, i64 4
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %4, label %28, !llvm.loop !164

28:                                               ; preds = %23, %75
  %29 = phi ptr [ %77, %75 ], [ %25, %23 ]
  %30 = phi i64 [ %76, %75 ], [ 0, %23 ]
  %31 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !63
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !132
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %29, align 8, !tbaa !61
  br label %40

40:                                               ; preds = %38, %52
  %41 = phi ptr [ %25, %38 ], [ %54, %52 ]
  %42 = phi i64 [ 0, %38 ], [ %53, %52 ]
  %43 = load i32, ptr %41, align 8, !tbaa !61
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.elim_table, ptr %41, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !63
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.elim_table, ptr %41, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !71
  br label %56

52:                                               ; preds = %40, %45
  %53 = add nuw nsw i64 %42, 64
  %54 = getelementptr inbounds i8, ptr %25, i64 %53
  %55 = icmp ult i64 %42, 192
  br i1 %55, label %40, label %56, !llvm.loop !165

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ -1, %52 ]
  %58 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 1
  br label %59

59:                                               ; preds = %56, %71
  %60 = phi ptr [ %25, %56 ], [ %73, %71 ]
  %61 = phi i64 [ 0, %56 ], [ %72, %71 ]
  %62 = load i32, ptr %60, align 8, !tbaa !61
  %63 = icmp eq i32 %62, %57
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.elim_table, ptr %60, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !71
  %67 = load i32, ptr %58, align 4, !tbaa !71
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.elim_table, ptr %60, i64 0, i32 3
  store i32 0, ptr %70, align 8, !tbaa !63
  br label %71

71:                                               ; preds = %59, %64, %69
  %72 = add nuw nsw i64 %61, 64
  %73 = getelementptr inbounds i8, ptr %25, i64 %72
  %74 = icmp ult i64 %61, 192
  br i1 %74, label %59, label %75, !llvm.loop !166

75:                                               ; preds = %71, %34, %28
  %76 = add nuw nsw i64 %30, 64
  %77 = getelementptr inbounds i8, ptr %25, i64 %76
  %78 = icmp ult i64 %30, 192
  br i1 %78, label %28, label %79, !llvm.loop !167

79:                                               ; preds = %75
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %80 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  br label %81

81:                                               ; preds = %79, %111
  %82 = phi i8 [ 1, %79 ], [ %112, %111 ]
  %83 = phi ptr [ %25, %79 ], [ %115, %111 ]
  %84 = phi i64 [ 0, %79 ], [ %114, %111 ]
  %85 = phi i32 [ %80, %79 ], [ %113, %111 ]
  %86 = getelementptr inbounds %struct.elim_table, ptr %83, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !63
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %81
  %90 = load i32, ptr %83, align 8, !tbaa !61
  %91 = icmp eq i32 %90, 20
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.elim_table, ptr %83, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !71
  %95 = icmp eq i32 %94, 6
  %96 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %97 = icmp ne i8 %96, 0
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  br label %111

100:                                              ; preds = %81
  %101 = getelementptr inbounds %struct.elim_table, ptr %83, i64 0, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !132
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  store i32 0, ptr %101, align 4, !tbaa !132
  %105 = load i32, ptr %83, align 8, !tbaa !61
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = load i64, ptr %0, align 8, !tbaa !38
  %109 = or i64 %107, %108
  store i64 %109, ptr %0, align 8, !tbaa !38
  %110 = add nsw i32 %85, -1
  store i32 %110, ptr @num_eliminable, align 4, !tbaa !27
  br label %111

111:                                              ; preds = %89, %92, %99, %100, %104
  %112 = phi i8 [ %82, %89 ], [ %82, %92 ], [ 0, %99 ], [ %82, %100 ], [ %82, %104 ]
  %113 = phi i32 [ %85, %89 ], [ %85, %92 ], [ %85, %99 ], [ %85, %100 ], [ %110, %104 ]
  %114 = add nuw nsw i64 %84, 64
  %115 = getelementptr inbounds i8, ptr %25, i64 %114
  %116 = icmp ult i64 %84, 192
  br i1 %116, label %81, label %117, !llvm.loop !168

117:                                              ; preds = %111
  %118 = icmp eq i8 %112, 0
  %119 = icmp ne i8 %2, 0
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i64, ptr %0, align 8, !tbaa !38
  %123 = or i64 %122, 64
  store i64 %123, ptr %0, align 8, !tbaa !38
  br label %124

124:                                              ; preds = %121, %117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_reload_regs() unnamed_addr #0 {
  %1 = load ptr, ptr @insns_need_reload, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  tail call fastcc void @find_reload_regs(ptr noundef nonnull %4) #23
  %5 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !169

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_caller_save_insns() unnamed_addr #0 {
  %1 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %0, %28
  %4 = phi ptr [ %9, %28 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !24
  br i1 %8, label %29, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !21
  %14 = icmp eq ptr %4, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr %9, ptr @reload_insn_chain, align 8, !tbaa !21
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call ptr @delete_insn(ptr noundef %12) #22
  %18 = icmp eq ptr %9, null
  %19 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  br i1 %18, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !160
  br label %23

23:                                               ; preds = %16, %21
  %24 = icmp eq ptr %20, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  store ptr %9, ptr %20, align 8, !tbaa !24
  br label %26

26:                                               ; preds = %25, %23
  %27 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !21
  store ptr %27, ptr %4, align 8, !tbaa !24
  store ptr %4, ptr @unused_insn_chains, align 8, !tbaa !21
  br i1 %18, label %31, label %28

28:                                               ; preds = %26, %29
  br label %3, !llvm.loop !170

29:                                               ; preds = %3
  %30 = icmp eq ptr %9, null
  br i1 %30, label %31, label %28

31:                                               ; preds = %29, %26, %0
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_elimination(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dead_insn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @prev_real_insn(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 23
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %12, ptr noundef %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %23 = tail call ptr @find_regno_note(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = tail call i32 @side_effects_p(ptr noundef %28) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call fastcc void @delete_dead_insn(ptr noundef nonnull %2) #23
  br label %32

32:                                               ; preds = %31, %25, %21, %16, %10, %4, %1
  tail call void @set_insn_deleted(ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare void @set_insn_deleted(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reload_as_needed(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bitmap_head_def, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_reg_rtx, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_reg_store, i8 0, i64 424, i1 false)
  %3 = load i32, ptr @max_regno, align 4, !tbaa !27
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #22
  store ptr %5, ptr @reg_last_reload_reg, align 8, !tbaa !21
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @reg_has_output_reload) #23
  store i64 0, ptr @reg_reloaded_valid, align 8, !tbaa !38
  tail call fastcc void @set_initial_elim_offsets() #23
  %6 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %154, label %8

8:                                                ; preds = %1, %151
  %9 = phi ptr [ %152, %151 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load i32, ptr %11, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %142 [
    i16 12, label %16
    i16 8, label %17
    i16 7, label %17
    i16 9, label %17
    i16 10, label %17
  ]

16:                                               ; preds = %8
  call fastcc void @set_offsets_for_label(ptr noundef nonnull %11) #23
  br label %142

17:                                               ; preds = %8, %8, %8, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %2) #23
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  call void @note_stores(ptr noundef %19, ptr noundef nonnull @forget_old_reloads_1, ptr noundef nonnull %2) #22
  %20 = load ptr, ptr %18, align 8, !tbaa !5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 43
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = lshr i32 %27, 16
  %34 = and i32 %33, 255
  %35 = call ptr @eliminate_regs(ptr noundef %32, i32 noundef %34, ptr noundef null) #23
  %36 = load ptr, ptr %18, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  store ptr %35, ptr %39, align 8, !tbaa !5
  br label %40

40:                                               ; preds = %17, %30, %24
  %41 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %42 = icmp ne i32 %41, 0
  %43 = load i32, ptr @num_eliminable_invariants, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = call fastcc i32 @eliminate_regs_in_insn(ptr noundef nonnull %11, i32 noundef 1) #23
  %53 = load i32, ptr %11, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call fastcc void @update_eliminable_offsets() #23
  call void @bitmap_clear(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  br label %151

57:                                               ; preds = %51, %40, %46
  %58 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 7
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, ptr @n_reloads, align 4, !tbaa !27
  br label %114

63:                                               ; preds = %57
  call void @bitmap_clear(ptr noundef nonnull @reg_has_output_reload) #22
  store i64 0, ptr @reg_is_output_reload, align 8, !tbaa !38
  %64 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !5
  %65 = sext i8 %64 to i32
  %66 = call i32 @find_reloads(ptr noundef nonnull %11, i32 noundef 1, i32 noundef %65, i32 noundef %0, ptr noundef nonnull @spill_reg_order) #22
  %67 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %63
  %70 = load ptr, ptr %12, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  call fastcc void @choose_reload_regs(ptr noundef nonnull %9) #23
  call fastcc void @merge_assigned_reloads(ptr noundef nonnull %11) #23
  call fastcc void @emit_reload_insns(ptr noundef nonnull %9) #23
  call void @subst_reloads(ptr noundef nonnull %11) #22
  %73 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !27
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load i32, ptr %11, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call fastcc void @fixup_eh_region_note(ptr noundef nonnull %11, ptr noundef %72, ptr noundef %70) #23
  br label %80

80:                                               ; preds = %79, %75, %69
  %81 = load ptr, ptr %18, align 8, !tbaa !5
  %82 = call i32 @asm_noperands(ptr noundef %81) #22
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %114

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, %70
  br i1 %87, label %114, label %88

88:                                               ; preds = %84, %110
  %89 = phi ptr [ %112, %110 ], [ %86, %84 ]
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %89, align 8
  %93 = and i32 %92, 65535
  %94 = add nsw i32 %93, -7
  %95 = icmp ult i32 %94, 4
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 24
  br i1 %101, label %110, label %102

102:                                              ; preds = %96
  %103 = call fastcc i32 @recog_memoized(ptr noundef nonnull %89) #23
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  call void @extract_insn(ptr noundef nonnull %89) #22
  %106 = call i32 @constrain_operands(i32 noundef 1) #22
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %102
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %11, ptr noundef nonnull @.str.17) #22
  %109 = call ptr @delete_insn(ptr noundef nonnull %89) #22
  br label %110

110:                                              ; preds = %91, %88, %96, %105, %108
  %111 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = icmp eq ptr %112, %70
  br i1 %113, label %114, label %88, !llvm.loop !171

114:                                              ; preds = %110, %84, %62, %80, %63
  %115 = load i32, ptr @num_eliminable, align 4, !tbaa !27
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load i8, ptr %58, align 4
  %119 = and i8 %118, 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  call fastcc void @update_eliminable_offsets() #23
  br label %122

122:                                              ; preds = %121, %117, %114
  call fastcc void @forget_marked_reloads(ptr noundef nonnull %2) #23
  call void @bitmap_clear(ptr noundef nonnull %2) #22
  %123 = load ptr, ptr %12, align 8, !tbaa !5
  %124 = icmp eq ptr %123, %13
  br i1 %124, label %141, label %125

125:                                              ; preds = %122, %137
  %126 = phi ptr [ %139, %137 ], [ %123, %122 ]
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 25
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  call void @note_stores(ptr noundef nonnull %132, ptr noundef nonnull @forget_old_reloads_1, ptr noundef null) #22
  br label %137

137:                                              ; preds = %125, %130, %136
  %138 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 2
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = icmp eq ptr %139, %13
  br i1 %140, label %141, label %125, !llvm.loop !172

141:                                              ; preds = %137, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  br label %142

142:                                              ; preds = %141, %8, %16
  %143 = load i32, ptr %11, align 8
  %144 = trunc i32 %143 to i16
  switch i16 %144, label %151 [
    i16 12, label %145
    i16 10, label %146
  ]

145:                                              ; preds = %142
  store i64 0, ptr @reg_reloaded_valid, align 8, !tbaa !38
  br label %151

146:                                              ; preds = %142
  %147 = load i64, ptr @call_used_reg_set, align 8, !tbaa !38
  %148 = xor i64 %147, -1
  %149 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %150 = and i64 %149, %148
  store i64 %150, ptr @reg_reloaded_valid, align 8, !tbaa !38
  br label %151

151:                                              ; preds = %145, %146, %142, %56
  %152 = load ptr, ptr %9, align 8, !tbaa !21
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %8, !llvm.loop !173

154:                                              ; preds = %151, %1
  %155 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  call void @free(ptr noundef %155) #23
  call void @bitmap_clear(ptr noundef nonnull @reg_has_output_reload) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan_debug_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_pseudos_in(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6

6:                                                ; preds = %3, %58
  %7 = phi ptr [ %62, %58 ], [ %4, %3 ]
  %8 = phi i32 [ %61, %58 ], [ %1, %3 ]
  %9 = phi ptr [ %59, %58 ], [ %0, %3 ]
  br label %10

10:                                               ; preds = %6, %21
  %11 = phi ptr [ %7, %6 ], [ %18, %21 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %64 [
    i16 37, label %14
    i16 43, label %58
  ]

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #23
  %16 = icmp ult i32 %15, 53
  br i1 %16, label %101, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @eliminate_regs(ptr noundef nonnull %11, i32 noundef %8, ptr noundef %2) #23
  %19 = load ptr, ptr %9, align 8, !tbaa !21
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  store ptr %18, ptr %9, align 8, !tbaa !21
  %22 = icmp eq ptr %18, null
  br i1 %22, label %101, label %10

23:                                               ; preds = %17
  %24 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %25 = zext i32 %15 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %99

29:                                               ; preds = %23
  %30 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %31 = getelementptr inbounds ptr, ptr %30, i64 %25
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !21
  %36 = getelementptr inbounds ptr, ptr %35, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %18, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef %42, ptr noundef nonnull %37) #22
  br label %99

44:                                               ; preds = %34
  %45 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %46 = getelementptr inbounds ptr, ptr %45, i64 %25
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %99

51:                                               ; preds = %44
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #23
  %53 = icmp eq i32 %52, %15
  br i1 %53, label %54, label %99

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 621, ptr noundef nonnull @.str.2) #22
  %55 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %56 = getelementptr inbounds ptr, ptr %55, i64 %25
  %57 = load ptr, ptr %56, align 8, !tbaa !21
  br label %99

58:                                               ; preds = %10
  %59 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %60 = lshr i32 %12, 16
  %61 = and i32 %60, 255
  %62 = load ptr, ptr %59, align 8, !tbaa !21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %101, label %6

64:                                               ; preds = %10
  %65 = and i32 %12, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %101, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %66
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %74 = zext i8 %68 to i64
  br label %75

75:                                               ; preds = %70, %95
  %76 = phi i64 [ 0, %70 ], [ %96, %95 ]
  %77 = phi ptr [ %72, %70 ], [ %97, %95 ]
  %78 = load i8, ptr %77, align 1, !tbaa !5
  switch i8 %78, label %95 [
    i8 101, label %84
    i8 69, label %79
  ]

79:                                               ; preds = %75
  %80 = getelementptr inbounds [1 x %union.rtunion_def], ptr %73, i64 0, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = load i32, ptr %81, align 8, !tbaa !123
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %86, label %95

84:                                               ; preds = %75
  %85 = getelementptr inbounds [1 x %union.rtunion_def], ptr %73, i64 0, i64 %76
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %85, i32 noundef %8, ptr noundef %2) #23
  br label %95

86:                                               ; preds = %79, %86
  %87 = phi i64 [ %90, %86 ], [ 0, %79 ]
  %88 = phi ptr [ %91, %86 ], [ %81, %79 ]
  %89 = getelementptr inbounds %struct.rtvec_def, ptr %88, i64 0, i32 1, i64 %87
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %89, i32 noundef %8, ptr noundef %2) #23
  %90 = add nuw nsw i64 %87, 1
  %91 = load ptr, ptr %80, align 8, !tbaa !5
  %92 = load i32, ptr %91, align 8, !tbaa !123
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %86, label %95, !llvm.loop !174

95:                                               ; preds = %86, %79, %75, %84
  %96 = add nuw nsw i64 %76, 1
  %97 = getelementptr inbounds i8, ptr %77, i64 1
  %98 = icmp eq i64 %96, %74
  br i1 %98, label %101, label %75, !llvm.loop !175

99:                                               ; preds = %54, %51, %44, %29, %23, %39
  %100 = phi ptr [ %43, %39 ], [ %27, %23 ], [ %32, %29 ], [ %47, %44 ], [ %47, %51 ], [ %57, %54 ]
  store ptr %100, ptr %9, align 8, !tbaa !21
  br label %101

101:                                              ; preds = %58, %21, %14, %95, %99, %3, %64
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cleanup_subreg_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_free() unnamed_addr #0 {
  %1 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_abnormal_edges() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %139, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %127
  %15 = phi ptr [ %8, %12 ], [ %130, %127 ]
  %16 = phi i8 [ 0, %12 ], [ %128, %127 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %17) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !115
  store ptr %18, ptr %13, align 8, !tbaa.struct !116
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #23, !range !26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14, %30
  %22 = load ptr, ptr %1, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !117
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 10
  %28 = icmp eq i32 %27, 10
  %29 = or i1 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %1) #23, !range !26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %21, !llvm.loop !176

35:                                               ; preds = %30, %21, %14
  %36 = load ptr, ptr %1, align 8, !tbaa !21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %127, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !177
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %127, label %46

46:                                               ; preds = %38
  %47 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %42) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %46
  %50 = load ptr, ptr %39, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  br label %52

52:                                               ; preds = %64, %49
  %53 = phi ptr [ %51, %49 ], [ %65, %64 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = load i32, ptr %54, align 8
  %56 = trunc i32 %55 to i16
  switch i16 %56, label %66 [
    i16 8, label %57
    i16 13, label %57
  ]

57:                                               ; preds = %52, %52
  %58 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %54) #22
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load ptr, ptr %39, align 8, !tbaa !5
  %62 = load ptr, ptr %61, align 8, !tbaa !179
  %63 = icmp eq ptr %54, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %52, !llvm.loop !180

66:                                               ; preds = %52, %57, %60
  %67 = load i32, ptr %54, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %54) #22
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %125, label %73

73:                                               ; preds = %70, %66
  %74 = load ptr, ptr %39, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !177
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  store ptr %54, ptr %75, align 8, !tbaa !177
  %79 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  store i32 0, ptr %2, align 8, !tbaa.struct !115
  store ptr %18, ptr %13, align 8, !tbaa.struct !116
  %81 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #23, !range !26
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %73, %89
  %84 = load ptr, ptr %1, align 8, !tbaa !21
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !117
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %90 = load i32, ptr %2, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = call fastcc zeroext i8 @ei_cond(i32 %90, ptr %91, ptr noundef nonnull %1) #23, !range !26
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %83, !llvm.loop !181

94:                                               ; preds = %89, %83, %73
  %95 = icmp ne ptr %80, null
  %96 = icmp ne ptr %80, %78
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %127

98:                                               ; preds = %94
  %99 = load ptr, ptr %1, align 8
  br label %100

100:                                              ; preds = %98, %120
  %101 = phi i8 [ %16, %98 ], [ %121, %120 ]
  %102 = phi ptr [ %80, %98 ], [ %104, %120 ]
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = load i32, ptr %102, align 8
  %106 = trunc i32 %105 to i16
  switch i16 %106, label %118 [
    i16 8, label %107
    i16 7, label %107
    i16 9, label %107
    i16 10, label %107
    i16 11, label %120
  ]

107:                                              ; preds = %100, %100, %100, %100
  %108 = tail call ptr @delete_insn(ptr noundef nonnull %102) #22
  %109 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 24
  br i1 %113, label %120, label %114

114:                                              ; preds = %107
  %115 = load i32, ptr %102, align 8
  %116 = and i32 %115, -134217729
  store i32 %116, ptr %102, align 8
  %117 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  tail call void @insert_insn_on_edge(ptr noundef nonnull %102, ptr noundef %99) #22
  br label %120

118:                                              ; preds = %100
  %119 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %119, align 8, !tbaa !5
  br label %120

120:                                              ; preds = %100, %118, %107, %114
  %121 = phi i8 [ 1, %114 ], [ %101, %107 ], [ %101, %118 ], [ %101, %100 ]
  %122 = icmp ne ptr %104, null
  %123 = icmp ne ptr %104, %78
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %100, label %127, !llvm.loop !182

125:                                              ; preds = %70
  %126 = tail call zeroext i8 @purge_dead_edges(ptr noundef %15) #22
  br label %127

127:                                              ; preds = %120, %94, %125, %46, %38, %35
  %128 = phi i8 [ %16, %38 ], [ %16, %46 ], [ %16, %35 ], [ %16, %125 ], [ %16, %94 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !79
  %131 = load ptr, ptr @cfun, align 8, !tbaa !21
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !75
  %134 = getelementptr inbounds %struct.control_flow_graph, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !81
  %136 = icmp eq ptr %130, %135
  br i1 %136, label %137, label %14, !llvm.loop !183

137:                                              ; preds = %127
  %138 = icmp eq i8 %128, 0
  br label %139

139:                                              ; preds = %137, %0
  %140 = phi i1 [ true, %0 ], [ %138, %137 ]
  %141 = phi ptr [ %5, %0 ], [ %133, %137 ]
  %142 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !27
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 5
  %146 = load i32, ptr %145, align 8, !tbaa !184
  %147 = tail call ptr @sbitmap_alloc(i32 noundef %146) #22
  tail call void @sbitmap_ones(ptr noundef %147) #22
  tail call void @find_many_sub_basic_blocks(ptr noundef %147) #22
  %148 = load ptr, ptr %147, align 8, !tbaa !185
  tail call void @free(ptr noundef %148) #23
  tail call void @free(ptr noundef %147) #23
  br label %149

149:                                              ; preds = %144, %139
  br i1 %140, label %151, label %150

150:                                              ; preds = %149
  tail call void @commit_edge_insertions() #22
  br label %151

151:                                              ; preds = %150, %149
  ret void
}

; Function Attrs: optsize
declare void @unshare_all_rtl_again(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_p_heap_free() unnamed_addr #14 {
  %1 = load ptr, ptr @substitute_stack, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @substitute_stack, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_home_live_1(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !28
  %7 = icmp slt i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = zext nneg i16 %6 to i32
  %10 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %9) #23
  %11 = icmp sgt i32 %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %14, %12 ], [ %9, %8 ]
  %14 = add nuw i32 %13, 1
  tail call void @df_set_regs_ever_live(i32 noundef %13, i8 noundef zeroext 1) #22
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !187

16:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @eliminate_regs_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %410, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %7, %63
  %10 = phi i8 [ %3, %7 ], [ 1, %63 ]
  %11 = phi ptr [ %0, %7 ], [ %64, %63 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %437 [
    i16 30, label %410
    i16 32, label %410
    i16 31, label %410
    i16 33, label %410
    i16 35, label %410
    i16 45, label %410
    i16 12, label %410
    i16 36, label %410
    i16 46, label %410
    i16 16, label %410
    i16 20, label %410
    i16 21, label %410
    i16 27, label %410
    i16 37, label %14
    i16 49, label %70
    i16 52, label %200
    i16 26, label %252
    i16 48, label %252
    i16 50, label %252
    i16 55, label %252
    i16 59, label %252
    i16 58, label %252
    i16 60, label %252
    i16 61, label %252
    i16 62, label %252
    i16 63, label %252
    i16 69, label %252
    i16 66, label %252
    i16 67, label %252
    i16 68, label %252
    i16 65, label %252
    i16 80, label %252
    i16 81, label %252
    i16 82, label %252
    i16 83, label %252
    i16 86, label %252
    i16 87, label %252
    i16 84, label %252
    i16 85, label %252
    i16 88, label %252
    i16 89, label %252
    i16 3, label %277
    i16 4, label %296
    i16 75, label %410
    i16 77, label %410
    i16 74, label %410
    i16 76, label %410
    i16 78, label %313
    i16 79, label %313
    i16 40, label %341
    i16 51, label %341
    i16 64, label %341
    i16 98, label %341
    i16 99, label %341
    i16 100, label %341
    i16 101, label %341
    i16 102, label %341
    i16 103, label %341
    i16 104, label %341
    i16 106, label %341
    i16 105, label %341
    i16 111, label %341
    i16 112, label %341
    i16 114, label %341
    i16 115, label %341
    i16 116, label %341
    i16 117, label %341
    i16 118, label %341
    i16 113, label %341
    i16 39, label %353
    i16 43, label %412
    i16 24, label %419
    i16 25, label %430
    i16 17, label %435
    i16 23, label %435
  ]

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #23
  %16 = icmp slt i32 %15, 53
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %19

19:                                               ; preds = %17, %35
  %20 = phi ptr [ %18, %17 ], [ %37, %35 ]
  %21 = phi i64 [ 0, %17 ], [ %36, %35 ]
  %22 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 6
  %33 = load i64, ptr %32, align 8, !tbaa !156
  %34 = tail call ptr @plus_constant(ptr noundef %31, i64 noundef %33) #22
  br label %410

35:                                               ; preds = %19, %25
  %36 = add nuw nsw i64 %21, 64
  %37 = getelementptr inbounds i8, ptr %18, i64 %36
  %38 = icmp ult i64 %21, 192
  br i1 %38, label %19, label %410, !llvm.loop !188

39:                                               ; preds = %14
  %40 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %410, label %42

42:                                               ; preds = %39
  %43 = zext nneg i32 %15 to i64
  %44 = getelementptr inbounds i16, ptr %40, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !28
  %46 = icmp slt i16 %45, 0
  %47 = load ptr, ptr @reg_equiv_invariant, align 8
  %48 = icmp ne ptr %47, null
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %410

50:                                               ; preds = %42
  %51 = getelementptr inbounds ptr, ptr %47, i64 %43
  %52 = load ptr, ptr %51, align 8, !tbaa !21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %410, label %54

54:                                               ; preds = %50
  %55 = icmp eq i8 %10, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  br i1 %8, label %67, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %2, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %54
  %62 = tail call ptr @copy_rtx(ptr noundef nonnull %52) #22
  br label %63

63:                                               ; preds = %61, %292
  %64 = phi ptr [ %62, %61 ], [ %291, %292 ]
  %65 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %410, label %9

67:                                               ; preds = %57, %56
  %68 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !21
  %69 = getelementptr inbounds ptr, ptr %68, i64 %43
  store ptr null, ptr %69, align 8, !tbaa !21
  tail call fastcc void @alter_reg(i32 noundef %15, i32 noundef -1, i8 noundef zeroext 1) #23
  br label %410

70:                                               ; preds = %9
  %71 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %127

76:                                               ; preds = %70
  %77 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %72) #23
  %78 = icmp ult i32 %77, 53
  br i1 %78, label %79, label %127

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !27
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %127

88:                                               ; preds = %79
  %89 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %90

90:                                               ; preds = %88, %123
  %91 = phi ptr [ %89, %88 ], [ %125, %123 ]
  %92 = phi i64 [ 0, %88 ], [ %124, %123 ]
  %93 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !134
  %95 = icmp eq ptr %94, %72
  br i1 %95, label %96, label %123

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !63
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %96
  %101 = icmp ne i32 %1, 0
  %102 = icmp eq i32 %83, 30
  %103 = and i1 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 6
  %106 = load i64, ptr %105, align 8, !tbaa !156
  br label %117

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 6
  %111 = load i64, ptr %110, align 8, !tbaa !156
  %112 = sub nsw i64 0, %111
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !135
  br label %410

117:                                              ; preds = %104, %107
  %118 = phi i64 [ %106, %104 ], [ %111, %107 ]
  %119 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !135
  %121 = tail call ptr @plus_constant(ptr noundef nonnull %81, i64 noundef %118) #22
  %122 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %120, ptr noundef %121) #22
  br label %410

123:                                              ; preds = %90, %96
  %124 = add nuw nsw i64 %92, 64
  %125 = getelementptr inbounds i8, ptr %89, i64 %124
  %126 = icmp ult i64 %92, 192
  br i1 %126, label %90, label %410, !llvm.loop !189

127:                                              ; preds = %79, %76, %70
  %128 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %72, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %129 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %130, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %132 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %133 = icmp eq ptr %132, null
  br i1 %133, label %410, label %134

134:                                              ; preds = %127
  %135 = load ptr, ptr %71, align 8, !tbaa !5
  %136 = icmp eq ptr %128, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr %129, align 8, !tbaa !5
  %139 = icmp eq ptr %131, %138
  br i1 %139, label %410, label %140

140:                                              ; preds = %137, %134
  %141 = load i32, ptr %128, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 49
  %144 = load i32, ptr %131, align 8
  %145 = and i32 %144, 65535
  br i1 %143, label %146, label %164

146:                                              ; preds = %140
  %147 = icmp eq i32 %145, 37
  br i1 %147, label %148, label %163

148:                                              ; preds = %146
  %149 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %131) #23
  %150 = icmp ugt i32 %149, 52
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = zext i32 %149 to i64
  %153 = getelementptr inbounds i16, ptr %132, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !28
  %155 = icmp slt i16 %154, 0
  %156 = load ptr, ptr @reg_equiv_constant, align 8
  %157 = icmp ne ptr %156, null
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = getelementptr inbounds ptr, ptr %156, i64 %152
  %161 = load ptr, ptr %160, align 8, !tbaa !21
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %182

163:                                              ; preds = %159, %151, %148, %146
  br label %182

164:                                              ; preds = %140
  %165 = icmp eq i32 %145, 49
  %166 = icmp eq i32 %142, 37
  %167 = and i1 %166, %165
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %128) #23
  %170 = icmp ugt i32 %169, 52
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = zext i32 %169 to i64
  %173 = getelementptr inbounds i16, ptr %132, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !28
  %175 = icmp slt i16 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %178 = getelementptr inbounds ptr, ptr %177, i64 %172
  %179 = load ptr, ptr %178, align 8, !tbaa !21
  %180 = icmp eq ptr %179, null
  %181 = select i1 %180, ptr %128, ptr %179
  br label %182

182:                                              ; preds = %163, %176, %159, %164, %168, %171
  %183 = phi ptr [ %128, %171 ], [ %128, %168 ], [ %128, %164 ], [ %128, %159 ], [ %181, %176 ], [ %128, %163 ]
  %184 = phi ptr [ %131, %171 ], [ %131, %168 ], [ %131, %164 ], [ %161, %159 ], [ %131, %176 ], [ %131, %163 ]
  %185 = load i32, ptr %11, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = tail call ptr @form_sum(i32 noundef %187, ptr noundef nonnull %183, ptr noundef nonnull %184) #22
  %189 = icmp eq i32 %1, 0
  br i1 %189, label %190, label %410

190:                                              ; preds = %182
  %191 = load i32, ptr %188, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 49
  br i1 %193, label %410, label %194

194:                                              ; preds = %190
  %195 = load i32, ptr %11, align 8
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %199 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %197, ptr noundef nonnull %188, ptr noundef %198) #22
  br label %410

200:                                              ; preds = %9
  %201 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 37
  br i1 %205, label %206, label %255

206:                                              ; preds = %200
  %207 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %202) #23
  %208 = icmp ult i32 %207, 53
  br i1 %208, label %209, label %255

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 30
  br i1 %214, label %215, label %255

215:                                              ; preds = %209
  %216 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %217

217:                                              ; preds = %215, %248
  %218 = phi ptr [ %216, %215 ], [ %250, %248 ]
  %219 = phi i64 [ 0, %215 ], [ %249, %248 ]
  %220 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !134
  %222 = icmp eq ptr %221, %202
  br i1 %222, label %223, label %248

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 3
  %225 = load i32, ptr %224, align 8, !tbaa !63
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %248, label %227

227:                                              ; preds = %223
  %228 = icmp eq i32 %1, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %227
  br i1 %8, label %233, label %230

230:                                              ; preds = %229
  %231 = load i32, ptr %2, align 8
  %232 = trunc i32 %231 to i16
  switch i16 %232, label %233 [
    i16 3, label %236
    i16 4, label %236
    i16 7, label %236
  ]

233:                                              ; preds = %230, %229
  %234 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 7
  store i32 1, ptr %234, align 8, !tbaa !190
  %235 = load ptr, ptr %210, align 8, !tbaa !5
  br label %236

236:                                              ; preds = %230, %230, %230, %233, %227
  %237 = phi ptr [ %211, %230 ], [ %211, %230 ], [ %211, %230 ], [ %235, %233 ], [ %211, %227 ]
  %238 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 9
  %239 = load ptr, ptr %238, align 8, !tbaa !135
  %240 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef 16, ptr noundef %239, ptr noundef %237) #22
  %241 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 6
  %242 = load i64, ptr %241, align 8, !tbaa !156
  %243 = load ptr, ptr %210, align 8, !tbaa !5
  %244 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !5
  %246 = mul nsw i64 %245, %242
  %247 = tail call ptr @plus_constant(ptr noundef %240, i64 noundef %246) #22
  br label %410

248:                                              ; preds = %217, %223
  %249 = add nuw nsw i64 %219, 64
  %250 = getelementptr inbounds i8, ptr %216, i64 %249
  %251 = icmp ult i64 %219, 192
  br i1 %251, label %217, label %255, !llvm.loop !191

252:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %253 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %248, %252, %200, %206, %209
  %256 = phi ptr [ %254, %252 ], [ %202, %200 ], [ %202, %206 ], [ %202, %209 ], [ %202, %248 ]
  %257 = and i32 %12, 65535
  %258 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %259 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %256, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %260 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %255
  %264 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %261, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  br label %265

265:                                              ; preds = %255, %263
  %266 = phi ptr [ %264, %263 ], [ null, %255 ]
  %267 = load ptr, ptr %258, align 8, !tbaa !5
  %268 = icmp eq ptr %259, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load ptr, ptr %260, align 8, !tbaa !5
  %271 = icmp eq ptr %266, %270
  br i1 %271, label %410, label %272

272:                                              ; preds = %265, %269
  %273 = load i32, ptr %11, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %257, i32 noundef %275, ptr noundef %259, ptr noundef %266) #22
  br label %410

277:                                              ; preds = %9
  %278 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !5
  %280 = icmp eq ptr %279, null
  br i1 %280, label %296, label %281

281:                                              ; preds = %277
  %282 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %279, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %283 = load ptr, ptr %278, align 8, !tbaa !5
  %284 = icmp eq ptr %282, %283
  br i1 %284, label %296, label %285

285:                                              ; preds = %281
  %286 = load i32, ptr %11, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = icmp eq i32 %288, 1
  %290 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !5
  br i1 %289, label %292, label %294

292:                                              ; preds = %285
  %293 = icmp eq ptr %291, null
  br i1 %293, label %410, label %63

294:                                              ; preds = %285
  %295 = tail call ptr @alloc_reg_note(i32 noundef %288, ptr noundef %282, ptr noundef %291) #22
  br label %296

296:                                              ; preds = %277, %281, %9, %294
  %297 = phi ptr [ %295, %294 ], [ %11, %9 ], [ %11, %281 ], [ %11, %277 ]
  %298 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1
  %299 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  %301 = icmp eq ptr %300, null
  br i1 %301, label %410, label %302

302:                                              ; preds = %296
  %303 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %300, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %304 = load ptr, ptr %299, align 8, !tbaa !5
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %410, label %306

306:                                              ; preds = %302
  %307 = load i32, ptr %297, align 8
  %308 = and i32 %307, 65535
  %309 = lshr i32 %307, 16
  %310 = and i32 %309, 255
  %311 = load ptr, ptr %298, align 8, !tbaa !5
  %312 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %308, i32 noundef %310, ptr noundef %311, ptr noundef %303) #22
  br label %410

313:                                              ; preds = %9, %9
  %314 = and i32 %12, 65535
  %315 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %316 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  %318 = load i32, ptr %317, align 8
  %319 = and i32 %318, 65535
  %320 = icmp eq i32 %319, 49
  br i1 %320, label %321, label %410

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !5
  %324 = load ptr, ptr %315, align 8, !tbaa !5
  %325 = icmp eq ptr %323, %324
  br i1 %325, label %326, label %410

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !5
  %329 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %328, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %330 = load ptr, ptr %316, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1, i32 0, i32 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !5
  %333 = icmp eq ptr %329, %332
  br i1 %333, label %410, label %334

334:                                              ; preds = %326
  %335 = load i32, ptr %11, align 8
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  %338 = load ptr, ptr %315, align 8, !tbaa !5
  %339 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %337, ptr noundef %338, ptr noundef %329) #22
  %340 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %314, i32 noundef %337, ptr noundef %338, ptr noundef %339) #22
  br label %410

341:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %342 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  %344 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %343, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %345 = load ptr, ptr %342, align 8, !tbaa !5
  %346 = icmp eq ptr %344, %345
  br i1 %346, label %410, label %347

347:                                              ; preds = %341
  %348 = and i32 %12, 65535
  %349 = load i32, ptr %11, align 8
  %350 = lshr i32 %349, 16
  %351 = and i32 %350, 255
  %352 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %348, i32 noundef %351, ptr noundef %344) #22
  br label %410

353:                                              ; preds = %9
  %354 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !5
  %356 = load i32, ptr %355, align 8
  %357 = and i32 %356, 65535
  %358 = icmp eq i32 %357, 37
  br i1 %358, label %359, label %380

359:                                              ; preds = %353
  %360 = lshr i32 %12, 16
  %361 = and i32 %360, 255
  %362 = zext nneg i32 %361 to i64
  %363 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !5
  %365 = lshr i32 %356, 16
  %366 = and i32 %365, 255
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !5
  %370 = icmp ule i8 %364, %369
  %371 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %372 = icmp ne ptr %371, null
  %373 = select i1 %370, i1 %372, i1 false
  br i1 %373, label %374, label %380

374:                                              ; preds = %359
  %375 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %355) #23
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds ptr, ptr %371, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !21
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %410

380:                                              ; preds = %353, %359, %374
  %381 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %355, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %382 = load ptr, ptr %354, align 8, !tbaa !5
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %410, label %384

384:                                              ; preds = %380
  %385 = load i32, ptr %11, align 8
  %386 = lshr i32 %385, 16
  %387 = and i32 %386, 255
  %388 = load i32, ptr %381, align 8
  %389 = and i32 %388, 65535
  %390 = icmp eq i32 %389, 43
  br i1 %390, label %391, label %406

391:                                              ; preds = %384
  %392 = lshr i32 %388, 16
  %393 = and i32 %392, 255
  %394 = zext nneg i32 %393 to i64
  %395 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !5
  %397 = zext nneg i32 %387 to i64
  %398 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !5
  %400 = icmp ugt i8 %399, %396
  br i1 %400, label %406, label %401

401:                                              ; preds = %391
  %402 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %403 = load i32, ptr %402, align 8, !tbaa !5
  %404 = zext i32 %403 to i64
  %405 = tail call ptr @adjust_address_1(ptr noundef nonnull %381, i32 noundef %387, i64 noundef %404, i32 noundef 0, i32 noundef 1) #22
  br label %410

406:                                              ; preds = %391, %384
  %407 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load i32, ptr %407, align 8, !tbaa !5
  %409 = tail call ptr @gen_rtx_SUBREG(i32 noundef %387, ptr noundef nonnull %381, i32 noundef %408) #22
  br label %410

410:                                              ; preds = %326, %182, %190, %194, %313, %321, %334, %272, %269, %137, %127, %419, %380, %401, %406, %341, %296, %302, %67, %425, %347, %306, %236, %117, %114, %29, %437, %4, %374, %519, %35, %123, %63, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %39, %42, %50, %292, %412
  %411 = phi ptr [ %418, %412 ], [ %429, %425 ], [ %352, %347 ], [ %340, %334 ], [ %312, %306 ], [ %247, %236 ], [ %116, %114 ], [ %122, %117 ], [ %34, %29 ], [ %11, %67 ], [ %297, %302 ], [ %297, %296 ], [ %11, %341 ], [ %405, %401 ], [ %409, %406 ], [ %11, %380 ], [ %11, %419 ], [ %11, %137 ], [ %11, %127 ], [ %276, %272 ], [ %11, %269 ], [ %11, %321 ], [ %11, %313 ], [ %188, %182 ], [ %188, %190 ], [ %199, %194 ], [ %11, %326 ], [ %11, %437 ], [ %0, %4 ], [ %11, %374 ], [ %521, %519 ], [ %11, %35 ], [ %11, %123 ], [ null, %292 ], [ %11, %50 ], [ %11, %42 ], [ %11, %39 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %64, %63 ]
  ret ptr %411

412:                                              ; preds = %9
  %413 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !5
  %415 = lshr i32 %12, 16
  %416 = and i32 %415, 255
  %417 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %414, i32 noundef %416, ptr noundef %2, i8 noundef zeroext 1) #23
  %418 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %11, ptr noundef %417) #22
  br label %410

419:                                              ; preds = %9
  %420 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !5
  %422 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %421, i32 noundef 0, ptr noundef %2, i8 noundef zeroext 0) #23
  %423 = load ptr, ptr %420, align 8, !tbaa !5
  %424 = icmp eq ptr %422, %423
  br i1 %424, label %410, label %425

425:                                              ; preds = %419
  %426 = load i32, ptr %11, align 8
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  %429 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef %428, ptr noundef %422) #22
  br label %410

430:                                              ; preds = %9
  br i1 %8, label %435, label %431

431:                                              ; preds = %430
  %432 = load i32, ptr %2, align 8
  %433 = and i32 %432, 65535
  %434 = icmp eq i32 %433, 7
  br i1 %434, label %437, label %435

435:                                              ; preds = %9, %9, %430, %431
  %436 = phi i32 [ 2889, %431 ], [ 2889, %430 ], [ 2894, %9 ], [ 2894, %9 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef %436, ptr noundef nonnull @.str.2) #22
  br label %437

437:                                              ; preds = %9, %435, %431
  %438 = and i32 %12, 65535
  %439 = zext nneg i32 %438 to i64
  %440 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !5
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %410, label %443

443:                                              ; preds = %437
  %444 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %439
  %445 = load ptr, ptr %444, align 8, !tbaa !21
  %446 = zext i8 %441 to i64
  br label %447

447:                                              ; preds = %443, %519
  %448 = phi i64 [ 0, %443 ], [ %522, %519 ]
  %449 = phi ptr [ %11, %443 ], [ %521, %519 ]
  %450 = phi i32 [ 0, %443 ], [ %520, %519 ]
  %451 = phi ptr [ %445, %443 ], [ %523, %519 ]
  %452 = load i8, ptr %451, align 1, !tbaa !5
  switch i8 %452, label %519 [
    i8 101, label %459
    i8 69, label %453
  ]

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %455 = getelementptr inbounds [1 x %union.rtunion_def], ptr %454, i64 0, i64 %448
  %456 = load ptr, ptr %455, align 8, !tbaa !5
  %457 = load i32, ptr %456, align 8, !tbaa !123
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %475, label %519

459:                                              ; preds = %447
  %460 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %461 = getelementptr inbounds [1 x %union.rtunion_def], ptr %460, i64 0, i64 %448
  %462 = load ptr, ptr %461, align 8, !tbaa !5
  %463 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %462, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %464 = load ptr, ptr %461, align 8, !tbaa !5
  %465 = icmp eq ptr %463, %464
  %466 = icmp ne i32 %450, 0
  %467 = select i1 %465, i1 true, i1 %466
  br i1 %467, label %470, label %468

468:                                              ; preds = %459
  %469 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %449) #22
  br label %470

470:                                              ; preds = %468, %459
  %471 = phi i32 [ %450, %459 ], [ 1, %468 ]
  %472 = phi ptr [ %449, %459 ], [ %469, %468 ]
  %473 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %474 = getelementptr inbounds [1 x %union.rtunion_def], ptr %473, i64 0, i64 %448
  store ptr %463, ptr %474, align 8, !tbaa !5
  br label %519

475:                                              ; preds = %453, %506
  %476 = phi i64 [ %514, %506 ], [ 0, %453 ]
  %477 = phi ptr [ %515, %506 ], [ %456, %453 ]
  %478 = phi ptr [ %512, %506 ], [ %455, %453 ]
  %479 = phi i32 [ %510, %506 ], [ 0, %453 ]
  %480 = phi ptr [ %509, %506 ], [ %449, %453 ]
  %481 = phi i32 [ %508, %506 ], [ %450, %453 ]
  %482 = getelementptr inbounds %struct.rtvec_def, ptr %477, i64 0, i32 1, i64 %476
  %483 = load ptr, ptr %482, align 8, !tbaa !21
  %484 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %483, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %485 = load ptr, ptr %478, align 8, !tbaa !5
  %486 = getelementptr inbounds %struct.rtvec_def, ptr %485, i64 0, i32 1, i64 %476
  %487 = load ptr, ptr %486, align 8, !tbaa !21
  %488 = icmp eq ptr %484, %487
  %489 = icmp ne i32 %479, 0
  %490 = select i1 %488, i1 true, i1 %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %475
  %492 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1
  %493 = getelementptr inbounds [1 x %union.rtunion_def], ptr %492, i64 0, i64 %448
  %494 = load ptr, ptr %493, align 8, !tbaa !5
  br label %506

495:                                              ; preds = %475
  %496 = getelementptr inbounds %struct.rtvec_def, ptr %485, i64 0, i32 1
  %497 = load i32, ptr %485, align 8, !tbaa !123
  %498 = tail call ptr @gen_rtvec_v(i32 noundef %497, ptr noundef nonnull %496) #22
  %499 = icmp eq i32 %481, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %495
  %501 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %480) #22
  br label %502

502:                                              ; preds = %500, %495
  %503 = phi ptr [ %480, %495 ], [ %501, %500 ]
  %504 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %505 = getelementptr inbounds [1 x %union.rtunion_def], ptr %504, i64 0, i64 %448
  store ptr %498, ptr %505, align 8, !tbaa !5
  br label %506

506:                                              ; preds = %491, %502
  %507 = phi ptr [ %494, %491 ], [ %498, %502 ]
  %508 = phi i32 [ %481, %491 ], [ 1, %502 ]
  %509 = phi ptr [ %480, %491 ], [ %503, %502 ]
  %510 = phi i32 [ %479, %491 ], [ 1, %502 ]
  %511 = getelementptr inbounds %struct.rtx_def, ptr %509, i64 0, i32 1
  %512 = getelementptr inbounds [1 x %union.rtunion_def], ptr %511, i64 0, i64 %448
  %513 = getelementptr inbounds %struct.rtvec_def, ptr %507, i64 0, i32 1, i64 %476
  store ptr %484, ptr %513, align 8, !tbaa !21
  %514 = add nuw nsw i64 %476, 1
  %515 = load ptr, ptr %512, align 8, !tbaa !5
  %516 = load i32, ptr %515, align 8, !tbaa !123
  %517 = sext i32 %516 to i64
  %518 = icmp slt i64 %514, %517
  br i1 %518, label %475, label %519, !llvm.loop !192

519:                                              ; preds = %506, %453, %447, %470
  %520 = phi i32 [ %471, %470 ], [ %450, %447 ], [ %450, %453 ], [ %508, %506 ]
  %521 = phi ptr [ %472, %470 ], [ %449, %447 ], [ %449, %453 ], [ %509, %506 ]
  %522 = add nuw nsw i64 %448, 1
  %523 = getelementptr inbounds i8, ptr %451, i64 1
  %524 = icmp eq i64 %522, %446
  br i1 %524, label %410, label %447, !llvm.loop !193
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @elimination_target_reg_p(ptr noundef readnone %0) local_unnamed_addr #15 {
  %2 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %2, %1 ], [ %15, %13 ]
  %5 = phi i64 [ 0, %1 ], [ %14, %13 ]
  %6 = getelementptr inbounds %struct.elim_table, ptr %4, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.elim_table, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3, %9
  %14 = add nuw nsw i64 %5, 64
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = icmp ult i64 %5, 192
  br i1 %16, label %3, label %17, !llvm.loop !194

17:                                               ; preds = %13, %9
  %18 = phi i8 [ 1, %9 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deallocate_reload_reg(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @true_regnum(ptr noundef nonnull %4) #22
  store ptr null, ptr %3, align 8, !tbaa !195
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !28
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !197
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !198
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !199
  tail call fastcc void @clear_reload_reg_in_use(i32 noundef %7, i32 noundef %14, i32 noundef %16, i32 noundef %18) #23
  br label %19

19:                                               ; preds = %12, %6
  %20 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %2
  store i32 -1, ptr %20, align 4, !tbaa !27
  br label %21

21:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_reload_reg_in_use(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = zext i8 %8 to i32
  switch i32 %2, label %31 [
    i32 9, label %40
    i32 3, label %10
    i32 4, label %13
    i32 5, label %16
    i32 6, label %19
    i32 7, label %22
    i32 8, label %32
    i32 10, label %23
    i32 0, label %24
    i32 1, label %27
    i32 2, label %30
  ]

10:                                               ; preds = %4
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %11
  br label %40

13:                                               ; preds = %4
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %14
  br label %32

16:                                               ; preds = %4
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %17
  br label %40

19:                                               ; preds = %4
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %20
  br label %32

22:                                               ; preds = %4
  br label %40

23:                                               ; preds = %4
  br label %32

24:                                               ; preds = %4
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %25
  br label %40

27:                                               ; preds = %4
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %28
  br label %40

30:                                               ; preds = %4
  br label %40

31:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4775, ptr noundef nonnull @.str.2) #22
  br label %40

32:                                               ; preds = %19, %13, %23, %4
  %33 = phi i1 [ false, %13 ], [ false, %19 ], [ true, %23 ], [ true, %4 ]
  %34 = phi ptr [ %15, %13 ], [ %21, %19 ], [ @reload_reg_used_in_other_addr, %23 ], [ @reload_reg_used_in_op_addr_reload, %4 ]
  %35 = add i32 %9, %0
  %36 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = zext nneg i32 %36 to i64
  br label %43

40:                                               ; preds = %4, %31, %30, %27, %24, %22, %16, %10
  %41 = phi ptr [ undef, %31 ], [ @reload_reg_used_in_insn, %30 ], [ %29, %27 ], [ %26, %24 ], [ @reload_reg_used_in_op_addr, %22 ], [ %18, %16 ], [ %12, %10 ], [ @reload_reg_used, %4 ]
  %42 = add i32 %9, %0
  br label %75

43:                                               ; preds = %38, %71
  %44 = phi i64 [ %39, %38 ], [ %47, %71 ]
  %45 = phi i32 [ %0, %38 ], [ %73, %71 ]
  %46 = phi i32 [ %35, %38 ], [ %72, %71 ]
  %47 = add nsw i64 %44, -1
  %48 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !198
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  br i1 %33, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 12
  %54 = load i32, ptr %53, align 8, !tbaa !197
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %56, label %71

56:                                               ; preds = %52, %51
  %57 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 11
  %58 = load ptr, ptr %57, align 8, !tbaa !195
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @true_regnum(ptr noundef nonnull %58) #22
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !199
  %64 = tail call fastcc i32 @end_hard_regno(i32 noundef %63, i32 noundef %61) #23
  %65 = icmp ugt i32 %61, %45
  %66 = tail call i32 @llvm.umax.i32(i32 %64, i32 %45)
  %67 = select i1 %65, i32 %45, i32 %66
  %68 = icmp ugt i32 %61, %67
  %69 = tail call i32 @llvm.umin.i32(i32 %61, i32 %46)
  %70 = select i1 %68, i32 %69, i32 %46
  br label %71

71:                                               ; preds = %43, %52, %56, %60
  %72 = phi i32 [ %70, %60 ], [ %46, %56 ], [ %46, %52 ], [ %46, %43 ]
  %73 = phi i32 [ %67, %60 ], [ %45, %56 ], [ %45, %52 ], [ %45, %43 ]
  %74 = icmp ugt i64 %44, 1
  br i1 %74, label %43, label %75, !llvm.loop !200

75:                                               ; preds = %71, %32, %40
  %76 = phi ptr [ %41, %40 ], [ %34, %32 ], [ %34, %71 ]
  %77 = phi i32 [ %42, %40 ], [ %35, %32 ], [ %72, %71 ]
  %78 = phi i32 [ %0, %40 ], [ %0, %32 ], [ %73, %71 ]
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = zext i32 %77 to i64
  %82 = zext i32 %78 to i64
  %83 = sub nsw i64 %81, %82
  %84 = load i64, ptr %76, align 8, !tbaa !38
  %85 = add nsw i64 %83, 1
  %86 = and i64 %85, -2
  %87 = add nsw i64 %83, -1
  %88 = insertelement <2 x i64> poison, i64 %87, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = insertelement <2 x i64> poison, i64 %82, i64 0
  %91 = shufflevector <2 x i64> %90, <2 x i64> poison, <2 x i32> zeroinitializer
  %92 = add nuw nsw <2 x i64> %91, <i64 0, i64 1>
  %93 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %84, i64 0
  br label %94

94:                                               ; preds = %94, %80
  %95 = phi i64 [ 0, %80 ], [ %101, %94 ]
  %96 = phi <2 x i64> [ %92, %80 ], [ %102, %94 ]
  %97 = phi <2 x i64> [ %93, %80 ], [ %100, %94 ]
  %98 = shl nuw <2 x i64> <i64 1, i64 1>, %96
  %99 = xor <2 x i64> %98, <i64 -1, i64 -1>
  %100 = and <2 x i64> %97, %99
  %101 = add i64 %95, 2
  %102 = add <2 x i64> %96, <i64 2, i64 2>
  %103 = icmp eq i64 %101, %86
  br i1 %103, label %104, label %94, !llvm.loop !201

104:                                              ; preds = %94
  %105 = insertelement <2 x i64> poison, i64 %95, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = or disjoint <2 x i64> %106, <i64 0, i64 1>
  %108 = icmp ugt <2 x i64> %107, %89
  %109 = select <2 x i1> %108, <2 x i64> %97, <2 x i64> %100
  %110 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %109)
  store i64 %110, ptr %76, align 8, !tbaa !38
  br label %111

111:                                              ; preds = %104, %75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !21
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 738, ptr noundef nonnull @.str.2) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !204
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !204
  ret void
}

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decode_asm_operands(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #16 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_label_offsets(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %144, %3
  %5 = phi ptr [ %0, %3 ], [ %145, %144 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %162 [
    i16 44, label %8
    i16 12, label %14
    i16 9, label %78
    i16 8, label %81
    i16 10, label %81
    i16 15, label %97
    i16 20, label %97
    i16 21, label %97
    i16 23, label %116
  ]

8:                                                ; preds = %4
  %9 = and i32 %6, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %162

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %13, %11 ], [ %5, %4 ]
  %16 = load ptr, ptr @offsets_known_at, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !5
  %19 = load i32, ptr @first_label_num, align 4, !tbaa !27
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %14
  %26 = icmp eq i32 %2, 0
  %27 = load ptr, ptr @reg_eliminate, align 8
  %28 = load ptr, ptr @offsets_at, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %39, %29 ]
  %31 = getelementptr inbounds %struct.elim_table, ptr %27, i64 %30, i32 2
  %32 = getelementptr inbounds %struct.elim_table, ptr %27, i64 %30, i32 5
  %33 = select i1 %26, ptr %32, ptr %31
  %34 = load i64, ptr %33, align 8, !tbaa !38
  %35 = load i32, ptr %17, align 8, !tbaa !5
  %36 = sub nsw i32 %35, %19
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i64], ptr %28, i64 %37, i64 %30
  store i64 %34, ptr %38, align 8, !tbaa !38
  %39 = add nuw nsw i64 %30, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %29, !llvm.loop !206

41:                                               ; preds = %29
  %42 = load i32, ptr %17, align 8, !tbaa !5
  %43 = sub nsw i32 %42, %19
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %16, i64 %44
  store i8 1, ptr %45, align 1, !tbaa !5
  br label %162

46:                                               ; preds = %14
  %47 = icmp eq ptr %15, %1
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = tail call ptr @prev_nonnote_insn(ptr noundef %1) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %49, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call fastcc void @set_offsets_for_label(ptr noundef %1) #23
  br label %162

56:                                               ; preds = %51, %48, %46
  %57 = load ptr, ptr @offsets_at, align 8, !tbaa !21
  %58 = load i32, ptr @first_label_num, align 4, !tbaa !27
  %59 = icmp eq i32 %2, 0
  %60 = load ptr, ptr @reg_eliminate, align 8
  br label %61

61:                                               ; preds = %56, %75
  %62 = phi i64 [ 0, %56 ], [ %76, %75 ]
  %63 = load i32, ptr %17, align 8, !tbaa !5
  %64 = sub nsw i32 %63, %58
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i64], ptr %57, i64 %65, i64 %62
  %67 = load i64, ptr %66, align 8, !tbaa !38
  %68 = getelementptr inbounds %struct.elim_table, ptr %60, i64 %62, i32 2
  %69 = getelementptr inbounds %struct.elim_table, ptr %60, i64 %62, i32 5
  %70 = select i1 %59, ptr %69, ptr %68
  %71 = load i64, ptr %70, align 8, !tbaa !38
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.elim_table, ptr %60, i64 %62, i32 3
  store i32 0, ptr %74, align 8, !tbaa !63
  br label %75

75:                                               ; preds = %61, %73
  %76 = add nuw nsw i64 %62, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %162, label %61, !llvm.loop !207

78:                                               ; preds = %4
  %79 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  tail call fastcc void @set_label_offsets(ptr noundef %80, ptr noundef %1, i32 noundef %2) #23
  br label %81

81:                                               ; preds = %4, %4, %78
  %82 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %162, label %85

85:                                               ; preds = %81, %93
  %86 = phi ptr [ %95, %93 ], [ %83, %81 ]
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 16711680
  %89 = icmp eq i32 %88, 655360
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  tail call fastcc void @set_label_offsets(ptr noundef %92, ptr noundef %1, i32 noundef 1) #23
  br label %93

93:                                               ; preds = %85, %90
  %94 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %162, label %85, !llvm.loop !208

97:                                               ; preds = %4, %4, %4
  %98 = and i32 %6, 65535
  %99 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %100 = icmp eq i32 %98, 21
  %101 = zext i1 %100 to i64
  %102 = getelementptr inbounds [1 x %union.rtunion_def], ptr %99, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = load i32, ptr %103, align 8, !tbaa !123
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %162, label %106

106:                                              ; preds = %97, %106
  %107 = phi i64 [ %111, %106 ], [ 0, %97 ]
  %108 = phi ptr [ %112, %106 ], [ %103, %97 ]
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %108, i64 0, i32 1, i64 %107
  %110 = load ptr, ptr %109, align 8, !tbaa !21
  tail call fastcc void @set_label_offsets(ptr noundef %110, ptr noundef %1, i32 noundef %2) #23
  %111 = add nuw nsw i64 %107, 1
  %112 = load ptr, ptr %102, align 8, !tbaa !5
  %113 = load i32, ptr %112, align 8, !tbaa !123
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %106, label %162, !llvm.loop !209

116:                                              ; preds = %4
  %117 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = load ptr, ptr @global_rtl, align 16, !tbaa !21
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = load i32, ptr %123, align 8
  %125 = trunc i32 %124 to i16
  switch i16 %125, label %146 [
    i16 36, label %162
    i16 27, label %162
    i16 44, label %144
    i16 47, label %126
  ]

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = load i32, ptr %128, align 8
  %130 = trunc i32 %129 to i16
  switch i16 %130, label %146 [
    i16 44, label %131
    i16 36, label %135
    i16 27, label %135
  ]

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !5
  tail call fastcc void @set_label_offsets(ptr noundef %133, ptr noundef %1, i32 noundef %2) #23
  %134 = load ptr, ptr %122, align 8, !tbaa !5
  br label %135

135:                                              ; preds = %126, %126, %131
  %136 = phi ptr [ %123, %126 ], [ %123, %126 ], [ %134, %131 ]
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 2
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = load i32, ptr %138, align 8
  %140 = trunc i32 %139 to i16
  switch i16 %140, label %146 [
    i16 44, label %141
    i16 36, label %162
    i16 27, label %162
  ]

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  br label %144

144:                                              ; preds = %141, %121
  %145 = phi ptr [ %143, %141 ], [ %123, %121 ]
  br label %4

146:                                              ; preds = %135, %126, %121
  %147 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %148

148:                                              ; preds = %146, %158
  %149 = phi ptr [ %147, %146 ], [ %160, %158 ]
  %150 = phi i64 [ 0, %146 ], [ %159, %158 ]
  %151 = getelementptr inbounds %struct.elim_table, ptr %149, i64 0, i32 5
  %152 = load i64, ptr %151, align 8, !tbaa !155
  %153 = getelementptr inbounds %struct.elim_table, ptr %149, i64 0, i32 2
  %154 = load i64, ptr %153, align 8, !tbaa !154
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %158, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.elim_table, ptr %149, i64 0, i32 3
  store i32 0, ptr %157, align 8, !tbaa !63
  br label %158

158:                                              ; preds = %148, %156
  %159 = add nuw nsw i64 %150, 64
  %160 = getelementptr inbounds i8, ptr %147, i64 %159
  %161 = icmp ult i64 %150, 192
  br i1 %161, label %148, label %162, !llvm.loop !210

162:                                              ; preds = %4, %135, %135, %121, %121, %116, %158, %106, %93, %75, %97, %81, %41, %55, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @eliminate_regs_in_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca [30 x ptr], align 16
  %5 = tail call fastcc i32 @recog_memoized(ptr noundef %0) #23
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call i32 @asm_noperands(ptr noundef %7) #22
  %9 = icmp slt i32 %8, 0
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !tbaa !5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 23
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %15) #22
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #24
  %23 = icmp slt i32 %5, 0
  %24 = select i1 %9, i1 %23, i1 false
  br i1 %24, label %28, label %48

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #24
  %26 = icmp slt i32 %5, 0
  %27 = select i1 %9, i1 %26, i1 false
  br i1 %27, label %28, label %336

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr %6, align 8, !tbaa !5
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %32 [
    i16 24, label %37
    i16 25, label %37
    i16 20, label %37
    i16 21, label %37
    i16 16, label %37
  ]

32:                                               ; preds = %28
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3227, ptr noundef nonnull @.str.2) #22
  br label %37

37:                                               ; preds = %28, %28, %28, %28, %28, %32, %36
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %590

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = tail call ptr @eliminate_regs(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %0) #23
  %46 = load ptr, ptr %6, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %45, ptr %47, align 8, !tbaa !5
  br label %590

48:                                               ; preds = %21
  %49 = icmp eq ptr %22, null
  br i1 %49, label %336, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %336

56:                                               ; preds = %50
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %52) #23
  %58 = icmp ult i32 %57, 53
  br i1 %58, label %59, label %186

59:                                               ; preds = %56
  %60 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %61

61:                                               ; preds = %59, %182
  %62 = phi ptr [ %60, %59 ], [ %184, %182 ]
  %63 = phi i64 [ 0, %59 ], [ %183, %182 ]
  %64 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !134
  %66 = icmp eq ptr %65, %52
  br i1 %66, label %67, label %182

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !63
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %182, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %62, align 8, !tbaa !61
  %73 = icmp eq i32 %72, 20
  br i1 %73, label %74, label %179

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !71
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %179

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 9
  %81 = load ptr, ptr %79, align 8, !tbaa !5
  %82 = load ptr, ptr %80, align 8, !tbaa !135
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %141, label %84

84:                                               ; preds = %78, %129
  %85 = phi ptr [ %130, %129 ], [ %82, %78 ]
  %86 = phi ptr [ %134, %129 ], [ %81, %78 ]
  %87 = phi i64 [ %133, %129 ], [ 0, %78 ]
  %88 = phi ptr [ %132, %129 ], [ %0, %78 ]
  %89 = load i32, ptr %86, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 49
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %100 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !5
  %102 = add nsw i64 %101, %87
  br label %129

103:                                              ; preds = %92, %84
  %104 = tail call ptr @prev_nonnote_insn(ptr noundef %88) #22
  %105 = icmp eq ptr %104, null
  br i1 %105, label %136, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %104, align 8
  %108 = and i32 %107, 65535
  %109 = add nsw i32 %108, -7
  %110 = icmp ult i32 %109, 4
  br i1 %110, label %111, label %136

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 23
  br i1 %116, label %120, label %117

117:                                              ; preds = %111
  %118 = tail call ptr @single_set_2(ptr noundef nonnull %104, ptr noundef nonnull %113) #22
  %119 = icmp eq ptr %118, null
  br i1 %119, label %136, label %120

120:                                              ; preds = %111, %117
  %121 = phi ptr [ %118, %117 ], [ %113, %111 ]
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = tail call i32 @rtx_equal_p(ptr noundef %123, ptr noundef nonnull %86) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %80, align 8, !tbaa !135
  br label %129

129:                                              ; preds = %98, %126
  %130 = phi ptr [ %85, %98 ], [ %128, %126 ]
  %131 = phi ptr [ %99, %98 ], [ %127, %126 ]
  %132 = phi ptr [ %88, %98 ], [ %104, %126 ]
  %133 = phi i64 [ %102, %98 ], [ %87, %126 ]
  %134 = load ptr, ptr %131, align 8, !tbaa !5
  %135 = icmp eq ptr %134, %130
  br i1 %135, label %136, label %84

136:                                              ; preds = %129, %120, %117, %103, %106
  %137 = phi i64 [ %133, %129 ], [ %87, %120 ], [ %87, %117 ], [ %87, %103 ], [ %87, %106 ]
  %138 = phi ptr [ %130, %129 ], [ %86, %120 ], [ %86, %117 ], [ %86, %103 ], [ %86, %106 ]
  %139 = load ptr, ptr %80, align 8, !tbaa !135
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %78, %136
  %142 = phi i64 [ %137, %136 ], [ 0, %78 ]
  %143 = phi ptr [ %139, %136 ], [ %81, %78 ]
  %144 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 5
  %145 = load i64, ptr %144, align 8, !tbaa !155
  %146 = sub nsw i64 %142, %145
  %147 = tail call ptr @plus_constant(ptr noundef %143, i64 noundef %146) #22
  %148 = icmp eq i32 %1, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = tail call ptr @copy_insn(ptr noundef %7) #22
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = tail call ptr @copy_insn_1(ptr noundef nonnull %152) #22
  store ptr %155, ptr %151, align 8, !tbaa !5
  br label %156

156:                                              ; preds = %149, %154, %141
  %157 = phi ptr [ %7, %141 ], [ %150, %154 ], [ %150, %149 ]
  store ptr %157, ptr %6, align 8, !tbaa !5
  %158 = load i32, ptr %0, align 8
  %159 = and i32 %158, 65535
  %160 = add nsw i32 %159, -7
  %161 = icmp ult i32 %160, 4
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i32, ptr %157, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 23
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %157) #22
  br label %168

168:                                              ; preds = %156, %162, %166
  %169 = phi ptr [ %167, %166 ], [ null, %156 ], [ %157, %162 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %172 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %171, ptr noundef %147, i8 noundef zeroext 1) #22
  %173 = load ptr, ptr %80, align 8, !tbaa !135
  %174 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %170, ptr noundef %173, i8 noundef zeroext 1) #22
  %175 = tail call i32 @apply_change_group() #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %583

177:                                              ; preds = %168
  store ptr %147, ptr %171, align 8, !tbaa !5
  %178 = load ptr, ptr %80, align 8, !tbaa !135
  store ptr %178, ptr %170, align 8, !tbaa !5
  br label %583

179:                                              ; preds = %136, %74, %71
  %180 = icmp eq i32 %1, 0
  br i1 %180, label %583, label %181

181:                                              ; preds = %179
  tail call fastcc void @delete_dead_insn(ptr noundef nonnull %0) #23
  br label %590

182:                                              ; preds = %61, %67
  %183 = add nuw nsw i64 %63, 64
  %184 = getelementptr inbounds i8, ptr %60, i64 %183
  %185 = icmp ult i64 %63, 192
  br i1 %185, label %61, label %186, !llvm.loop !211

186:                                              ; preds = %182, %56
  %187 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 49
  %192 = select i1 %191, ptr %188, ptr null
  br i1 %191, label %193, label %199

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !5
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 30
  br i1 %198, label %228, label %201

199:                                              ; preds = %186
  %200 = trunc i32 %189 to i16
  switch i16 %200, label %336 [
    i16 49, label %201
    i16 37, label %201
  ]

201:                                              ; preds = %199, %199, %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  %204 = icmp eq ptr %203, null
  br i1 %204, label %336, label %205

205:                                              ; preds = %201, %224
  %206 = phi ptr [ %226, %224 ], [ %203, %201 ]
  %207 = load i32, ptr %206, align 8
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  %210 = add nsw i32 %209, -3
  %211 = icmp ult i32 %210, 2
  br i1 %211, label %212, label %224

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !5
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 49
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !5
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 65535
  %223 = icmp eq i32 %222, 30
  br i1 %223, label %228, label %224

224:                                              ; preds = %205, %212, %218
  %225 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !5
  %227 = icmp eq ptr %226, null
  br i1 %227, label %336, label %205, !llvm.loop !212

228:                                              ; preds = %218, %193
  %229 = phi ptr [ %188, %193 ], [ %214, %218 ]
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 39
  br i1 %234, label %235, label %241

235:                                              ; preds = %228
  %236 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %231) #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  br label %241

241:                                              ; preds = %238, %235, %228
  %242 = phi ptr [ %240, %238 ], [ %231, %235 ], [ %231, %228 ]
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 37
  br i1 %245, label %246, label %336

246:                                              ; preds = %241
  %247 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %242) #23
  %248 = icmp ugt i32 %247, 52
  br i1 %248, label %336, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %230, align 8, !tbaa !5
  %251 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !5
  %255 = load i32, ptr %250, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 39
  br i1 %257, label %258, label %261

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !5
  br label %261

261:                                              ; preds = %258, %249
  %262 = phi ptr [ %260, %258 ], [ %250, %249 ]
  %263 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %264

264:                                              ; preds = %261, %332
  %265 = phi ptr [ %263, %261 ], [ %334, %332 ]
  %266 = phi i64 [ 0, %261 ], [ %333, %332 ]
  %267 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 8
  %268 = load ptr, ptr %267, align 8, !tbaa !134
  %269 = icmp eq ptr %268, %262
  br i1 %269, label %270, label %332

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 3
  %272 = load i32, ptr %271, align 8, !tbaa !63
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %332, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 9
  %276 = load ptr, ptr %275, align 8, !tbaa !135
  %277 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 5
  %278 = load i64, ptr %277, align 8, !tbaa !155
  %279 = add nsw i64 %278, %254
  %280 = load i32, ptr %229, align 8
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = tail call i64 @trunc_int_for_mode(i64 noundef %279, i32 noundef %282) #22
  %284 = load ptr, ptr %230, align 8, !tbaa !5
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 39
  br i1 %287, label %288, label %293

288:                                              ; preds = %274
  %289 = load ptr, ptr @rtl_hooks, align 8, !tbaa !213
  %290 = lshr i32 %285, 16
  %291 = and i32 %290, 255
  %292 = tail call ptr %289(i32 noundef %291, ptr noundef %276) #22
  br label %293

293:                                              ; preds = %288, %274
  %294 = phi ptr [ %292, %288 ], [ %276, %274 ]
  %295 = icmp ne i64 %283, 0
  %296 = icmp eq ptr %192, null
  %297 = and i1 %296, %295
  br i1 %297, label %336, label %298

298:                                              ; preds = %293
  %299 = tail call ptr @plus_constant(ptr noundef %294, i64 noundef %283) #22
  %300 = icmp eq i32 %1, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = tail call ptr @copy_insn(ptr noundef %7) #22
  %303 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !5
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %301
  %307 = tail call ptr @copy_insn_1(ptr noundef nonnull %304) #22
  store ptr %307, ptr %303, align 8, !tbaa !5
  br label %308

308:                                              ; preds = %301, %306, %298
  %309 = phi ptr [ %7, %298 ], [ %302, %306 ], [ %302, %301 ]
  store ptr %309, ptr %6, align 8, !tbaa !5
  %310 = load i32, ptr %0, align 8
  %311 = and i32 %310, 65535
  %312 = add nsw i32 %311, -7
  %313 = icmp ult i32 %312, 4
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load i32, ptr %309, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 23
  br i1 %317, label %320, label %318

318:                                              ; preds = %314
  %319 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %309) #22
  br label %320

320:                                              ; preds = %308, %314, %318
  %321 = phi ptr [ %319, %318 ], [ null, %308 ], [ %309, %314 ]
  %322 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1, i32 0, i32 0, i64 1
  %323 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %322, ptr noundef %299, i8 noundef zeroext 0) #22
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %583

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !5
  %328 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %327, ptr noundef %299) #22
  %329 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %328, i8 noundef zeroext 0) #22
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %583

331:                                              ; preds = %325
  store ptr %299, ptr %322, align 8, !tbaa !5
  br label %583

332:                                              ; preds = %264, %270
  %333 = add nuw nsw i64 %266, 64
  %334 = getelementptr inbounds i8, ptr %263, i64 %333
  %335 = icmp ult i64 %266, 192
  br i1 %335, label %264, label %336, !llvm.loop !215

336:                                              ; preds = %224, %332, %201, %199, %293, %241, %246, %50, %25, %48
  %337 = phi ptr [ null, %48 ], [ null, %25 ], [ null, %50 ], [ null, %199 ], [ %192, %246 ], [ %192, %241 ], [ null, %293 ], [ %192, %201 ], [ %192, %332 ], [ %192, %224 ]
  %338 = phi ptr [ null, %48 ], [ null, %25 ], [ %22, %50 ], [ %22, %199 ], [ %22, %246 ], [ %22, %241 ], [ %22, %293 ], [ %22, %201 ], [ %22, %332 ], [ %22, %224 ]
  tail call fastcc void @elimination_effects(ptr noundef %7, i32 noundef 0) #23
  tail call void @extract_insn(ptr noundef nonnull %0) #22
  %339 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !216
  %340 = icmp sgt i8 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %336
  %342 = sext i32 %5 to i64
  %343 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %342, i32 3
  %344 = icmp eq ptr %338, null
  %345 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = icmp eq ptr %337, null
  %347 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1
  %348 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %349 = icmp ne i32 %1, 0
  %350 = select i1 %349, ptr %0, ptr null
  br label %357

351:                                              ; preds = %428, %336
  %352 = phi i32 [ 0, %336 ], [ %429, %428 ]
  %353 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !218
  %354 = icmp sgt i8 %353, 0
  br i1 %354, label %355, label %446

355:                                              ; preds = %351
  %356 = zext nneg i8 %353 to i64
  br label %434

357:                                              ; preds = %341, %428
  %358 = phi i64 [ 0, %341 ], [ %430, %428 ]
  %359 = phi i32 [ 0, %341 ], [ %429, %428 ]
  %360 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %358
  %361 = load ptr, ptr %360, align 8, !tbaa !21
  %362 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %358
  store ptr %361, ptr %362, align 8, !tbaa !21
  %363 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %358
  store ptr %361, ptr %363, align 8, !tbaa !21
  br i1 %9, label %364, label %369

364:                                              ; preds = %357
  %365 = load ptr, ptr %343, align 8, !tbaa !219
  %366 = getelementptr inbounds %struct.insn_operand_data, ptr %365, i64 %358, i32 4
  %367 = load i8, ptr %366, align 1, !tbaa !221
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %428, label %369

369:                                              ; preds = %364, %357
  %370 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %358
  %371 = load i32, ptr %370, align 4, !tbaa !27
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %391, label %373

373:                                              ; preds = %369
  %374 = load i32, ptr %361, align 8
  %375 = and i32 %374, 65535
  %376 = icmp eq i32 %375, 37
  br i1 %376, label %377, label %391

377:                                              ; preds = %373
  %378 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %379

379:                                              ; preds = %377, %387
  %380 = phi ptr [ %378, %377 ], [ %389, %387 ]
  %381 = phi i64 [ 0, %377 ], [ %388, %387 ]
  %382 = getelementptr inbounds %struct.elim_table, ptr %380, i64 0, i32 8
  %383 = load ptr, ptr %382, align 8, !tbaa !134
  %384 = icmp eq ptr %383, %361
  br i1 %384, label %385, label %387

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.elim_table, ptr %380, i64 0, i32 3
  store i32 0, ptr %386, align 8, !tbaa !63
  br label %387

387:                                              ; preds = %379, %385
  %388 = add nuw nsw i64 %381, 64
  %389 = getelementptr inbounds i8, ptr %378, i64 %388
  %390 = icmp ult i64 %381, 192
  br i1 %390, label %379, label %391, !llvm.loop !223

391:                                              ; preds = %387, %373, %369
  br i1 %344, label %397, label %392

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %358
  %394 = load ptr, ptr %393, align 8, !tbaa !21
  %395 = icmp eq ptr %394, %345
  %396 = zext i1 %395 to i8
  br label %397

397:                                              ; preds = %392, %391
  %398 = phi i8 [ 0, %391 ], [ %396, %392 ]
  br i1 %346, label %406, label %399

399:                                              ; preds = %397
  %400 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %358
  %401 = load ptr, ptr %400, align 8, !tbaa !21
  %402 = icmp eq ptr %401, %347
  %403 = icmp eq ptr %401, %348
  %404 = select i1 %402, i1 true, i1 %403
  %405 = zext i1 %404 to i8
  br label %406

406:                                              ; preds = %399, %397
  %407 = phi i8 [ 0, %397 ], [ %405, %399 ]
  %408 = or i8 %407, %398
  %409 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %361, i32 noundef 0, ptr noundef %350, i8 noundef zeroext %408) #23
  store ptr %409, ptr %363, align 8, !tbaa !21
  %410 = icmp eq ptr %409, %361
  %411 = select i1 %410, i32 %359, i32 1
  %412 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %358
  %413 = load ptr, ptr %412, align 8, !tbaa !21
  store ptr null, ptr %413, align 8, !tbaa !21
  %414 = load i32, ptr %370, align 4, !tbaa !27
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %428, label %416

416:                                              ; preds = %406
  %417 = load i32, ptr %361, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 37
  br i1 %419, label %420, label %428

420:                                              ; preds = %416
  %421 = load i32, ptr %409, align 8
  %422 = and i32 %421, 65535
  %423 = icmp eq i32 %422, 43
  %424 = and i1 %349, %423
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = tail call ptr @gen_clobber(ptr noundef nonnull %361) #22
  %427 = tail call ptr @emit_insn_after(ptr noundef %426, ptr noundef nonnull %0) #22
  br label %428

428:                                              ; preds = %406, %416, %420, %425, %364
  %429 = phi i32 [ %359, %364 ], [ %411, %425 ], [ %411, %420 ], [ %411, %416 ], [ %411, %406 ]
  %430 = add nuw nsw i64 %358, 1
  %431 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !216
  %432 = sext i8 %431 to i64
  %433 = icmp slt i64 %430, %432
  br i1 %433, label %357, label %351, !llvm.loop !224

434:                                              ; preds = %355, %434
  %435 = phi i64 [ 0, %355 ], [ %444, %434 ]
  %436 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !5
  %438 = sext i8 %437 to i64
  %439 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !21
  %441 = load ptr, ptr %440, align 8, !tbaa !21
  %442 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %435
  %443 = load ptr, ptr %442, align 8, !tbaa !21
  store ptr %441, ptr %443, align 8, !tbaa !21
  %444 = add nuw nsw i64 %435, 1
  %445 = icmp eq i64 %444, %356
  br i1 %445, label %446, label %434, !llvm.loop !225

446:                                              ; preds = %434, %351
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %7) #23
  %447 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !216
  %448 = icmp sgt i8 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %446
  %450 = zext nneg i8 %447 to i64
  br label %456

451:                                              ; preds = %456, %446
  %452 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !218
  %453 = icmp sgt i8 %452, 0
  br i1 %453, label %454, label %475

454:                                              ; preds = %451
  %455 = zext nneg i8 %452 to i64
  br label %464

456:                                              ; preds = %449, %456
  %457 = phi i64 [ 0, %449 ], [ %462, %456 ]
  %458 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %457
  %459 = load ptr, ptr %458, align 8, !tbaa !21
  %460 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %457
  %461 = load ptr, ptr %460, align 8, !tbaa !21
  store ptr %459, ptr %461, align 8, !tbaa !21
  %462 = add nuw nsw i64 %457, 1
  %463 = icmp eq i64 %462, %450
  br i1 %463, label %451, label %456, !llvm.loop !226

464:                                              ; preds = %454, %464
  %465 = phi i64 [ 0, %454 ], [ %473, %464 ]
  %466 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = sext i8 %467 to i64
  %469 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !21
  %471 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %465
  %472 = load ptr, ptr %471, align 8, !tbaa !21
  store ptr %470, ptr %472, align 8, !tbaa !21
  %473 = add nuw nsw i64 %465, 1
  %474 = icmp eq i64 %473, %455
  br i1 %474, label %475, label %464, !llvm.loop !227

475:                                              ; preds = %464, %451
  %476 = icmp eq i32 %352, 0
  br i1 %476, label %527, label %477

477:                                              ; preds = %475
  %478 = icmp eq i32 %1, 0
  br i1 %478, label %479, label %486

479:                                              ; preds = %477
  %480 = tail call ptr @copy_insn(ptr noundef %7) #22
  %481 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %482 = load ptr, ptr %481, align 8, !tbaa !5
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484

484:                                              ; preds = %479
  %485 = tail call ptr @copy_insn_1(ptr noundef nonnull %482) #22
  store ptr %485, ptr %481, align 8, !tbaa !5
  br label %486

486:                                              ; preds = %479, %484, %477
  %487 = phi ptr [ %7, %477 ], [ %480, %484 ], [ %480, %479 ]
  store ptr %487, ptr %6, align 8, !tbaa !5
  %488 = icmp ne ptr %338, null
  %489 = select i1 %9, i1 %488, i1 false
  br i1 %489, label %490, label %527

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %492 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1, i32 0, i32 0, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !5
  %494 = load i32, ptr %493, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 37
  br i1 %496, label %497, label %507

497:                                              ; preds = %490
  %498 = load i32, ptr %487, align 8
  %499 = and i32 %498, 65535
  %500 = icmp eq i32 %499, 23
  br i1 %500, label %501, label %522

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.rtx_def, ptr %487, i64 0, i32 1, i32 0, i32 0, i64 1
  %503 = load ptr, ptr %502, align 8, !tbaa !5
  %504 = load i32, ptr %503, align 8
  %505 = and i32 %504, 65535
  %506 = icmp eq i32 %505, 37
  br i1 %506, label %512, label %522

507:                                              ; preds = %490
  %508 = icmp ne i32 %495, 43
  %509 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %510 = icmp eq ptr %493, %509
  %511 = select i1 %508, i1 true, i1 %510
  br i1 %511, label %512, label %522

512:                                              ; preds = %501, %507
  %513 = load ptr, ptr %491, align 8, !tbaa !5
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 43
  %517 = load ptr, ptr @recog_data, align 8
  %518 = icmp ne ptr %513, %517
  %519 = select i1 %516, i1 %518, i1 false
  %520 = icmp eq i32 %495, 49
  %521 = or i1 %520, %519
  br i1 %521, label %522, label %527

522:                                              ; preds = %512, %507, %501, %497
  %523 = tail call i32 @recog(ptr noundef %487, ptr noundef nonnull %0, ptr noundef null) #22
  %524 = icmp sgt i32 %523, -1
  br i1 %524, label %525, label %527

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 %523, ptr %526, align 8, !tbaa !5
  br label %527

527:                                              ; preds = %512, %522, %525, %486, %475
  %528 = icmp eq i32 %1, 0
  br i1 %528, label %529, label %558

529:                                              ; preds = %527
  %530 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !216
  %531 = icmp sgt i8 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  %533 = zext nneg i8 %530 to i64
  br label %539

534:                                              ; preds = %539, %529
  %535 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !218
  %536 = icmp sgt i8 %535, 0
  br i1 %536, label %537, label %558

537:                                              ; preds = %534
  %538 = zext nneg i8 %535 to i64
  br label %547

539:                                              ; preds = %532, %539
  %540 = phi i64 [ 0, %532 ], [ %545, %539 ]
  %541 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !21
  %543 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %540
  %544 = load ptr, ptr %543, align 8, !tbaa !21
  store ptr %542, ptr %544, align 8, !tbaa !21
  %545 = add nuw nsw i64 %540, 1
  %546 = icmp eq i64 %545, %533
  br i1 %546, label %534, label %539, !llvm.loop !228

547:                                              ; preds = %537, %547
  %548 = phi i64 [ 0, %537 ], [ %556, %547 ]
  %549 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %548
  %550 = load i8, ptr %549, align 1, !tbaa !5
  %551 = sext i8 %550 to i64
  %552 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !21
  %554 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %548
  %555 = load ptr, ptr %554, align 8, !tbaa !21
  store ptr %553, ptr %555, align 8, !tbaa !21
  %556 = add nuw nsw i64 %548, 1
  %557 = icmp eq i64 %556, %538
  br i1 %557, label %558, label %547, !llvm.loop !229

558:                                              ; preds = %547, %534, %527
  %559 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %560

560:                                              ; preds = %558, %575
  %561 = phi ptr [ %559, %558 ], [ %579, %575 ]
  %562 = phi i32 [ %352, %558 ], [ %576, %575 ]
  %563 = phi i64 [ 0, %558 ], [ %578, %575 ]
  %564 = getelementptr inbounds %struct.elim_table, ptr %561, i64 0, i32 6
  %565 = load i64, ptr %564, align 8, !tbaa !156
  %566 = getelementptr inbounds %struct.elim_table, ptr %561, i64 0, i32 5
  %567 = load i64, ptr %566, align 8, !tbaa !155
  %568 = icmp eq i64 %565, %567
  br i1 %568, label %575, label %569

569:                                              ; preds = %560
  %570 = getelementptr inbounds %struct.elim_table, ptr %561, i64 0, i32 7
  %571 = load i32, ptr %570, align 8, !tbaa !190
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %575, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.elim_table, ptr %561, i64 0, i32 3
  store i32 0, ptr %574, align 8, !tbaa !63
  br label %575

575:                                              ; preds = %573, %569, %560
  %576 = phi i32 [ 1, %573 ], [ 1, %569 ], [ %562, %560 ]
  %577 = getelementptr inbounds %struct.elim_table, ptr %561, i64 0, i32 7
  store i32 0, ptr %577, align 8, !tbaa !190
  %578 = add nuw nsw i64 %563, 64
  %579 = getelementptr inbounds i8, ptr %559, i64 %578
  %580 = icmp ult i64 %563, 192
  br i1 %580, label %560, label %581, !llvm.loop !230

581:                                              ; preds = %575
  %582 = icmp eq i32 %576, 0
  br i1 %582, label %590, label %583

583:                                              ; preds = %325, %331, %320, %168, %177, %179, %581
  %584 = phi i32 [ %576, %581 ], [ 1, %179 ], [ 1, %177 ], [ 1, %168 ], [ 1, %320 ], [ 1, %331 ], [ 1, %325 ]
  %585 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %586 = load ptr, ptr %585, align 8, !tbaa !5
  %587 = icmp eq ptr %586, null
  br i1 %587, label %590, label %588

588:                                              ; preds = %583
  %589 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %586, i32 noundef 0, ptr noundef nonnull %586, i8 noundef zeroext 1) #23
  store ptr %589, ptr %585, align 8, !tbaa !5
  br label %590

590:                                              ; preds = %581, %583, %588, %37, %41, %181
  %591 = phi i32 [ 1, %181 ], [ 0, %41 ], [ 0, %37 ], [ %584, %588 ], [ %584, %583 ], [ 0, %581 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #24
  ret i32 %591
}

; Function Attrs: optsize
declare i32 @find_reloads(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_mark_memory_move_deletion(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_eliminable_offsets() unnamed_addr #13 {
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !27
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %2

2:                                                ; preds = %0, %18
  %3 = phi ptr [ %1, %0 ], [ %21, %18 ]
  %4 = phi i64 [ 0, %0 ], [ %20, %18 ]
  %5 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %6 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 6
  store i64 %7, ptr %8, align 8, !tbaa !156
  %9 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !154
  %15 = icmp eq i64 %7, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %5, 1
  store i32 %17, ptr @num_not_at_initial_offset, align 4, !tbaa !27
  br label %18

18:                                               ; preds = %2, %12, %16
  %19 = phi i32 [ %5, %2 ], [ %5, %12 ], [ %17, %16 ]
  %20 = add nuw nsw i64 %4, 64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = icmp ult i64 %4, 192
  br i1 %22, label %2, label %23, !llvm.loop !231

23:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_reloads(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %3 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  store i32 %2, ptr %3, align 8, !tbaa !159
  %4 = sext i32 %2 to i64
  %5 = mul nsw i64 %4, 104
  store i64 %5, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, %5
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = trunc i64 %5 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef %13) #22
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %16

16:                                               ; preds = %1, %12
  %17 = phi ptr [ %7, %1 ], [ %15, %12 ]
  %18 = phi i64 [ %5, %1 ], [ %14, %12 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %19 to i64
  %27 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = xor i32 %27, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %29, %31
  %33 = inttoptr i64 %32 to ptr
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %32, %35
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %35
  %40 = icmp sgt i64 %36, %39
  %41 = select i1 %40, ptr %37, ptr %33
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %42 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  store ptr %20, ptr %42, align 8, !tbaa !232
  %43 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr nonnull align 16 @rld, i64 %45, i1 false)
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %25
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !17
  br label %55

55:                                               ; preds = %25, %52
  %56 = phi ptr [ %47, %25 ], [ %54, %52 ]
  %57 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %63 = or i8 %62, 2
  store i8 %63, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %64

64:                                               ; preds = %55, %61
  %65 = ptrtoint ptr %59 to i64
  store i64 %65, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !11
  %66 = ptrtoint ptr %58 to i64
  %67 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !19
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = xor i32 %67, -1
  %71 = sext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = inttoptr i64 %72 to ptr
  %74 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !20
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %72, %75
  %77 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !16
  %78 = ptrtoint ptr %77 to i64
  %79 = sub i64 %78, %75
  %80 = icmp sgt i64 %76, %79
  %81 = select i1 %80, ptr %77, ptr %73
  store ptr %81, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %81, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !18
  store ptr %59, ptr @reload_insn_firstobj, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_offsets_for_label(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !27
  %4 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  %5 = load ptr, ptr @offsets_at, align 8, !tbaa !21
  %6 = load i32, ptr @first_label_num, align 4, !tbaa !27
  %7 = sub nsw i32 %3, %6
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %1, %26
  %10 = phi i64 [ 0, %1 ], [ %29, %26 ]
  %11 = phi ptr [ %4, %1 ], [ %28, %26 ]
  %12 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %13 = getelementptr inbounds [4 x i64], ptr %5, i64 %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 6
  store i64 %14, ptr %15, align 8, !tbaa !156
  %16 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 5
  store i64 %14, ptr %16, align 8, !tbaa !155
  %17 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !154
  %23 = icmp eq i64 %14, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = add nsw i32 %12, 1
  store i32 %25, ptr @num_not_at_initial_offset, align 4, !tbaa !27
  br label %26

26:                                               ; preds = %9, %20, %24
  %27 = phi i32 [ %12, %9 ], [ %12, %20 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.elim_table, ptr %11, i64 1
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %9, !llvm.loop !233

31:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #22
  store i32 %8, ptr %2, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @copy_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_insn_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @elimination_effects(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #18 {
  %3 = load ptr, ptr @reg_eliminate, align 8
  %4 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %5 = load ptr, ptr @reg_renumber, align 8
  %6 = load ptr, ptr @reg_equiv_constant, align 8
  br label %7

7:                                                ; preds = %248, %2
  %8 = phi ptr [ %6, %2 ], [ %249, %248 ]
  %9 = phi ptr [ %5, %2 ], [ %250, %248 ]
  %10 = phi ptr [ %4, %2 ], [ %251, %248 ]
  %11 = phi ptr [ %3, %2 ], [ %252, %248 ]
  %12 = phi ptr [ %0, %2 ], [ %255, %248 ]
  %13 = phi i32 [ %1, %2 ], [ %254, %248 ]
  %14 = icmp ne ptr %10, null
  %15 = zext nneg i32 %13 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %17 = icmp ne ptr %8, null
  br label %18

18:                                               ; preds = %137, %7
  %19 = phi ptr [ %12, %7 ], [ %138, %137 ]
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %260 [
    i16 30, label %297
    i16 32, label %297
    i16 31, label %297
    i16 33, label %297
    i16 35, label %297
    i16 45, label %297
    i16 12, label %297
    i16 36, label %297
    i16 46, label %297
    i16 16, label %297
    i16 20, label %297
    i16 21, label %297
    i16 27, label %297
    i16 37, label %22
    i16 75, label %56
    i16 77, label %56
    i16 74, label %56
    i16 76, label %56
    i16 79, label %56
    i16 78, label %56
    i16 40, label %132
    i16 51, label %132
    i16 64, label %132
    i16 98, label %132
    i16 99, label %132
    i16 100, label %132
    i16 101, label %132
    i16 102, label %132
    i16 103, label %132
    i16 104, label %132
    i16 106, label %132
    i16 105, label %132
    i16 111, label %132
    i16 112, label %132
    i16 114, label %132
    i16 115, label %132
    i16 116, label %132
    i16 117, label %132
    i16 118, label %132
    i16 113, label %132
    i16 39, label %139
    i16 24, label %164
    i16 25, label %179
    i16 23, label %194
    i16 43, label %256
  ]

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #23
  %24 = icmp slt i32 %23, 53
  br i1 %24, label %25, label %43

25:                                               ; preds = %22, %39
  %26 = phi ptr [ %41, %39 ], [ %11, %22 ]
  %27 = phi i64 [ %40, %39 ], [ 0, %22 ]
  %28 = getelementptr inbounds %struct.elim_table, ptr %26, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !134
  %30 = icmp eq ptr %29, %19
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.elim_table, ptr %26, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !63
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %13, 0
  br i1 %36, label %37, label %297

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.elim_table, ptr %26, i64 0, i32 7
  store i32 1, ptr %38, align 8, !tbaa !190
  br label %297

39:                                               ; preds = %25, %31
  %40 = add nuw nsw i64 %27, 64
  %41 = getelementptr inbounds i8, ptr %11, i64 %40
  %42 = icmp ult i64 %27, 192
  br i1 %42, label %25, label %297, !llvm.loop !234

43:                                               ; preds = %22
  %44 = zext nneg i32 %23 to i64
  %45 = getelementptr inbounds i16, ptr %9, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !28
  %47 = icmp slt i16 %46, 0
  %48 = select i1 %47, i1 %17, i1 false
  br i1 %48, label %49, label %297

49:                                               ; preds = %43
  %50 = getelementptr inbounds ptr, ptr %8, i64 %44
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %297, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @function_invariant_p(ptr noundef nonnull %51) #23, !range !55
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %137, label %297

56:                                               ; preds = %18, %18, %18, %18, %18, %18
  %57 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  br label %63

58:                                               ; preds = %72
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %60 = and i32 %20, 65534
  %61 = icmp eq i32 %60, 78
  %62 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %76

63:                                               ; preds = %56, %72
  %64 = phi ptr [ %11, %56 ], [ %74, %72 ]
  %65 = phi i64 [ 0, %56 ], [ %73, %72 ]
  %66 = getelementptr inbounds %struct.elim_table, ptr %64, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !134
  %68 = load ptr, ptr %57, align 8, !tbaa !5
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.elim_table, ptr %64, i64 0, i32 3
  store i32 0, ptr %71, align 8, !tbaa !63
  br label %72

72:                                               ; preds = %63, %70
  %73 = add nuw nsw i64 %65, 64
  %74 = getelementptr inbounds i8, ptr %11, i64 %73
  %75 = icmp ult i64 %65, 192
  br i1 %75, label %63, label %58, !llvm.loop !235

76:                                               ; preds = %126, %58
  %77 = phi ptr [ %11, %58 ], [ %128, %126 ]
  %78 = phi i64 [ 0, %58 ], [ %127, %126 ]
  %79 = getelementptr inbounds %struct.elim_table, ptr %77, i64 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !135
  %81 = load ptr, ptr %57, align 8, !tbaa !5
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %76
  %84 = load i8, ptr %16, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  %86 = icmp eq ptr %80, %59
  %87 = add nuw nsw i32 %85, 3
  %88 = and i32 %87, 508
  %89 = select i1 %86, i32 %88, i32 %85
  switch i16 %21, label %100 [
    i16 76, label %90
    i16 74, label %90
    i16 77, label %95
    i16 75, label %95
  ]

90:                                               ; preds = %83, %83
  %91 = zext nneg i32 %89 to i64
  %92 = getelementptr inbounds %struct.elim_table, ptr %77, i64 0, i32 5
  %93 = load i64, ptr %92, align 8, !tbaa !155
  %94 = add nsw i64 %93, %91
  store i64 %94, ptr %92, align 8, !tbaa !155
  br label %124

95:                                               ; preds = %83, %83
  %96 = zext nneg i32 %89 to i64
  %97 = getelementptr inbounds %struct.elim_table, ptr %77, i64 0, i32 5
  %98 = load i64, ptr %97, align 8, !tbaa !155
  %99 = sub nsw i64 %98, %96
  store i64 %99, ptr %97, align 8, !tbaa !155
  br label %124

100:                                              ; preds = %83
  br i1 %61, label %101, label %129

101:                                              ; preds = %100
  %102 = load ptr, ptr %62, align 8, !tbaa !5
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 49
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = icmp eq ptr %80, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 30
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.elim_table, ptr %77, i64 0, i32 5
  %120 = load i64, ptr %119, align 8, !tbaa !155
  %121 = sub nsw i64 %120, %118
  store i64 %121, ptr %119, align 8, !tbaa !155
  br label %124

122:                                              ; preds = %110, %106, %101
  %123 = getelementptr inbounds %struct.elim_table, ptr %77, i64 0, i32 3
  store i32 0, ptr %123, align 8, !tbaa !63
  br label %124

124:                                              ; preds = %90, %122, %116, %95, %76
  %125 = icmp ult i64 %78, 192
  br i1 %125, label %126, label %131

126:                                              ; preds = %124, %129
  %127 = add nuw nsw i64 %78, 64
  %128 = getelementptr inbounds i8, ptr %11, i64 %127
  br label %76, !llvm.loop !236

129:                                              ; preds = %100
  %130 = icmp ult i64 %78, 192
  br i1 %130, label %126, label %132

131:                                              ; preds = %124
  br i1 %61, label %260, label %132

132:                                              ; preds = %129, %131, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %133 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  br label %134

134:                                              ; preds = %190, %175, %132
  %135 = phi ptr [ %133, %132 ], [ %165, %175 ], [ %180, %190 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  br label %137

137:                                              ; preds = %134, %139, %145, %158, %53
  %138 = phi ptr [ %51, %53 ], [ %141, %158 ], [ %141, %145 ], [ %141, %139 ], [ %136, %134 ]
  br label %18

139:                                              ; preds = %18
  %140 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %145, label %137

145:                                              ; preds = %139
  %146 = lshr i32 %20, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !5
  %151 = lshr i32 %142, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  %156 = icmp ule i8 %150, %155
  %157 = select i1 %156, i1 %14, i1 false
  br i1 %157, label %158, label %137

158:                                              ; preds = %145
  %159 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %141) #23
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %10, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !21
  %163 = icmp eq ptr %162, null
  br i1 %163, label %137, label %297

164:                                              ; preds = %18
  %165 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %175
  %167 = phi ptr [ %11, %164 ], [ %177, %175 ]
  %168 = phi i64 [ 0, %164 ], [ %176, %175 ]
  %169 = getelementptr inbounds %struct.elim_table, ptr %167, i64 0, i32 8
  %170 = load ptr, ptr %169, align 8, !tbaa !134
  %171 = load ptr, ptr %165, align 8, !tbaa !5
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.elim_table, ptr %167, i64 0, i32 3
  store i32 0, ptr %174, align 8, !tbaa !63
  br label %175

175:                                              ; preds = %166, %173
  %176 = add nuw nsw i64 %168, 64
  %177 = getelementptr inbounds i8, ptr %11, i64 %176
  %178 = icmp ult i64 %168, 192
  br i1 %178, label %166, label %134, !llvm.loop !237

179:                                              ; preds = %18
  %180 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  br label %181

181:                                              ; preds = %179, %190
  %182 = phi ptr [ %11, %179 ], [ %192, %190 ]
  %183 = phi i64 [ 0, %179 ], [ %191, %190 ]
  %184 = getelementptr inbounds %struct.elim_table, ptr %182, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !135
  %186 = load ptr, ptr %180, align 8, !tbaa !5
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.elim_table, ptr %182, i64 0, i32 3
  store i32 0, ptr %189, align 8, !tbaa !63
  br label %190

190:                                              ; preds = %181, %188
  %191 = add nuw nsw i64 %183, 64
  %192 = getelementptr inbounds i8, ptr %11, i64 %191
  %193 = icmp ult i64 %183, 192
  br i1 %193, label %181, label %134, !llvm.loop !238

194:                                              ; preds = %18
  %195 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 37
  br i1 %199, label %200, label %241

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %202

202:                                              ; preds = %200, %235
  %203 = phi ptr [ %11, %200 ], [ %237, %235 ]
  %204 = phi i64 [ 0, %200 ], [ %236, %235 ]
  %205 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !135
  %207 = load ptr, ptr %195, align 8, !tbaa !5
  %208 = icmp ne ptr %206, %207
  %209 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %210 = icmp eq ptr %207, %209
  %211 = select i1 %208, i1 true, i1 %210
  br i1 %211, label %235, label %212

212:                                              ; preds = %202
  %213 = load ptr, ptr %201, align 8, !tbaa !5
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 49
  br i1 %216, label %217, label %233

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !5
  %220 = icmp eq ptr %219, %206
  br i1 %220, label %221, label %233

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !5
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 30
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !5
  %230 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 5
  %231 = load i64, ptr %230, align 8, !tbaa !155
  %232 = sub nsw i64 %231, %229
  store i64 %232, ptr %230, align 8, !tbaa !155
  br label %235

233:                                              ; preds = %221, %217, %212
  %234 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 3
  store i32 0, ptr %234, align 8, !tbaa !63
  br label %235

235:                                              ; preds = %227, %233, %202
  %236 = add nuw nsw i64 %204, 64
  %237 = getelementptr inbounds i8, ptr %11, i64 %236
  %238 = icmp ult i64 %204, 192
  br i1 %238, label %202, label %239, !llvm.loop !239

239:                                              ; preds = %235
  %240 = load ptr, ptr %195, align 8, !tbaa !5
  br label %241

241:                                              ; preds = %239, %194
  %242 = phi ptr [ %240, %239 ], [ %196, %194 ]
  tail call fastcc void @elimination_effects(ptr noundef %242, i32 noundef 0) #23
  %243 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %244 = load ptr, ptr @reg_eliminate, align 8
  %245 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %246 = load ptr, ptr @reg_renumber, align 8
  %247 = load ptr, ptr @reg_equiv_constant, align 8
  br label %248

248:                                              ; preds = %241, %256
  %249 = phi ptr [ %8, %256 ], [ %247, %241 ]
  %250 = phi ptr [ %9, %256 ], [ %246, %241 ]
  %251 = phi ptr [ %10, %256 ], [ %245, %241 ]
  %252 = phi ptr [ %11, %256 ], [ %244, %241 ]
  %253 = phi ptr [ %257, %256 ], [ %243, %241 ]
  %254 = phi i32 [ %259, %256 ], [ 0, %241 ]
  %255 = load ptr, ptr %253, align 8, !tbaa !5
  br label %7

256:                                              ; preds = %18
  %257 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %258 = lshr i32 %20, 16
  %259 = and i32 %258, 255
  br label %248

260:                                              ; preds = %18, %131
  %261 = and i32 %20, 65535
  %262 = zext nneg i32 %261 to i64
  %263 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !5
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %297, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %262
  %268 = load ptr, ptr %267, align 8, !tbaa !21
  %269 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %270 = zext i8 %264 to i64
  br label %271

271:                                              ; preds = %266, %293
  %272 = phi i64 [ 0, %266 ], [ %294, %293 ]
  %273 = phi ptr [ %268, %266 ], [ %295, %293 ]
  %274 = load i8, ptr %273, align 1, !tbaa !5
  switch i8 %274, label %293 [
    i8 101, label %280
    i8 69, label %275
  ]

275:                                              ; preds = %271
  %276 = getelementptr inbounds [1 x %union.rtunion_def], ptr %269, i64 0, i64 %272
  %277 = load ptr, ptr %276, align 8, !tbaa !5
  %278 = load i32, ptr %277, align 8, !tbaa !123
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %283, label %293

280:                                              ; preds = %271
  %281 = getelementptr inbounds [1 x %union.rtunion_def], ptr %269, i64 0, i64 %272
  %282 = load ptr, ptr %281, align 8, !tbaa !5
  tail call fastcc void @elimination_effects(ptr noundef %282, i32 noundef %13) #23
  br label %293

283:                                              ; preds = %275, %283
  %284 = phi i64 [ %288, %283 ], [ 0, %275 ]
  %285 = phi ptr [ %289, %283 ], [ %277, %275 ]
  %286 = getelementptr inbounds %struct.rtvec_def, ptr %285, i64 0, i32 1, i64 %284
  %287 = load ptr, ptr %286, align 8, !tbaa !21
  tail call fastcc void @elimination_effects(ptr noundef %287, i32 noundef %13) #23
  %288 = add nuw nsw i64 %284, 1
  %289 = load ptr, ptr %276, align 8, !tbaa !5
  %290 = load i32, ptr %289, align 8, !tbaa !123
  %291 = sext i32 %290 to i64
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %283, label %293, !llvm.loop !240

293:                                              ; preds = %283, %275, %271, %280
  %294 = add nuw nsw i64 %272, 1
  %295 = getelementptr inbounds i8, ptr %273, i64 1
  %296 = icmp eq i64 %294, %270
  br i1 %296, label %297, label %271, !llvm.loop !241

297:                                              ; preds = %158, %53, %49, %43, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %39, %293, %260, %35, %37
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @check_eliminable_occurrences(ptr noundef readonly %0) unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #23
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_eliminate, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ %11, %10 ], [ %22, %20 ]
  %14 = phi i64 [ 0, %10 ], [ %21, %20 ]
  %15 = getelementptr inbounds %struct.elim_table, ptr %13, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.elim_table, ptr %13, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !63
  br label %20

20:                                               ; preds = %12, %18
  %21 = add nuw nsw i64 %14, 64
  %22 = getelementptr inbounds i8, ptr %11, i64 %21
  %23 = icmp ult i64 %14, 192
  br i1 %23, label %12, label %60, !llvm.loop !242

24:                                               ; preds = %7, %3
  %25 = zext nneg i32 %5 to i64
  %26 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = zext i8 %27 to i64
  br label %34

34:                                               ; preds = %29, %56
  %35 = phi i64 [ 0, %29 ], [ %57, %56 ]
  %36 = phi ptr [ %31, %29 ], [ %58, %56 ]
  %37 = load i8, ptr %36, align 1, !tbaa !5
  switch i8 %37, label %56 [
    i8 101, label %43
    i8 69, label %38
  ]

38:                                               ; preds = %34
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = load i32, ptr %40, align 8, !tbaa !123
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %46, label %56

43:                                               ; preds = %34
  %44 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %35
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %45) #23
  br label %56

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %38 ]
  %48 = phi ptr [ %52, %46 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %50) #23
  %51 = add nuw nsw i64 %47, 1
  %52 = load ptr, ptr %39, align 8, !tbaa !5
  %53 = load i32, ptr %52, align 8, !tbaa !123
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %46, label %56, !llvm.loop !243

56:                                               ; preds = %46, %38, %34, %43
  %57 = add nuw nsw i64 %35, 1
  %58 = getelementptr inbounds i8, ptr %36, i64 1
  %59 = icmp eq i64 %57, %33
  br i1 %59, label %60, label %34, !llvm.loop !244

60:                                               ; preds = %56, %20, %24, %1
  ret void
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reload_regs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = icmp sgt i32 %3, 0
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  br i1 %4, label %7, label %33

7:                                                ; preds = %1
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi i64 [ 0, %7 ], [ %31, %28 ]
  %11 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %16 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 10
  store i32 %15, ptr %16, align 8, !tbaa !245
  %17 = sext i32 %15 to i64
  %18 = load i32, ptr %12, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %17, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !246
  br label %28

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 10
  store i32 -1, ptr %27, align 8, !tbaa !245
  br label %28

28:                                               ; preds = %26, %14
  %29 = trunc i64 %10 to i16
  %30 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %10
  store i16 %29, ptr %30, align 2, !tbaa !28
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %33, label %9, !llvm.loop !247

33:                                               ; preds = %28, %1
  store i32 %3, ptr @n_reloads, align 4, !tbaa !27
  %34 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  %35 = sext i32 %3 to i64
  %36 = mul nsw i64 %35, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @rld, ptr align 8 %6, i64 %36, i1 false)
  store i64 0, ptr @used_spill_regs_local, align 8, !tbaa !38
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !5
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.8, i32 noundef %43) #23
  %45 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %39, %33
  %48 = phi i64 [ %46, %39 ], [ %35, %33 ]
  tail call void @spec_qsort(ptr noundef nonnull @reload_order, i64 noundef %48, i64 noundef 2, ptr noundef nonnull @reload_reg_class_lower) #22
  tail call fastcc void @order_regs_for_reload(ptr noundef nonnull %0) #23
  %49 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = sext i32 %49 to i64
  br label %102

53:                                               ; preds = %47, %97
  %54 = phi i32 [ %98, %97 ], [ %49, %47 ]
  %55 = phi i64 [ %99, %97 ], [ 0, %47 ]
  %56 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !28
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !248
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !249
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 18
  %68 = load i8, ptr %67, align 8
  %69 = and i8 %68, 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %66, %62, %53
  %72 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 18
  %73 = load i8, ptr %72, align 8
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa !245
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = trunc i64 %55 to i32
  %82 = tail call fastcc i32 @find_reg(ptr noundef %0, i32 noundef %81) #23, !range !55
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %97

86:                                               ; preds = %80
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = sext i16 %57 to i32
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.9, i32 noundef %90) #23
  br label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !139
  %95 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !250
  tail call fastcc void @spill_failure(ptr noundef %94, i32 noundef %96) #23
  store i1 true, ptr @failure, align 4
  br label %110

97:                                               ; preds = %84, %76, %71, %66
  %98 = phi i32 [ %85, %84 ], [ %54, %76 ], [ %54, %71 ], [ %54, %66 ]
  %99 = add nuw nsw i64 %55, 1
  %100 = sext i32 %98 to i64
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %53, label %102, !llvm.loop !251

102:                                              ; preds = %97, %51
  %103 = phi i64 [ %52, %51 ], [ %100, %97 ]
  %104 = load i64, ptr @used_spill_regs_local, align 8, !tbaa !38
  %105 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 10
  store i64 %104, ptr %105, align 8, !tbaa !147
  %106 = load i64, ptr @used_spill_regs, align 8, !tbaa !38
  %107 = or i64 %106, %104
  store i64 %107, ptr @used_spill_regs, align 8, !tbaa !38
  %108 = load ptr, ptr %34, align 8, !tbaa !232
  %109 = mul nsw i64 %103, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %108, ptr nonnull align 16 @rld, i64 %109, i1 false)
  br label %110

110:                                              ; preds = %92, %102
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @reload_reg_class_lower(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i16, ptr %0, align 2, !tbaa !28
  %4 = sext i16 %3 to i32
  %5 = load i16, ptr %1, align 2, !tbaa !28
  %6 = sext i16 %5 to i32
  %7 = sext i16 %3 to i64
  %8 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 18
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = zext nneg i8 %10 to i32
  %12 = sext i16 %5 to i64
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %12, i32 18
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = zext nneg i8 %15 to i32
  %17 = sub nsw i32 %11, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %12, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !250
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !27
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !250
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !27
  %32 = icmp eq i32 %31, 1
  %33 = sext i1 %32 to i32
  %34 = add nsw i32 %33, %26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %19
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %12, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !246
  %39 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !246
  %41 = sub i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = sub nsw i32 %28, %21
  %45 = icmp eq i32 %28, %21
  %46 = sub nsw i32 %4, %6
  %47 = select i1 %45, i32 %46, i32 %44
  br label %48

48:                                               ; preds = %43, %36, %19, %2
  %49 = phi i32 [ %17, %2 ], [ %34, %19 ], [ %41, %36 ], [ %47, %43 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @order_regs_for_reload(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = load i64, ptr @fixed_reg_set, align 8, !tbaa !38
  store i64 %6, ptr @bad_spill_regs, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_cost, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_add_cost, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @hard_regno_to_pseudo_regno, i8 -1, i64 212, i1 false), !tbaa !27
  store i32 53, ptr %2, align 4, !tbaa !27
  store i64 0, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %7) #22
  store i64 0, ptr %4, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %8) #22
  %9 = load i64, ptr %3, align 8, !tbaa !38
  %10 = load i64, ptr @bad_spill_regs, align 8, !tbaa !38
  %11 = or i64 %10, %9
  %12 = load i64, ptr %4, align 8, !tbaa !38
  %13 = or i64 %12, %11
  store i64 %13, ptr @bad_spill_regs, align 8, !tbaa !38
  call void @bitmap_clear(ptr noundef nonnull @pseudos_counted) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 53, ptr noundef nonnull %2) #23
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1, %16
  %17 = load i32, ptr %2, align 4, !tbaa !27
  call fastcc void @count_pseudo(i32 noundef %17) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #23
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %16, !llvm.loop !252

20:                                               ; preds = %16, %1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 53, ptr noundef nonnull %2) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20, %23
  %24 = load i32, ptr %2, align 4, !tbaa !27
  call fastcc void @count_pseudo(i32 noundef %24) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #23
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %23, !llvm.loop !253

27:                                               ; preds = %23, %20
  call void @bitmap_clear(ptr noundef nonnull @pseudos_counted) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_reg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !28
  %8 = sext i16 %7 to i32
  %9 = sext i16 %7 to i64
  %10 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %11 = load i64, ptr @bad_spill_regs, align 8, !tbaa !38
  %12 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !38
  %13 = or i64 %12, %11
  %14 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !250
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !38
  %19 = xor i64 %18, -1
  %20 = or i64 %13, %19
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = zext nneg i32 %1 to i64
  br label %30

24:                                               ; preds = %76, %2
  %25 = phi i32 [ undef, %2 ], [ %77, %76 ]
  %26 = phi i64 [ 0, %2 ], [ %78, %76 ]
  %27 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 5
  %28 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 1
  %29 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  br label %81

30:                                               ; preds = %22, %76
  %31 = phi i64 [ 0, %22 ], [ %79, %76 ]
  %32 = phi i64 [ 0, %22 ], [ %78, %76 ]
  %33 = phi i32 [ undef, %22 ], [ %77, %76 ]
  %34 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %31
  %35 = load i16, ptr %34, align 2, !tbaa !28
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %36, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !245
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %76

40:                                               ; preds = %30
  %41 = sext i16 %35 to i32
  %42 = tail call fastcc i32 @reloads_conflict(i32 noundef %41, i32 noundef %8) #23, !range !55
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %36, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !246
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = zext i32 %46 to i64
  %50 = load i32, ptr %37, align 8, !tbaa !245
  %51 = add nuw nsw i64 %49, 1
  %52 = and i64 %51, 8589934590
  %53 = add nsw i64 %49, -1
  %54 = insertelement <2 x i64> poison, i64 %53, i64 0
  %55 = shufflevector <2 x i64> %54, <2 x i64> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %32, i64 0
  %57 = insertelement <2 x i32> poison, i32 %50, i64 0
  %58 = shufflevector <2 x i32> %57, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %59

59:                                               ; preds = %59, %48
  %60 = phi i64 [ 0, %48 ], [ %68, %59 ]
  %61 = phi <2 x i64> [ <i64 0, i64 1>, %48 ], [ %69, %59 ]
  %62 = phi <2 x i64> [ %56, %48 ], [ %67, %59 ]
  %63 = phi <2 x i32> [ <i32 0, i32 1>, %48 ], [ %70, %59 ]
  %64 = add <2 x i32> %58, %63
  %65 = zext nneg <2 x i32> %64 to <2 x i64>
  %66 = shl nuw <2 x i64> <i64 1, i64 1>, %65
  %67 = or <2 x i64> %66, %62
  %68 = add i64 %60, 2
  %69 = add <2 x i64> %61, <i64 2, i64 2>
  %70 = add <2 x i32> %63, <i32 2, i32 2>
  %71 = icmp eq i64 %68, %52
  br i1 %71, label %72, label %59, !llvm.loop !254

72:                                               ; preds = %59
  %73 = icmp ugt <2 x i64> %61, %55
  %74 = select <2 x i1> %73, <2 x i64> %62, <2 x i64> %67
  %75 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %74)
  br label %76

76:                                               ; preds = %72, %44, %40, %30
  %77 = phi i32 [ %33, %40 ], [ %33, %30 ], [ 0, %44 ], [ %46, %72 ]
  %78 = phi i64 [ %32, %40 ], [ %32, %30 ], [ %32, %44 ], [ %75, %72 ]
  %79 = add nuw nsw i64 %31, 1
  %80 = icmp eq i64 %79, %23
  br i1 %80, label %24, label %30, !llvm.loop !255

81:                                               ; preds = %24, %223
  %82 = phi i64 [ 0, %24 ], [ %227, %223 ]
  %83 = phi i32 [ 2147483647, %24 ], [ %226, %223 ]
  %84 = phi i32 [ -1, %24 ], [ %225, %223 ]
  %85 = phi i32 [ %25, %24 ], [ %224, %223 ]
  %86 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %82
  %87 = load i32, ptr %86, align 4, !tbaa !27
  %88 = zext i32 %87 to i64
  %89 = shl nuw i64 1, %88
  %90 = and i64 %89, %20
  %91 = icmp eq i64 %90, 0
  %92 = and i64 %89, %26
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %223

95:                                               ; preds = %81
  %96 = load i32, ptr %27, align 4, !tbaa !199
  %97 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %87, i32 noundef %96) #22
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %223, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %88
  %101 = load i32, ptr %100, align 4, !tbaa !27
  %102 = load i32, ptr %27, align 4, !tbaa !199
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %88, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i32
  %107 = icmp ugt i8 %105, 1
  br i1 %107, label %108, label %131

108:                                              ; preds = %99
  %109 = zext i8 %105 to i64
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ 1, %108 ], [ %127, %110 ]
  %112 = phi i32 [ 1, %108 ], [ %126, %110 ]
  %113 = phi i32 [ %101, %108 ], [ %119, %110 ]
  %114 = trunc i64 %111 to i32
  %115 = add i32 %87, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !27
  %119 = add nsw i32 %118, %113
  %120 = shl nuw i64 1, %116
  %121 = and i64 %120, %20
  %122 = icmp eq i64 %121, 0
  %123 = and i64 %120, %26
  %124 = icmp eq i64 %123, 0
  %125 = select i1 %122, i1 %124, i1 false
  %126 = select i1 %125, i32 %112, i32 0
  %127 = add nuw nsw i64 %111, 1
  %128 = icmp eq i64 %127, %109
  br i1 %128, label %129, label %110, !llvm.loop !256

129:                                              ; preds = %110
  %130 = icmp eq i32 %126, 0
  br i1 %130, label %223, label %131

131:                                              ; preds = %99, %129
  %132 = phi i32 [ %119, %129 ], [ %101, %99 ]
  %133 = phi i32 [ %106, %129 ], [ 1, %99 ]
  %134 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %185, label %136

136:                                              ; preds = %131
  %137 = icmp eq i8 %105, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %136
  %139 = zext i8 %105 to i64
  br label %140

140:                                              ; preds = %138, %161
  %141 = phi i64 [ 0, %138 ], [ %163, %161 ]
  %142 = phi i32 [ 0, %138 ], [ %162, %161 ]
  %143 = trunc i64 %141 to i32
  %144 = add i32 %87, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !27
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %140
  %150 = icmp eq i32 %142, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %149
  %152 = add i32 %142, -1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !27
  %156 = icmp eq i32 %155, %147
  br i1 %156, label %161, label %157

157:                                              ; preds = %151, %149
  %158 = add i32 %142, 1
  %159 = zext i32 %142 to i64
  %160 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %159
  store i32 %147, ptr %160, align 4, !tbaa !27
  br label %161

161:                                              ; preds = %151, %157, %140
  %162 = phi i32 [ %142, %140 ], [ %158, %157 ], [ %142, %151 ]
  %163 = add nuw nsw i64 %141, 1
  %164 = icmp eq i64 %163, %139
  br i1 %164, label %165, label %140, !llvm.loop !257

165:                                              ; preds = %161, %136
  %166 = phi i32 [ 0, %136 ], [ %162, %161 ]
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %167
  store i32 -1, ptr %168, align 4, !tbaa !27
  %169 = icmp slt i32 %84, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %10, align 8, !tbaa !249
  %172 = load ptr, ptr %28, align 8, !tbaa !248
  %173 = load ptr, ptr %29, align 8, !tbaa !139
  %174 = tail call zeroext i8 @ira_better_spill_reload_regno_p(ptr noundef nonnull @find_reg.regno_pseudo_regs, ptr noundef nonnull @find_reg.best_regno_pseudo_regs, ptr noundef %171, ptr noundef %172, ptr noundef %173) #22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %223, label %176

176:                                              ; preds = %170, %165
  br label %177

177:                                              ; preds = %176, %177
  %178 = phi i32 [ %184, %177 ], [ 0, %176 ]
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !27
  %182 = getelementptr inbounds [53 x i32], ptr @find_reg.best_regno_pseudo_regs, i64 0, i64 %179
  store i32 %181, ptr %182, align 4, !tbaa !27
  %183 = icmp slt i32 %181, 0
  %184 = add i32 %178, 1
  br i1 %183, label %223, label %177

185:                                              ; preds = %131
  %186 = load ptr, ptr %10, align 8, !tbaa !249
  %187 = icmp eq ptr %186, null
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  %189 = load i32, ptr %186, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 37
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #23
  %194 = icmp eq i32 %193, %87
  %195 = sext i1 %194 to i32
  %196 = add nsw i32 %132, %195
  br label %197

197:                                              ; preds = %192, %188, %185
  %198 = phi i32 [ %132, %188 ], [ %132, %185 ], [ %196, %192 ]
  %199 = load ptr, ptr %28, align 8, !tbaa !248
  %200 = icmp eq ptr %199, null
  br i1 %200, label %210, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %199, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 37
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %199) #23
  %207 = icmp eq i32 %206, %87
  %208 = sext i1 %207 to i32
  %209 = add nsw i32 %198, %208
  br label %210

210:                                              ; preds = %205, %201, %197
  %211 = phi i32 [ %198, %201 ], [ %198, %197 ], [ %209, %205 ]
  %212 = icmp slt i32 %211, %83
  br i1 %212, label %222, label %213

213:                                              ; preds = %210
  %214 = icmp eq i32 %211, %83
  br i1 %214, label %215, label %223

215:                                              ; preds = %213
  %216 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %88
  %217 = load i32, ptr %216, align 4, !tbaa !27
  %218 = sext i32 %84 to i64
  %219 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !27
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %215, %210
  br label %223

223:                                              ; preds = %177, %129, %170, %222, %215, %213, %81, %95
  %224 = phi i32 [ %85, %81 ], [ %85, %95 ], [ %106, %129 ], [ %106, %170 ], [ %133, %222 ], [ %133, %215 ], [ %133, %213 ], [ %178, %177 ]
  %225 = phi i32 [ %84, %81 ], [ %84, %95 ], [ %84, %129 ], [ %84, %170 ], [ %87, %222 ], [ %84, %215 ], [ %84, %213 ], [ %87, %177 ]
  %226 = phi i32 [ %83, %81 ], [ %83, %95 ], [ %83, %129 ], [ %83, %170 ], [ %211, %222 ], [ %83, %215 ], [ %83, %213 ], [ %83, %177 ]
  %227 = add nuw nsw i64 %82, 1
  %228 = icmp eq i64 %227, 53
  br i1 %228, label %229, label %81, !llvm.loop !258

229:                                              ; preds = %223
  store i32 %224, ptr %3, align 4, !tbaa !27
  %230 = icmp eq i32 %225, -1
  br i1 %230, label %292, label %231

231:                                              ; preds = %229
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %232, ptr noundef nonnull @.str.10, i32 noundef %225, i32 noundef %8) #23
  br label %236

236:                                              ; preds = %234, %231
  %237 = sext i32 %225 to i64
  %238 = load i32, ptr %27, align 4, !tbaa !199
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %237, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !5
  %242 = zext i8 %241 to i32
  %243 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 6
  store i32 %242, ptr %243, align 8, !tbaa !246
  %244 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 10
  store i32 %225, ptr %244, align 8, !tbaa !245
  %245 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %245, i32 noundef 53, ptr noundef nonnull %3) #23
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !26
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %236, %248
  %249 = load i32, ptr %243, align 8, !tbaa !246
  %250 = load i32, ptr %3, align 4, !tbaa !27
  tail call fastcc void @count_spilled_pseudo(i32 noundef %225, i32 noundef %249, i32 noundef %250) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !26
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %248, !llvm.loop !259

253:                                              ; preds = %248, %236
  %254 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %254, i32 noundef 53, ptr noundef nonnull %3) #23
  %255 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !26
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %260, %253
  %258 = load i32, ptr %243, align 8, !tbaa !246
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %292, label %265

260:                                              ; preds = %253, %260
  %261 = load i32, ptr %243, align 8, !tbaa !246
  %262 = load i32, ptr %3, align 4, !tbaa !27
  tail call fastcc void @count_spilled_pseudo(i32 noundef %225, i32 noundef %261, i32 noundef %262) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %263 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !26
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %257, label %260, !llvm.loop !260

265:                                              ; preds = %257, %284
  %266 = phi i64 [ %288, %284 ], [ 0, %257 ]
  %267 = trunc i64 %266 to i32
  %268 = add i32 %225, %267
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !27
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2020, ptr noundef nonnull @.str.2) #22
  br label %274

274:                                              ; preds = %265, %273
  %275 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %269
  %276 = load i32, ptr %275, align 4, !tbaa !27
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2021, ptr noundef nonnull @.str.2) #22
  br label %279

279:                                              ; preds = %274, %278
  %280 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %269
  %281 = load i32, ptr %280, align 4, !tbaa !27
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2022, ptr noundef nonnull @.str.2) #22
  br label %284

284:                                              ; preds = %279, %283
  %285 = shl nuw i64 1, %269
  %286 = load i64, ptr @used_spill_regs_local, align 8, !tbaa !38
  %287 = or i64 %286, %285
  store i64 %287, ptr @used_spill_regs_local, align 8, !tbaa !38
  %288 = add nuw nsw i64 %266, 1
  %289 = load i32, ptr %243, align 8, !tbaa !246
  %290 = zext i32 %289 to i64
  %291 = icmp ult i64 %288, %290
  br i1 %291, label %265, label %292, !llvm.loop !261

292:                                              ; preds = %284, %257, %229
  %293 = phi i32 [ 0, %229 ], [ 1, %257 ], [ 1, %284 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %293
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spill_failure(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i32 @asm_noperands(ptr noundef %5) #22
  %7 = icmp sgt i32 %6, -1
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  br i1 %7, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %10) #22
  br label %20

12:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef %10) #22
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 8, !tbaa !5
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.13, i32 noundef %16) #23
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !21
  tail call void @debug_reload_to_stream(ptr noundef %18) #22
  br label %19

19:                                               ; preds = %15, %12
  tail call void @_fatal_insn(ptr noundef nonnull @.str.14, ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 2162, ptr noundef nonnull @.str.2) #22
  br label %20

20:                                               ; preds = %19, %11
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_pseudo(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.reg_info_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !262
  %6 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %7 = getelementptr inbounds i16, ptr %6, i64 %3
  %8 = load i16, ptr %7, align 2, !tbaa !28
  %9 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @pseudos_counted, i32 noundef %0) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @spilled_pseudos, i32 noundef %0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %16 = icmp ne i8 %15, 0
  %17 = icmp slt i16 %8, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @pseudos_counted, i32 noundef %0) #22
  %21 = icmp sgt i16 %8, -1
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1796, ptr noundef nonnull @.str.2) #22
  br label %23

23:                                               ; preds = %19, %22
  %24 = sext i16 %8 to i64
  %25 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !27
  %27 = add nsw i32 %26, %5
  store i32 %27, ptr %25, align 4, !tbaa !27
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %29 = getelementptr inbounds ptr, ptr %28, i64 %3
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %24, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %23
  %39 = zext i8 %36 to i64
  %40 = sext i16 %8 to i64
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ %39, %38 ], [ %43, %41 ]
  %43 = add nsw i64 %42, -1
  %44 = add nsw i64 %43, %40
  %45 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %44
  store i32 %0, ptr %45, align 4, !tbaa !27
  %46 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !27
  %48 = add nsw i32 %47, %5
  store i32 %48, ptr %46, align 4, !tbaa !27
  %49 = icmp ugt i64 %42, 1
  br i1 %49, label %41, label %50, !llvm.loop !264

50:                                               ; preds = %41, %23, %1, %11, %14
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reloads_conflict(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 17
  %6 = load i32, ptr %5, align 4, !tbaa !198
  %7 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !197
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !197
  %11 = icmp eq i32 %6, 9
  br i1 %11, label %88, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !198
  switch i32 %14, label %82 [
    i32 0, label %15
    i32 3, label %22
    i32 4, label %30
    i32 5, label %38
    i32 6, label %46
    i32 7, label %54
    i32 8, label %65
    i32 1, label %68
    i32 2, label %76
    i32 10, label %80
    i32 9, label %88
  ]

15:                                               ; preds = %12
  %16 = icmp ult i32 %6, 9
  br i1 %16, label %83, label %17

17:                                               ; preds = %83, %15
  %18 = add i32 %6, -3
  %19 = icmp ult i32 %18, 2
  %20 = icmp sgt i32 %10, %8
  %21 = select i1 %19, i1 %20, i1 false
  br label %88

22:                                               ; preds = %12
  %23 = icmp eq i32 %6, 3
  %24 = icmp eq i32 %8, %10
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp eq i32 %6, 0
  %27 = icmp slt i32 %10, %8
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %25, i1 true, i1 %28
  br label %88

30:                                               ; preds = %12
  %31 = icmp eq i32 %6, 4
  %32 = icmp eq i32 %8, %10
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp eq i32 %6, 0
  %35 = icmp slt i32 %10, %8
  %36 = select i1 %34, i1 %35, i1 false
  %37 = select i1 %33, i1 true, i1 %36
  br label %88

38:                                               ; preds = %12
  %39 = icmp eq i32 %6, 5
  %40 = icmp eq i32 %10, %8
  %41 = select i1 %39, i1 %40, i1 false
  %42 = icmp eq i32 %6, 1
  %43 = icmp sle i32 %10, %8
  %44 = select i1 %42, i1 %43, i1 false
  %45 = select i1 %41, i1 true, i1 %44
  br label %88

46:                                               ; preds = %12
  %47 = icmp eq i32 %6, 6
  %48 = icmp eq i32 %10, %8
  %49 = select i1 %47, i1 %48, i1 false
  %50 = icmp eq i32 %6, 1
  %51 = icmp sle i32 %10, %8
  %52 = select i1 %50, i1 %51, i1 false
  %53 = select i1 %49, i1 true, i1 %52
  br label %88

54:                                               ; preds = %12
  %55 = and i32 %6, -3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = icmp eq i32 %6, 7
  br i1 %58, label %59, label %88

59:                                               ; preds = %57
  %60 = tail call fastcc zeroext i8 @reloads_unique_chain_p(i32 noundef %0, i32 noundef %1) #23, !range !26
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @gen_reload_chain_without_interm_reg_p(i32 noundef %0, i32 noundef %1) #23
  %64 = icmp eq i8 %63, 0
  br label %88

65:                                               ; preds = %12
  %66 = and i32 %6, -9
  %67 = icmp eq i32 %66, 0
  br label %88

68:                                               ; preds = %12
  %69 = add i32 %6, -1
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = add i32 %6, -5
  %73 = icmp ult i32 %72, 2
  %74 = icmp sge i32 %10, %8
  %75 = select i1 %73, i1 %74, i1 false
  br label %88

76:                                               ; preds = %12
  %77 = icmp ult i32 %6, 3
  %78 = icmp eq i32 %6, 7
  %79 = or i1 %77, %78
  br label %88

80:                                               ; preds = %12
  %81 = icmp eq i32 %6, 10
  br label %88

82:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5378, ptr noundef nonnull @.str.2) #22
  br label %88

83:                                               ; preds = %15
  %84 = trunc i32 %6 to i16
  %85 = lshr i16 389, %84
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %17, label %88

88:                                               ; preds = %83, %71, %17, %12, %68, %54, %59, %62, %57, %2, %82, %80, %76, %65, %46, %38, %30, %22
  %89 = phi i1 [ false, %82 ], [ %81, %80 ], [ %79, %76 ], [ %67, %65 ], [ %53, %46 ], [ %45, %38 ], [ %37, %30 ], [ %29, %22 ], [ true, %2 ], [ true, %54 ], [ false, %57 ], [ true, %59 ], [ %64, %62 ], [ true, %68 ], [ true, %12 ], [ %21, %17 ], [ %75, %71 ], [ true, %83 ]
  %90 = zext i1 %89 to i32
  ret i32 %90
}

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ira_better_spill_reload_regno_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_spilled_pseudo(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.reg_info_t, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !262
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %9 = getelementptr inbounds i16, ptr %8, i64 %5
  %10 = load i16, ptr %9, align 2, !tbaa !28
  %11 = sext i16 %10 to i64
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %13 = getelementptr inbounds ptr, ptr %12, i64 %5
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %23 = icmp ne i8 %22, 0
  %24 = icmp slt i16 %10, 0
  %25 = and i1 %24, %23
  br i1 %25, label %62, label %26

26:                                               ; preds = %3
  %27 = sext i16 %10 to i32
  %28 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @spilled_pseudos, i32 noundef %2) #22
  %29 = icmp eq i32 %28, 0
  %30 = add nsw i32 %1, %0
  %31 = icmp sgt i32 %30, %27
  %32 = select i1 %29, i1 %31, i1 false
  %33 = add nsw i32 %21, %27
  %34 = icmp sgt i32 %33, %0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %62

36:                                               ; preds = %26
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %2) #22
  %38 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %11
  %39 = load i32, ptr %38, align 4, !tbaa !27
  %40 = sub nsw i32 %39, %7
  store i32 %40, ptr %38, align 4, !tbaa !27
  %41 = icmp eq i8 %20, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %36
  %43 = sext i32 %33 to i64
  %44 = shl nsw i64 %43, 2
  %45 = add nsw i64 %44, -4
  %46 = add nsw i32 %21, -1
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 2
  %49 = sub nsw i64 %45, %48
  %50 = getelementptr i8, ptr @hard_regno_to_pseudo_regno, i64 %49
  %51 = zext i8 %20 to i64
  %52 = shl nuw nsw i64 %51, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %50, i8 -1, i64 %52, i1 false), !tbaa !27
  %53 = sext i16 %10 to i64
  br label %54

54:                                               ; preds = %42, %54
  %55 = phi i64 [ %51, %42 ], [ %56, %54 ]
  %56 = add nsw i64 %55, -1
  %57 = add nsw i64 %56, %53
  %58 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !27
  %60 = sub nsw i32 %59, %7
  store i32 %60, ptr %58, align 4, !tbaa !27
  %61 = icmp ugt i64 %55, 1
  br i1 %61, label %54, label %62, !llvm.loop !265

62:                                               ; preds = %54, %36, %26, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reloads_unique_chain_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !249
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = icmp eq ptr %10, null
  br i1 %11, label %76, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !248
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %76

16:                                               ; preds = %12
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !248
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !197
  %23 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !197
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %20
  %27 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %10) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 18
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %29
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 18
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !249
  %41 = load ptr, ptr %9, align 8, !tbaa !249
  %42 = tail call i32 @reg_mentioned_p(ptr noundef %40, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8, !tbaa !249
  %46 = load ptr, ptr %4, align 8, !tbaa !249
  %47 = tail call i32 @reg_mentioned_p(ptr noundef %45, ptr noundef %46) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %44, %39
  %50 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = zext i32 %1 to i64
  %54 = zext i32 %0 to i64
  br label %55

55:                                               ; preds = %52, %71
  %56 = phi i32 [ %50, %52 ], [ %72, %71 ]
  %57 = phi i64 [ 0, %52 ], [ %73, %71 ]
  %58 = icmp eq i64 %57, %54
  %59 = icmp eq i64 %57, %53
  %60 = or i1 %58, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %57
  %63 = load ptr, ptr %62, align 8, !tbaa !249
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8, !tbaa !249
  %67 = tail call i32 @reg_mentioned_p(ptr noundef %66, ptr noundef nonnull %63) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %71

71:                                               ; preds = %69, %55, %61
  %72 = phi i32 [ %70, %69 ], [ %56, %55 ], [ %56, %61 ]
  %73 = add nuw nsw i64 %57, 1
  %74 = sext i32 %72 to i64
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %55, label %76, !llvm.loop !266

76:                                               ; preds = %65, %71, %49, %20, %26, %29, %34, %44, %12, %16, %2, %7
  %77 = phi i8 [ 0, %7 ], [ 0, %2 ], [ 0, %16 ], [ 0, %12 ], [ 0, %44 ], [ 0, %34 ], [ 0, %29 ], [ 0, %26 ], [ 0, %20 ], [ 1, %49 ], [ 0, %65 ], [ 1, %71 ]
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gen_reload_chain_without_interm_reg_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = tail call ptr @get_last_insn() #22
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !249
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = tail call i32 @reg_mentioned_p(ptr noundef %7, ptr noundef %10) #22
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %1, i32 %0
  %14 = select i1 %12, i32 %0, i32 %1
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !249
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !249
  %21 = tail call i32 @reg_mentioned_p(ptr noundef %17, ptr noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5254, ptr noundef nonnull @.str.2) #22
  br label %24

24:                                               ; preds = %2, %23
  %25 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !245
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !245
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5256, ptr noundef nonnull @.str.2) #22
  br label %33

33:                                               ; preds = %24, %28, %32
  %34 = phi i32 [ %30, %28 ], [ %30, %32 ], [ %26, %24 ]
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !199
  %37 = tail call ptr @gen_rtx_REG(i32 noundef %36, i32 noundef %34) #22
  %38 = load ptr, ptr %19, align 8, !tbaa !249
  store ptr %38, ptr %3, align 8, !tbaa !21
  %39 = load ptr, ptr %16, align 8, !tbaa !249
  %40 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !199
  %42 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %34) #22
  call fastcc void @substitute(ptr noundef nonnull %3, ptr noundef %39, ptr noundef %42) #23
  %43 = load ptr, ptr %3, align 8, !tbaa !21
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 39
  br i1 %46, label %47, label %69

47:                                               ; preds = %33
  %48 = lshr i32 %44, 16
  %49 = and i32 %48, 255
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = icmp ugt i8 %52, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %47
  %63 = call ptr @gen_lowpart_common(i32 noundef %57, ptr noundef %37) #22
  %64 = icmp eq ptr %63, null
  %65 = load ptr, ptr %3, align 8, !tbaa !21
  br i1 %64, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  store ptr %68, ptr %3, align 8, !tbaa !21
  br label %69

69:                                               ; preds = %66, %62, %47, %33
  %70 = phi ptr [ %68, %66 ], [ %65, %62 ], [ %43, %47 ], [ %43, %33 ]
  %71 = phi ptr [ %63, %66 ], [ %37, %62 ], [ %37, %47 ], [ %37, %33 ]
  %72 = load i32, ptr %70, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 49
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = load i32, ptr %77, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %103 [
    i16 37, label %80
    i16 39, label %80
    i16 43, label %80
  ]

80:                                               ; preds = %75, %75, %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = load i32, ptr %82, align 8
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %85 [
    i16 37, label %93
    i16 39, label %93
  ]

85:                                               ; preds = %80
  %86 = and i32 %83, 65535
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !27
  %90 = icmp eq i32 %89, 9
  %91 = icmp eq i32 %86, 43
  %92 = or i1 %91, %90
  br i1 %92, label %93, label %103

93:                                               ; preds = %80, %80, %85
  %94 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %71, ptr noundef nonnull %70) #22
  %95 = call ptr @emit_insn(ptr noundef %94) #22
  %96 = call fastcc i32 @recog_memoized(ptr noundef %95) #23
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  call void @extract_insn(ptr noundef %95) #22
  %99 = call i32 @constrain_operands(i32 noundef 1) #22
  %100 = trunc i32 %99 to i8
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i8 [ %100, %98 ], [ 0, %93 ]
  call void @delete_insns_since(ptr noundef %4) #22
  br label %103

103:                                              ; preds = %85, %75, %101, %69
  %104 = phi i8 [ %102, %101 ], [ 1, %69 ], [ 1, %75 ], [ 1, %85 ]
  %105 = load ptr, ptr @substitute_stack, align 8
  %106 = call fastcc i32 @VEC_rtx_p_base_length(ptr noundef %105) #23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr @substitute_stack, align 8
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %109, %110 ], [ %105, %108 ]
  %112 = call fastcc ptr @VEC_rtx_p_base_pop(ptr noundef %111) #23
  %113 = load ptr, ptr %16, align 8, !tbaa !249
  store ptr %113, ptr %112, align 8, !tbaa !21
  %114 = call fastcc i32 @VEC_rtx_p_base_length(ptr noundef %109) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %110, !llvm.loop !267

116:                                              ; preds = %110, %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %104
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @substitute(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %4, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @rtx_equal_p(ptr noundef nonnull %4, ptr noundef %1) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %6
  tail call fastcc void @VEC_rtx_p_heap_safe_push(ptr noundef nonnull %0) #23
  store ptr %2, ptr %0, align 8, !tbaa !21
  br label %53

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !21
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %12
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %51
  %25 = phi i64 [ %23, %22 ], [ %26, %51 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds i8, ptr %18, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !5
  switch i8 %28, label %51 [
    i8 69, label %29
    i8 101, label %47
  ]

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load i32, ptr %33, align 8, !tbaa !123
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ %37, %36 ], [ %40, %38 ]
  %40 = add nsw i64 %39, -1
  %41 = load ptr, ptr %0, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %26
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %40
  tail call fastcc void @substitute(ptr noundef nonnull %45, ptr noundef %1, ptr noundef %2) #23
  %46 = icmp ugt i64 %39, 1
  br i1 %46, label %38, label %51, !llvm.loop !268

47:                                               ; preds = %24
  %48 = load ptr, ptr %0, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %49, i64 0, i64 %26
  tail call fastcc void @substitute(ptr noundef nonnull %50, ptr noundef %1, ptr noundef %2) #23
  br label %51

51:                                               ; preds = %38, %29, %24, %47
  %52 = icmp sgt i64 %25, 1
  br i1 %52, label %24, label %53, !llvm.loop !269

53:                                               ; preds = %51, %12, %3, %11
  ret void
}

; Function Attrs: optsize
declare ptr @gen_lowpart_common(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_insns_since(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_p_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !270
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_p_base_pop(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !270
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !270
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_p_heap_reserve() #23
  %2 = load ptr, ptr @substitute_stack, align 8, !tbaa !21
  tail call fastcc void @VEC_rtx_p_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_p_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @substitute_stack, align 8, !tbaa !21
  %2 = tail call fastcc i32 @VEC_rtx_p_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #22
  store ptr %5, ptr @substitute_stack, align 8, !tbaa !21
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !270
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !270
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_p_base_space(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !272
  %6 = load i32, ptr %0, align 8, !tbaa !270
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @debug_reload_to_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @prev_real_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !21
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !273
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ira_reuse_stack_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_mark_new_stack_slot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_attrs_for_spill(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @form_sum(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_reg_note(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ix86_initial_elimination_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @for_each_eh_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_initial_eh_label_offset(ptr noundef %0) #0 {
  tail call fastcc void @set_label_offsets(ptr noundef %0, ptr noundef null, i32 noundef 1) #23
  ret void
}

; Function Attrs: optsize
declare void @ira_mark_allocation_change(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ira_reassign_pseudos(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @forget_old_reloads_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %82 [
    i16 39, label %8
    i16 37, label %11
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  br label %4, !llvm.loop !275

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #23
  %13 = icmp ugt i32 %12, 52
  br i1 %13, label %46, label %14

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %82, label %24

24:                                               ; preds = %22
  %25 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %26 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %27 = icmp eq i32 %26, 0
  %28 = load i64, ptr @reg_is_output_reload, align 8
  %29 = zext i8 %20 to i64
  br label %30

30:                                               ; preds = %24, %42
  %31 = phi i64 [ 0, %24 ], [ %44, %42 ]
  %32 = phi i64 [ %25, %24 ], [ %43, %42 ]
  %33 = add nuw nsw i64 %31, %15
  %34 = shl nuw i64 1, %33
  %35 = and i64 %28, %34
  %36 = icmp eq i64 %35, 0
  %37 = select i1 %27, i1 true, i1 %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = xor i64 %34, -1
  %40 = and i64 %32, %39
  store i64 %40, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %41 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %33
  store ptr null, ptr %41, align 8, !tbaa !21
  br label %42

42:                                               ; preds = %30, %38
  %43 = phi i64 [ %40, %38 ], [ %32, %30 ]
  %44 = add nuw nsw i64 %31, 1
  %45 = icmp eq i64 %44, %29
  br i1 %45, label %46, label %30, !llvm.loop !276

46:                                               ; preds = %42, %11
  %47 = phi i8 [ 1, %11 ], [ %20, %42 ]
  %48 = icmp eq ptr %2, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %14, %46
  %50 = phi i8 [ %47, %46 ], [ %20, %14 ]
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %49
  %53 = zext i8 %50 to i32
  br label %57

54:                                               ; preds = %46
  %55 = zext i8 %47 to i64
  %56 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %63

57:                                               ; preds = %52, %57
  %58 = phi i32 [ %59, %57 ], [ %53, %52 ]
  %59 = add nsw i32 %58, -1
  %60 = add i32 %59, %12
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %60) #22
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %82, label %57, !llvm.loop !277

63:                                               ; preds = %54, %79
  %64 = phi i32 [ %56, %54 ], [ %80, %79 ]
  %65 = phi i64 [ %55, %54 ], [ %66, %79 ]
  %66 = add nsw i64 %65, -1
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %64, 0
  %69 = add i32 %12, %67
  br i1 %68, label %74, label %70

70:                                               ; preds = %63
  %71 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %69) #22
  %72 = icmp eq i32 %71, 0
  %73 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br i1 %72, label %74, label %79

74:                                               ; preds = %63, %70
  %75 = phi i32 [ %73, %70 ], [ 0, %63 ]
  %76 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %77 = zext i32 %69 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr null, ptr %78, align 8, !tbaa !21
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %75, %74 ], [ %73, %70 ]
  %81 = icmp eq i32 %67, 0
  br i1 %81, label %82, label %63, !llvm.loop !278

82:                                               ; preds = %4, %57, %79, %22, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_reload_regs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [180 x ptr], align 16
  %3 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 1440, ptr nonnull %2) #24
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %1, %43
  %8 = phi i64 [ %47, %43 ], [ 0, %1 ]
  %9 = phi i32 [ %45, %43 ], [ 1, %1 ]
  %10 = phi i32 [ %44, %43 ], [ 0, %1 ]
  %11 = trunc i64 %8 to i16
  %12 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %8
  store i16 %11, ptr %12, align 2, !tbaa !28
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %7
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #23
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5984, ptr noundef nonnull @.str.2) #22
  %24 = load ptr, ptr %13, align 8, !tbaa !195
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %14, %20 ], [ %24, %23 ]
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #23
  br label %28

28:                                               ; preds = %7, %25
  %29 = phi i32 [ %27, %25 ], [ -1, %7 ]
  %30 = phi ptr [ %26, %25 ], [ null, %7 ]
  %31 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %8
  store i32 %29, ptr %31, align 4, !tbaa !27
  %32 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !246
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = tail call i32 @llvm.umax.i32(i32 %33, i32 %9)
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !250
  %39 = sext i32 %38 to i64
  %40 = sext i32 %10 to i64
  %41 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_superunion, i64 0, i64 %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !27
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ %42, %35 ], [ %10, %28 ]
  %45 = phi i32 [ %36, %35 ], [ %9, %28 ]
  %46 = getelementptr inbounds [180 x ptr], ptr %2, i64 0, i64 %8
  store ptr %30, ptr %46, align 8, !tbaa !21
  %47 = add nuw nsw i64 %8, 1
  %48 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %7, label %51, !llvm.loop !279

51:                                               ; preds = %43
  %52 = icmp sgt i32 %48, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = zext nneg i32 %48 to i64
  tail call void @spec_qsort(ptr noundef nonnull @reload_order, i64 noundef %54, i64 noundef 2, ptr noundef nonnull @reload_reg_class_lower) #22
  br label %55

55:                                               ; preds = %1, %53, %51
  %56 = phi i32 [ %45, %53 ], [ %45, %51 ], [ 1, %1 ]
  %57 = phi i32 [ %44, %53 ], [ %44, %51 ], [ 0, %1 ]
  %58 = load i32, ptr @optimize, align 4, !tbaa !27
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  br label %67

64:                                               ; preds = %771
  %65 = add nsw i32 %68, -1
  %66 = icmp slt i32 %68, 1
  br i1 %66, label %775, label %67, !llvm.loop !280

67:                                               ; preds = %55, %64
  %68 = phi i32 [ %60, %55 ], [ %65, %64 ]
  call fastcc void @choose_reload_regs_init(ptr noundef %0, ptr noundef nonnull %2) #23
  %69 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %771

71:                                               ; preds = %67
  %72 = icmp eq i32 %68, 0
  br label %75

73:                                               ; preds = %721
  %74 = icmp sgt i32 %723, 0
  br i1 %74, label %726, label %771

75:                                               ; preds = %71, %721
  %76 = phi i64 [ 0, %71 ], [ %722, %721 ]
  %77 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !28
  %79 = sext i16 %78 to i32
  %80 = sext i16 %78 to i64
  %81 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80
  %82 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !248
  %84 = icmp eq ptr %83, null
  %85 = load ptr, ptr %81, align 8, !tbaa !249
  %86 = icmp eq ptr %85, null
  br i1 %84, label %87, label %94

87:                                               ; preds = %75
  br i1 %86, label %88, label %95

88:                                               ; preds = %87
  %89 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 18
  %90 = load i8, ptr %89, align 8
  %91 = and i8 %90, 4
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i1 true, i1 %72
  br i1 %93, label %721, label %117

94:                                               ; preds = %75
  br i1 %86, label %116, label %95

95:                                               ; preds = %87, %94
  %96 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 11
  %97 = load ptr, ptr %96, align 8, !tbaa !195
  %98 = icmp eq ptr %97, null
  br i1 %98, label %116, label %99

99:                                               ; preds = %95
  %100 = tail call i32 @rtx_equal_p(ptr noundef nonnull %85, ptr noundef nonnull %97) #22
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %721

102:                                              ; preds = %99
  %103 = load ptr, ptr %82, align 8, !tbaa !248
  %104 = load ptr, ptr %96, align 8, !tbaa !195
  %105 = tail call i32 @rtx_equal_p(ptr noundef %103, ptr noundef %104) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %81, align 8, !tbaa !249
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 43
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = tail call i32 @true_regnum(ptr noundef nonnull %108) #22
  %114 = icmp slt i32 %113, 53
  %115 = or i1 %72, %114
  br i1 %115, label %721, label %117

116:                                              ; preds = %107, %102, %95, %94
  br i1 %72, label %721, label %117

117:                                              ; preds = %88, %112, %116
  %118 = load ptr, ptr %81, align 8, !tbaa !249
  %119 = icmp eq ptr %118, null
  br i1 %119, label %486, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %118, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 37
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %118) #23
  br label %149

126:                                              ; preds = %120
  %127 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 8
  %128 = load ptr, ptr %127, align 8, !tbaa !281
  %129 = load i32, ptr %128, align 8
  %130 = trunc i32 %129 to i16
  switch i16 %130, label %454 [
    i16 37, label %131
    i16 39, label %133
  ]

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %128) #23
  br label %149

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 37
  br i1 %138, label %139, label %454

139:                                              ; preds = %133
  %140 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %135) #23
  %141 = icmp slt i32 %140, 53
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = tail call i32 @subreg_regno(ptr noundef nonnull %128) #22
  %144 = load ptr, ptr %127, align 8, !tbaa !281
  %145 = load i32, ptr %144, align 8
  br label %149

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load i32, ptr %147, align 8, !tbaa !5
  br label %153

149:                                              ; preds = %142, %124, %131
  %150 = phi i32 [ %121, %124 ], [ %129, %131 ], [ %145, %142 ]
  %151 = phi i32 [ %125, %124 ], [ %132, %131 ], [ %143, %142 ]
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %454

153:                                              ; preds = %146, %149
  %154 = phi i32 [ %129, %146 ], [ %150, %149 ]
  %155 = phi i32 [ %148, %146 ], [ 0, %149 ]
  %156 = phi i32 [ %140, %146 ], [ %151, %149 ]
  %157 = lshr i32 %154, 16
  %158 = and i32 %157, 255
  %159 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !21
  %163 = icmp eq ptr %162, null
  br i1 %163, label %454, label %164

164:                                              ; preds = %153
  %165 = load i32, ptr %162, align 8
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  %168 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %162) #23
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !27
  %172 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %167, i32 noundef %158, i32 noundef %171) #22
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %454

174:                                              ; preds = %164
  %175 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !250
  %177 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %178 = getelementptr inbounds ptr, ptr %177, i64 %160
  %179 = load ptr, ptr %178, align 8, !tbaa !21
  %180 = tail call fastcc i32 @rhs_regno(ptr noundef %179) #23
  %181 = load i32, ptr %179, align 8
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  %184 = tail call i32 @subreg_regno_offset(i32 noundef %180, i32 noundef %183, i32 noundef %155, i32 noundef %158) #22
  %185 = add i32 %184, %180
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !27
  %189 = icmp eq i32 %155, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %174
  %191 = zext nneg i32 %158 to i64
  %192 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !5
  %194 = zext i8 %193 to i32
  %195 = add i32 %155, %194
  %196 = shl i32 %195, 3
  %197 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %191
  %198 = load i8, ptr %197, align 1, !tbaa !5
  %199 = icmp eq i8 %198, 3
  %200 = select i1 %199, i8 2, i8 %198
  %201 = zext i8 %200 to i32
  %202 = tail call i32 @smallest_mode_for_size(i32 noundef %196, i32 noundef %201) #22
  br label %203

203:                                              ; preds = %174, %190
  %204 = phi i32 [ %202, %190 ], [ %158, %174 ]
  %205 = load i32, ptr %179, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = zext i32 %204 to i64
  %212 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !5
  %214 = icmp ult i8 %210, %213
  br i1 %214, label %454, label %215

215:                                              ; preds = %203
  %216 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %186
  %217 = load i32, ptr %216, align 4, !tbaa !27
  %218 = icmp eq i32 %217, %156
  br i1 %218, label %219, label %454

219:                                              ; preds = %215
  %220 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %221 = zext nneg i32 %185 to i64
  %222 = shl nuw i64 1, %221
  %223 = and i64 %220, %222
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %454, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 5
  %227 = load i32, ptr %226, align 4, !tbaa !199
  %228 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %185, i32 noundef %227) #22
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %454, label %230

230:                                              ; preds = %225
  %231 = sext i32 %176 to i64
  %232 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !38
  %234 = and i64 %233, %222
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %230
  %237 = tail call i32 @ix86_register_move_cost(i32 noundef %158, i32 noundef %188, i32 noundef %176) #22
  %238 = tail call i32 @ix86_memory_move_cost(i32 noundef %158, i32 noundef %176, i32 noundef 1) #22
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %454

240:                                              ; preds = %236
  %241 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %176, i32 noundef %158, ptr noundef nonnull %179) #22
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %454

243:                                              ; preds = %240
  %244 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %188, i32 noundef %176, i32 noundef %158, i32 noundef 1) #22
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %454

246:                                              ; preds = %243, %230
  %247 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 6
  %248 = load i32, ptr %247, align 8, !tbaa !246
  %249 = icmp eq i32 %248, %56
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = load i64, ptr %62, align 8, !tbaa !38
  %252 = and i64 %251, %222
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %454

254:                                              ; preds = %250, %246
  %255 = load i32, ptr %226, align 4, !tbaa !199
  %256 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 12
  %257 = load i32, ptr %256, align 8, !tbaa !197
  %258 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 17
  %259 = load i32, ptr %258, align 4, !tbaa !198
  %260 = load ptr, ptr %81, align 8, !tbaa !249
  %261 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %262 = tail call fastcc i32 @free_for_value_p(i32 noundef %185, i32 noundef %255, i32 noundef %257, i32 noundef %259, ptr noundef %260, ptr noundef %261, i32 noundef %79, i32 noundef 1) #23, !range !55
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %454, label %264

264:                                              ; preds = %254
  %265 = load i32, ptr %226, align 4, !tbaa !199
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %186, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !5
  %269 = zext i8 %268 to i32
  %270 = icmp ugt i8 %268, 1
  br i1 %270, label %271, label %289

271:                                              ; preds = %264
  %272 = load i64, ptr @reg_reloaded_valid, align 8
  %273 = zext i8 %268 to i64
  br label %274

274:                                              ; preds = %271, %284
  %275 = phi i64 [ 1, %271 ], [ %285, %284 ]
  %276 = add nsw i64 %275, %186
  %277 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !27
  %279 = icmp eq i32 %278, %156
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = shl nuw i64 1, %276
  %282 = and i64 %272, %281
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = add nuw nsw i64 %275, 1
  %286 = icmp eq i64 %285, %273
  br i1 %286, label %292, label %274, !llvm.loop !282

287:                                              ; preds = %274, %280
  %288 = trunc i64 %275 to i32
  br label %289

289:                                              ; preds = %287, %264
  %290 = phi i32 [ 1, %264 ], [ %288, %287 ]
  %291 = icmp eq i32 %290, %269
  br i1 %291, label %292, label %454

292:                                              ; preds = %284, %289
  %293 = load i32, ptr %179, align 8
  %294 = lshr i32 %293, 16
  %295 = and i32 %294, 255
  %296 = icmp eq i32 %295, %158
  br i1 %296, label %299, label %297

297:                                              ; preds = %292
  %298 = tail call ptr @gen_rtx_REG(i32 noundef %158, i32 noundef %185) #22
  br label %299

299:                                              ; preds = %292, %297
  %300 = phi ptr [ %298, %297 ], [ %179, %292 ]
  %301 = icmp eq i8 %268, 0
  br i1 %301, label %334, label %302

302:                                              ; preds = %299
  %303 = zext i8 %268 to i64
  %304 = load i32, ptr %175, align 8, !tbaa !250
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !38
  %308 = add nuw nsw i64 %303, 3
  %309 = and i64 %308, 508
  %310 = add nsw i64 %303, -1
  %311 = insertelement <4 x i64> poison, i64 %310, i64 0
  %312 = shufflevector <4 x i64> %311, <4 x i64> poison, <4 x i32> zeroinitializer
  %313 = insertelement <4 x i64> poison, i64 %186, i64 0
  %314 = shufflevector <4 x i64> %313, <4 x i64> poison, <4 x i32> zeroinitializer
  %315 = insertelement <4 x i64> poison, i64 %307, i64 0
  %316 = shufflevector <4 x i64> %315, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %317

317:                                              ; preds = %317, %302
  %318 = phi i64 [ 0, %302 ], [ %327, %317 ]
  %319 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %302 ], [ %328, %317 ]
  %320 = phi <4 x i32> [ zeroinitializer, %302 ], [ %326, %317 ]
  %321 = add nsw <4 x i64> %319, %314
  %322 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %321
  %323 = and <4 x i64> %316, %322
  %324 = icmp eq <4 x i64> %323, zeroinitializer
  %325 = zext <4 x i1> %324 to <4 x i32>
  %326 = or <4 x i32> %320, %325
  %327 = add i64 %318, 4
  %328 = add <4 x i64> %319, <i64 4, i64 4, i64 4, i64 4>
  %329 = icmp eq i64 %327, %309
  br i1 %329, label %330, label %317, !llvm.loop !283

330:                                              ; preds = %317
  %331 = icmp ugt <4 x i64> %319, %312
  %332 = select <4 x i1> %331, <4 x i32> %320, <4 x i32> %326
  %333 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %332)
  br label %334

334:                                              ; preds = %330, %299
  %335 = phi i32 [ 0, %299 ], [ %333, %330 ]
  %336 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !27
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %355

338:                                              ; preds = %334, %348
  %339 = phi i64 [ %349, %348 ], [ 0, %334 ]
  %340 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %341 = getelementptr inbounds ptr, ptr %340, i64 %160
  %342 = load ptr, ptr %341, align 8, !tbaa !21
  %343 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %339
  %344 = load ptr, ptr %343, align 8, !tbaa !21
  %345 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %342, ptr noundef %344) #22
  %346 = icmp eq i32 %345, 0
  %347 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !27
  br i1 %346, label %348, label %352

348:                                              ; preds = %338
  %349 = add nuw nsw i64 %339, 1
  %350 = sext i32 %347 to i64
  %351 = icmp slt i64 %349, %350
  br i1 %351, label %338, label %352, !llvm.loop !284

352:                                              ; preds = %338, %348
  %353 = phi i64 [ %349, %348 ], [ %339, %338 ]
  %354 = trunc i64 %353 to i32
  br label %355

355:                                              ; preds = %352, %334
  %356 = phi i32 [ %336, %334 ], [ %347, %352 ]
  %357 = phi i32 [ 0, %334 ], [ %354, %352 ]
  %358 = icmp eq i32 %357, %356
  br i1 %358, label %359, label %409

359:                                              ; preds = %355
  %360 = load i32, ptr %226, align 4, !tbaa !199
  %361 = load i32, ptr %256, align 8, !tbaa !197
  %362 = load i32, ptr %258, align 4, !tbaa !198
  %363 = load ptr, ptr %81, align 8, !tbaa !249
  %364 = load ptr, ptr %82, align 8, !tbaa !248
  %365 = tail call fastcc i32 @free_for_value_p(i32 noundef %185, i32 noundef %360, i32 noundef %361, i32 noundef %362, ptr noundef %363, ptr noundef %364, i32 noundef %79, i32 noundef 1) #23, !range !55
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %409, label %367

367:                                              ; preds = %359
  %368 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !38
  %369 = and i64 %368, %222
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %378, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr %82, align 8, !tbaa !248
  %373 = icmp eq ptr %372, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %371
  %375 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !38
  %376 = and i64 %375, %222
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %409, label %378

378:                                              ; preds = %374, %371, %367
  %379 = icmp eq i32 %185, 6
  %380 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %381 = icmp ne i8 %380, 0
  %382 = select i1 %379, i1 %381, i1 false
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load ptr, ptr %82, align 8, !tbaa !248
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %409

386:                                              ; preds = %383, %378
  %387 = load i32, ptr %226, align 4, !tbaa !199
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !5
  %391 = zext nneg i32 %158 to i64
  %392 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !5
  %394 = icmp ugt i8 %390, %393
  %395 = icmp ne i32 %335, 0
  %396 = select i1 %394, i1 true, i1 %395
  br i1 %396, label %409, label %397

397:                                              ; preds = %386
  %398 = load ptr, ptr %82, align 8, !tbaa !248
  %399 = icmp eq ptr %398, null
  br i1 %399, label %419, label %400

400:                                              ; preds = %397
  %401 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 11
  %402 = load ptr, ptr %401, align 8, !tbaa !195
  %403 = icmp eq ptr %402, null
  br i1 %403, label %419, label %404

404:                                              ; preds = %400
  %405 = tail call i32 @rtx_equal_p(ptr noundef nonnull %398, ptr noundef nonnull %402) #22
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %404
  %408 = load i32, ptr %226, align 4, !tbaa !199
  br label %419

409:                                              ; preds = %404, %386, %383, %374, %359, %355
  %410 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 18
  %411 = load i8, ptr %410, align 8
  %412 = and i8 %411, 1
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %454

414:                                              ; preds = %409
  %415 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %80
  store ptr %300, ptr %415, align 8, !tbaa !21
  %416 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %186
  %417 = load ptr, ptr %416, align 8, !tbaa !21
  %418 = getelementptr inbounds [180 x ptr], ptr @reload_inheritance_insn, i64 0, i64 %80
  store ptr %417, ptr %418, align 8, !tbaa !21
  br label %454

419:                                              ; preds = %407, %400, %397
  %420 = phi i32 [ %408, %407 ], [ %387, %400 ], [ %387, %397 ]
  %421 = load i32, ptr %256, align 8, !tbaa !197
  %422 = load i32, ptr %258, align 4, !tbaa !198
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %185, i32 noundef %421, i32 noundef %422, i32 noundef %420) #23
  %423 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 11
  store ptr %300, ptr %423, align 8, !tbaa !195
  %424 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %80
  store i8 1, ptr %424, align 1, !tbaa !5
  %425 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %186
  %426 = load ptr, ptr %425, align 8, !tbaa !21
  %427 = getelementptr inbounds [180 x ptr], ptr @reload_inheritance_insn, i64 0, i64 %80
  store ptr %426, ptr %427, align 8, !tbaa !21
  %428 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %80
  store i32 %185, ptr %428, align 4, !tbaa !27
  br i1 %301, label %454, label %429

429:                                              ; preds = %419
  %430 = zext i8 %268 to i64
  %431 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !38
  %432 = add nuw nsw i64 %430, 1
  %433 = and i64 %432, 510
  %434 = add nsw i64 %430, -1
  %435 = insertelement <2 x i64> poison, i64 %434, i64 0
  %436 = shufflevector <2 x i64> %435, <2 x i64> poison, <2 x i32> zeroinitializer
  %437 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %431, i64 0
  %438 = insertelement <2 x i64> poison, i64 %186, i64 0
  %439 = shufflevector <2 x i64> %438, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %440

440:                                              ; preds = %440, %429
  %441 = phi i64 [ 0, %429 ], [ %447, %440 ]
  %442 = phi <2 x i64> [ <i64 0, i64 1>, %429 ], [ %448, %440 ]
  %443 = phi <2 x i64> [ %437, %429 ], [ %446, %440 ]
  %444 = add nsw <2 x i64> %442, %439
  %445 = shl nuw <2 x i64> <i64 1, i64 1>, %444
  %446 = or <2 x i64> %443, %445
  %447 = add i64 %441, 2
  %448 = add <2 x i64> %442, <i64 2, i64 2>
  %449 = icmp eq i64 %447, %433
  br i1 %449, label %450, label %440, !llvm.loop !285

450:                                              ; preds = %440
  %451 = icmp ugt <2 x i64> %442, %436
  %452 = select <2 x i1> %451, <2 x i64> %443, <2 x i64> %446
  %453 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %452)
  store i64 %453, ptr @reload_reg_used_for_inherit, align 8, !tbaa !38
  br label %454

454:                                              ; preds = %419, %450, %126, %133, %203, %215, %219, %225, %236, %240, %243, %250, %254, %414, %409, %289, %164, %153, %149
  %455 = load ptr, ptr %81, align 8, !tbaa !249
  %456 = icmp eq ptr %455, null
  br i1 %456, label %486, label %457

457:                                              ; preds = %454
  %458 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %80
  %459 = load i8, ptr %458, align 1, !tbaa !5
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %721

461:                                              ; preds = %457
  %462 = load ptr, ptr %82, align 8, !tbaa !248
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %721

464:                                              ; preds = %461
  %465 = load i32, ptr %455, align 8
  %466 = and i32 %465, 65535
  %467 = zext nneg i32 %466 to i64
  %468 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !27
  %470 = freeze i32 %469
  %471 = icmp eq i32 %470, 9
  br i1 %471, label %474, label %472

472:                                              ; preds = %464
  %473 = trunc i32 %465 to i16
  switch i16 %473, label %721 [
    i16 49, label %474
    i16 43, label %474
    i16 37, label %474
  ]

474:                                              ; preds = %472, %472, %472, %464
  %475 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 6
  %476 = load i32, ptr %475, align 8, !tbaa !246
  %477 = icmp eq i32 %476, %56
  br i1 %477, label %521, label %478

478:                                              ; preds = %474
  %479 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 2
  %480 = load i32, ptr %479, align 8, !tbaa !250
  %481 = tail call i32 @reg_classes_intersect_p(i32 noundef %480, i32 noundef %57) #22
  %482 = icmp eq i32 %481, 0
  %483 = load ptr, ptr %81, align 8, !tbaa !249
  %484 = icmp eq ptr %483, null
  br i1 %482, label %520, label %485

485:                                              ; preds = %478
  br i1 %484, label %486, label %721

486:                                              ; preds = %117, %454, %485
  %487 = load ptr, ptr %82, align 8, !tbaa !248
  %488 = icmp eq ptr %487, null
  br i1 %488, label %721, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr %4, align 8
  %491 = and i32 %490, 65535
  %492 = add nsw i32 %491, -7
  %493 = icmp ult i32 %492, 4
  br i1 %493, label %494, label %721

494:                                              ; preds = %489
  %495 = load ptr, ptr %63, align 8, !tbaa !5
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 65535
  %498 = icmp eq i32 %497, 23
  br i1 %498, label %504, label %499

499:                                              ; preds = %494
  %500 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %495) #22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %721, label %502

502:                                              ; preds = %499
  %503 = load ptr, ptr %82, align 8, !tbaa !248
  br label %504

504:                                              ; preds = %502, %494
  %505 = phi ptr [ %503, %502 ], [ %487, %494 ]
  %506 = phi ptr [ %500, %502 ], [ %495, %494 ]
  %507 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !5
  %509 = tail call i32 @rtx_equal_p(ptr noundef %505, ptr noundef %508) #22
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %721, label %511

511:                                              ; preds = %504
  %512 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1, i32 0, i32 0, i64 1
  %513 = load ptr, ptr %512, align 8, !tbaa !5
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !27
  %519 = icmp eq i32 %518, 9
  br i1 %519, label %521, label %721

520:                                              ; preds = %478
  br i1 %484, label %721, label %521

521:                                              ; preds = %474, %511, %520
  %522 = phi ptr [ %483, %520 ], [ %513, %511 ], [ %455, %474 ]
  %523 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 2
  %524 = load i32, ptr %523, align 8, !tbaa !250
  %525 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 5
  %526 = load i32, ptr %525, align 4, !tbaa !199
  %527 = tail call ptr @find_equiv_reg(ptr noundef nonnull %522, ptr noundef %4, i32 noundef %524, i32 noundef -1, ptr noundef null, i32 noundef 0, i32 noundef %526) #22
  %528 = icmp eq ptr %527, null
  br i1 %528, label %721, label %529

529:                                              ; preds = %521
  %530 = load i32, ptr %527, align 8
  %531 = trunc i32 %530 to i16
  switch i16 %531, label %537 [
    i16 37, label %532
    i16 39, label %538
  ]

532:                                              ; preds = %529
  %533 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %527) #23
  %534 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 6
  %535 = load i32, ptr %534, align 8, !tbaa !246
  %536 = add i32 %535, %533
  br label %561

537:                                              ; preds = %529
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6322, ptr noundef nonnull @.str.2) #22
  br label %538

538:                                              ; preds = %529, %537
  %539 = tail call i32 @subreg_regno(ptr noundef nonnull %527) #22
  %540 = load i32, ptr %525, align 4, !tbaa !199
  %541 = tail call ptr @gen_rtx_REG(i32 noundef %540, i32 noundef %539) #22
  %542 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 6
  %543 = load i32, ptr %542, align 8, !tbaa !246
  %544 = add i32 %543, %539
  %545 = icmp sgt i32 %543, 0
  br i1 %545, label %546, label %558

546:                                              ; preds = %538
  %547 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !38
  br label %548

548:                                              ; preds = %546, %548
  %549 = phi i32 [ %539, %546 ], [ %556, %548 ]
  %550 = phi ptr [ %541, %546 ], [ %555, %548 ]
  %551 = zext nneg i32 %549 to i64
  %552 = shl nuw i64 1, %551
  %553 = and i64 %547, %552
  %554 = icmp eq i64 %553, 0
  %555 = select i1 %554, ptr %550, ptr null
  %556 = add nsw i32 %549, 1
  %557 = icmp slt i32 %556, %544
  br i1 %557, label %548, label %558, !llvm.loop !286

558:                                              ; preds = %548, %538
  %559 = phi ptr [ %541, %538 ], [ %555, %548 ]
  %560 = icmp eq ptr %559, null
  br i1 %560, label %721, label %561

561:                                              ; preds = %532, %558
  %562 = phi i32 [ %536, %532 ], [ %544, %558 ]
  %563 = phi i32 [ %533, %532 ], [ %539, %558 ]
  %564 = phi ptr [ %527, %532 ], [ %559, %558 ]
  %565 = icmp slt i32 %563, %562
  br i1 %565, label %566, label %627

566:                                              ; preds = %561
  %567 = sub i32 %562, %563
  %568 = load i32, ptr %523, align 8, !tbaa !250
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %569
  %571 = load i64, ptr %570, align 8, !tbaa !38
  %572 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !38
  %573 = add i32 %567, 3
  %574 = and i32 %573, -4
  %575 = add i32 %567, -1
  %576 = insertelement <4 x i32> poison, i32 %575, i64 0
  %577 = shufflevector <4 x i32> %576, <4 x i32> poison, <4 x i32> zeroinitializer
  %578 = insertelement <4 x i32> poison, i32 %563, i64 0
  %579 = shufflevector <4 x i32> %578, <4 x i32> poison, <4 x i32> zeroinitializer
  %580 = add <4 x i32> %579, <i32 0, i32 1, i32 2, i32 3>
  %581 = insertelement <4 x i64> poison, i64 %572, i64 0
  %582 = shufflevector <4 x i64> %581, <4 x i64> poison, <4 x i32> zeroinitializer
  %583 = insertelement <4 x i64> poison, i64 %571, i64 0
  %584 = shufflevector <4 x i64> %583, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %585

585:                                              ; preds = %585, %566
  %586 = phi i32 [ 0, %566 ], [ %600, %585 ]
  %587 = phi <4 x i32> [ %580, %566 ], [ %601, %585 ]
  %588 = phi <4 x i32> [ zeroinitializer, %566 ], [ %599, %585 ]
  %589 = phi <4 x i32> [ zeroinitializer, %566 ], [ %595, %585 ]
  %590 = zext nneg <4 x i32> %587 to <4 x i64>
  %591 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %590
  %592 = and <4 x i64> %582, %591
  %593 = icmp ne <4 x i64> %592, zeroinitializer
  %594 = zext <4 x i1> %593 to <4 x i32>
  %595 = or <4 x i32> %589, %594
  %596 = and <4 x i64> %584, %591
  %597 = icmp eq <4 x i64> %596, zeroinitializer
  %598 = zext <4 x i1> %597 to <4 x i32>
  %599 = or <4 x i32> %588, %598
  %600 = add i32 %586, 4
  %601 = add <4 x i32> %587, <i32 4, i32 4, i32 4, i32 4>
  %602 = icmp eq i32 %600, %574
  br i1 %602, label %603, label %585, !llvm.loop !287

603:                                              ; preds = %585
  %604 = insertelement <4 x i32> poison, i32 %586, i64 0
  %605 = shufflevector <4 x i32> %604, <4 x i32> poison, <4 x i32> zeroinitializer
  %606 = or disjoint <4 x i32> %605, <i32 0, i32 1, i32 2, i32 3>
  %607 = icmp ugt <4 x i32> %606, %577
  %608 = select <4 x i1> %607, <4 x i32> %589, <4 x i32> %595
  %609 = select <4 x i1> %607, <4 x i32> %588, <4 x i32> %599
  %610 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %609)
  %611 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %608)
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %625, label %613

613:                                              ; preds = %603
  %614 = load i32, ptr %525, align 4, !tbaa !199
  %615 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 12
  %616 = load i32, ptr %615, align 8, !tbaa !197
  %617 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 17
  %618 = load i32, ptr %617, align 4, !tbaa !198
  %619 = load ptr, ptr %81, align 8, !tbaa !249
  %620 = load ptr, ptr %82, align 8, !tbaa !248
  %621 = tail call fastcc i32 @free_for_value_p(i32 noundef %563, i32 noundef %614, i32 noundef %616, i32 noundef %618, ptr noundef %619, ptr noundef %620, i32 noundef %79, i32 noundef 1) #23, !range !55
  %622 = icmp eq i32 %621, 0
  %623 = icmp ne i32 %610, 0
  %624 = select i1 %622, i1 true, i1 %623
  br i1 %624, label %721, label %627

625:                                              ; preds = %603
  %626 = icmp eq i32 %610, 0
  br i1 %626, label %627, label %721

627:                                              ; preds = %561, %613, %625
  %628 = load i32, ptr %525, align 4, !tbaa !199
  %629 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %563, i32 noundef %628) #22
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %721, label %631

631:                                              ; preds = %627
  %632 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !27
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %639, label %650

634:                                              ; preds = %639
  %635 = add nuw nsw i64 %640, 1
  %636 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !27
  %637 = sext i32 %636 to i64
  %638 = icmp slt i64 %635, %637
  br i1 %638, label %639, label %650, !llvm.loop !288

639:                                              ; preds = %631, %634
  %640 = phi i64 [ %635, %634 ], [ 0, %631 ]
  %641 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !21
  %643 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %564, ptr noundef %642) #22
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %634, label %645

645:                                              ; preds = %639
  %646 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 18
  %647 = load i8, ptr %646, align 8
  %648 = and i8 %647, 1
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %719, label %721

650:                                              ; preds = %634, %631
  %651 = load i32, ptr %525, align 4, !tbaa !199
  %652 = tail call i32 @regno_clobbered_p(i32 noundef %563, ptr noundef %4, i32 noundef %651, i32 noundef 2) #22
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %662, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 17
  %656 = load i32, ptr %655, align 4, !tbaa !198
  switch i32 %656, label %721 [
    i32 10, label %674
    i32 4, label %674
    i32 3, label %674
    i32 8, label %674
    i32 9, label %657
    i32 0, label %657
    i32 7, label %657
  ]

657:                                              ; preds = %654, %654, %654
  %658 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 18
  %659 = load i8, ptr %658, align 8
  %660 = and i8 %659, 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %719, label %721

662:                                              ; preds = %650
  %663 = load i32, ptr %525, align 4, !tbaa !199
  %664 = tail call i32 @regno_clobbered_p(i32 noundef %563, ptr noundef %4, i32 noundef %663, i32 noundef 1) #22
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %674, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 17
  %668 = load i32, ptr %667, align 4, !tbaa !198
  switch i32 %668, label %721 [
    i32 10, label %674
    i32 4, label %674
    i32 3, label %674
    i32 8, label %674
    i32 7, label %674
    i32 0, label %674
    i32 9, label %669
  ]

669:                                              ; preds = %666
  %670 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 18
  %671 = load i8, ptr %670, align 8
  %672 = and i8 %671, 1
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %719, label %721

674:                                              ; preds = %654, %654, %654, %654, %666, %666, %666, %666, %666, %666, %662
  %675 = icmp eq i32 %563, 6
  %676 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %677 = icmp ne i8 %676, 0
  %678 = select i1 %675, i1 %677, i1 false
  br i1 %678, label %721, label %679

679:                                              ; preds = %674
  %680 = sext i32 %563 to i64
  %681 = load i32, ptr %525, align 4, !tbaa !199
  %682 = zext i32 %681 to i64
  %683 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %680, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !5
  %685 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 11
  store ptr %564, ptr %685, align 8, !tbaa !195
  %686 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %80
  store i32 %563, ptr %686, align 4, !tbaa !27
  %687 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %80
  store i8 1, ptr %687, align 1, !tbaa !5
  %688 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %689 = zext nneg i32 %563 to i64
  %690 = shl nuw i64 1, %689
  %691 = and i64 %688, %690
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %695

693:                                              ; preds = %679
  %694 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %680
  store ptr null, ptr %694, align 8, !tbaa !21
  br label %695

695:                                              ; preds = %693, %679
  %696 = icmp eq i8 %684, 0
  br i1 %696, label %721, label %697

697:                                              ; preds = %695
  %698 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !38
  %699 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 12
  %700 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %80, i32 17
  %701 = zext i8 %684 to i64
  br label %702

702:                                              ; preds = %697, %715
  %703 = phi i64 [ 0, %697 ], [ %717, %715 ]
  %704 = phi i64 [ %698, %697 ], [ %716, %715 ]
  %705 = add nsw i64 %703, %680
  %706 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %705
  %707 = load i16, ptr %706, align 2, !tbaa !28
  %708 = icmp sgt i16 %707, -1
  br i1 %708, label %709, label %715

709:                                              ; preds = %702
  %710 = load i32, ptr %699, align 8, !tbaa !197
  %711 = load i32, ptr %700, align 4, !tbaa !198
  %712 = load i32, ptr %525, align 4, !tbaa !199
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %563, i32 noundef %710, i32 noundef %711, i32 noundef %712) #23
  %713 = shl nuw i64 1, %705
  %714 = or i64 %704, %713
  store i64 %714, ptr @reload_reg_used_for_inherit, align 8, !tbaa !38
  br label %715

715:                                              ; preds = %702, %709
  %716 = phi i64 [ %704, %702 ], [ %714, %709 ]
  %717 = add nuw nsw i64 %703, 1
  %718 = icmp eq i64 %717, %701
  br i1 %718, label %721, label %702, !llvm.loop !289

719:                                              ; preds = %669, %657, %645
  %720 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %80
  store ptr %564, ptr %720, align 8, !tbaa !21
  br label %721

721:                                              ; preds = %715, %719, %88, %461, %457, %472, %695, %666, %669, %654, %657, %627, %613, %625, %521, %558, %645, %489, %116, %511, %499, %504, %485, %486, %520, %674, %99, %112
  %722 = add nuw nsw i64 %76, 1
  %723 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %724 = sext i32 %723 to i64
  %725 = icmp slt i64 %722, %724
  br i1 %725, label %75, label %73, !llvm.loop !290

726:                                              ; preds = %73, %762
  %727 = phi i32 [ %763, %762 ], [ %723, %73 ]
  %728 = phi i64 [ %764, %762 ], [ 0, %73 ]
  %729 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %728
  %730 = load i16, ptr %729, align 2, !tbaa !28
  %731 = sext i16 %730 to i32
  %732 = sext i16 %730 to i64
  %733 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 1
  %734 = load ptr, ptr %733, align 8, !tbaa !248
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %745

736:                                              ; preds = %726
  %737 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732
  %738 = load ptr, ptr %737, align 8, !tbaa !249
  %739 = icmp eq ptr %738, null
  br i1 %739, label %740, label %745

740:                                              ; preds = %736
  %741 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 18
  %742 = load i8, ptr %741, align 8
  %743 = and i8 %742, 4
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %762, label %745

745:                                              ; preds = %740, %736, %726
  %746 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 11
  %747 = load ptr, ptr %746, align 8, !tbaa !195
  %748 = icmp eq ptr %747, null
  br i1 %748, label %749, label %762

749:                                              ; preds = %745
  %750 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 18
  %751 = load i8, ptr %750, align 8
  %752 = and i8 %751, 1
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %754, label %762

754:                                              ; preds = %749
  %755 = add nsw i32 %727, -1
  %756 = zext i32 %755 to i64
  %757 = icmp eq i64 %728, %756
  %758 = zext i1 %757 to i32
  %759 = tail call fastcc i32 @allocate_reload_reg(i32 noundef %731, i32 noundef %758) #23
  %760 = icmp eq i32 %759, 0
  %761 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br i1 %760, label %767, label %762

762:                                              ; preds = %754, %745, %749, %740
  %763 = phi i32 [ %727, %745 ], [ %727, %749 ], [ %727, %740 ], [ %761, %754 ]
  %764 = add nuw nsw i64 %728, 1
  %765 = sext i32 %763 to i64
  %766 = icmp slt i64 %764, %765
  br i1 %766, label %726, label %767, !llvm.loop !291

767:                                              ; preds = %754, %762
  %768 = phi i32 [ %763, %762 ], [ %761, %754 ]
  %769 = phi i64 [ %764, %762 ], [ %728, %754 ]
  %770 = trunc i64 %769 to i32
  br label %771

771:                                              ; preds = %67, %767, %73
  %772 = phi i32 [ %723, %73 ], [ %768, %767 ], [ %69, %67 ]
  %773 = phi i32 [ 0, %73 ], [ %770, %767 ], [ 0, %67 ]
  %774 = icmp eq i32 %773, %772
  br i1 %774, label %834, label %64

775:                                              ; preds = %64
  call fastcc void @choose_reload_regs_init(ptr noundef %0, ptr noundef nonnull %2) #23
  %776 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  %777 = load i32, ptr %776, align 8, !tbaa !159
  %778 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %779 = icmp eq i32 %777, %778
  br i1 %779, label %782, label %780

780:                                              ; preds = %775
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6539, ptr noundef nonnull @.str.2) #22
  %781 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %782

782:                                              ; preds = %775, %780
  %783 = phi i32 [ %777, %775 ], [ %781, %780 ]
  %784 = icmp sgt i32 %783, 0
  br i1 %784, label %785, label %834

785:                                              ; preds = %782
  %786 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  br label %787

787:                                              ; preds = %785, %829
  %788 = phi i64 [ 0, %785 ], [ %830, %829 ]
  %789 = load ptr, ptr %786, align 8, !tbaa !232
  %790 = getelementptr inbounds %struct.reload, ptr %789, i64 %788, i32 10
  %791 = load i32, ptr %790, align 8, !tbaa !245
  %792 = icmp slt i32 %791, 0
  br i1 %792, label %829, label %793

793:                                              ; preds = %787
  %794 = getelementptr inbounds %struct.reload, ptr %789, i64 %788, i32 11
  %795 = load ptr, ptr %794, align 8, !tbaa !195
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %829

797:                                              ; preds = %793
  %798 = getelementptr inbounds %struct.reload, ptr %789, i64 %788, i32 17
  %799 = load i32, ptr %798, align 4, !tbaa !198
  %800 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %788, i32 17
  %801 = load i32, ptr %800, align 4, !tbaa !198
  %802 = icmp eq i32 %799, %801
  br i1 %802, label %804, label %803

803:                                              ; preds = %797
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6545, ptr noundef nonnull @.str.2) #22
  br label %804

804:                                              ; preds = %797, %803
  %805 = load i32, ptr @n_spills, align 4, !tbaa !27
  %806 = icmp sgt i32 %805, 0
  br i1 %806, label %807, label %829

807:                                              ; preds = %804
  %808 = trunc i64 %788 to i32
  br label %809

809:                                              ; preds = %807, %824
  %810 = phi i64 [ 0, %807 ], [ %825, %824 ]
  %811 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %810
  %812 = load i16, ptr %811, align 2, !tbaa !28
  %813 = sext i16 %812 to i32
  %814 = load ptr, ptr %786, align 8, !tbaa !232
  %815 = getelementptr inbounds %struct.reload, ptr %814, i64 %788, i32 10
  %816 = load i32, ptr %815, align 8, !tbaa !245
  %817 = icmp eq i32 %816, %813
  br i1 %817, label %818, label %824

818:                                              ; preds = %809
  %819 = trunc i64 %810 to i32
  %820 = tail call fastcc i32 @set_reload_reg(i32 noundef %819, i32 noundef %808) #23, !range !55
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %824

822:                                              ; preds = %818
  %823 = load ptr, ptr %3, align 8, !tbaa !139
  tail call fastcc void @failed_reload(ptr noundef %823, i32 noundef %808) #23
  br label %824

824:                                              ; preds = %809, %822, %818
  %825 = add nuw nsw i64 %810, 1
  %826 = load i32, ptr @n_spills, align 4, !tbaa !27
  %827 = sext i32 %826 to i64
  %828 = icmp slt i64 %825, %827
  br i1 %828, label %809, label %829, !llvm.loop !292

829:                                              ; preds = %824, %804, %787, %793
  %830 = add nuw nsw i64 %788, 1
  %831 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %832 = sext i32 %831 to i64
  %833 = icmp slt i64 %830, %832
  br i1 %833, label %787, label %834, !llvm.loop !293

834:                                              ; preds = %771, %829, %782
  %835 = phi i32 [ %783, %782 ], [ %831, %829 ], [ %772, %771 ]
  %836 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !27
  %837 = icmp sgt i32 %836, -1
  br i1 %837, label %838, label %842

838:                                              ; preds = %834, %908
  %839 = phi i32 [ %909, %908 ], [ %835, %834 ]
  %840 = phi i32 [ %911, %908 ], [ %836, %834 ]
  %841 = icmp sgt i32 %839, 0
  br i1 %841, label %847, label %908

842:                                              ; preds = %908, %834
  %843 = phi i32 [ %835, %834 ], [ %909, %908 ]
  %844 = icmp sgt i32 %843, 0
  br i1 %844, label %845, label %1063

845:                                              ; preds = %842
  %846 = zext nneg i32 %843 to i64
  br label %914

847:                                              ; preds = %838, %902
  %848 = phi i64 [ %904, %902 ], [ 0, %838 ]
  %849 = phi i32 [ %903, %902 ], [ %840, %838 ]
  %850 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %848
  %851 = load i16, ptr %850, align 2, !tbaa !28
  %852 = sext i16 %851 to i32
  %853 = sext i16 %851 to i64
  %854 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %853
  %855 = load i8, ptr %854, align 1, !tbaa !5
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %861, label %857

857:                                              ; preds = %847
  %858 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 11
  %859 = load ptr, ptr %858, align 8, !tbaa !195
  %860 = icmp eq ptr %859, null
  br i1 %860, label %861, label %868

861:                                              ; preds = %857, %847
  %862 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %853
  %863 = load ptr, ptr %862, align 8, !tbaa !21
  %864 = icmp eq ptr %863, null
  br i1 %864, label %902, label %865

865:                                              ; preds = %861
  %866 = load i32, ptr %863, align 8
  %867 = trunc i32 %866 to i16
  switch i16 %867, label %902 [
    i16 37, label %868
    i16 39, label %868
  ]

868:                                              ; preds = %865, %865, %857
  %869 = phi ptr [ %859, %857 ], [ %863, %865 ], [ %863, %865 ]
  %870 = tail call i32 @true_regnum(ptr noundef nonnull %869) #22
  %871 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853
  %872 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 5
  %873 = load i32, ptr %872, align 4, !tbaa !199
  %874 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 12
  %875 = load i32, ptr %874, align 8, !tbaa !197
  %876 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 17
  %877 = load i32, ptr %876, align 4, !tbaa !198
  %878 = load ptr, ptr %871, align 8, !tbaa !249
  %879 = load i8, ptr %854, align 1, !tbaa !5
  %880 = icmp eq i8 %879, 0
  %881 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 1
  %882 = select i1 %880, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr %881
  %883 = load ptr, ptr %882, align 8, !tbaa !21
  %884 = tail call fastcc i32 @free_for_value_p(i32 noundef %870, i32 noundef %873, i32 noundef %875, i32 noundef %877, ptr noundef %878, ptr noundef %883, i32 noundef %852, i32 noundef 1) #23, !range !55
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %890

886:                                              ; preds = %868
  %887 = icmp eq i32 %849, 0
  br i1 %887, label %888, label %902

888:                                              ; preds = %886
  store i8 0, ptr %854, align 1, !tbaa !5
  %889 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %853
  store ptr null, ptr %889, align 8, !tbaa !21
  br label %902

890:                                              ; preds = %868
  %891 = load ptr, ptr %871, align 8, !tbaa !249
  %892 = icmp eq ptr %891, null
  br i1 %892, label %902, label %893

893:                                              ; preds = %890
  %894 = load ptr, ptr %881, align 8, !tbaa !248
  %895 = icmp eq ptr %894, %891
  br i1 %895, label %902, label %896

896:                                              ; preds = %893
  %897 = tail call i32 @remove_address_replacements(ptr noundef nonnull %891) #22
  %898 = icmp ne i32 %897, 0
  %899 = icmp ne i32 %849, 0
  %900 = select i1 %898, i1 %899, i1 false
  %901 = select i1 %900, i32 2, i32 %849
  br label %902

902:                                              ; preds = %888, %893, %890, %896, %886, %861, %865
  %903 = phi i32 [ %849, %865 ], [ %849, %861 ], [ %849, %886 ], [ %901, %896 ], [ %849, %893 ], [ %849, %890 ], [ 0, %888 ]
  %904 = add nuw nsw i64 %848, 1
  %905 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %906 = sext i32 %905 to i64
  %907 = icmp slt i64 %904, %906
  br i1 %907, label %847, label %908, !llvm.loop !294

908:                                              ; preds = %902, %838
  %909 = phi i32 [ %839, %838 ], [ %905, %902 ]
  %910 = phi i32 [ %840, %838 ], [ %903, %902 ]
  %911 = add nsw i32 %910, -1
  %912 = icmp sgt i32 %910, 0
  br i1 %912, label %838, label %842, !llvm.loop !295

913:                                              ; preds = %921
  br i1 %844, label %926, label %1063

914:                                              ; preds = %845, %921
  %915 = phi i64 [ 0, %845 ], [ %922, %921 ]
  %916 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %915
  %917 = load ptr, ptr %916, align 8, !tbaa !21
  %918 = icmp eq ptr %917, null
  br i1 %918, label %921, label %919

919:                                              ; preds = %914
  %920 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %915
  store ptr %917, ptr %920, align 8, !tbaa !249
  br label %921

921:                                              ; preds = %914, %919
  %922 = add nuw nsw i64 %915, 1
  %923 = icmp eq i64 %922, %846
  br i1 %923, label %913, label %914, !llvm.loop !296

924:                                              ; preds = %968
  %925 = icmp sgt i32 %969, 0
  br i1 %925, label %973, label %1063

926:                                              ; preds = %913, %968
  %927 = phi i32 [ %969, %968 ], [ %843, %913 ]
  %928 = phi i64 [ %970, %968 ], [ 0, %913 ]
  %929 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928
  %930 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 11
  %931 = load ptr, ptr %930, align 8, !tbaa !195
  %932 = icmp eq ptr %931, null
  br i1 %932, label %968, label %933

933:                                              ; preds = %926
  %934 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 18
  %935 = load i8, ptr %934, align 8
  %936 = and i8 %935, 1
  %937 = icmp eq i8 %936, 0
  br i1 %937, label %942, label %938

938:                                              ; preds = %933
  %939 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %928
  %940 = load i8, ptr %939, align 1, !tbaa !5
  %941 = icmp eq i8 %940, 0
  br i1 %941, label %952, label %942

942:                                              ; preds = %938, %933
  %943 = load ptr, ptr %929, align 8, !tbaa !249
  %944 = icmp eq ptr %943, null
  br i1 %944, label %945, label %968

945:                                              ; preds = %942
  %946 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 1
  %947 = load ptr, ptr %946, align 8, !tbaa !248
  %948 = icmp eq ptr %947, null
  %949 = and i8 %935, 4
  %950 = icmp eq i8 %949, 0
  %951 = and i1 %950, %948
  br i1 %951, label %952, label %968

952:                                              ; preds = %945, %938
  %953 = tail call i32 @true_regnum(ptr noundef nonnull %931) #22
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %954
  %956 = load i16, ptr %955, align 2, !tbaa !28
  %957 = icmp sgt i16 %956, -1
  br i1 %957, label %958, label %965

958:                                              ; preds = %952
  %959 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 12
  %960 = load i32, ptr %959, align 8, !tbaa !197
  %961 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 17
  %962 = load i32, ptr %961, align 4, !tbaa !198
  %963 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 5
  %964 = load i32, ptr %963, align 4, !tbaa !199
  tail call fastcc void @clear_reload_reg_in_use(i32 noundef %953, i32 noundef %960, i32 noundef %962, i32 noundef %964) #23
  br label %965

965:                                              ; preds = %958, %952
  store ptr null, ptr %930, align 8, !tbaa !195
  %966 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %928
  store i32 -1, ptr %966, align 4, !tbaa !27
  %967 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %968

968:                                              ; preds = %926, %942, %945, %965
  %969 = phi i32 [ %927, %926 ], [ %927, %942 ], [ %927, %945 ], [ %967, %965 ]
  %970 = add nuw nsw i64 %928, 1
  %971 = sext i32 %969 to i64
  %972 = icmp slt i64 %970, %971
  br i1 %972, label %926, label %924, !llvm.loop !297

973:                                              ; preds = %924, %1058
  %974 = phi i64 [ %1059, %1058 ], [ 0, %924 ]
  %975 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %974
  %976 = load i16, ptr %975, align 2, !tbaa !28
  %977 = sext i16 %976 to i64
  %978 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %977
  %979 = load i32, ptr %978, align 4, !tbaa !27
  %980 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 9
  %981 = load ptr, ptr %980, align 8, !tbaa !298
  %982 = icmp eq ptr %981, null
  br i1 %982, label %1058, label %983

983:                                              ; preds = %973
  %984 = load i32, ptr %981, align 8
  %985 = and i32 %984, 65535
  %986 = icmp eq i32 %985, 37
  br i1 %986, label %987, label %1058

987:                                              ; preds = %983
  %988 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 11
  %989 = load ptr, ptr %988, align 8, !tbaa !195
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1058, label %991

991:                                              ; preds = %987
  %992 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %981) #23
  %993 = icmp slt i32 %992, 53
  br i1 %993, label %994, label %1003

994:                                              ; preds = %991
  %995 = sext i32 %992 to i64
  %996 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 5
  %997 = load i32, ptr %996, align 4, !tbaa !199
  %998 = zext i32 %997 to i64
  %999 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %995, i64 %998
  %1000 = load i8, ptr %999, align 1, !tbaa !5
  %1001 = zext i8 %1000 to i32
  %1002 = icmp eq i8 %1000, 0
  br i1 %1002, label %1011, label %1003

1003:                                             ; preds = %991, %994
  %1004 = phi i32 [ 1, %991 ], [ %1001, %994 ]
  br label %1005

1005:                                             ; preds = %1003, %1005
  %1006 = phi i32 [ %1007, %1005 ], [ %1004, %1003 ]
  %1007 = add nsw i32 %1006, -1
  %1008 = add nsw i32 %1007, %992
  %1009 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @reg_has_output_reload, i32 noundef %1008) #22
  %1010 = icmp ugt i32 %1006, 1
  br i1 %1010, label %1005, label %1011, !llvm.loop !299

1011:                                             ; preds = %1005, %994
  %1012 = icmp sgt i32 %979, -1
  br i1 %1012, label %1013, label %1054

1013:                                             ; preds = %1011
  %1014 = zext nneg i32 %979 to i64
  %1015 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 5
  %1016 = load i32, ptr %1015, align 4, !tbaa !199
  %1017 = zext i32 %1016 to i64
  %1018 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1014, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !5
  %1020 = icmp eq i8 %1019, 0
  br i1 %1020, label %1054, label %1021

1021:                                             ; preds = %1013
  %1022 = zext nneg i32 %979 to i64
  %1023 = zext i8 %1019 to i64
  %1024 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !38
  %1025 = add nuw nsw i64 %1023, 1
  %1026 = and i64 %1025, 510
  %1027 = add nsw i64 %1023, -1
  %1028 = insertelement <2 x i64> poison, i64 %1027, i64 0
  %1029 = shufflevector <2 x i64> %1028, <2 x i64> poison, <2 x i32> zeroinitializer
  %1030 = insertelement <2 x i64> poison, i64 %1023, i64 0
  %1031 = shufflevector <2 x i64> %1030, <2 x i64> poison, <2 x i32> zeroinitializer
  %1032 = add nsw <2 x i64> %1031, <i64 0, i64 -1>
  %1033 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %1024, i64 0
  %1034 = add nsw i64 %1022, -1
  %1035 = insertelement <2 x i64> poison, i64 %1034, i64 0
  %1036 = shufflevector <2 x i64> %1035, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %1037

1037:                                             ; preds = %1037, %1021
  %1038 = phi i64 [ 0, %1021 ], [ %1044, %1037 ]
  %1039 = phi <2 x i64> [ %1032, %1021 ], [ %1045, %1037 ]
  %1040 = phi <2 x i64> [ %1033, %1021 ], [ %1043, %1037 ]
  %1041 = add <2 x i64> %1036, %1039
  %1042 = shl nuw <2 x i64> <i64 1, i64 1>, %1041
  %1043 = or <2 x i64> %1040, %1042
  %1044 = add i64 %1038, 2
  %1045 = add <2 x i64> %1039, <i64 -2, i64 -2>
  %1046 = icmp eq i64 %1044, %1026
  br i1 %1046, label %1047, label %1037, !llvm.loop !300

1047:                                             ; preds = %1037
  %1048 = insertelement <2 x i64> poison, i64 %1038, i64 0
  %1049 = shufflevector <2 x i64> %1048, <2 x i64> poison, <2 x i32> zeroinitializer
  %1050 = or disjoint <2 x i64> %1049, <i64 0, i64 1>
  %1051 = icmp ugt <2 x i64> %1050, %1029
  %1052 = select <2 x i1> %1051, <2 x i64> %1040, <2 x i64> %1043
  %1053 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %1052)
  store i64 %1053, ptr @reg_is_output_reload, align 8, !tbaa !38
  br label %1054

1054:                                             ; preds = %1013, %1047, %1011
  %1055 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 17
  %1056 = load i32, ptr %1055, align 4, !tbaa !198
  switch i32 %1056, label %1057 [
    i32 9, label %1058
    i32 1, label %1058
    i32 2, label %1058
  ]

1057:                                             ; preds = %1054
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6661, ptr noundef nonnull @.str.2) #22
  br label %1058

1058:                                             ; preds = %1057, %1054, %1054, %1054, %987, %983, %973
  %1059 = add nuw nsw i64 %974, 1
  %1060 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %1061 = sext i32 %1060 to i64
  %1062 = icmp slt i64 %1059, %1061
  br i1 %1062, label %973, label %1063, !llvm.loop !301

1063:                                             ; preds = %1058, %842, %913, %924
  call void @llvm.lifetime.end.p0(i64 1440, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_assigned_reloads(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %214

4:                                                ; preds = %1, %209
  %5 = phi i32 [ %210, %209 ], [ %2, %1 ]
  %6 = phi i64 [ %211, %209 ], [ 0, %1 ]
  %7 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  %9 = icmp eq ptr %8, null
  br i1 %9, label %209, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !198
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %209, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !248
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %209

18:                                               ; preds = %14
  %19 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !195
  %21 = icmp eq ptr %20, null
  br i1 %21, label %209, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @reg_set_p(ptr noundef nonnull %20, ptr noundef %0) #22
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr @n_reloads, align 4
  br i1 %24, label %26, label %209

26:                                               ; preds = %22
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 12
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %29, label %100

29:                                               ; preds = %26, %85
  %30 = phi i64 [ %89, %85 ], [ 0, %26 ]
  %31 = phi i32 [ %88, %85 ], [ 30, %26 ]
  %32 = phi i32 [ %87, %85 ], [ -1, %26 ]
  %33 = phi i32 [ %86, %85 ], [ 0, %26 ]
  %34 = icmp eq i64 %6, %30
  br i1 %34, label %85, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !195
  %39 = icmp eq ptr %38, null
  br i1 %39, label %85, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %19, align 8, !tbaa !195
  %42 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %38, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !198
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %50 = load i32, ptr %49, align 8, !tbaa !197
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 %32)
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %32, %44 ], [ %51, %48 ]
  %54 = load ptr, ptr %19, align 8, !tbaa !195
  %55 = load ptr, ptr %37, align 8, !tbaa !195
  %56 = tail call i32 @rtx_equal_p(ptr noundef %54, ptr noundef %55) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !248
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load ptr, ptr %36, align 8, !tbaa !249
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 8, !tbaa !249
  %67 = tail call i32 @rtx_equal_p(ptr noundef %66, ptr noundef nonnull %63) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65, %62, %58, %52
  %70 = load i32, ptr %45, align 4, !tbaa !198
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i32, ptr %11, align 4, !tbaa !198
  switch i32 %73, label %93 [
    i32 3, label %77
    i32 10, label %74
  ]

74:                                               ; preds = %72
  %75 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %76 = load i32, ptr %75, align 8, !tbaa !197
  br label %82

77:                                               ; preds = %72
  %78 = load i32, ptr %27, align 8, !tbaa !197
  %79 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %80 = load i32, ptr %79, align 8, !tbaa !197
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %74, %77
  %83 = phi i32 [ %76, %74 ], [ %80, %77 ]
  %84 = tail call i32 @llvm.smin.i32(i32 %31, i32 %83)
  br label %85

85:                                               ; preds = %82, %65, %29, %35, %40
  %86 = phi i32 [ %33, %29 ], [ %33, %35 ], [ %33, %65 ], [ %33, %40 ], [ 1, %82 ]
  %87 = phi i32 [ %32, %29 ], [ %32, %35 ], [ %53, %65 ], [ %32, %40 ], [ %53, %82 ]
  %88 = phi i32 [ %31, %29 ], [ %31, %35 ], [ %31, %65 ], [ %31, %40 ], [ %84, %82 ]
  %89 = add nuw nsw i64 %30, 1
  %90 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %29, label %93, !llvm.loop !302

93:                                               ; preds = %72, %77, %69, %85
  %94 = phi i64 [ %89, %85 ], [ %30, %69 ], [ %30, %77 ], [ %30, %72 ]
  %95 = phi i32 [ %86, %85 ], [ %33, %69 ], [ %33, %77 ], [ %33, %72 ]
  %96 = phi i32 [ %88, %85 ], [ %31, %69 ], [ %31, %77 ], [ %31, %72 ]
  %97 = phi i32 [ %87, %85 ], [ %53, %69 ], [ %53, %77 ], [ %53, %72 ]
  %98 = trunc i64 %94 to i32
  %99 = load i32, ptr @n_reloads, align 4
  br label %100

100:                                              ; preds = %93, %26
  %101 = phi i32 [ %25, %26 ], [ %99, %93 ]
  %102 = phi i32 [ 0, %26 ], [ %98, %93 ]
  %103 = phi i32 [ 0, %26 ], [ %95, %93 ]
  %104 = phi i32 [ 30, %26 ], [ %96, %93 ]
  %105 = phi i32 [ -1, %26 ], [ %97, %93 ]
  %106 = icmp ne i32 %102, %101
  %107 = icmp sgt i32 %105, %104
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %209, label %109

109:                                              ; preds = %100
  %110 = load i32, ptr %11, align 4, !tbaa !198
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6760, ptr noundef nonnull @.str.2) #22
  %113 = load i32, ptr @n_reloads, align 4
  br label %114

114:                                              ; preds = %109, %112
  %115 = phi i32 [ %101, %109 ], [ %113, %112 ]
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %209

117:                                              ; preds = %114
  %118 = icmp eq i32 %103, 0
  %119 = trunc i64 %6 to i32
  br label %120

120:                                              ; preds = %117, %139
  %121 = phi i64 [ 0, %117 ], [ %140, %139 ]
  %122 = icmp eq i64 %6, %121
  br i1 %122, label %139, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %121
  %125 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %121, i32 11
  %126 = load ptr, ptr %125, align 8, !tbaa !195
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %19, align 8, !tbaa !195
  %130 = tail call i32 @rtx_equal_p(ptr noundef %129, ptr noundef nonnull %126) #22
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  br i1 %118, label %136, label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %121, i32 17
  %135 = load i32, ptr %134, align 4, !tbaa !198
  switch i32 %135, label %139 [
    i32 3, label %136
    i32 10, label %136
  ]

136:                                              ; preds = %133, %133, %132
  store i32 9, ptr %11, align 4, !tbaa !198
  store ptr null, ptr %124, align 8, !tbaa !249
  %137 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %121
  store i32 -1, ptr %137, align 4, !tbaa !27
  %138 = trunc i64 %121 to i32
  tail call void @transfer_replacements(i32 noundef %119, i32 noundef %138) #22
  br label %139

139:                                              ; preds = %133, %120, %123, %128, %136
  %140 = add nuw nsw i64 %121, 1
  %141 = load i32, ptr @n_reloads, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %120, label %144, !llvm.loop !303

144:                                              ; preds = %139
  %145 = load i32, ptr %11, align 4, !tbaa !198
  %146 = icmp eq i32 %145, 9
  %147 = icmp sgt i32 %141, 0
  %148 = and i1 %146, %147
  br i1 %148, label %149, label %209

149:                                              ; preds = %144
  %150 = icmp eq i32 %103, 0
  br label %151

151:                                              ; preds = %149, %204
  %152 = phi i64 [ 0, %149 ], [ %205, %204 ]
  %153 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !249
  %155 = icmp eq ptr %154, null
  br i1 %155, label %204, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152, i32 17
  %158 = load i32, ptr %157, align 4, !tbaa !198
  switch i32 %158, label %159 [
    i32 9, label %204
    i32 10, label %204
    i32 5, label %204
    i32 7, label %204
  ]

159:                                              ; preds = %156
  %160 = add i32 %158, -3
  %161 = icmp ult i32 %160, 2
  %162 = or i1 %150, %161
  br i1 %162, label %163, label %204

163:                                              ; preds = %159
  %164 = load ptr, ptr %7, align 8, !tbaa !249
  %165 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %154, ptr noundef %164) #22
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %204, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr %157, align 4, !tbaa !198
  %169 = add i32 %168, -3
  %170 = icmp ult i32 %169, 2
  %171 = select i1 %170, i32 10, i32 9
  store i32 %171, ptr %157, align 4, !tbaa !198
  %172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152, i32 11
  %173 = load ptr, ptr %172, align 8, !tbaa !195
  %174 = icmp ne ptr %173, null
  %175 = icmp ne i64 %152, 0
  %176 = and i1 %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %167, %201
  %178 = phi i64 [ %202, %201 ], [ 0, %167 ]
  %179 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !249
  %181 = icmp eq ptr %180, null
  br i1 %181, label %201, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 11
  %184 = load ptr, ptr %183, align 8, !tbaa !195
  %185 = icmp eq ptr %184, null
  br i1 %185, label %201, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 17
  %188 = load i32, ptr %187, align 4, !tbaa !198
  %189 = load i32, ptr %157, align 4, !tbaa !198
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load ptr, ptr %172, align 8, !tbaa !195
  %193 = tail call i32 @rtx_equal_p(ptr noundef nonnull %184, ptr noundef %192) #22
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %179, align 8, !tbaa !249
  %197 = load ptr, ptr %153, align 8, !tbaa !249
  %198 = tail call i32 @rtx_equal_p(ptr noundef %196, ptr noundef %197) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6824, ptr noundef nonnull @.str.2) #22
  br label %201

201:                                              ; preds = %200, %195, %191, %186, %182, %177
  %202 = add nuw nsw i64 %178, 1
  %203 = icmp eq i64 %202, %152
  br i1 %203, label %204, label %177, !llvm.loop !304

204:                                              ; preds = %201, %167, %159, %156, %156, %156, %156, %151, %163
  %205 = add nuw nsw i64 %152, 1
  %206 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %207 = sext i32 %206 to i64
  %208 = icmp slt i64 %205, %207
  br i1 %208, label %151, label %209, !llvm.loop !305

209:                                              ; preds = %204, %114, %100, %144, %4, %10, %14, %18, %22
  %210 = phi i32 [ %101, %100 ], [ %141, %144 ], [ %5, %4 ], [ %5, %10 ], [ %5, %14 ], [ %5, %18 ], [ %25, %22 ], [ %115, %114 ], [ %206, %204 ]
  %211 = add nuw nsw i64 %6, 1
  %212 = sext i32 %210 to i64
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %4, label %214, !llvm.loop !306

214:                                              ; preds = %209, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_reload_insns(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  store i64 0, ptr @reg_reloaded_died, align 8, !tbaa !38
  %4 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @other_output_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @outaddr_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @output_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @output_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @inpaddr_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @input_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @input_reload_insns, i8 0, i64 %8, i1 false), !tbaa !21
  br label %9

9:                                                ; preds = %6, %1
  store ptr null, ptr @other_input_address_reload_insns, align 8, !tbaa !21
  store ptr null, ptr @other_input_reload_insns, align 8, !tbaa !21
  store ptr null, ptr @operand_reload_insns, align 8, !tbaa !21
  store ptr null, ptr @other_operand_reload_insns, align 8, !tbaa !21
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !5
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.13, i32 noundef %14) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !21
  tail call void @debug_reload_to_stream(ptr noundef %16) #22
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %17, %43
  %21 = phi i64 [ %46, %43 ], [ 0, %17 ]
  %22 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !195
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %23) #23
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i32, ptr %23, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %26) #23
  %33 = icmp ult i32 %26, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = zext nneg i32 %26 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %38 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %37
  store ptr null, ptr %38, align 8, !tbaa !21
  %39 = add nuw nsw i64 %37, 1
  %40 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %26) #23
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %36, label %43, !llvm.loop !307

43:                                               ; preds = %36, %28, %25, %20
  %44 = getelementptr inbounds %struct.reload, ptr @rld, i64 %21
  %45 = trunc i64 %21 to i32
  tail call fastcc void @do_input_reload(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %45) #23
  tail call fastcc void @do_output_reload(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %45) #23
  %46 = add nuw nsw i64 %21, 1
  %47 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %20, label %50, !llvm.loop !308

50:                                               ; preds = %43, %17
  %51 = load ptr, ptr @other_input_address_reload_insns, align 8, !tbaa !21
  %52 = tail call ptr @emit_insn_before(ptr noundef %51, ptr noundef %3) #22
  %53 = load ptr, ptr @other_input_reload_insns, align 8, !tbaa !21
  %54 = tail call ptr @emit_insn_before(ptr noundef %53, ptr noundef %3) #22
  %55 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50, %57
  %58 = phi i64 [ %68, %57 ], [ 0, %50 ]
  %59 = getelementptr inbounds [30 x ptr], ptr @inpaddr_address_reload_insns, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = tail call ptr @emit_insn_before(ptr noundef %60, ptr noundef %3) #22
  %62 = getelementptr inbounds [30 x ptr], ptr @input_address_reload_insns, i64 0, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  %64 = tail call ptr @emit_insn_before(ptr noundef %63, ptr noundef %3) #22
  %65 = getelementptr inbounds [30 x ptr], ptr @input_reload_insns, i64 0, i64 %58
  %66 = load ptr, ptr %65, align 8, !tbaa !21
  %67 = tail call ptr @emit_insn_before(ptr noundef %66, ptr noundef %3) #22
  %68 = add nuw nsw i64 %58, 1
  %69 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %57, label %72, !llvm.loop !309

72:                                               ; preds = %57, %50
  %73 = load ptr, ptr @other_operand_reload_insns, align 8, !tbaa !21
  %74 = tail call ptr @emit_insn_before(ptr noundef %73, ptr noundef %3) #22
  %75 = load ptr, ptr @operand_reload_insns, align 8, !tbaa !21
  %76 = tail call ptr @emit_insn_before(ptr noundef %75, ptr noundef %3) #22
  %77 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %84, %72
  %80 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %618

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  br label %102

84:                                               ; preds = %72, %84
  %85 = phi i64 [ %98, %84 ], [ 0, %72 ]
  %86 = getelementptr inbounds [30 x ptr], ptr @outaddr_address_reload_insns, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !21
  %88 = tail call ptr @emit_insn_after(ptr noundef %87, ptr noundef %3) #22
  %89 = getelementptr inbounds [30 x ptr], ptr @output_address_reload_insns, i64 0, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !21
  %91 = tail call ptr @emit_insn_after(ptr noundef %90, ptr noundef %88) #22
  %92 = getelementptr inbounds [30 x ptr], ptr @output_reload_insns, i64 0, i64 %85
  %93 = load ptr, ptr %92, align 8, !tbaa !21
  %94 = tail call ptr @emit_insn_after(ptr noundef %93, ptr noundef %91) #22
  %95 = getelementptr inbounds [30 x ptr], ptr @other_output_reload_insns, i64 0, i64 %85
  %96 = load ptr, ptr %95, align 8, !tbaa !21
  %97 = tail call ptr @emit_insn_after(ptr noundef %96, ptr noundef %94) #22
  %98 = add nuw nsw i64 %85, 1
  %99 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %84, label %79, !llvm.loop !310

102:                                              ; preds = %82, %613
  %103 = phi i64 [ 0, %82 ], [ %614, %613 ]
  %104 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !28
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !27
  %109 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106
  %110 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !281
  %112 = icmp eq ptr %111, null
  br i1 %112, label %155, label %113

113:                                              ; preds = %102
  %114 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %106
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %113
  %118 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %106
  %119 = load ptr, ptr %118, align 8, !tbaa !21
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %155

121:                                              ; preds = %117
  %122 = load i32, ptr %111, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 39
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !5
  %128 = load i32, ptr %127, align 8
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %128, %125 ], [ %122, %121 ]
  %131 = phi ptr [ %127, %125 ], [ %111, %121 ]
  %132 = and i32 %130, 65535
  %133 = icmp eq i32 %132, 37
  br i1 %133, label %134, label %155

134:                                              ; preds = %129
  %135 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %131) #23
  %136 = icmp ugt i32 %135, 52
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %135) #22
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %131) #23
  %142 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !21
  %146 = icmp eq ptr %145, null
  br i1 %146, label %155, label %147

147:                                              ; preds = %140
  %148 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %145) #23
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !27
  %152 = icmp eq i32 %151, %141
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %149
  store ptr null, ptr %154, align 8, !tbaa !21
  br label %155

155:                                              ; preds = %129, %134, %137, %147, %153, %140, %117, %113, %102
  %156 = icmp sgt i32 %108, -1
  br i1 %156, label %157, label %440

157:                                              ; preds = %155
  %158 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 11
  %159 = load ptr, ptr %158, align 8, !tbaa !195
  %160 = icmp eq ptr %159, null
  br i1 %160, label %613, label %161

161:                                              ; preds = %157
  %162 = zext nneg i32 %108 to i64
  %163 = load i32, ptr %159, align 8
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %162, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %161
  %171 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 12
  %172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 17
  %173 = zext i8 %168 to i64
  br label %174

174:                                              ; preds = %170, %187
  %175 = phi i64 [ 0, %170 ], [ %188, %187 ]
  %176 = add nuw nsw i64 %175, %162
  %177 = load i32, ptr %171, align 8, !tbaa !197
  %178 = load i32, ptr %172, align 4, !tbaa !198
  %179 = trunc i64 %176 to i32
  %180 = tail call fastcc i32 @reload_reg_reaches_end_p(i32 noundef %179, i32 noundef %177, i32 noundef %178) #23, !range !55
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %174
  %183 = shl nuw i64 1, %176
  %184 = xor i64 %183, -1
  %185 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %186 = and i64 %185, %184
  store i64 %186, ptr @reg_reloaded_valid, align 8, !tbaa !38
  br label %187

187:                                              ; preds = %174, %182
  %188 = add nuw nsw i64 %175, 1
  %189 = icmp eq i64 %188, %173
  br i1 %189, label %190, label %174, !llvm.loop !311

190:                                              ; preds = %187, %161
  %191 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !248
  %193 = icmp eq ptr %192, null
  br i1 %193, label %302, label %194

194:                                              ; preds = %190
  %195 = load i32, ptr %192, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 37
  br i1 %197, label %204, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %200 = load ptr, ptr %199, align 8, !tbaa !298
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 37
  br i1 %203, label %204, label %613

204:                                              ; preds = %198, %194
  %205 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %106
  %206 = load ptr, ptr %205, align 8, !tbaa !21
  %207 = load i32, ptr %206, align 8
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  %210 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %206) #23
  %211 = sext i32 %210 to i64
  %212 = zext nneg i32 %209 to i64
  %213 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %211, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !5
  %215 = zext i8 %214 to i32
  %216 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !197
  %218 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 17
  %219 = load i32, ptr %218, align 4, !tbaa !198
  %220 = tail call fastcc zeroext i8 @reload_regs_reach_end_p(i32 noundef %210, i32 noundef %215, i32 noundef %217, i32 noundef %219) #23, !range !26
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %613, label %222

222:                                              ; preds = %204
  %223 = load ptr, ptr %191, align 8, !tbaa !248
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 37
  br i1 %226, label %235, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %229 = load ptr, ptr %228, align 8, !tbaa !298
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load ptr, ptr %110, align 8, !tbaa !281
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !5
  br label %235

235:                                              ; preds = %227, %222, %231
  %236 = phi ptr [ %234, %231 ], [ %223, %222 ], [ %229, %227 ]
  %237 = tail call fastcc i32 @rhs_regno(ptr noundef %236) #23
  %238 = icmp slt i32 %237, 53
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = zext nneg i32 %237 to i64
  br label %246

241:                                              ; preds = %235
  %242 = sext i32 %237 to i64
  %243 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %242, i64 %212
  %244 = load i8, ptr %243, align 1, !tbaa !5
  %245 = zext i8 %244 to i32
  br label %246

246:                                              ; preds = %239, %241
  %247 = phi i64 [ %240, %239 ], [ %242, %241 ]
  %248 = phi i32 [ 1, %239 ], [ %245, %241 ]
  %249 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %211
  %250 = load ptr, ptr %249, align 8, !tbaa !21
  %251 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %211
  store ptr %250, ptr %251, align 8, !tbaa !21
  %252 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %211
  store ptr %236, ptr %252, align 8, !tbaa !21
  %253 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %254 = getelementptr inbounds ptr, ptr %253, i64 %247
  store ptr %206, ptr %254, align 8, !tbaa !21
  %255 = icmp eq i32 %248, %215
  %256 = select i1 %238, i1 %255, i1 false
  br i1 %256, label %257, label %260

257:                                              ; preds = %246
  %258 = tail call fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %237, i32 noundef %210, i32 noundef %209) #23, !range !26
  %259 = icmp ne i8 %258, 0
  br label %260

260:                                              ; preds = %257, %246
  %261 = phi i1 [ false, %246 ], [ %259, %257 ]
  %262 = icmp ugt i32 %248, 1
  %263 = select i1 %238, i1 %262, i1 false
  br i1 %263, label %264, label %280

264:                                              ; preds = %260
  %265 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %266 = zext nneg i32 %248 to i64
  %267 = getelementptr ptr, ptr %265, i64 %247
  br label %268

268:                                              ; preds = %264, %275
  %269 = phi i64 [ 1, %264 ], [ %278, %275 ]
  br i1 %261, label %270, label %275

270:                                              ; preds = %268
  %271 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %272 = getelementptr ptr, ptr %271, i64 %269
  %273 = getelementptr ptr, ptr %272, i64 %211
  %274 = load ptr, ptr %273, align 8, !tbaa !21
  br label %275

275:                                              ; preds = %268, %270
  %276 = phi ptr [ %274, %270 ], [ null, %268 ]
  %277 = getelementptr ptr, ptr %267, i64 %269
  store ptr %276, ptr %277, align 8, !tbaa !21
  %278 = add nuw nsw i64 %269, 1
  %279 = icmp eq i64 %278, %266
  br i1 %279, label %280, label %268, !llvm.loop !312

280:                                              ; preds = %275, %260
  %281 = icmp eq i8 %214, 0
  br i1 %281, label %613, label %282

282:                                              ; preds = %280
  %283 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %284 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !38
  %285 = zext i8 %214 to i64
  br label %286

286:                                              ; preds = %282, %286
  %287 = phi i64 [ 0, %282 ], [ %300, %286 ]
  %288 = phi i64 [ %284, %282 ], [ %293, %286 ]
  %289 = phi i64 [ %283, %282 ], [ %299, %286 ]
  %290 = add nsw i64 %287, %211
  %291 = shl nuw i64 1, %290
  %292 = xor i64 %291, -1
  %293 = and i64 %288, %292
  %294 = trunc i64 %287 to i32
  %295 = select i1 %261, i32 %294, i32 0
  %296 = add nsw i32 %295, %237
  %297 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %290
  store i32 %296, ptr %297, align 4, !tbaa !27
  %298 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %290
  store ptr %3, ptr %298, align 8, !tbaa !21
  %299 = or i64 %289, %291
  %300 = add nuw nsw i64 %287, 1
  %301 = icmp eq i64 %300, %285
  br i1 %301, label %612, label %286, !llvm.loop !313

302:                                              ; preds = %190
  %303 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %304 = load ptr, ptr %303, align 8, !tbaa !298
  %305 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %306 = icmp eq ptr %304, null
  br i1 %306, label %307, label %613

307:                                              ; preds = %302
  %308 = load ptr, ptr %109, align 8, !tbaa !249
  %309 = icmp eq ptr %308, null
  br i1 %309, label %613, label %310

310:                                              ; preds = %307
  %311 = load i32, ptr %308, align 8
  %312 = and i32 %311, 65535
  %313 = icmp eq i32 %312, 37
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %308) #23
  %316 = icmp ult i32 %315, 53
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %315) #22
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %329, label %320

320:                                              ; preds = %317, %314, %310
  %321 = load ptr, ptr %110, align 8, !tbaa !281
  %322 = load i32, ptr %321, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 37
  br i1 %324, label %325, label %613

325:                                              ; preds = %320
  %326 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %321) #23
  %327 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %326) #22
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %613

329:                                              ; preds = %325, %317
  %330 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %106
  %331 = load ptr, ptr %330, align 8, !tbaa !21
  %332 = load ptr, ptr %83, align 8, !tbaa !5
  %333 = tail call i32 @reg_set_p(ptr noundef %331, ptr noundef %332) #22
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %613

335:                                              ; preds = %329
  %336 = load ptr, ptr %330, align 8, !tbaa !21
  %337 = load i32, ptr %336, align 8
  %338 = lshr i32 %337, 16
  %339 = and i32 %338, 255
  %340 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %336) #23
  %341 = sext i32 %340 to i64
  %342 = zext nneg i32 %339 to i64
  %343 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %341, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !5
  %345 = zext i8 %344 to i32
  %346 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 12
  %347 = load i32, ptr %346, align 8, !tbaa !197
  %348 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 17
  %349 = load i32, ptr %348, align 4, !tbaa !198
  %350 = tail call fastcc zeroext i8 @reload_regs_reach_end_p(i32 noundef %340, i32 noundef %345, i32 noundef %347, i32 noundef %349) #23, !range !26
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %613, label %352

352:                                              ; preds = %335
  %353 = load ptr, ptr %109, align 8, !tbaa !249
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 37
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %353) #23
  %359 = icmp ugt i32 %358, 52
  br i1 %359, label %368, label %360

360:                                              ; preds = %357, %352
  %361 = load ptr, ptr %110, align 8, !tbaa !281
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = icmp eq i32 %363, 37
  br i1 %364, label %368, label %365

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !5
  br label %368

368:                                              ; preds = %357, %360, %365
  %369 = phi ptr [ %367, %365 ], [ %361, %360 ], [ %353, %357 ]
  %370 = tail call fastcc i32 @rhs_regno(ptr noundef %369) #23
  %371 = icmp slt i32 %370, 53
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  %373 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %374 = zext nneg i32 %370 to i64
  %375 = getelementptr inbounds ptr, ptr %373, i64 %374
  store ptr %336, ptr %375, align 8, !tbaa !21
  br label %405

376:                                              ; preds = %368
  %377 = sext i32 %370 to i64
  %378 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %377, i64 %342
  %379 = load i8, ptr %378, align 1, !tbaa !5
  %380 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %381 = getelementptr inbounds ptr, ptr %380, i64 %377
  store ptr %336, ptr %381, align 8, !tbaa !21
  %382 = icmp eq i8 %379, %344
  br i1 %382, label %383, label %386

383:                                              ; preds = %376
  %384 = tail call fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %340, i32 noundef %370, i32 noundef %339) #23, !range !26
  %385 = icmp ne i8 %384, 0
  br label %386

386:                                              ; preds = %383, %376
  %387 = phi i1 [ false, %376 ], [ %385, %383 ]
  %388 = icmp ugt i8 %379, 1
  br i1 %388, label %389, label %405

389:                                              ; preds = %386
  %390 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %391 = zext i8 %379 to i64
  %392 = getelementptr ptr, ptr %390, i64 %377
  br label %393

393:                                              ; preds = %389, %400
  %394 = phi i64 [ 1, %389 ], [ %403, %400 ]
  br i1 %387, label %395, label %400

395:                                              ; preds = %393
  %396 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %397 = getelementptr ptr, ptr %396, i64 %394
  %398 = getelementptr ptr, ptr %397, i64 %341
  %399 = load ptr, ptr %398, align 8, !tbaa !21
  br label %400

400:                                              ; preds = %393, %395
  %401 = phi ptr [ %399, %395 ], [ null, %393 ]
  %402 = getelementptr ptr, ptr %392, i64 %394
  store ptr %401, ptr %402, align 8, !tbaa !21
  %403 = add nuw nsw i64 %394, 1
  %404 = icmp eq i64 %403, %391
  br i1 %404, label %405, label %393, !llvm.loop !314

405:                                              ; preds = %400, %386, %372
  %406 = phi i1 [ false, %372 ], [ %387, %386 ], [ %387, %400 ]
  %407 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %106
  %408 = load i8, ptr %407, align 1, !tbaa !5
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %416, label %410

410:                                              ; preds = %405
  %411 = load ptr, ptr %191, align 8, !tbaa !248
  %412 = icmp eq ptr %411, null
  br i1 %412, label %418, label %413

413:                                              ; preds = %410
  %414 = load ptr, ptr %305, align 8, !tbaa !298
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %418

416:                                              ; preds = %413, %405
  %417 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %341
  store ptr null, ptr %417, align 8, !tbaa !21
  br label %418

418:                                              ; preds = %416, %413, %410
  %419 = icmp eq i8 %344, 0
  br i1 %419, label %613, label %420

420:                                              ; preds = %418
  %421 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %422 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !38
  %423 = zext i8 %344 to i64
  br label %424

424:                                              ; preds = %420, %424
  %425 = phi i64 [ 0, %420 ], [ %438, %424 ]
  %426 = phi i64 [ %422, %420 ], [ %431, %424 ]
  %427 = phi i64 [ %421, %420 ], [ %437, %424 ]
  %428 = add nsw i64 %425, %341
  %429 = shl nuw i64 1, %428
  %430 = xor i64 %429, -1
  %431 = and i64 %426, %430
  %432 = trunc i64 %425 to i32
  %433 = select i1 %406, i32 %432, i32 0
  %434 = add nsw i32 %433, %370
  %435 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %428
  store i32 %434, ptr %435, align 4, !tbaa !27
  %436 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %428
  store ptr %3, ptr %436, align 8, !tbaa !21
  %437 = or i64 %427, %429
  %438 = add nuw nsw i64 %425, 1
  %439 = icmp eq i64 %438, %423
  br i1 %439, label %611, label %424, !llvm.loop !315

440:                                              ; preds = %155
  %441 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !248
  %443 = icmp eq ptr %442, null
  br i1 %443, label %453, label %444

444:                                              ; preds = %440
  %445 = load i32, ptr %442, align 8
  %446 = trunc i32 %445 to i16
  switch i16 %446, label %613 [
    i16 37, label %461
    i16 43, label %447
  ]

447:                                              ; preds = %444
  %448 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %449 = load ptr, ptr %448, align 8, !tbaa !298
  %450 = load i32, ptr %449, align 8
  %451 = and i32 %450, 65535
  %452 = icmp eq i32 %451, 37
  br i1 %452, label %461, label %613

453:                                              ; preds = %440
  %454 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %455 = load ptr, ptr %454, align 8, !tbaa !298
  %456 = icmp eq ptr %455, null
  br i1 %456, label %613, label %457

457:                                              ; preds = %453
  %458 = load i32, ptr %455, align 8
  %459 = and i32 %458, 65535
  %460 = icmp eq i32 %459, 37
  br i1 %460, label %468, label %613

461:                                              ; preds = %444, %447
  %462 = and i32 %445, 65535
  %463 = icmp eq i32 %462, 37
  br i1 %463, label %468, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 9
  %466 = load ptr, ptr %465, align 8, !tbaa !298
  %467 = load i32, ptr %466, align 8
  br label %468

468:                                              ; preds = %457, %464, %461
  %469 = phi i32 [ %445, %461 ], [ %467, %464 ], [ %458, %457 ]
  %470 = phi ptr [ %442, %461 ], [ %466, %464 ], [ %455, %457 ]
  %471 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %470) #23
  %472 = lshr i32 %469, 16
  %473 = and i32 %472, 255
  %474 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %106, i32 11
  %475 = load ptr, ptr %474, align 8, !tbaa !195
  %476 = icmp eq ptr %475, null
  %477 = icmp eq ptr %475, %470
  %478 = or i1 %476, %477
  br i1 %478, label %480, label %479

479:                                              ; preds = %468
  tail call void @forget_old_reloads_1(ptr noundef nonnull %475, ptr poison, ptr noundef null) #23
  br label %480

480:                                              ; preds = %479, %468
  %481 = icmp slt i32 %471, 53
  br i1 %481, label %599, label %482

482:                                              ; preds = %480
  %483 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %484 = zext nneg i32 %471 to i64
  %485 = getelementptr inbounds ptr, ptr %483, i64 %484
  store ptr null, ptr %485, align 8, !tbaa !21
  %486 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %106
  %487 = load ptr, ptr %486, align 8, !tbaa !21
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %526

489:                                              ; preds = %482
  %490 = load i32, ptr %3, align 8
  %491 = and i32 %490, 65535
  %492 = add nsw i32 %491, -7
  %493 = icmp ult i32 %492, 4
  br i1 %493, label %494, label %613

494:                                              ; preds = %489
  %495 = load ptr, ptr %83, align 8, !tbaa !5
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 65535
  %498 = icmp eq i32 %497, 23
  br i1 %498, label %502, label %499

499:                                              ; preds = %494
  %500 = tail call ptr @single_set_2(ptr noundef nonnull %3, ptr noundef nonnull %495) #22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %613, label %502

502:                                              ; preds = %494, %499
  %503 = phi ptr [ %500, %499 ], [ %495, %494 ]
  %504 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = load ptr, ptr %441, align 8, !tbaa !248
  %507 = icmp eq ptr %505, %506
  br i1 %507, label %508, label %613

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1, i32 0, i32 0, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !5
  %511 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %531

513:                                              ; preds = %508
  %514 = zext nneg i32 %511 to i64
  br label %518

515:                                              ; preds = %518
  %516 = add nuw nsw i64 %519, 1
  %517 = icmp eq i64 %516, %514
  br i1 %517, label %531, label %518, !llvm.loop !316

518:                                              ; preds = %513, %515
  %519 = phi i64 [ 0, %513 ], [ %516, %515 ]
  %520 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !249
  %522 = icmp eq ptr %521, %510
  br i1 %522, label %523, label %515

523:                                              ; preds = %518
  %524 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %519
  %525 = load ptr, ptr %524, align 8, !tbaa !21
  br label %531

526:                                              ; preds = %482
  %527 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %487) #23
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !21
  br label %534

531:                                              ; preds = %515, %508, %523
  %532 = phi ptr [ %525, %523 ], [ %510, %508 ], [ %510, %515 ]
  %533 = icmp eq ptr %532, null
  br i1 %533, label %613, label %534

534:                                              ; preds = %526, %531
  %535 = phi ptr [ %530, %526 ], [ %3, %531 ]
  %536 = phi ptr [ %487, %526 ], [ %532, %531 ]
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 37
  br i1 %539, label %540, label %613

540:                                              ; preds = %534
  %541 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %536) #23
  %542 = icmp ult i32 %541, 53
  br i1 %542, label %543, label %613

543:                                              ; preds = %540
  %544 = lshr i32 %537, 16
  %545 = and i32 %544, 255
  %546 = icmp eq i32 %545, %473
  br i1 %546, label %548, label %547

547:                                              ; preds = %543
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8156, ptr noundef nonnull @.str.2) #22
  br label %548

548:                                              ; preds = %543, %547
  %549 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %536) #23
  %550 = sext i32 %549 to i64
  %551 = zext nneg i32 %473 to i64
  %552 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %550, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !5
  %554 = tail call ptr @find_regno_note(ptr noundef %3, i32 noundef 1, i32 noundef %549) #22
  %555 = icmp eq ptr %554, null
  %556 = icmp ne ptr %535, null
  %557 = select i1 %555, i1 %556, i1 false
  br i1 %557, label %558, label %560

558:                                              ; preds = %548
  %559 = tail call ptr @find_regno_note(ptr noundef nonnull %535, i32 noundef 1, i32 noundef %549) #22
  br label %560

560:                                              ; preds = %558, %548
  %561 = phi ptr [ %559, %558 ], [ %554, %548 ]
  %562 = icmp eq i8 %553, 0
  br i1 %562, label %595, label %563

563:                                              ; preds = %560
  %564 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !38
  %565 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !38
  %566 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %567 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !38
  %568 = icmp eq ptr %561, null
  %569 = zext nneg i32 %549 to i64
  %570 = shl nuw i64 1, %569
  %571 = xor i64 %570, -1
  %572 = zext i8 %553 to i64
  br label %573

573:                                              ; preds = %563, %573
  %574 = phi i64 [ 0, %563 ], [ %592, %573 ]
  %575 = phi i64 [ %567, %563 ], [ %586, %573 ]
  %576 = phi i64 [ %566, %563 ], [ %587, %573 ]
  %577 = phi i64 [ %565, %563 ], [ %588, %573 ]
  %578 = phi i64 [ %564, %563 ], [ %591, %573 ]
  %579 = add nsw i64 %574, %550
  %580 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %579
  store ptr %535, ptr %580, align 8, !tbaa !21
  %581 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %579
  store ptr %470, ptr %581, align 8, !tbaa !21
  %582 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %579
  store i32 %471, ptr %582, align 4, !tbaa !27
  %583 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %579
  store ptr %535, ptr %583, align 8, !tbaa !21
  %584 = shl nuw i64 1, %579
  %585 = xor i64 %584, -1
  %586 = and i64 %575, %585
  %587 = or i64 %576, %584
  %588 = or i64 %577, %584
  %589 = and i64 %578, %571
  %590 = or i64 %578, %570
  %591 = select i1 %568, i64 %589, i64 %590
  %592 = add nuw nsw i64 %574, 1
  %593 = icmp eq i64 %592, %572
  br i1 %593, label %594, label %573, !llvm.loop !317

594:                                              ; preds = %573
  store i64 %586, ptr @reg_reloaded_dead, align 8, !tbaa !38
  store i64 %587, ptr @reg_reloaded_valid, align 8, !tbaa !38
  store i64 %588, ptr @reg_is_output_reload, align 8, !tbaa !38
  store i64 %591, ptr @reg_reloaded_died, align 8, !tbaa !38
  br label %595

595:                                              ; preds = %594, %560
  %596 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %597 = getelementptr inbounds ptr, ptr %596, i64 %484
  store ptr %536, ptr %597, align 8, !tbaa !21
  %598 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @reg_has_output_reload, i32 noundef %471) #22
  br label %613

599:                                              ; preds = %480
  %600 = sext i32 %471 to i64
  %601 = zext nneg i32 %473 to i64
  %602 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %600, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !5
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %613, label %605

605:                                              ; preds = %599
  %606 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %607 = shl nsw i64 %600, 3
  %608 = getelementptr i8, ptr %606, i64 %607
  %609 = zext i8 %603 to i64
  %610 = shl nuw nsw i64 %609, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %608, i8 0, i64 %610, i1 false), !tbaa !21
  br label %613

611:                                              ; preds = %424
  store i64 %431, ptr @reg_reloaded_dead, align 8, !tbaa !38
  store i64 %437, ptr @reg_reloaded_valid, align 8, !tbaa !38
  br label %613

612:                                              ; preds = %286
  store i64 %293, ptr @reg_reloaded_dead, align 8, !tbaa !38
  store i64 %299, ptr @reg_reloaded_valid, align 8, !tbaa !38
  br label %613

613:                                              ; preds = %198, %605, %599, %280, %612, %418, %611, %335, %204, %302, %307, %320, %325, %329, %489, %499, %502, %447, %444, %157, %595, %540, %534, %531, %457, %453
  %614 = add nuw nsw i64 %103, 1
  %615 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %616 = sext i32 %615 to i64
  %617 = icmp slt i64 %614, %616
  br i1 %617, label %102, label %618, !llvm.loop !318

618:                                              ; preds = %613, %79
  %619 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !38
  %620 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !38
  %621 = or i64 %620, %619
  store i64 %621, ptr @reg_reloaded_dead, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @subst_reloads(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_eh_region_note(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef null) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %0) #22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %4) #22
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  tail call void @copy_reg_eh_region_note_forward(ptr noundef nonnull %4, ptr noundef %12, ptr noundef %2) #22
  br label %13

13:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forget_marked_reloads(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #23
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %8

8:                                                ; preds = %6, %41
  %9 = phi i32 [ %7, %6 ], [ %42, %41 ]
  %10 = load i32, ptr %2, align 4, !tbaa !27
  %11 = icmp ult i32 %10, 53
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = zext nneg i32 %10 to i64
  %16 = shl nuw nsw i64 1, %15
  br label %23

17:                                               ; preds = %12
  %18 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !38
  %19 = zext nneg i32 %10 to i64
  %20 = shl nuw nsw i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14, %17
  %24 = phi i64 [ %16, %14 ], [ %20, %17 ]
  %25 = phi i64 [ %15, %14 ], [ %19, %17 ]
  %26 = xor i64 %24, -1
  %27 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %28 = and i64 %27, %26
  store i64 %28, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %29 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %25
  store ptr null, ptr %29, align 8, !tbaa !21
  br label %30

30:                                               ; preds = %23, %8
  %31 = icmp eq i32 %9, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %17, %30
  %33 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %10) #22
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br i1 %34, label %36, label %41

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %35, %32 ], [ 0, %30 ]
  %38 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %39 = zext i32 %10 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr null, ptr %40, align 8, !tbaa !21
  br label %41

41:                                               ; preds = %32, %36
  %42 = phi i32 [ %35, %32 ], [ %37, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !26
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %8, !llvm.loop !319

45:                                               ; preds = %41, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_reload_regs_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %13, %8 ]
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  store ptr %11, ptr %12, align 8, !tbaa !195
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %7
  br i1 %14, label %15, label %8, !llvm.loop !320

15:                                               ; preds = %8, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) @reload_inherited, i8 0, i64 180, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) @reload_override_in, i8 0, i64 1440, i1 false)
  store i64 0, ptr @reload_reg_used, align 8, !tbaa !38
  store i64 0, ptr @reload_reg_used_at_all, align 8, !tbaa !38
  store i64 0, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  store i64 0, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  store i64 0, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  store i64 0, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !38
  store i64 0, ptr @reg_used_in_insn, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %16) #22
  %17 = load i64, ptr %3, align 8, !tbaa !38
  %18 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !38
  %19 = or i64 %18, %17
  store i64 %19, ptr @reg_used_in_insn, align 8, !tbaa !38
  store i64 0, ptr %3, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %20) #22
  %21 = load i64, ptr %3, align 8, !tbaa !38
  %22 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !38
  %23 = or i64 %22, %21
  store i64 %23, ptr @reg_used_in_insn, align 8, !tbaa !38
  call void @compute_use_by_pseudos(ptr noundef nonnull @reg_used_in_insn, ptr noundef nonnull %16) #23
  call void @compute_use_by_pseudos(ptr noundef nonnull @reg_used_in_insn, ptr noundef nonnull %20) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  %24 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = zext nneg i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_output, i8 0, i64 %28, i1 false), !tbaa !38
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_input, i8 0, i64 %28, i1 false), !tbaa !38
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_input_addr, i8 0, i64 %28, i1 false), !tbaa !38
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_inpaddr_addr, i8 0, i64 %28, i1 false), !tbaa !38
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_output_addr, i8 0, i64 %28, i1 false), !tbaa !38
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_outaddr_addr, i8 0, i64 %28, i1 false), !tbaa !38
  br label %29

29:                                               ; preds = %26, %15
  %30 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !147
  %32 = xor i64 %31, -1
  store i64 %32, ptr @reload_reg_unavailable, align 8, !tbaa !38
  store i64 0, ptr @reload_reg_used_for_inherit, align 8, !tbaa !38
  %33 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %29, %50
  %36 = phi i32 [ %51, %50 ], [ %33, %29 ]
  %37 = phi i64 [ %52, %50 ], [ 0, %29 ]
  %38 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !195
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = call fastcc i32 @rhs_regno(ptr noundef nonnull %39) #23
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !197
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !198
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !199
  call fastcc void @mark_reload_reg_in_use(i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #23
  %49 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %50

50:                                               ; preds = %35, %41
  %51 = phi i32 [ %36, %35 ], [ %49, %41 ]
  %52 = add nuw nsw i64 %37, 1
  %53 = sext i32 %51 to i64
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %35, label %55, !llvm.loop !321

55:                                               ; preds = %50, %29
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @secondary_reload_class(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_secondary_memory_needed(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @free_for_value_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = sext i32 %0 to i64
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %17, %8
  %15 = phi i32 [ %13, %8 ], [ %18, %17 ]
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = add nsw i32 %15, -1
  %19 = add nsw i32 %18, %0
  %20 = tail call fastcc i32 @reload_reg_free_for_value_p(i32 noundef %0, i32 noundef %19, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %14, !llvm.loop !322

22:                                               ; preds = %14, %17
  %23 = phi i32 [ 0, %17 ], [ 1, %14 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_for_reload_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @mark_reload_reg_in_use(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #19 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, %0
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %12, label %74

12:                                               ; preds = %4
  %13 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !38
  %14 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %15 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  %16 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  %17 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !38
  %18 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %19
  %21 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %19
  %22 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %19
  %23 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %19
  %24 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %19
  %25 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %19
  %26 = zext i32 %10 to i64
  br label %27

27:                                               ; preds = %12, %64
  %28 = phi i64 [ %5, %12 ], [ %71, %64 ]
  %29 = phi i64 [ %18, %12 ], [ %69, %64 ]
  %30 = phi i64 [ %17, %12 ], [ %68, %64 ]
  %31 = phi i64 [ %16, %12 ], [ %67, %64 ]
  %32 = phi i64 [ %15, %12 ], [ %66, %64 ]
  %33 = phi i64 [ %14, %12 ], [ %65, %64 ]
  %34 = phi i64 [ %13, %12 ], [ %70, %64 ]
  %35 = shl nuw i64 1, %28
  switch i32 %2, label %64 [
    i32 9, label %36
    i32 3, label %38
    i32 4, label %41
    i32 5, label %44
    i32 6, label %47
    i32 7, label %50
    i32 8, label %52
    i32 10, label %54
    i32 0, label %56
    i32 1, label %59
    i32 2, label %62
  ]

36:                                               ; preds = %27
  %37 = or i64 %33, %35
  store i64 %37, ptr @reload_reg_used, align 8, !tbaa !38
  br label %64

38:                                               ; preds = %27
  %39 = load i64, ptr %25, align 8, !tbaa !38
  %40 = or i64 %39, %35
  store i64 %40, ptr %25, align 8, !tbaa !38
  br label %64

41:                                               ; preds = %27
  %42 = load i64, ptr %24, align 8, !tbaa !38
  %43 = or i64 %42, %35
  store i64 %43, ptr %24, align 8, !tbaa !38
  br label %64

44:                                               ; preds = %27
  %45 = load i64, ptr %23, align 8, !tbaa !38
  %46 = or i64 %45, %35
  store i64 %46, ptr %23, align 8, !tbaa !38
  br label %64

47:                                               ; preds = %27
  %48 = load i64, ptr %22, align 8, !tbaa !38
  %49 = or i64 %48, %35
  store i64 %49, ptr %22, align 8, !tbaa !38
  br label %64

50:                                               ; preds = %27
  %51 = or i64 %32, %35
  store i64 %51, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  br label %64

52:                                               ; preds = %27
  %53 = or i64 %31, %35
  store i64 %53, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  br label %64

54:                                               ; preds = %27
  %55 = or i64 %30, %35
  store i64 %55, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !38
  br label %64

56:                                               ; preds = %27
  %57 = load i64, ptr %21, align 8, !tbaa !38
  %58 = or i64 %57, %35
  store i64 %58, ptr %21, align 8, !tbaa !38
  br label %64

59:                                               ; preds = %27
  %60 = load i64, ptr %20, align 8, !tbaa !38
  %61 = or i64 %60, %35
  store i64 %61, ptr %20, align 8, !tbaa !38
  br label %64

62:                                               ; preds = %27
  %63 = or i64 %29, %35
  store i64 %63, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  br label %64

64:                                               ; preds = %27, %62, %59, %56, %54, %52, %50, %47, %44, %41, %38, %36
  %65 = phi i64 [ %33, %62 ], [ %33, %59 ], [ %33, %56 ], [ %33, %54 ], [ %33, %52 ], [ %33, %50 ], [ %33, %47 ], [ %33, %44 ], [ %33, %41 ], [ %33, %38 ], [ %37, %36 ], [ %33, %27 ]
  %66 = phi i64 [ %32, %62 ], [ %32, %59 ], [ %32, %56 ], [ %32, %54 ], [ %32, %52 ], [ %51, %50 ], [ %32, %47 ], [ %32, %44 ], [ %32, %41 ], [ %32, %38 ], [ %32, %36 ], [ %32, %27 ]
  %67 = phi i64 [ %31, %62 ], [ %31, %59 ], [ %31, %56 ], [ %31, %54 ], [ %53, %52 ], [ %31, %50 ], [ %31, %47 ], [ %31, %44 ], [ %31, %41 ], [ %31, %38 ], [ %31, %36 ], [ %31, %27 ]
  %68 = phi i64 [ %30, %62 ], [ %30, %59 ], [ %30, %56 ], [ %55, %54 ], [ %30, %52 ], [ %30, %50 ], [ %30, %47 ], [ %30, %44 ], [ %30, %41 ], [ %30, %38 ], [ %30, %36 ], [ %30, %27 ]
  %69 = phi i64 [ %63, %62 ], [ %29, %59 ], [ %29, %56 ], [ %29, %54 ], [ %29, %52 ], [ %29, %50 ], [ %29, %47 ], [ %29, %44 ], [ %29, %41 ], [ %29, %38 ], [ %29, %36 ], [ %29, %27 ]
  %70 = or i64 %34, %35
  %71 = add nuw nsw i64 %28, 1
  %72 = icmp eq i64 %71, %26
  br i1 %72, label %73, label %27, !llvm.loop !323

73:                                               ; preds = %64
  store i64 %70, ptr @reload_reg_used_at_all, align 8, !tbaa !38
  br label %74

74:                                               ; preds = %73, %4
  ret void
}

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_equiv_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @regno_clobbered_p(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @allocate_reload_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3
  %5 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !246
  %7 = icmp ugt i32 %6, 1
  %8 = icmp eq i32 %1, 0
  %9 = and i1 %8, %7
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 2
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %12 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 17
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 5
  %14 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 1
  %15 = select i1 %9, i32 7, i32 5
  %16 = load i32, ptr @n_spills, align 4, !tbaa !27
  br label %18

17:                                               ; preds = %129
  br i1 %20, label %18, label %136, !llvm.loop !324

18:                                               ; preds = %2, %17
  %19 = phi i32 [ %16, %2 ], [ %130, %17 ]
  %20 = phi i1 [ true, %2 ], [ false, %17 ]
  %21 = load i32, ptr @last_spill_reg, align 4, !tbaa !27
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %23, label %129

23:                                               ; preds = %18, %125
  %24 = phi i32 [ %127, %125 ], [ %19, %18 ]
  %25 = phi i32 [ %31, %125 ], [ %21, %18 ]
  %26 = phi i32 [ %126, %125 ], [ 0, %18 ]
  %27 = load i32, ptr %10, align 8, !tbaa !250
  %28 = add nsw i32 %25, 1
  %29 = icmp slt i32 %28, %24
  %30 = select i1 %29, i32 0, i32 %24
  %31 = sub nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !28
  %35 = sext i16 %34 to i32
  %36 = load i32, ptr %11, align 8, !tbaa !197
  %37 = load i32, ptr %12, align 4, !tbaa !198
  %38 = tail call fastcc i32 @reload_reg_free_p(i32 noundef %35, i32 noundef %36, i32 noundef %37) #23, !range !55
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = zext nneg i32 %35 to i64
  %42 = shl nuw i64 1, %41
  br label %59

43:                                               ; preds = %23
  %44 = load ptr, ptr %4, align 8, !tbaa !249
  %45 = icmp eq ptr %44, null
  br i1 %45, label %125, label %46

46:                                               ; preds = %43
  %47 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %48 = zext nneg i32 %35 to i64
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %125

52:                                               ; preds = %46
  %53 = load i32, ptr %13, align 4, !tbaa !199
  %54 = load i32, ptr %11, align 8, !tbaa !197
  %55 = load i32, ptr %12, align 4, !tbaa !198
  %56 = load ptr, ptr %14, align 8, !tbaa !248
  %57 = tail call fastcc i32 @free_for_value_p(i32 noundef %35, i32 noundef %53, i32 noundef %54, i32 noundef %55, ptr noundef nonnull %44, ptr noundef %56, i32 noundef %0, i32 noundef 1) #23, !range !55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %125, label %59

59:                                               ; preds = %40, %52
  %60 = phi i64 [ %42, %40 ], [ %49, %52 ]
  %61 = sext i32 %27 to i64
  %62 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !38
  %64 = and i64 %63, %60
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %125, label %66

66:                                               ; preds = %59
  %67 = load i32, ptr %13, align 4, !tbaa !199
  %68 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %35, i32 noundef %67) #22
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %125, label %70

70:                                               ; preds = %66
  br i1 %20, label %71, label %79

71:                                               ; preds = %70
  %72 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !38
  %73 = and i64 %72, %60
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %125, label %75

75:                                               ; preds = %71
  %76 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !38
  %77 = and i64 %76, %60
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %75, %70
  %80 = sext i16 %34 to i64
  %81 = load i32, ptr %13, align 4, !tbaa !199
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %80, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  br i1 %9, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, ptr %5, align 8, !tbaa !246
  br label %88

88:                                               ; preds = %86, %79
  %89 = phi i32 [ %87, %86 ], [ %85, %79 ]
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %120, label %91

91:                                               ; preds = %88
  %92 = add nsw i32 %35, -1
  %93 = sext i32 %89 to i64
  %94 = tail call i32 @llvm.smin.i32(i32 %89, i32 1)
  br label %95

95:                                               ; preds = %91, %111
  %96 = phi i64 [ %93, %91 ], [ %116, %111 ]
  %97 = icmp sgt i64 %96, 1
  %98 = trunc i64 %96 to i32
  br i1 %97, label %99, label %117

99:                                               ; preds = %95
  %100 = add i32 %92, %98
  %101 = load i64, ptr %62, align 8, !tbaa !38
  %102 = zext nneg i32 %100 to i64
  %103 = shl nuw i64 1, %102
  %104 = and i64 %101, %103
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %99
  %107 = sext i32 %100 to i64
  %108 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !28
  %110 = icmp sgt i16 %109, -1
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i32, ptr %11, align 8, !tbaa !197
  %113 = load i32, ptr %12, align 4, !tbaa !198
  %114 = tail call fastcc i32 @reload_reg_free_p(i32 noundef %100, i32 noundef %112, i32 noundef %113) #23, !range !55
  %115 = icmp eq i32 %114, 0
  %116 = add nsw i64 %96, -1
  br i1 %115, label %117, label %95

117:                                              ; preds = %111, %95
  %118 = phi i32 [ %98, %111 ], [ %94, %95 ]
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %125

120:                                              ; preds = %88, %117
  %121 = phi i32 [ 5, %117 ], [ %15, %88 ]
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, ptr @n_spills, align 4, !tbaa !27
  br label %129

125:                                              ; preds = %106, %99, %117, %75, %71, %66, %59, %52, %46, %43, %120
  %126 = add nuw nsw i32 %26, 1
  %127 = load i32, ptr @n_spills, align 4, !tbaa !27
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %23, label %129, !llvm.loop !325

129:                                              ; preds = %125, %123, %18
  %130 = phi i32 [ %19, %18 ], [ %124, %123 ], [ %127, %125 ]
  %131 = phi i32 [ 0, %18 ], [ %26, %123 ], [ %126, %125 ]
  %132 = phi i32 [ %21, %18 ], [ %31, %123 ], [ %31, %125 ]
  %133 = icmp slt i32 %131, %130
  br i1 %133, label %134, label %17

134:                                              ; preds = %129
  %135 = tail call fastcc i32 @set_reload_reg(i32 noundef %132, i32 noundef %0) #23, !range !55
  br label %136

136:                                              ; preds = %17, %134
  %137 = phi i32 [ %135, %134 ], [ 0, %17 ]
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_reload_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [53 x ptr], ptr @spill_reg_rtx, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !199
  br label %19

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !199
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %7, %11
  %20 = phi i64 [ %8, %7 ], [ %15, %11 ]
  %21 = phi i32 [ %10, %7 ], [ %17, %11 ]
  %22 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %3
  %23 = load i16, ptr %22, align 2, !tbaa !28
  %24 = sext i16 %23 to i32
  %25 = tail call ptr @gen_rtx_REG(i32 noundef %21, i32 noundef %24) #22
  store ptr %25, ptr %4, align 8, !tbaa !21
  br label %26

26:                                               ; preds = %19, %11
  %27 = phi i64 [ %20, %19 ], [ %15, %11 ]
  %28 = phi ptr [ %25, %19 ], [ %5, %11 ]
  %29 = tail call i32 @true_regnum(ptr noundef %28) #22
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !199
  %32 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %31) #22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %69, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27
  %36 = load ptr, ptr %35, align 8, !tbaa !249
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %41) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %34, %43, %38
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !248
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %53) #22
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %50, %46
  store i32 %0, ptr @last_spill_reg, align 4, !tbaa !27
  %57 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %3
  %58 = load i16, ptr %57, align 2, !tbaa !28
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !197
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 17
  %63 = load i32, ptr %62, align 4, !tbaa !198
  %64 = load i32, ptr %30, align 4, !tbaa !199
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %64) #23
  %65 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 11
  store ptr %28, ptr %65, align 8, !tbaa !195
  %66 = load i16, ptr %57, align 2, !tbaa !28
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %27
  store i32 %67, ptr %68, align 4, !tbaa !27
  br label %69

69:                                               ; preds = %26, %43, %50, %56
  %70 = phi i32 [ 1, %56 ], [ 0, %50 ], [ 0, %43 ], [ 0, %26 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @failed_reload(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call i32 @asm_noperands(ptr noundef %4) #22
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @_fatal_insn(ptr noundef nonnull @.str.18, ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 5706, ptr noundef nonnull @.str.2) #22
  br label %8

8:                                                ; preds = %7, %2
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #22
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  store ptr null, ptr %11, align 8, !tbaa !195
  %12 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %13 = load i8, ptr %12, align 8
  %14 = or i8 %13, 5
  store i8 %14, ptr %12, align 8
  ret void
}

; Function Attrs: optsize
declare i32 @remove_address_replacements(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @reload_reg_free_for_value_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !38
  %10 = zext nneg i32 %1 to i64
  %11 = shl nuw i64 1, %10
  %12 = and i64 %9, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %211

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %16 = icmp ne ptr %15, %5
  %17 = select i1 %16, ptr %5, ptr null
  switch i32 %3, label %38 [
    i32 10, label %18
    i32 9, label %20
    i32 4, label %22
    i32 3, label %25
    i32 0, label %28
    i32 8, label %39
    i32 7, label %32
    i32 6, label %34
    i32 5, label %36
  ]

18:                                               ; preds = %14
  %19 = zext i1 %16 to i32
  br label %39

20:                                               ; preds = %14
  %21 = select i1 %16, i32 155, i32 1
  br label %39

22:                                               ; preds = %14
  %23 = shl nsw i32 %2, 2
  %24 = or disjoint i32 %23, 2
  br label %39

25:                                               ; preds = %14
  %26 = shl nsw i32 %2, 2
  %27 = or disjoint i32 %26, 3
  br label %39

28:                                               ; preds = %14
  %29 = shl nsw i32 %2, 2
  %30 = add nsw i32 %29, 4
  %31 = select i1 %16, i32 123, i32 %30
  br label %39

32:                                               ; preds = %14
  %33 = select i1 %16, i32 123, i32 122
  br label %39

34:                                               ; preds = %14
  %35 = add nsw i32 %2, 124
  br label %39

36:                                               ; preds = %14
  %37 = add nsw i32 %2, 125
  br label %39

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %14, %38, %36, %34, %32, %28, %25, %22, %20, %18
  %40 = phi i32 [ 155, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %28 ], [ %27, %25 ], [ %24, %22 ], [ %21, %20 ], [ %19, %18 ], [ 121, %14 ]
  %41 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %210

43:                                               ; preds = %39
  %44 = icmp ne ptr %17, null
  %45 = icmp eq ptr %17, null
  %46 = icmp eq i32 %3, 5
  %47 = icmp ne i32 %7, 0
  %48 = sext i32 %6 to i64
  %49 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %48, i32 1
  %50 = icmp eq i32 %3, 7
  %51 = icmp eq i32 %3, 0
  %52 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %48, i32 9
  %53 = zext i32 %6 to i64
  br label %54

54:                                               ; preds = %43, %197
  %55 = phi i64 [ 0, %43 ], [ %199, %197 ]
  %56 = phi i32 [ 0, %43 ], [ %198, %197 ]
  %57 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55
  %58 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !195
  %60 = icmp eq ptr %59, null
  br i1 %60, label %197, label %61

61:                                               ; preds = %54
  %62 = load i32, ptr %59, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %197

65:                                               ; preds = %61
  %66 = tail call i32 @true_regnum(ptr noundef nonnull %59) #22
  %67 = sub i32 %1, %66
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %59) #23
  %69 = zext i32 %68 to i64
  %70 = load i32, ptr %59, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %69, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -1
  %78 = icmp ugt i32 %67, %77
  %79 = icmp eq i64 %55, %53
  %80 = or i1 %79, %78
  br i1 %80, label %197, label %81

81:                                               ; preds = %65
  %82 = load ptr, ptr %57, align 8, !tbaa !249
  %83 = tail call i32 @true_regnum(ptr noundef nonnull %59) #22
  %84 = icmp eq i32 %83, %0
  %85 = select i1 %84, ptr %82, ptr null
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = tail call i32 @rtx_equal_p(ptr noundef nonnull %85, ptr noundef %4) #22
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !248
  %93 = icmp ne ptr %92, null
  %94 = or i1 %44, %93
  br i1 %94, label %95, label %197

95:                                               ; preds = %90, %87, %81
  %96 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 17
  %97 = load i32, ptr %96, align 4, !tbaa !198
  switch i32 %97, label %211 [
    i32 10, label %177
    i32 4, label %98
    i32 3, label %119
    i32 0, label %132
    i32 8, label %137
    i32 7, label %145
    i32 2, label %146
    i32 1, label %147
    i32 6, label %148
    i32 5, label %160
    i32 9, label %164
  ]

98:                                               ; preds = %95
  switch i32 %3, label %114 [
    i32 3, label %99
    i32 0, label %106
  ]

99:                                               ; preds = %98
  %100 = add nuw nsw i64 %55, 1
  %101 = icmp eq i64 %100, %53
  %102 = and i1 %47, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load ptr, ptr %49, align 8, !tbaa !248
  %105 = icmp eq ptr %104, null
  br i1 %105, label %197, label %114

106:                                              ; preds = %98
  %107 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 12
  %108 = load i32, ptr %107, align 8, !tbaa !197
  %109 = icmp eq i32 %108, %2
  %110 = and i1 %47, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load ptr, ptr %49, align 8, !tbaa !248
  %113 = icmp eq ptr %112, null
  br i1 %113, label %197, label %114

114:                                              ; preds = %99, %103, %98, %111, %106
  %115 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 12
  %116 = load i32, ptr %115, align 8, !tbaa !197
  %117 = shl nsw i32 %116, 2
  %118 = or disjoint i32 %117, 2
  br label %177

119:                                              ; preds = %95
  %120 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 12
  %121 = load i32, ptr %120, align 8, !tbaa !197
  %122 = icmp eq i32 %121, %2
  %123 = and i1 %47, %122
  %124 = select i1 %51, i1 %123, i1 false
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load ptr, ptr %49, align 8, !tbaa !248
  %127 = icmp eq ptr %126, null
  br i1 %127, label %197, label %128

128:                                              ; preds = %119, %125
  %129 = phi i32 [ %2, %125 ], [ %121, %119 ]
  %130 = shl nsw i32 %129, 2
  %131 = or disjoint i32 %130, 3
  br label %177

132:                                              ; preds = %95
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 12
  %134 = load i32, ptr %133, align 8, !tbaa !197
  %135 = shl nsw i32 %134, 2
  %136 = add nsw i32 %135, 4
  br label %177

137:                                              ; preds = %95
  br i1 %50, label %138, label %177

138:                                              ; preds = %137
  %139 = add nuw nsw i64 %55, 1
  %140 = icmp eq i64 %139, %53
  %141 = and i1 %47, %140
  br i1 %141, label %142, label %177

142:                                              ; preds = %138
  %143 = load ptr, ptr %49, align 8, !tbaa !248
  %144 = icmp eq ptr %143, null
  br i1 %144, label %197, label %177

145:                                              ; preds = %95
  br label %177

146:                                              ; preds = %95
  br label %177

147:                                              ; preds = %95
  br label %177

148:                                              ; preds = %95
  br i1 %46, label %149, label %156

149:                                              ; preds = %148
  %150 = add nuw nsw i64 %55, 1
  %151 = icmp eq i64 %150, %53
  %152 = and i1 %47, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load ptr, ptr %49, align 8, !tbaa !248
  %155 = icmp eq ptr %154, null
  br i1 %155, label %197, label %156

156:                                              ; preds = %153, %149, %148
  %157 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 12
  %158 = load i32, ptr %157, align 8, !tbaa !197
  %159 = add nsw i32 %158, 124
  br label %177

160:                                              ; preds = %95
  %161 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 12
  %162 = load i32, ptr %161, align 8, !tbaa !197
  %163 = add nsw i32 %162, 125
  br label %177

164:                                              ; preds = %95
  %165 = load ptr, ptr %57, align 8, !tbaa !249
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = tail call i32 @rtx_equal_p(ptr noundef %85, ptr noundef %4) #22
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %167, %164
  %171 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !248
  %173 = tail call i32 @earlyclobber_operand_p(ptr noundef %172) #22
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i32 124, i32 123
  br label %177

176:                                              ; preds = %167
  br i1 %45, label %177, label %211

177:                                              ; preds = %170, %137, %138, %142, %95, %176, %160, %156, %147, %146, %145, %132, %128, %114
  %178 = phi i32 [ %56, %176 ], [ %56, %160 ], [ %56, %156 ], [ %56, %147 ], [ %56, %146 ], [ 1, %145 ], [ 1, %132 ], [ %56, %128 ], [ %56, %114 ], [ %56, %95 ], [ %56, %142 ], [ %56, %138 ], [ %56, %137 ], [ %56, %170 ]
  %179 = phi i32 [ 1, %176 ], [ %163, %160 ], [ %159, %156 ], [ 124, %147 ], [ 123, %146 ], [ 122, %145 ], [ %136, %132 ], [ %131, %128 ], [ %118, %114 ], [ 0, %95 ], [ 121, %142 ], [ 121, %138 ], [ 121, %137 ], [ %175, %170 ]
  %180 = icmp slt i32 %40, %179
  br i1 %180, label %191, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %57, align 8, !tbaa !249
  %183 = icmp eq ptr %182, null
  br i1 %183, label %211, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %55, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !248
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %211

188:                                              ; preds = %184
  %189 = tail call i32 @rtx_equal_p(ptr noundef %85, ptr noundef %4) #22
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %211, label %191

191:                                              ; preds = %188, %177
  br i1 %45, label %197, label %192

192:                                              ; preds = %191
  %193 = load ptr, ptr %52, align 8, !tbaa !298
  %194 = icmp ne ptr %193, null
  %195 = icmp sgt i32 %179, 122
  %196 = and i1 %195, %194
  br i1 %196, label %211, label %197

197:                                              ; preds = %153, %142, %125, %111, %103, %191, %192, %90, %54, %61, %65
  %198 = phi i32 [ %56, %65 ], [ %56, %61 ], [ %56, %54 ], [ %178, %191 ], [ %178, %192 ], [ %56, %90 ], [ %56, %103 ], [ %56, %111 ], [ %56, %125 ], [ %56, %142 ], [ %56, %153 ]
  %199 = add nuw nsw i64 %55, 1
  %200 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %54, label %203, !llvm.loop !326

203:                                              ; preds = %197
  %204 = icmp ne i32 %198, 0
  %205 = icmp ne ptr %17, null
  %206 = and i1 %205, %204
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %17) #22
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %39, %207, %203
  br label %211

211:                                              ; preds = %176, %95, %192, %188, %184, %181, %207, %8, %210
  %212 = phi i32 [ 1, %210 ], [ 0, %8 ], [ 0, %207 ], [ 0, %181 ], [ 0, %184 ], [ 0, %188 ], [ 0, %192 ], [ 0, %95 ], [ 0, %176 ]
  ret i32 %212
}

; Function Attrs: optsize
declare i32 @earlyclobber_operand_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_reg_free_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %5 = zext nneg i32 %0 to i64
  %6 = shl nuw i64 1, %5
  %7 = and i64 %4, %6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %304

9:                                                ; preds = %3
  %10 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !38
  %11 = and i64 %10, %6
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %304

13:                                               ; preds = %9
  switch i32 %2, label %303 [
    i32 9, label %29
    i32 0, label %84
    i32 3, label %127
    i32 4, label %151
    i32 5, label %170
    i32 6, label %190
    i32 7, label %24
    i32 8, label %19
    i32 1, label %240
    i32 2, label %14
    i32 10, label %299
  ]

14:                                               ; preds = %13
  %15 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %291

17:                                               ; preds = %14
  %18 = zext nneg i32 %15 to i64
  br label %280

19:                                               ; preds = %13
  %20 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %236

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %230

24:                                               ; preds = %13
  %25 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %219

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  br label %213

29:                                               ; preds = %13
  %30 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !38
  %31 = and i64 %30, %6
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %304

33:                                               ; preds = %29
  %34 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  %35 = and i64 %34, %6
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %304

37:                                               ; preds = %33
  %38 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  %39 = and i64 %38, %6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %304

41:                                               ; preds = %37
  %42 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %43 = and i64 %42, %6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %304

45:                                               ; preds = %41
  %46 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %304

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  br label %53

50:                                               ; preds = %79
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, %49
  br i1 %52, label %304, label %53, !llvm.loop !327

53:                                               ; preds = %48, %50
  %54 = phi i64 [ 0, %48 ], [ %51, %50 ]
  %55 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !38
  %57 = and i64 %56, %6
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %304

59:                                               ; preds = %53
  %60 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %54
  %61 = load i64, ptr %60, align 8, !tbaa !38
  %62 = and i64 %61, %6
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %304

64:                                               ; preds = %59
  %65 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %54
  %66 = load i64, ptr %65, align 8, !tbaa !38
  %67 = and i64 %66, %6
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %304

69:                                               ; preds = %64
  %70 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %54
  %71 = load i64, ptr %70, align 8, !tbaa !38
  %72 = and i64 %71, %6
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %304

74:                                               ; preds = %69
  %75 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %54
  %76 = load i64, ptr %75, align 8, !tbaa !38
  %77 = and i64 %76, %6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %304

79:                                               ; preds = %74
  %80 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %54
  %81 = load i64, ptr %80, align 8, !tbaa !38
  %82 = and i64 %81, %6
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %50, label %304

84:                                               ; preds = %13
  %85 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %86 = and i64 %85, %6
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %304

88:                                               ; preds = %84
  %89 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  %90 = and i64 %89, %6
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %304

92:                                               ; preds = %88
  %93 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  %94 = and i64 %93, %6
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %304

96:                                               ; preds = %92
  %97 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = zext nneg i32 %97 to i64
  br label %107

101:                                              ; preds = %107
  %102 = add nuw nsw i64 %108, 1
  %103 = icmp eq i64 %102, %100
  br i1 %103, label %104, label %107, !llvm.loop !328

104:                                              ; preds = %101, %96
  %105 = sext i32 %1 to i64
  %106 = sext i32 %97 to i64
  br label %113

107:                                              ; preds = %99, %101
  %108 = phi i64 [ 0, %99 ], [ %102, %101 ]
  %109 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !38
  %111 = and i64 %110, %6
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %101, label %304

113:                                              ; preds = %104, %122
  %114 = phi i64 [ %105, %104 ], [ %115, %122 ]
  %115 = add nsw i64 %114, 1
  %116 = icmp sge i64 %115, %106
  br i1 %116, label %304, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %115
  %119 = load i64, ptr %118, align 8, !tbaa !38
  %120 = and i64 %119, %6
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %304

122:                                              ; preds = %117
  %123 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %115
  %124 = load i64, ptr %123, align 8, !tbaa !38
  %125 = and i64 %124, %6
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %113, label %304, !llvm.loop !329

127:                                              ; preds = %13
  %128 = sext i32 %1 to i64
  %129 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !38
  %131 = and i64 %130, %6
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %304

133:                                              ; preds = %127
  %134 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %128
  %135 = load i64, ptr %134, align 8, !tbaa !38
  %136 = and i64 %135, %6
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %304

138:                                              ; preds = %133
  %139 = icmp sgt i32 %1, 0
  br i1 %139, label %140, label %304

140:                                              ; preds = %138
  %141 = zext nneg i32 %1 to i64
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %148, %142 ]
  %144 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !38
  %146 = and i64 %145, %6
  %147 = icmp eq i64 %146, 0
  %148 = add nuw nsw i64 %143, 1
  %149 = icmp ne i64 %148, %141
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %142, label %304, !llvm.loop !330

151:                                              ; preds = %13
  %152 = sext i32 %1 to i64
  %153 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !38
  %155 = and i64 %154, %6
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %304

157:                                              ; preds = %151
  %158 = icmp sgt i32 %1, 0
  br i1 %158, label %159, label %304

159:                                              ; preds = %157
  %160 = zext nneg i32 %1 to i64
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 0, %159 ], [ %167, %161 ]
  %163 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !38
  %165 = and i64 %164, %6
  %166 = icmp eq i64 %165, 0
  %167 = add nuw nsw i64 %162, 1
  %168 = icmp ne i64 %167, %160
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %161, label %304, !llvm.loop !331

170:                                              ; preds = %13
  %171 = sext i32 %1 to i64
  %172 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !38
  %174 = and i64 %173, %6
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %304

176:                                              ; preds = %170
  %177 = icmp slt i32 %1, 0
  br i1 %177, label %304, label %178

178:                                              ; preds = %176
  %179 = add nuw i32 %1, 1
  %180 = zext i32 %179 to i64
  br label %181

181:                                              ; preds = %181, %178
  %182 = phi i64 [ 0, %178 ], [ %187, %181 ]
  %183 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !38
  %185 = and i64 %184, %6
  %186 = icmp eq i64 %185, 0
  %187 = add nuw nsw i64 %182, 1
  %188 = icmp ne i64 %187, %180
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %181, label %304, !llvm.loop !332

190:                                              ; preds = %13
  %191 = sext i32 %1 to i64
  %192 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !38
  %194 = and i64 %193, %6
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %304

196:                                              ; preds = %190
  %197 = icmp slt i32 %1, 0
  br i1 %197, label %304, label %198

198:                                              ; preds = %196
  %199 = add nuw i32 %1, 1
  %200 = zext i32 %199 to i64
  br label %201

201:                                              ; preds = %201, %198
  %202 = phi i64 [ 0, %198 ], [ %207, %201 ]
  %203 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !38
  %205 = and i64 %204, %6
  %206 = icmp eq i64 %205, 0
  %207 = add nuw nsw i64 %202, 1
  %208 = icmp ne i64 %207, %200
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %201, label %304, !llvm.loop !333

210:                                              ; preds = %213
  %211 = add nuw nsw i64 %214, 1
  %212 = icmp eq i64 %211, %28
  br i1 %212, label %219, label %213, !llvm.loop !334

213:                                              ; preds = %27, %210
  %214 = phi i64 [ 0, %27 ], [ %211, %210 ]
  %215 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !38
  %217 = and i64 %216, %6
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %210, label %304

219:                                              ; preds = %210, %24
  %220 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %221 = and i64 %220, %6
  %222 = icmp eq i64 %221, 0
  %223 = load i64, ptr @reload_reg_used_in_op_addr, align 8
  %224 = and i64 %223, %6
  %225 = icmp eq i64 %224, 0
  %226 = select i1 %222, i1 %225, i1 false
  br label %304

227:                                              ; preds = %230
  %228 = add nuw nsw i64 %231, 1
  %229 = icmp eq i64 %228, %23
  br i1 %229, label %236, label %230, !llvm.loop !335

230:                                              ; preds = %22, %227
  %231 = phi i64 [ 0, %22 ], [ %228, %227 ]
  %232 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !38
  %234 = and i64 %233, %6
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %227, label %304

236:                                              ; preds = %227, %19
  %237 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  %238 = and i64 %237, %6
  %239 = icmp eq i64 %238, 0
  br label %304

240:                                              ; preds = %13
  %241 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %242 = and i64 %241, %6
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %304

244:                                              ; preds = %240
  %245 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = zext nneg i32 %245 to i64
  br label %257

249:                                              ; preds = %257
  %250 = add nuw nsw i64 %258, 1
  %251 = icmp eq i64 %250, %248
  br i1 %251, label %252, label %257, !llvm.loop !336

252:                                              ; preds = %249, %244
  %253 = icmp sgt i32 %245, %1
  br i1 %253, label %254, label %304

254:                                              ; preds = %252
  %255 = sext i32 %1 to i64
  %256 = sext i32 %245 to i64
  br label %266

257:                                              ; preds = %247, %249
  %258 = phi i64 [ 0, %247 ], [ %250, %249 ]
  %259 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !38
  %261 = and i64 %260, %6
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %249, label %304

263:                                              ; preds = %272
  %264 = add nsw i64 %267, 1
  %265 = icmp eq i64 %264, %256
  br i1 %265, label %304, label %266, !llvm.loop !337

266:                                              ; preds = %254, %263
  %267 = phi i64 [ %255, %254 ], [ %264, %263 ]
  %268 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !38
  %270 = and i64 %269, %6
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %304

272:                                              ; preds = %266
  %273 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %267
  %274 = load i64, ptr %273, align 8, !tbaa !38
  %275 = and i64 %274, %6
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %263, label %304

277:                                              ; preds = %286
  %278 = add nuw nsw i64 %281, 1
  %279 = icmp eq i64 %278, %18
  br i1 %279, label %291, label %280, !llvm.loop !338

280:                                              ; preds = %17, %277
  %281 = phi i64 [ 0, %17 ], [ %278, %277 ]
  %282 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %281
  %283 = load i64, ptr %282, align 8, !tbaa !38
  %284 = and i64 %283, %6
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %280
  %287 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %281
  %288 = load i64, ptr %287, align 8, !tbaa !38
  %289 = and i64 %288, %6
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %277, label %304

291:                                              ; preds = %277, %14
  %292 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %293 = and i64 %292, %6
  %294 = icmp eq i64 %293, 0
  %295 = load i64, ptr @reload_reg_used_in_op_addr, align 8
  %296 = and i64 %295, %6
  %297 = icmp eq i64 %296, 0
  %298 = select i1 %294, i1 %297, i1 false
  br label %304

299:                                              ; preds = %13
  %300 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !38
  %301 = and i64 %300, %6
  %302 = icmp eq i64 %301, 0
  br label %304

303:                                              ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4972, ptr noundef nonnull @.str.2) #22
  br label %304

304:                                              ; preds = %280, %286, %257, %272, %266, %263, %230, %213, %201, %181, %161, %142, %107, %113, %117, %122, %79, %74, %69, %64, %59, %53, %50, %252, %196, %176, %157, %138, %45, %240, %190, %170, %151, %127, %133, %92, %84, %88, %29, %33, %37, %41, %3, %9, %303, %299, %291, %236, %219
  %305 = phi i1 [ false, %303 ], [ %302, %299 ], [ %298, %291 ], [ %239, %236 ], [ %226, %219 ], [ false, %9 ], [ false, %3 ], [ false, %41 ], [ false, %37 ], [ false, %33 ], [ false, %29 ], [ false, %88 ], [ false, %84 ], [ false, %92 ], [ false, %133 ], [ false, %127 ], [ false, %151 ], [ false, %170 ], [ false, %190 ], [ false, %240 ], [ true, %45 ], [ true, %138 ], [ true, %157 ], [ true, %176 ], [ true, %196 ], [ true, %252 ], [ false, %79 ], [ false, %74 ], [ false, %69 ], [ false, %64 ], [ false, %59 ], [ false, %53 ], [ true, %50 ], [ %116, %122 ], [ %116, %117 ], [ %116, %113 ], [ false, %107 ], [ %147, %142 ], [ %166, %161 ], [ %186, %181 ], [ %206, %201 ], [ false, %213 ], [ false, %230 ], [ false, %272 ], [ false, %266 ], [ true, %263 ], [ false, %257 ], [ false, %286 ], [ false, %280 ]
  %306 = zext i1 %305 to i32
  ret i32 %306
}

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transfer_replacements(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_input_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = load ptr, ptr %1, align 8, !tbaa !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %11
  store ptr %10, ptr %12, align 8, !tbaa !21
  br label %69

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  %17 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %18 = select i1 %16, ptr %17, ptr %1
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  %22 = icmp ne ptr %19, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %45

25:                                               ; preds = %13
  %26 = load i32, ptr %19, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !339
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ %28, %25 ]
  %35 = load i32, ptr %21, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, %34
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %21, i32 noundef %34) #22
  br label %41

41:                                               ; preds = %33, %39
  %42 = phi ptr [ %21, %33 ], [ %40, %39 ]
  %43 = sext i32 %2 to i64
  %44 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %43
  store ptr %42, ptr %44, align 8, !tbaa !21
  br label %48

45:                                               ; preds = %13
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %46
  store ptr %21, ptr %47, align 8, !tbaa !21
  br i1 %22, label %48, label %69

48:                                               ; preds = %41, %45
  %49 = phi i64 [ %43, %41 ], [ %46, %45 ]
  %50 = phi ptr [ %42, %41 ], [ %21, %45 ]
  %51 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %49
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !248
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !298
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %48
  %63 = tail call i32 @rtx_equal_p(ptr noundef %50, ptr noundef nonnull %19) #22
  %64 = icmp eq i32 %63, 0
  %65 = icmp ne ptr %50, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.reload, ptr @rld, i64 %49
  tail call fastcc void @emit_input_reload_insns(ptr noundef nonnull %0, ptr noundef nonnull %68, ptr noundef nonnull %19, i32 noundef %2) #23
  br label %69

69:                                               ; preds = %8, %67, %62, %58, %54, %45
  %70 = phi i64 [ %49, %67 ], [ %49, %62 ], [ %49, %58 ], [ %49, %54 ], [ %46, %45 ], [ %11, %8 ]
  %71 = phi ptr [ %50, %67 ], [ %50, %62 ], [ %50, %58 ], [ %50, %54 ], [ %21, %45 ], [ %10, %8 ]
  %72 = load i32, ptr @optimize, align 4, !tbaa !27
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %142, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %70
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %108, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %1, align 8, !tbaa !249
  %80 = icmp eq ptr %79, null
  br i1 %80, label %114, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %79, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 43
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !281
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %114

91:                                               ; preds = %85
  %92 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %70
  %93 = load i32, ptr %92, align 4, !tbaa !27
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %97 = zext nneg i32 %93 to i64
  %98 = shl nuw i64 1, %97
  %99 = and i64 %96, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %103 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !27
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !21
  store ptr %107, ptr %1, align 8, !tbaa !249
  br label %114

108:                                              ; preds = %74
  %109 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %70
  %110 = load ptr, ptr %109, align 8, !tbaa !21
  %111 = icmp ne ptr %110, null
  %112 = icmp ne ptr %71, null
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %116, label %142

114:                                              ; preds = %101, %95, %91, %85, %81, %78
  %115 = icmp eq ptr %71, null
  br i1 %115, label %142, label %116

116:                                              ; preds = %108, %114
  %117 = load i32, ptr %71, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %142, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %122
  %128 = load ptr, ptr %127, align 8, !tbaa !21
  %129 = tail call i32 @dead_or_set_p(ptr noundef %5, ptr noundef %128) #22
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !21
  %136 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !298
  %138 = tail call i32 @rtx_equal_p(ptr noundef %135, ptr noundef %137) #22
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %131, %126
  %141 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  tail call fastcc void @delete_output_reload(ptr noundef %5, i32 noundef %2, i32 noundef %141, ptr noundef nonnull %71) #23
  br label %142

142:                                              ; preds = %69, %140, %131, %120, %116, %114, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_output_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !298
  %8 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !248
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load i32, ptr %11, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = tail call i32 @asm_noperands(ptr noundef %22) #22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @_fatal_insn(ptr noundef nonnull @.str.21, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef 7695, ptr noundef nonnull @.str.2) #22
  br label %26

26:                                               ; preds = %25, %20
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %5, ptr noundef nonnull @.str.22) #22
  %27 = load i32, ptr @word_mode, align 4, !tbaa !27
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #23
  %29 = tail call ptr @gen_rtx_REG(i32 noundef %27, i32 noundef %28) #22
  store ptr %29, ptr %10, align 8, !tbaa !248
  br label %30

30:                                               ; preds = %26, %15
  %31 = phi i32 [ %27, %26 ], [ %18, %15 ]
  %32 = load i32, ptr %9, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %9, i32 noundef %31) #22
  br label %38

38:                                               ; preds = %30, %36, %3
  %39 = phi ptr [ %9, %3 ], [ %37, %36 ], [ %9, %30 ]
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %40
  store ptr %39, ptr %41, align 8, !tbaa !21
  %42 = icmp ne ptr %7, null
  %43 = load i32, ptr @optimize, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %89

46:                                               ; preds = %38
  %47 = load i32, ptr %7, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !281
  %53 = tail call i32 @rtx_equal_p(ptr noundef %52, ptr noundef nonnull %7) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %57 = icmp ugt i32 %56, 52
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %60 = zext i32 %56 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %89, label %64

64:                                               ; preds = %58
  %65 = sext i32 %56 to i64
  %66 = getelementptr inbounds ptr, ptr %59, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !21
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef %67) #23
  %69 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !38
  %70 = zext nneg i32 %68 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %69
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %64
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !27
  %78 = icmp eq i32 %77, %56
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %75
  %81 = load ptr, ptr %80, align 8, !tbaa !21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %75
  %85 = load ptr, ptr %84, align 8, !tbaa !21
  %86 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef %85) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call fastcc void @delete_output_reload(ptr noundef %5, i32 noundef %2, i32 noundef %68, ptr noundef %39) #23
  br label %89

89:                                               ; preds = %64, %74, %79, %83, %88, %58, %55, %50, %46, %38
  %90 = load ptr, ptr %6, align 8, !tbaa !298
  %91 = icmp eq ptr %90, null
  %92 = icmp eq ptr %39, null
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %140, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @rtx_equal_p(ptr noundef nonnull %90, ptr noundef nonnull %39) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %94
  %98 = load i32, ptr %90, align 8
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -37
  %101 = icmp ult i32 %100, 2
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = tail call ptr @find_reg_note(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %90) #22
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, ptr %90, align 8
  br label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  store ptr %39, ptr %108, align 8, !tbaa !5
  br label %140

109:                                              ; preds = %105, %97
  %110 = phi i32 [ %106, %105 ], [ %98, %97 ]
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 39
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 37
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  %120 = tail call ptr @find_reg_note(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %115) #22
  %121 = icmp eq ptr %120, null
  %122 = load i32, ptr %90, align 8
  br i1 %121, label %123, label %125

123:                                              ; preds = %119
  %124 = and i32 %122, 65535
  br label %130

125:                                              ; preds = %119
  %126 = lshr i32 %122, 16
  %127 = and i32 %126, 255
  %128 = tail call ptr @gen_lowpart_common(i32 noundef %127, ptr noundef nonnull %39) #22
  %129 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  store ptr %128, ptr %129, align 8, !tbaa !5
  br label %140

130:                                              ; preds = %123, %109
  %131 = phi i32 [ %124, %123 ], [ %111, %109 ]
  %132 = icmp eq i32 %131, 38
  br i1 %132, label %140, label %133

133:                                              ; preds = %113, %130
  %134 = load i32, ptr %5, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 8
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7756, ptr noundef nonnull @.str.2) #22
  br label %138

138:                                              ; preds = %133, %137
  %139 = getelementptr inbounds %struct.reload, ptr @rld, i64 %40
  tail call fastcc void @emit_output_reload_insns(ptr noundef nonnull %0, ptr noundef nonnull %139, i32 noundef %2) #23
  br label %140

140:                                              ; preds = %130, %89, %94, %138, %125, %107
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_reg_reaches_end_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  switch i32 %2, label %249 [
    i32 9, label %250
    i32 10, label %19
    i32 3, label %76
    i32 4, label %76
    i32 0, label %13
    i32 7, label %4
    i32 8, label %6
    i32 2, label %226
    i32 1, label %228
    i32 5, label %228
    i32 6, label %228
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  br label %165

6:                                                ; preds = %3
  %7 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %8 = icmp sgt i32 %7, 0
  %9 = zext nneg i32 %0 to i64
  %10 = shl nuw i64 1, %9
  br i1 %8, label %11, label %214

11:                                               ; preds = %6
  %12 = zext nneg i32 %7 to i64
  br label %198

13:                                               ; preds = %3
  %14 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %15 = zext nneg i32 %0 to i64
  %16 = shl nuw i64 1, %15
  %17 = sext i32 %1 to i64
  %18 = sext i32 %14 to i64
  br label %146

19:                                               ; preds = %3
  %20 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %21 = icmp sgt i32 %20, 0
  %22 = zext nneg i32 %0 to i64
  %23 = shl nuw i64 1, %22
  br i1 %21, label %24, label %60

24:                                               ; preds = %19
  %25 = zext nneg i32 %20 to i64
  br label %29

26:                                               ; preds = %55
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %60, label %29, !llvm.loop !340

29:                                               ; preds = %24, %26
  %30 = phi i64 [ 0, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !38
  %33 = and i64 %32, %23
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %250

35:                                               ; preds = %29
  %36 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %30
  %37 = load i64, ptr %36, align 8, !tbaa !38
  %38 = and i64 %37, %23
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %250

40:                                               ; preds = %35
  %41 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %30
  %42 = load i64, ptr %41, align 8, !tbaa !38
  %43 = and i64 %42, %23
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %250

45:                                               ; preds = %40
  %46 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %30
  %47 = load i64, ptr %46, align 8, !tbaa !38
  %48 = and i64 %47, %23
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %250

50:                                               ; preds = %45
  %51 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %30
  %52 = load i64, ptr %51, align 8, !tbaa !38
  %53 = and i64 %52, %23
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %250

55:                                               ; preds = %50
  %56 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %30
  %57 = load i64, ptr %56, align 8, !tbaa !38
  %58 = and i64 %57, %23
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %26, label %250

60:                                               ; preds = %26, %19
  %61 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  %62 = and i64 %61, %23
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %250

64:                                               ; preds = %60
  %65 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  %66 = and i64 %65, %23
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %250

68:                                               ; preds = %64
  %69 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %70 = and i64 %69, %23
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %250

72:                                               ; preds = %68
  %73 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %74 = and i64 %73, %23
  %75 = icmp eq i64 %74, 0
  br label %250

76:                                               ; preds = %3, %3
  %77 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  %78 = icmp sgt i32 %77, %1
  %79 = zext nneg i32 %0 to i64
  %80 = shl nuw i64 1, %79
  %81 = sext i32 %1 to i64
  %82 = sext i32 %77 to i64
  br i1 %78, label %87, label %83

83:                                               ; preds = %84, %76
  br label %93

84:                                               ; preds = %87
  %85 = add nsw i64 %88, 1
  %86 = icmp eq i64 %85, %82
  br i1 %86, label %83, label %87, !llvm.loop !341

87:                                               ; preds = %76, %84
  %88 = phi i64 [ %85, %84 ], [ %81, %76 ]
  %89 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !38
  %91 = and i64 %90, %80
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %84, label %250

93:                                               ; preds = %83, %106
  %94 = phi i64 [ %95, %106 ], [ %81, %83 ]
  %95 = add nsw i64 %94, 1
  %96 = icmp slt i64 %95, %82
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = icmp sgt i32 %77, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %97
  %100 = zext nneg i32 %77 to i64
  br label %114

101:                                              ; preds = %93
  %102 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %95
  %103 = load i64, ptr %102, align 8, !tbaa !38
  %104 = and i64 %103, %80
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %250

106:                                              ; preds = %101
  %107 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %95
  %108 = load i64, ptr %107, align 8, !tbaa !38
  %109 = and i64 %108, %80
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %93, label %250, !llvm.loop !342

111:                                              ; preds = %125
  %112 = add nuw nsw i64 %115, 1
  %113 = icmp eq i64 %112, %100
  br i1 %113, label %130, label %114, !llvm.loop !343

114:                                              ; preds = %99, %111
  %115 = phi i64 [ 0, %99 ], [ %112, %111 ]
  %116 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !38
  %118 = and i64 %117, %80
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %250

120:                                              ; preds = %114
  %121 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %115
  %122 = load i64, ptr %121, align 8, !tbaa !38
  %123 = and i64 %122, %80
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %250

125:                                              ; preds = %120
  %126 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %115
  %127 = load i64, ptr %126, align 8, !tbaa !38
  %128 = and i64 %127, %80
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %111, label %250

130:                                              ; preds = %111, %97
  %131 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !38
  %132 = and i64 %131, %80
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %250

134:                                              ; preds = %130
  %135 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  %136 = and i64 %135, %80
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %250

138:                                              ; preds = %134
  %139 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %140 = and i64 %139, %80
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %250

142:                                              ; preds = %138
  %143 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %144 = and i64 %143, %80
  %145 = icmp eq i64 %144, 0
  br label %250

146:                                              ; preds = %13, %160
  %147 = phi i64 [ %17, %13 ], [ %148, %160 ]
  %148 = add nsw i64 %147, 1
  %149 = icmp slt i64 %148, %18
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %148
  %152 = load i64, ptr %151, align 8, !tbaa !38
  %153 = and i64 %152, %16
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %250

155:                                              ; preds = %150
  %156 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %148
  %157 = load i64, ptr %156, align 8, !tbaa !38
  %158 = and i64 %157, %16
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %250

160:                                              ; preds = %155
  %161 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %148
  %162 = load i64, ptr %161, align 8, !tbaa !38
  %163 = and i64 %162, %16
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %146, label %250, !llvm.loop !344

165:                                              ; preds = %146, %4
  %166 = phi i32 [ %5, %4 ], [ %14, %146 ]
  %167 = icmp sgt i32 %166, 0
  %168 = zext nneg i32 %0 to i64
  %169 = shl nuw i64 1, %168
  br i1 %167, label %170, label %191

170:                                              ; preds = %165
  %171 = zext nneg i32 %166 to i64
  br label %175

172:                                              ; preds = %186
  %173 = add nuw nsw i64 %176, 1
  %174 = icmp eq i64 %173, %171
  br i1 %174, label %191, label %175, !llvm.loop !345

175:                                              ; preds = %170, %172
  %176 = phi i64 [ 0, %170 ], [ %173, %172 ]
  %177 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !38
  %179 = and i64 %178, %169
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %250

181:                                              ; preds = %175
  %182 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %176
  %183 = load i64, ptr %182, align 8, !tbaa !38
  %184 = and i64 %183, %169
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %250

186:                                              ; preds = %181
  %187 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %176
  %188 = load i64, ptr %187, align 8, !tbaa !38
  %189 = and i64 %188, %169
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %172, label %250

191:                                              ; preds = %172, %165
  %192 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %193 = and i64 %192, %169
  %194 = icmp eq i64 %193, 0
  br label %250

195:                                              ; preds = %209
  %196 = add nuw nsw i64 %199, 1
  %197 = icmp eq i64 %196, %12
  br i1 %197, label %214, label %198, !llvm.loop !346

198:                                              ; preds = %11, %195
  %199 = phi i64 [ 0, %11 ], [ %196, %195 ]
  %200 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !38
  %202 = and i64 %201, %10
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %198
  %205 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %199
  %206 = load i64, ptr %205, align 8, !tbaa !38
  %207 = and i64 %206, %10
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %250

209:                                              ; preds = %204
  %210 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %199
  %211 = load i64, ptr %210, align 8, !tbaa !38
  %212 = and i64 %211, %10
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %195, label %250

214:                                              ; preds = %195, %6
  %215 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !38
  %216 = and i64 %215, %10
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !38
  %220 = and i64 %219, %10
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %250

222:                                              ; preds = %218
  %223 = load i64, ptr @reload_reg_used, align 8, !tbaa !38
  %224 = and i64 %223, %10
  %225 = icmp eq i64 %224, 0
  br label %250

226:                                              ; preds = %3
  %227 = load i32, ptr @reload_n_operands, align 4, !tbaa !27
  br label %228

228:                                              ; preds = %3, %3, %3, %226
  %229 = phi i32 [ %1, %3 ], [ %1, %3 ], [ %1, %3 ], [ %227, %226 ]
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %250

231:                                              ; preds = %228
  %232 = zext nneg i32 %0 to i64
  %233 = shl nuw i64 1, %232
  %234 = zext nneg i32 %229 to i64
  br label %238

235:                                              ; preds = %244
  %236 = add nuw nsw i64 %239, 1
  %237 = icmp eq i64 %236, %234
  br i1 %237, label %250, label %238, !llvm.loop !347

238:                                              ; preds = %231, %235
  %239 = phi i64 [ 0, %231 ], [ %236, %235 ]
  %240 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !38
  %242 = and i64 %241, %233
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %239
  %246 = load i64, ptr %245, align 8, !tbaa !38
  %247 = and i64 %246, %233
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %235, label %250

249:                                              ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5110, ptr noundef nonnull @.str.2) #22
  br label %250

250:                                              ; preds = %244, %238, %235, %198, %204, %209, %150, %155, %160, %175, %181, %186, %87, %101, %106, %114, %120, %125, %29, %35, %40, %45, %50, %55, %228, %214, %218, %222, %134, %138, %142, %130, %60, %64, %68, %72, %3, %249, %191
  %251 = phi i1 [ false, %249 ], [ %194, %191 ], [ true, %3 ], [ false, %68 ], [ false, %64 ], [ false, %60 ], [ %75, %72 ], [ false, %130 ], [ false, %138 ], [ false, %134 ], [ %145, %142 ], [ false, %218 ], [ false, %214 ], [ %225, %222 ], [ true, %228 ], [ false, %55 ], [ false, %50 ], [ false, %45 ], [ false, %40 ], [ false, %35 ], [ false, %29 ], [ false, %125 ], [ false, %120 ], [ false, %114 ], [ false, %106 ], [ false, %101 ], [ false, %87 ], [ false, %186 ], [ false, %181 ], [ false, %175 ], [ false, %160 ], [ false, %155 ], [ false, %150 ], [ false, %209 ], [ false, %204 ], [ false, %198 ], [ false, %244 ], [ false, %238 ], [ true, %235 ]
  %252 = zext i1 %251 to i32
  ret i32 %252
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_regs_reach_end_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %9, label %14

6:                                                ; preds = %9
  %7 = add nuw nsw i32 %10, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %14, label %9, !llvm.loop !348

9:                                                ; preds = %4, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %11 = add i32 %10, %0
  %12 = tail call fastcc i32 @reload_reg_reaches_end_p(i32 noundef %11, i32 noundef %2, i32 noundef %3) #23, !range !55
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6

14:                                               ; preds = %9, %6, %4
  %15 = phi i8 [ 1, %4 ], [ 1, %6 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %4
  %8 = load i32, ptr %7, align 4, !tbaa !27
  %9 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %2, i32 noundef %6, i32 noundef %8) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !27
  %17 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %2, i32 noundef %14, i32 noundef %16) #22
  %18 = icmp eq i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %11, %3
  %21 = phi i8 [ 0, %3 ], [ %19, %11 ]
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @reload_adjust_reg_for_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_input_reload_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.secondary_reload_info, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !281
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = icmp eq ptr %2, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %2, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %29 [
    i16 37, label %30
    i16 39, label %26
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %15, %4, %23, %29, %21, %26
  %31 = phi ptr [ %17, %26 ], [ %17, %21 ], [ %17, %23 ], [ %17, %29 ], [ %2, %15 ], [ %2, %4 ]
  %32 = phi ptr [ %2, %26 ], [ %17, %21 ], [ %2, %23 ], [ %2, %29 ], [ %2, %15 ], [ %2, %4 ]
  %33 = phi ptr [ %28, %26 ], [ null, %21 ], [ %2, %23 ], [ null, %29 ], [ null, %15 ], [ null, %4 ]
  %34 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %11
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = load i32, ptr @optimize, align 4, !tbaa !27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %30
  %42 = load i32, ptr %32, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 37
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %31, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  %60 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef %59) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !21
  %67 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !298
  %69 = tail call i32 @rtx_equal_p(ptr noundef %66, ptr noundef %68) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62, %57
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  tail call fastcc void @delete_output_reload(ptr noundef %10, i32 noundef %3, i32 noundef %72, ptr noundef nonnull %35) #23
  br label %73

73:                                               ; preds = %71, %62, %53, %48, %45, %41, %30
  %74 = load i32, ptr %32, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %89

77:                                               ; preds = %73, %83
  %78 = phi i32 [ %86, %83 ], [ %74, %73 ]
  %79 = phi ptr [ %85, %83 ], [ %32, %73 ]
  %80 = lshr i32 %78, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, %38
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 39
  br i1 %88, label %77, label %89, !llvm.loop !349

89:                                               ; preds = %77, %83, %73
  %90 = phi ptr [ %32, %73 ], [ %85, %83 ], [ %79, %77 ]
  %91 = phi i32 [ %74, %73 ], [ %86, %83 ], [ %78, %77 ]
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i32 %38, %93
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  %98 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %38, ptr noundef nonnull %90) #22
  br label %99

99:                                               ; preds = %97, %89
  %100 = phi ptr [ %98, %97 ], [ %90, %89 ]
  %101 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 17
  %102 = load i32, ptr %101, align 4, !tbaa !198
  switch i32 %102, label %131 [
    i32 9, label %132
    i32 0, label %103
    i32 3, label %108
    i32 4, label %113
    i32 5, label %118
    i32 6, label %123
    i32 7, label %128
    i32 8, label %129
    i32 10, label %130
  ]

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %105 = load i32, ptr %104, align 8, !tbaa !197
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [30 x ptr], ptr @input_reload_insns, i64 0, i64 %106
  br label %132

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %110 = load i32, ptr %109, align 8, !tbaa !197
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [30 x ptr], ptr @input_address_reload_insns, i64 0, i64 %111
  br label %132

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %115 = load i32, ptr %114, align 8, !tbaa !197
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x ptr], ptr @inpaddr_address_reload_insns, i64 0, i64 %116
  br label %132

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %120 = load i32, ptr %119, align 8, !tbaa !197
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [30 x ptr], ptr @output_address_reload_insns, i64 0, i64 %121
  br label %132

123:                                              ; preds = %99
  %124 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %125 = load i32, ptr %124, align 8, !tbaa !197
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [30 x ptr], ptr @outaddr_address_reload_insns, i64 0, i64 %126
  br label %132

128:                                              ; preds = %99
  br label %132

129:                                              ; preds = %99
  br label %132

130:                                              ; preds = %99
  br label %132

131:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6984, ptr noundef nonnull @.str.2) #22
  br label %132

132:                                              ; preds = %99, %131, %130, %129, %128, %123, %118, %113, %108, %103
  %133 = phi ptr [ undef, %131 ], [ @other_input_address_reload_insns, %130 ], [ @other_operand_reload_insns, %129 ], [ @operand_reload_insns, %128 ], [ %127, %123 ], [ %122, %118 ], [ %117, %113 ], [ %112, %108 ], [ %107, %103 ], [ @other_input_reload_insns, %99 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !21
  tail call void @push_to_sequence(ptr noundef %134) #22
  %135 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !248
  %137 = icmp eq ptr %136, null
  br i1 %137, label %196, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !298
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %196

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !350
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6995, ptr noundef nonnull @.str.2) #22
  br label %147

147:                                              ; preds = %142, %146
  %148 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %11
  %149 = load i8, ptr %148, align 1, !tbaa !5
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, ptr %100, ptr %35
  %152 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !281
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  %156 = load i32, ptr @optimize, align 4, !tbaa !27
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %188, label %158

158:                                              ; preds = %147
  %159 = load i32, ptr %151, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 37
  br i1 %161, label %162, label %188

162:                                              ; preds = %158
  %163 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  %164 = icmp ult i32 %163, 53
  br i1 %164, label %165, label %188

165:                                              ; preds = %162
  %166 = zext nneg i32 %163 to i64
  %167 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !21
  %169 = icmp eq ptr %168, null
  br i1 %169, label %188, label %170

170:                                              ; preds = %165
  %171 = load i32, ptr %155, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 37
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %166
  %176 = load ptr, ptr %175, align 8, !tbaa !21
  %177 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef %176) #22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !21
  %184 = tail call i32 @rtx_equal_p(ptr noundef %183, ptr noundef nonnull %155) #22
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179, %174
  %187 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  tail call fastcc void @delete_output_reload(ptr noundef %10, i32 noundef %3, i32 noundef %187, ptr noundef nonnull %35) #23
  br label %188

188:                                              ; preds = %186, %179, %170, %165, %162, %158, %147
  %189 = load ptr, ptr %135, align 8, !tbaa !248
  %190 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 7
  %191 = load i32, ptr %190, align 4, !tbaa !351
  %192 = tail call fastcc ptr @inc_for_reload(ptr noundef nonnull %35, ptr noundef %151, ptr noundef %189, i32 noundef %191) #23
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %194
  store ptr %192, ptr %195, align 8, !tbaa !21
  br label %584

196:                                              ; preds = %138, %132
  %197 = load i32, ptr @optimize, align 4, !tbaa !27
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %317, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr %31, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 37
  br i1 %202, label %203, label %317

203:                                              ; preds = %199
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #23
  %205 = icmp ugt i32 %204, 52
  br i1 %205, label %206, label %317

206:                                              ; preds = %203
  %207 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef nonnull %31) #22
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %317, label %209

209:                                              ; preds = %206
  %210 = tail call fastcc i32 @conflicts_with_override(ptr noundef nonnull %35) #23, !range !55
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %317

212:                                              ; preds = %209
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %214 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 5
  %215 = load i32, ptr %214, align 4, !tbaa !199
  %216 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !197
  %218 = load i32, ptr %101, align 4, !tbaa !198
  %219 = load ptr, ptr %135, align 8, !tbaa !248
  %220 = tail call fastcc i32 @free_for_value_p(i32 noundef %213, i32 noundef %215, i32 noundef %217, i32 noundef %218, ptr noundef nonnull %31, ptr noundef %219, i32 noundef %3, i32 noundef 0) #23, !range !55
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %317, label %222

222:                                              ; preds = %212
  %223 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !5
  %225 = icmp eq ptr %224, null
  br i1 %225, label %317, label %226

226:                                              ; preds = %222, %230
  %227 = phi ptr [ %232, %230 ], [ %224, %222 ]
  %228 = load i32, ptr %227, align 8
  %229 = trunc i32 %228 to i16
  switch i16 %229, label %317 [
    i16 13, label %230
    i16 7, label %230
    i16 8, label %234
  ]

230:                                              ; preds = %226, %226
  %231 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  %233 = icmp eq ptr %232, null
  br i1 %233, label %317, label %226, !llvm.loop !352

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 23
  br i1 %239, label %240, label %317

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  %243 = icmp eq ptr %242, %31
  br i1 %243, label %244, label %317

244:                                              ; preds = %240
  %245 = tail call i32 @asm_noperands(ptr noundef nonnull %236) #22
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %317

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !5
  %250 = tail call i32 @count_occurrences(ptr noundef %249, ptr noundef nonnull %31, i32 noundef 0) #22
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %317

252:                                              ; preds = %247
  %253 = load ptr, ptr %235, align 8, !tbaa !5
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !5
  store ptr %35, ptr %254, align 8, !tbaa !5
  tail call void @extract_insn(ptr noundef nonnull %227) #22
  %256 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %257 = icmp eq i32 %256, 0
  %258 = load ptr, ptr %235, align 8, !tbaa !5
  br i1 %257, label %315, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %265, label %277

265:                                              ; preds = %259
  %266 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %261) #23
  %267 = icmp ult i32 %266, 53
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = zext nneg i32 %266 to i64
  %270 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %269
  store ptr null, ptr %270, align 8, !tbaa !21
  %271 = load ptr, ptr %235, align 8, !tbaa !5
  %272 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !5
  %274 = tail call fastcc i32 @rhs_regno(ptr noundef %273) #23
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %275
  store ptr null, ptr %276, align 8, !tbaa !21
  br label %277

277:                                              ; preds = %268, %265, %259
  %278 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %279 = tail call fastcc i32 @rhs_regno(ptr noundef %255) #23
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.reg_info_t, ptr %278, i64 %280, i32 1
  %282 = load i32, ptr %281, align 4, !tbaa !353
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %298

284:                                              ; preds = %277
  %285 = tail call fastcc i32 @REG_N_SETS(i32 noundef %279) #23
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %289 = trunc i32 %288 to i16
  %290 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %291 = getelementptr inbounds i16, ptr %290, i64 %280
  store i16 %289, ptr %291, align 2, !tbaa !28
  %292 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %287
  %295 = tail call fastcc i32 @rhs_regno(ptr noundef %255) #23
  tail call void @ira_mark_allocation_change(i32 noundef %295) #22
  br label %296

296:                                              ; preds = %294, %287
  %297 = tail call fastcc i32 @rhs_regno(ptr noundef %255) #23
  tail call fastcc void @alter_reg(i32 noundef %297, i32 noundef -1, i8 noundef zeroext 0) #23
  br label %298

298:                                              ; preds = %296, %284, %277
  %299 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 2
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  %301 = icmp eq ptr %300, %10
  br i1 %301, label %584, label %302

302:                                              ; preds = %298, %311
  %303 = phi ptr [ %313, %311 ], [ %300, %298 ]
  %304 = load i32, ptr %303, align 8
  %305 = trunc i32 %304 to i16
  switch i16 %305, label %310 [
    i16 7, label %306
    i16 13, label %311
  ]

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !5
  %309 = tail call ptr @replace_rtx(ptr noundef %308, ptr noundef %255, ptr noundef nonnull %35) #22
  br label %311

310:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7083, ptr noundef nonnull @.str.2) #22
  br label %311

311:                                              ; preds = %302, %310, %306
  %312 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 2
  %313 = load ptr, ptr %312, align 8, !tbaa !5
  %314 = icmp eq ptr %313, %10
  br i1 %314, label %584, label %302, !llvm.loop !354

315:                                              ; preds = %252
  %316 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1
  store ptr %255, ptr %316, align 8, !tbaa !5
  br label %317

317:                                              ; preds = %230, %226, %222, %209, %212, %206, %203, %199, %196, %247, %244, %240, %234, %315
  %318 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 13
  %319 = load i32, ptr %318, align 4, !tbaa !350
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %522

321:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !21
  %322 = load i32, ptr %100, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 39
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !5
  %328 = load i32, ptr %327, align 8
  br label %329

329:                                              ; preds = %325, %321
  %330 = phi i32 [ %328, %325 ], [ %322, %321 ]
  %331 = phi ptr [ %327, %325 ], [ %100, %321 ]
  %332 = and i32 %330, 65535
  %333 = icmp eq i32 %332, 37
  br i1 %333, label %334, label %359

334:                                              ; preds = %329
  %335 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %331) #23
  %336 = icmp ugt i32 %335, 52
  br i1 %336, label %337, label %359

337:                                              ; preds = %334
  %338 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %339 = zext i32 %335 to i64
  %340 = getelementptr inbounds ptr, ptr %338, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !21
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %345 = getelementptr inbounds ptr, ptr %344, i64 %339
  %346 = load ptr, ptr %345, align 8, !tbaa !21
  %347 = icmp eq ptr %346, null
  br i1 %347, label %359, label %348

348:                                              ; preds = %343, %337
  %349 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %350 = getelementptr inbounds ptr, ptr %349, i64 %339
  %351 = load ptr, ptr %350, align 8, !tbaa !21
  %352 = icmp eq ptr %351, null
  %353 = load i32, ptr @num_not_at_initial_offset, align 4
  %354 = icmp ne i32 %353, 0
  %355 = select i1 %352, i1 true, i1 %354
  %356 = or i1 %324, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %348
  %358 = load ptr, ptr %1, align 8, !tbaa !249
  br label %359

359:                                              ; preds = %348, %357, %343, %334, %329
  %360 = phi ptr [ %358, %357 ], [ %100, %343 ], [ %100, %334 ], [ %100, %329 ], [ %351, %348 ]
  %361 = load i32, ptr %31, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 39
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !5
  %367 = load i32, ptr %366, align 8
  br label %368

368:                                              ; preds = %364, %359
  %369 = phi i32 [ %367, %364 ], [ %361, %359 ]
  %370 = phi ptr [ %366, %364 ], [ %31, %359 ]
  %371 = and i32 %369, 65535
  %372 = icmp eq i32 %371, 37
  br i1 %372, label %373, label %398

373:                                              ; preds = %368
  %374 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %370) #23
  %375 = icmp ugt i32 %374, 52
  br i1 %375, label %376, label %398

376:                                              ; preds = %373
  %377 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %378 = zext i32 %374 to i64
  %379 = getelementptr inbounds ptr, ptr %377, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !21
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %387

382:                                              ; preds = %376
  %383 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %384 = getelementptr inbounds ptr, ptr %383, i64 %378
  %385 = load ptr, ptr %384, align 8, !tbaa !21
  %386 = icmp eq ptr %385, null
  br i1 %386, label %398, label %387

387:                                              ; preds = %382, %376
  %388 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %389 = getelementptr inbounds ptr, ptr %388, i64 %378
  %390 = load ptr, ptr %389, align 8, !tbaa !21
  %391 = icmp eq ptr %390, null
  %392 = load i32, ptr @num_not_at_initial_offset, align 4
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %391, i1 true, i1 %393
  %395 = or i1 %363, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = load ptr, ptr %1, align 8, !tbaa !249
  br label %398

398:                                              ; preds = %387, %396, %382, %373, %368
  %399 = phi ptr [ %397, %396 ], [ %31, %382 ], [ %31, %373 ], [ %31, %368 ], [ %390, %387 ]
  %400 = zext nneg i32 %319 to i64
  %401 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 11
  %402 = load ptr, ptr %401, align 8, !tbaa !195
  store ptr %402, ptr %5, align 8, !tbaa !21
  %403 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 13
  %404 = load i32, ptr %403, align 4, !tbaa !350
  %405 = icmp sgt i32 %404, -1
  br i1 %405, label %406, label %416

406:                                              ; preds = %398
  %407 = zext nneg i32 %404 to i64
  %408 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %407, i32 11
  %409 = load ptr, ptr %408, align 8, !tbaa !195
  store ptr %409, ptr %6, align 8, !tbaa !21
  %410 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 15
  %411 = load i32, ptr %410, align 4, !tbaa !355
  %412 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %407, i32 13
  %413 = load i32, ptr %412, align 4, !tbaa !350
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7169, ptr noundef nonnull @.str.2) #22
  br label %416

416:                                              ; preds = %415, %406, %398
  %417 = phi i32 [ 2956, %398 ], [ %411, %406 ], [ %411, %415 ]
  %418 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 15
  %419 = load i32, ptr %418, align 4, !tbaa !355
  %420 = icmp eq ptr %31, %100
  br i1 %420, label %424, label %421

421:                                              ; preds = %416
  %422 = tail call i32 @rtx_equal_p(ptr noundef nonnull %31, ptr noundef nonnull %100) #22
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %430, label %424

424:                                              ; preds = %421, %416
  %425 = load ptr, ptr %1, align 8, !tbaa !249
  %426 = icmp eq ptr %425, null
  br i1 %426, label %478, label %427

427:                                              ; preds = %424
  %428 = load ptr, ptr %135, align 8, !tbaa !248
  %429 = icmp eq ptr %428, null
  br i1 %429, label %478, label %430

430:                                              ; preds = %427, %421
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  store i32 2956, ptr %7, align 8, !tbaa !356
  %431 = getelementptr inbounds %struct.secondary_reload_info, ptr %7, i64 0, i32 2
  store ptr null, ptr %431, align 8, !tbaa !358
  %432 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !359
  %433 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 2
  %434 = load i32, ptr %433, align 8, !tbaa !250
  %435 = call i32 %432(i8 noundef zeroext 1, ptr noundef %360, i32 noundef %434, i32 noundef %38, ptr noundef nonnull %7) #22
  %436 = icmp eq i32 %435, 0
  %437 = load i32, ptr %7, align 8
  %438 = icmp eq i32 %437, 2956
  %439 = select i1 %436, i1 %438, i1 false
  br i1 %439, label %440, label %441

440:                                              ; preds = %430
  store ptr null, ptr %5, align 8, !tbaa !21
  br label %472

441:                                              ; preds = %430
  br i1 %436, label %442, label %448

442:                                              ; preds = %441
  %443 = load ptr, ptr %6, align 8, !tbaa !21
  %444 = call fastcc zeroext i8 @reload_adjust_reg_for_icode(ptr noundef nonnull %5, ptr noundef %443, i32 noundef %437) #23
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %472, label %446

446:                                              ; preds = %442
  %447 = load i32, ptr %7, align 8, !tbaa !356
  store ptr null, ptr %6, align 8, !tbaa !21
  br label %472

448:                                              ; preds = %441
  br i1 %438, label %450, label %449

449:                                              ; preds = %448
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7203, ptr noundef nonnull @.str.2) #22
  br label %472

450:                                              ; preds = %448
  %451 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !359
  %452 = call i32 %451(i8 noundef zeroext 1, ptr noundef %360, i32 noundef %435, i32 noundef %38, ptr noundef nonnull %7) #22
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %450
  %455 = load ptr, ptr %6, align 8, !tbaa !21
  %456 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %5, ptr noundef %455, i32 noundef %435, i32 noundef %38) #23
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %472, label %458

458:                                              ; preds = %454
  store ptr null, ptr %6, align 8, !tbaa !21
  br label %472

459:                                              ; preds = %450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %460 = load ptr, ptr %5, align 8, !tbaa !21
  store ptr %460, ptr %8, align 8, !tbaa !21
  %461 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %8, ptr noundef null, i32 noundef %435, i32 noundef %38) #23
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %459
  %464 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %6, ptr noundef null, i32 noundef %452, i32 noundef %38) #23
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %463
  %467 = load ptr, ptr %8, align 8, !tbaa !21
  store ptr %467, ptr %5, align 8, !tbaa !21
  br label %468

468:                                              ; preds = %459, %463, %466
  %469 = phi i32 [ 2956, %466 ], [ %417, %463 ], [ %417, %459 ]
  %470 = phi ptr [ %360, %466 ], [ %399, %463 ], [ %399, %459 ]
  %471 = phi ptr [ %100, %466 ], [ %31, %463 ], [ %31, %459 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  br label %472

472:                                              ; preds = %454, %442, %446, %458, %468, %449, %440
  %473 = phi i32 [ %419, %440 ], [ %447, %446 ], [ %419, %449 ], [ %419, %458 ], [ %419, %468 ], [ %419, %442 ], [ %419, %454 ]
  %474 = phi i32 [ %417, %440 ], [ %417, %446 ], [ %417, %449 ], [ 2956, %458 ], [ %469, %468 ], [ %417, %442 ], [ %417, %454 ]
  %475 = phi ptr [ %360, %440 ], [ %360, %446 ], [ %360, %449 ], [ %360, %458 ], [ %470, %468 ], [ %399, %442 ], [ %399, %454 ]
  %476 = phi ptr [ %100, %440 ], [ %100, %446 ], [ %100, %449 ], [ %100, %458 ], [ %471, %468 ], [ %31, %442 ], [ %31, %454 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  %477 = load ptr, ptr %5, align 8, !tbaa !21
  br label %478

478:                                              ; preds = %472, %427, %424
  %479 = phi ptr [ %477, %472 ], [ %402, %427 ], [ %402, %424 ]
  %480 = phi i32 [ %473, %472 ], [ %419, %427 ], [ %419, %424 ]
  %481 = phi i32 [ %474, %472 ], [ %417, %427 ], [ %417, %424 ]
  %482 = phi ptr [ %475, %472 ], [ %360, %427 ], [ %360, %424 ]
  %483 = phi ptr [ %476, %472 ], [ %100, %427 ], [ %100, %424 ]
  %484 = icmp eq ptr %479, null
  br i1 %484, label %514, label %485

485:                                              ; preds = %478
  %486 = icmp eq i32 %480, 2956
  br i1 %486, label %491, label %487

487:                                              ; preds = %485
  %488 = load ptr, ptr %6, align 8, !tbaa !21
  %489 = icmp eq ptr %488, null
  br i1 %489, label %516, label %490

490:                                              ; preds = %487
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7283, ptr noundef nonnull @.str.2) #22
  br label %516

491:                                              ; preds = %485
  %492 = icmp eq i32 %481, 2956
  br i1 %492, label %500, label %493

493:                                              ; preds = %491
  %494 = zext i32 %481 to i64
  %495 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %494, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !360
  %497 = load ptr, ptr %6, align 8, !tbaa !21
  %498 = call ptr (ptr, ...) %496(ptr noundef nonnull %479, ptr noundef %482, ptr noundef %497) #22
  %499 = call ptr @emit_insn(ptr noundef %498) #22
  br label %512

500:                                              ; preds = %491
  %501 = load ptr, ptr %6, align 8, !tbaa !21
  %502 = icmp eq ptr %501, null
  %503 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %504 = load i32, ptr %503, align 8, !tbaa !197
  %505 = load i32, ptr %101, align 4, !tbaa !198
  br i1 %502, label %511, label %506

506:                                              ; preds = %500
  call fastcc void @gen_reload(ptr noundef nonnull %501, ptr noundef %482, i32 noundef %504, i32 noundef %505) #23
  %507 = load ptr, ptr %5, align 8, !tbaa !21
  %508 = load ptr, ptr %6, align 8, !tbaa !21
  %509 = load i32, ptr %503, align 8, !tbaa !197
  %510 = load i32, ptr %101, align 4, !tbaa !198
  call fastcc void @gen_reload(ptr noundef %507, ptr noundef %508, i32 noundef %509, i32 noundef %510) #23
  br label %512

511:                                              ; preds = %500
  call fastcc void @gen_reload(ptr noundef nonnull %479, ptr noundef %482, i32 noundef %504, i32 noundef %505) #23
  br label %512

512:                                              ; preds = %506, %511, %493
  %513 = load ptr, ptr %5, align 8, !tbaa !21
  br label %514

514:                                              ; preds = %512, %478
  %515 = phi ptr [ %483, %478 ], [ %513, %512 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %522

516:                                              ; preds = %490, %487
  %517 = zext i32 %480 to i64
  %518 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %517, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !360
  %520 = call ptr (ptr, ...) %519(ptr noundef nonnull %35, ptr noundef %482, ptr noundef nonnull %479) #22
  %521 = call ptr @emit_insn(ptr noundef %520) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %584

522:                                              ; preds = %317, %514
  %523 = phi ptr [ %515, %514 ], [ %100, %317 ]
  %524 = call i32 @rtx_equal_p(ptr noundef nonnull %35, ptr noundef %523) #22
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %584

526:                                              ; preds = %522
  %527 = load i32, ptr %523, align 8
  %528 = and i32 %527, 65535
  %529 = trunc i32 %527 to i16
  switch i16 %529, label %565 [
    i16 37, label %530
    i16 39, label %544
  ]

530:                                              ; preds = %526
  %531 = call fastcc i32 @rhs_regno(ptr noundef nonnull %523) #23
  %532 = icmp ugt i32 %531, 52
  br i1 %532, label %533, label %565

533:                                              ; preds = %530
  %534 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %535 = zext i32 %531 to i64
  %536 = getelementptr inbounds ptr, ptr %534, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !21
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %577

539:                                              ; preds = %533
  %540 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %541 = getelementptr inbounds ptr, ptr %540, i64 %535
  %542 = load ptr, ptr %541, align 8, !tbaa !21
  %543 = icmp eq ptr %542, null
  br i1 %543, label %565, label %577

544:                                              ; preds = %526
  %545 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !5
  %547 = load i32, ptr %546, align 8
  %548 = and i32 %547, 65535
  %549 = icmp eq i32 %548, 37
  br i1 %549, label %550, label %565

550:                                              ; preds = %544
  %551 = call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #23
  %552 = icmp ugt i32 %551, 52
  br i1 %552, label %553, label %565

553:                                              ; preds = %550
  %554 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %555 = call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #23
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %554, i64 %556
  %558 = load ptr, ptr %557, align 8, !tbaa !21
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %577

560:                                              ; preds = %553
  %561 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !21
  %562 = getelementptr inbounds ptr, ptr %561, i64 %556
  %563 = load ptr, ptr %562, align 8, !tbaa !21
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %577

565:                                              ; preds = %526, %530, %539, %560, %550, %544
  %566 = zext nneg i32 %528 to i64
  %567 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !27
  %569 = icmp eq i32 %568, 9
  br i1 %569, label %570, label %579

570:                                              ; preds = %565
  %571 = call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !27
  %575 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %523, i32 noundef %574) #22
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %570, %560, %553, %539, %533
  %578 = load ptr, ptr %1, align 8, !tbaa !249
  br label %579

579:                                              ; preds = %577, %570, %565
  %580 = phi ptr [ %578, %577 ], [ %523, %570 ], [ %523, %565 ]
  %581 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %582 = load i32, ptr %581, align 8, !tbaa !197
  %583 = load i32, ptr %101, align 4, !tbaa !198
  call fastcc void @gen_reload(ptr noundef nonnull %35, ptr noundef %580, i32 noundef %582, i32 noundef %583) #23
  br label %584

584:                                              ; preds = %311, %298, %188, %516, %579, %522
  %585 = phi ptr [ %523, %579 ], [ %523, %522 ], [ %483, %516 ], [ %151, %188 ], [ %100, %298 ], [ %100, %311 ]
  %586 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !27
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %590, label %588

588:                                              ; preds = %584
  %589 = call ptr @get_insns() #22
  call void @copy_reg_eh_region_note_forward(ptr noundef %10, ptr noundef %589, ptr noundef null) #22
  br label %590

590:                                              ; preds = %588, %584
  %591 = call ptr @get_insns() #22
  store ptr %591, ptr %133, align 8, !tbaa !21
  call void @end_sequence() #22
  %592 = icmp eq ptr %33, null
  br i1 %592, label %594, label %593

593:                                              ; preds = %590
  store ptr %585, ptr %12, align 8, !tbaa !21
  br label %594

594:                                              ; preds = %593, %590
  ret void
}

; Function Attrs: optsize
declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_output_reload(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %312

11:                                               ; preds = %4
  %12 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %5
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %19, %13 ], [ %12, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 39
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br i1 %18, label %13, label %20, !llvm.loop !361

20:                                               ; preds = %13
  %21 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !21
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %20
  %29 = zext nneg i32 %26 to i64
  %30 = zext i32 %1 to i64
  br label %31

31:                                               ; preds = %28, %78
  %32 = phi i64 [ %29, %28 ], [ %34, %78 ]
  %33 = phi i32 [ 0, %28 ], [ %79, %78 ]
  %34 = add nsw i64 %32, -1
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !249
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %36, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %34
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %34, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !281
  %49 = load i32, ptr %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i32 [ %49, %46 ], [ %39, %42 ]
  %52 = phi ptr [ %48, %46 ], [ %36, %42 ]
  %53 = and i32 %51, 65535
  %54 = icmp eq i32 %53, 39
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %55
  %56 = phi ptr [ %58, %55 ], [ %52, %50 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %55, label %62, !llvm.loop !362

62:                                               ; preds = %55, %50
  %63 = phi ptr [ %52, %50 ], [ %58, %55 ]
  %64 = tail call i32 @rtx_equal_p(ptr noundef nonnull %63, ptr noundef nonnull %15) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %34
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %34
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = icmp ne ptr %72, null
  %74 = icmp eq i64 %34, %30
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %312

76:                                               ; preds = %70, %66
  %77 = add nsw i32 %33, 1
  br label %78

78:                                               ; preds = %31, %76, %62
  %79 = phi i32 [ %33, %62 ], [ %77, %76 ], [ %33, %31 ]
  %80 = icmp sgt i64 %32, 1
  br i1 %80, label %31, label %81, !llvm.loop !363

81:                                               ; preds = %78, %20
  %82 = phi i32 [ 0, %20 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = tail call i32 @count_occurrences(ptr noundef %84, ptr noundef nonnull %15, i32 noundef 0) #22
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @count_occurrences(ptr noundef nonnull %91, ptr noundef nonnull %15, i32 noundef 0) #22
  %95 = add nsw i32 %94, %85
  br label %96

96:                                               ; preds = %93, %89, %81
  %97 = phi i32 [ %95, %93 ], [ %85, %89 ], [ %85, %81 ]
  %98 = icmp eq ptr %25, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %83, align 8, !tbaa !5
  %101 = tail call ptr @eliminate_regs(ptr noundef nonnull %25, i32 noundef 0, ptr noundef null) #23
  %102 = tail call i32 @count_occurrences(ptr noundef %100, ptr noundef %101, i32 noundef 0) #22
  %103 = add nsw i32 %102, %97
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i32 [ %103, %99 ], [ %97, %96 ]
  %106 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !21
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = icmp eq ptr %110, null
  br i1 %111, label %128, label %112

112:                                              ; preds = %104, %120
  %113 = phi ptr [ %126, %120 ], [ %110, %104 ]
  %114 = phi i32 [ %124, %120 ], [ %105, %104 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = tail call i32 @rtx_equal_p(ptr noundef %116, ptr noundef %25) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8543, ptr noundef nonnull @.str.2) #22
  br label %120

120:                                              ; preds = %112, %119
  %121 = load ptr, ptr %83, align 8, !tbaa !5
  %122 = load ptr, ptr %115, align 8, !tbaa !5
  %123 = tail call i32 @count_occurrences(ptr noundef %121, ptr noundef %122, i32 noundef 0) #22
  %124 = add nsw i32 %123, %114
  %125 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %112, !llvm.loop !364

128:                                              ; preds = %120, %104
  %129 = phi i32 [ %105, %104 ], [ %124, %120 ]
  %130 = icmp sgt i32 %129, %82
  br i1 %130, label %312, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %133 = load ptr, ptr %132, align 8, !tbaa !5
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %182, label %135

135:                                              ; preds = %131, %178
  %136 = phi ptr [ %180, %178 ], [ %133, %131 ]
  %137 = load i32, ptr %136, align 8
  %138 = trunc i32 %137 to i16
  switch i16 %138, label %178 [
    i16 13, label %139
    i16 8, label %143
    i16 10, label %143
  ]

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 1
  %141 = load i32, ptr %140, align 8, !tbaa !5
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %312, label %178

143:                                              ; preds = %135, %135
  %144 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %15, ptr noundef %145) #22
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %178, label %148

148:                                              ; preds = %143
  %149 = load i32, ptr %136, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %152, label %172

152:                                              ; preds = %148, %160
  %153 = phi i32 [ %166, %160 ], [ %129, %148 ]
  %154 = phi ptr [ %168, %160 ], [ %136, %148 ]
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 24
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = tail call i32 @rtx_equal_p(ptr noundef nonnull %15, ptr noundef %162) #22
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = add nsw i32 %153, %165
  %167 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 2
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %152, label %172, !llvm.loop !365

172:                                              ; preds = %152, %160, %148
  %173 = phi ptr [ %136, %148 ], [ %168, %160 ], [ %154, %152 ]
  %174 = phi i32 [ %129, %148 ], [ %166, %160 ], [ %153, %152 ]
  %175 = icmp sle i32 %174, %82
  %176 = icmp eq ptr %173, %0
  %177 = and i1 %176, %175
  br i1 %177, label %182, label %312

178:                                              ; preds = %135, %139, %143
  %179 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 2
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = icmp eq ptr %180, %0
  br i1 %181, label %182, label %135, !llvm.loop !366

182:                                              ; preds = %178, %131, %172
  %183 = load i32, ptr %15, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %182
  %191 = zext i8 %188 to i32
  %192 = add i32 %191, %2
  %193 = add i32 %192, -1
  %194 = sext i32 %193 to i64
  %195 = add nsw i32 %191, -1
  %196 = zext nneg i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = shl nsw i64 %197, 3
  %199 = getelementptr i8, ptr @spill_reg_store, i64 %198
  %200 = zext i8 %188 to i64
  %201 = shl nuw nsw i64 %200, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %199, i8 0, i64 %201, i1 false), !tbaa !21
  %202 = getelementptr i8, ptr @spill_reg_stored_to, i64 %198
  tail call void @llvm.memset.p0.i64(ptr align 8 %202, i8 0, i64 %201, i1 false), !tbaa !21
  br label %203

203:                                              ; preds = %190, %182
  %204 = sext i32 %1 to i64
  %205 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %204
  %206 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %204, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !248
  %208 = load ptr, ptr %205, align 8, !tbaa !249
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %310, label %210

210:                                              ; preds = %203
  %211 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %212 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %213, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !353
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %310

217:                                              ; preds = %210
  %218 = tail call fastcc i32 @REG_N_SETS(i32 noundef %212) #23
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %310

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %213, i32 6
  %222 = load i32, ptr %221, align 4, !tbaa !367
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %310

224:                                              ; preds = %220
  %225 = tail call ptr @find_regno_note(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %212) #22
  %226 = icmp eq ptr %225, null
  br i1 %226, label %310, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = icmp eq ptr %229, null
  br i1 %230, label %297, label %231

231:                                              ; preds = %227, %261
  %232 = phi ptr [ %263, %261 ], [ %229, %227 ]
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 65535
  %235 = add nsw i32 %234, -7
  %236 = icmp ult i32 %235, 4
  br i1 %236, label %237, label %251

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 23
  br i1 %242, label %246, label %243

243:                                              ; preds = %237
  %244 = tail call ptr @single_set_2(ptr noundef nonnull %232, ptr noundef nonnull %239) #22
  %245 = icmp eq ptr %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %237, %243
  %247 = phi ptr [ %244, %243 ], [ %239, %237 ]
  %248 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !5
  %250 = icmp eq ptr %249, %15
  br i1 %250, label %261, label %251

251:                                              ; preds = %231, %246, %243
  %252 = load i32, ptr %232, align 8
  %253 = trunc i32 %252 to i16
  switch i16 %253, label %261 [
    i16 12, label %265
    i16 9, label %265
    i16 8, label %254
    i16 10, label %254
  ]

254:                                              ; preds = %251, %251
  %255 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !5
  %257 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %15, ptr noundef %256) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %254
  tail call fastcc void @delete_address_reloads(ptr noundef nonnull %7, ptr noundef nonnull %0) #23
  %260 = tail call ptr @delete_insn(ptr noundef nonnull %7) #22
  br label %312

261:                                              ; preds = %254, %251, %246
  %262 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !5
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %231, !llvm.loop !368

265:                                              ; preds = %261, %251, %251
  %266 = load ptr, ptr %228, align 8, !tbaa !5
  %267 = icmp eq ptr %266, null
  br i1 %267, label %297, label %268

268:                                              ; preds = %265, %293
  %269 = phi ptr [ %295, %293 ], [ %266, %265 ]
  %270 = load i32, ptr %269, align 8
  %271 = and i32 %270, 65535
  %272 = add nsw i32 %271, -7
  %273 = icmp ult i32 %272, 4
  br i1 %273, label %274, label %290

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 1
  %276 = load ptr, ptr %275, align 8, !tbaa !5
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 23
  br i1 %279, label %283, label %280

280:                                              ; preds = %274
  %281 = tail call ptr @single_set_2(ptr noundef nonnull %269, ptr noundef nonnull %276) #22
  %282 = icmp eq ptr %281, null
  br i1 %282, label %290, label %283

283:                                              ; preds = %274, %280
  %284 = phi ptr [ %281, %280 ], [ %276, %274 ]
  %285 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !5
  %287 = icmp eq ptr %286, %15
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  tail call fastcc void @delete_address_reloads(ptr noundef nonnull %269, ptr noundef nonnull %0) #23
  %289 = tail call ptr @delete_insn(ptr noundef nonnull %269) #22
  br label %290

290:                                              ; preds = %268, %288, %283, %280
  %291 = load i32, ptr %269, align 8
  %292 = trunc i32 %291 to i16
  switch i16 %292, label %293 [
    i16 12, label %297
    i16 9, label %297
  ]

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1, i32 0, i32 0, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !5
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %268, !llvm.loop !369

297:                                              ; preds = %293, %290, %290, %227, %265
  %298 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #23
  %299 = trunc i32 %298 to i16
  %300 = load ptr, ptr @reg_renumber, align 8, !tbaa !21
  %301 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i16, ptr %300, i64 %302
  store i16 %299, ptr %303, align 2, !tbaa !28
  %304 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !5
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %297
  %307 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  tail call void @ira_mark_allocation_change(i32 noundef %307) #22
  br label %308

308:                                              ; preds = %306, %297
  %309 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  tail call fastcc void @alter_reg(i32 noundef %309, i32 noundef -1, i8 noundef zeroext 0) #23
  br label %312

310:                                              ; preds = %224, %220, %217, %210, %203
  tail call fastcc void @delete_address_reloads(ptr noundef nonnull %7, ptr noundef nonnull %0) #23
  %311 = tail call ptr @delete_insn(ptr noundef nonnull %7) #22
  br label %312

312:                                              ; preds = %70, %139, %259, %308, %310, %172, %128, %4
  ret void
}

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_to_sequence(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @inc_for_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %6 = tail call ptr @find_replacement(ptr noundef nonnull %5) #22
  %7 = load i32, ptr %2, align 8
  %8 = trunc i32 %7 to i16
  %9 = add i16 %8, -76
  %10 = icmp ult i16 %9, 4
  %11 = trunc i16 %9 to i4
  %12 = lshr i4 -5, %11
  %13 = and i4 %12, 1
  %14 = icmp ne i4 %13, 0
  %15 = select i1 %10, i1 %14, i1 false
  %16 = icmp eq ptr %1, %2
  %17 = select i1 %16, ptr %6, ptr %1
  %18 = load i32, ptr %6, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !21
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr null, ptr %25, align 8, !tbaa !21
  %26 = load i32, ptr %2, align 8
  %27 = trunc i32 %26 to i16
  br label %28

28:                                               ; preds = %21, %4
  %29 = phi i16 [ %27, %21 ], [ %8, %4 ]
  switch i16 %29, label %44 [
    i16 78, label %30
    i16 79, label %30
    i16 74, label %42
    i16 76, label %42
  ]

30:                                               ; preds = %28, %28
  %31 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8835, ptr noundef nonnull @.str.2) #22
  %37 = load ptr, ptr %31, align 8, !tbaa !5
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = tail call ptr @find_replacement(ptr noundef nonnull %40) #22
  br label %48

42:                                               ; preds = %28, %28
  %43 = sub nsw i32 0, %3
  br label %44

44:                                               ; preds = %28, %42
  %45 = phi i32 [ %43, %42 ], [ %3, %28 ]
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %46) #22
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi ptr [ %41, %38 ], [ %47, %44 ]
  %50 = icmp ne ptr %17, %0
  %51 = and i1 %15, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = tail call ptr @gen_move_insn(ptr noundef %0, ptr noundef %17) #22
  %54 = tail call ptr @emit_insn(ptr noundef %53) #22
  br label %55

55:                                               ; preds = %52, %48
  br i1 %16, label %56, label %74

56:                                               ; preds = %55
  %57 = tail call ptr @get_last_insn() #22
  %58 = load i32, ptr %6, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %60, ptr noundef nonnull %6, ptr noundef %49) #22
  %62 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %6, ptr noundef %61) #22
  %63 = tail call ptr @emit_insn(ptr noundef %62) #22
  %64 = tail call fastcc i32 @recog_memoized(ptr noundef %63) #23
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  tail call void @extract_insn(ptr noundef %63) #22
  %67 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  br i1 %15, label %103, label %70

70:                                               ; preds = %69
  %71 = tail call ptr @gen_move_insn(ptr noundef %0, ptr noundef nonnull %6) #22
  %72 = tail call ptr @emit_insn(ptr noundef %71) #22
  br label %103

73:                                               ; preds = %66, %56
  tail call void @delete_insns_since(ptr noundef %57) #22
  br label %74

74:                                               ; preds = %73, %55
  br i1 %15, label %85, label %75

75:                                               ; preds = %74
  %76 = icmp eq ptr %1, %0
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call ptr @gen_move_insn(ptr noundef %0, ptr noundef %17) #22
  %79 = tail call ptr @emit_insn(ptr noundef %78) #22
  br label %80

80:                                               ; preds = %77, %75
  %81 = tail call ptr @gen_add2_insn(ptr noundef %0, ptr noundef %49) #22
  %82 = tail call ptr @emit_insn(ptr noundef %81) #22
  %83 = tail call ptr @gen_move_insn(ptr noundef nonnull %6, ptr noundef %0) #22
  %84 = tail call ptr @emit_insn(ptr noundef %83) #22
  br label %103

85:                                               ; preds = %74
  %86 = tail call ptr @gen_add2_insn(ptr noundef %0, ptr noundef %49) #22
  %87 = tail call ptr @emit_insn(ptr noundef %86) #22
  %88 = tail call ptr @gen_move_insn(ptr noundef nonnull %6, ptr noundef %0) #22
  %89 = tail call ptr @emit_insn(ptr noundef %88) #22
  %90 = load i32, ptr %49, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 30
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !5
  %96 = sub nsw i64 0, %95
  %97 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %96) #22
  %98 = tail call ptr @gen_add2_insn(ptr noundef %0, ptr noundef %97) #22
  %99 = tail call ptr @emit_insn(ptr noundef %98) #22
  br label %103

100:                                              ; preds = %85
  %101 = tail call ptr @gen_sub2_insn(ptr noundef %0, ptr noundef nonnull %49) #22
  %102 = tail call ptr @emit_insn(ptr noundef %101) #22
  br label %103

103:                                              ; preds = %80, %100, %93, %69, %70
  %104 = phi ptr [ %63, %70 ], [ %63, %69 ], [ %89, %93 ], [ %89, %100 ], [ %84, %80 ]
  ret ptr %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @conflicts_with_override(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1, %15
  %5 = phi i32 [ %16, %15 ], [ %2, %1 ]
  %6 = phi i64 [ %17, %15 ], [ 0, %1 ]
  %7 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %8) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, ptr @n_reloads, align 4, !tbaa !27
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ %5, %4 ]
  %17 = add nuw nsw i64 %6, 1
  %18 = sext i32 %16 to i64
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %4, label %20, !llvm.loop !370

20:                                               ; preds = %10, %15, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 1, %10 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @count_occurrences(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !21
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !371
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_adjust_reg_for_icode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @scratch_reload_class(i32 noundef %2) #22
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 2, i32 2
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = tail call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %10) #23
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_adjust_reg_for_temp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %4
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %8
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %42
  %12 = phi ptr [ %5, %7 ], [ %13, %42 ]
  %13 = phi ptr [ %1, %7 ], [ null, %42 ]
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %15 = load i64, ptr %9, align 8, !tbaa !38
  %16 = zext i32 %14 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %15
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %11
  %21 = load i32, ptr %12, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %14, i32 noundef %3) #22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %10
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = load i32, ptr %12, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = icmp ugt i8 %30, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %12, i32 noundef %3) #22
  br label %40

40:                                               ; preds = %20, %38
  %41 = phi ptr [ %39, %38 ], [ %12, %20 ]
  store ptr %41, ptr %0, align 8, !tbaa !21
  br label %44

42:                                               ; preds = %11, %25, %28
  %43 = icmp eq ptr %13, null
  br i1 %43, label %44, label %11, !llvm.loop !372

44:                                               ; preds = %42, %4, %40
  %45 = phi i8 [ 1, %40 ], [ 0, %4 ], [ 0, %42 ]
  ret i8 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_reload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @get_last_insn() #22
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = icmp ugt i8 %14, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = tail call ptr @gen_lowpart_common(i32 noundef %19, ptr noundef %0) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %15, align 8, !tbaa !5
  br label %53

29:                                               ; preds = %24, %9, %4
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 39
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = lshr i32 %30, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = icmp ugt i8 %38, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = tail call ptr @gen_lowpart_common(i32 noundef %43, ptr noundef nonnull %1) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %39, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %29, %33, %48, %51, %27
  %54 = phi ptr [ %28, %27 ], [ %49, %51 ], [ %1, %48 ], [ %1, %33 ], [ %1, %29 ]
  %55 = phi ptr [ %25, %27 ], [ %52, %51 ], [ %0, %48 ], [ %0, %33 ], [ %0, %29 ]
  %56 = load i32, ptr %54, align 8
  %57 = trunc i32 %56 to i16
  switch i16 %57, label %223 [
    i16 49, label %58
    i16 37, label %164
    i16 39, label %158
  ]

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i16
  switch i16 %62, label %223 [
    i16 37, label %63
    i16 39, label %63
    i16 43, label %63
  ]

63:                                               ; preds = %58, %58, %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = load i32, ptr %65, align 8
  %67 = trunc i32 %66 to i16
  switch i16 %67, label %68 [
    i16 37, label %76
    i16 39, label %76
  ]

68:                                               ; preds = %63
  %69 = and i32 %66, 65535
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !27
  %73 = icmp eq i32 %72, 9
  %74 = icmp eq i32 %69, 43
  %75 = or i1 %74, %73
  br i1 %75, label %76, label %223

76:                                               ; preds = %63, %63, %68
  %77 = tail call ptr @find_replacement(ptr noundef nonnull %59) #22
  %78 = tail call ptr @find_replacement(ptr noundef nonnull %64) #22
  %79 = load ptr, ptr %64, align 8, !tbaa !5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = tail call fastcc i32 @rhs_regno(ptr noundef %55) #23
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #23
  %86 = icmp eq i32 %84, %85
  %87 = select i1 %86, ptr %78, ptr %77
  %88 = select i1 %86, ptr %77, ptr %78
  br label %89

89:                                               ; preds = %83, %76
  %90 = phi ptr [ %77, %76 ], [ %87, %83 ]
  %91 = phi ptr [ %78, %76 ], [ %88, %83 ]
  %92 = load ptr, ptr %59, align 8, !tbaa !5
  %93 = icmp eq ptr %90, %92
  %94 = icmp eq ptr %91, %79
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %54, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %99, ptr noundef %90, ptr noundef %91) #22
  br label %101

101:                                              ; preds = %89, %96
  %102 = phi ptr [ %100, %96 ], [ %54, %89 ]
  %103 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %55, ptr noundef %102) #22
  %104 = tail call fastcc ptr @emit_insn_if_valid_for_reload(ptr noundef %103) #23
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %291

106:                                              ; preds = %101
  %107 = load i32, ptr %55, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !373
  %113 = load i32, ptr %91, align 8
  %114 = and i32 %113, 65535
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !27
  %118 = freeze i32 %117
  %119 = icmp eq i32 %118, 9
  br i1 %119, label %138, label %120

120:                                              ; preds = %106
  %121 = trunc i32 %113 to i16
  switch i16 %121, label %125 [
    i16 43, label %138
    i16 39, label %138
    i16 37, label %122
  ]

122:                                              ; preds = %120
  %123 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %91) #23
  %124 = icmp ugt i32 %123, 52
  br i1 %124, label %138, label %125

125:                                              ; preds = %120, %122
  %126 = icmp eq i32 %112, 2956
  br i1 %126, label %139, label %127

127:                                              ; preds = %125
  %128 = sext i32 %112 to i64
  %129 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %128, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !219
  %131 = getelementptr inbounds %struct.insn_operand_data, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !375
  %133 = getelementptr inbounds %struct.insn_operand_data, ptr %130, i64 2, i32 2
  %134 = load i16, ptr %133, align 8
  %135 = zext i16 %134 to i32
  %136 = tail call i32 %132(ptr noundef nonnull %91, i32 noundef %135) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %120, %120, %106, %127, %122
  br label %139

139:                                              ; preds = %138, %127, %125
  %140 = phi ptr [ %91, %138 ], [ %90, %127 ], [ %90, %125 ]
  %141 = phi ptr [ %90, %138 ], [ %91, %127 ], [ %91, %125 ]
  tail call fastcc void @gen_reload(ptr noundef nonnull %55, ptr noundef %140, i32 noundef %2, i32 noundef %3) #23
  %142 = tail call i32 @rtx_equal_p(ptr noundef %140, ptr noundef %141) #22
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, ptr %141, ptr %55
  %145 = tail call ptr @gen_add2_insn(ptr noundef nonnull %55, ptr noundef %144) #22
  %146 = tail call fastcc ptr @emit_insn_if_valid_for_reload(ptr noundef %145) #23
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %139
  %149 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %146, i32 noundef 3, ptr noundef %102) #22
  br label %291

150:                                              ; preds = %139
  %151 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %55, ptr noundef %140) #22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8381, ptr noundef nonnull @.str.2) #22
  br label %154

154:                                              ; preds = %153, %150
  tail call fastcc void @gen_reload(ptr noundef nonnull %55, ptr noundef %144, i32 noundef %2, i32 noundef %3) #23
  %155 = tail call ptr @gen_add2_insn(ptr noundef nonnull %55, ptr noundef %140) #22
  %156 = tail call ptr @emit_insn(ptr noundef %155) #22
  %157 = tail call ptr @set_unique_reg_note(ptr noundef %156, i32 noundef 3, ptr noundef %102) #22
  br label %287

158:                                              ; preds = %53
  %159 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !5
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 37
  br i1 %163, label %164, label %223

164:                                              ; preds = %53, %158
  %165 = tail call i32 @reg_or_subregno(ptr noundef nonnull %54) #22
  %166 = icmp ult i32 %165, 53
  br i1 %166, label %167, label %223

167:                                              ; preds = %164
  %168 = load i32, ptr %55, align 8
  %169 = trunc i32 %168 to i16
  switch i16 %169, label %223 [
    i16 37, label %176
    i16 39, label %170
  ]

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 37
  br i1 %175, label %176, label %223

176:                                              ; preds = %167, %170
  %177 = tail call i32 @reg_or_subregno(ptr noundef nonnull %55) #22
  %178 = icmp ult i32 %177, 53
  br i1 %178, label %179, label %223

179:                                              ; preds = %176
  %180 = tail call i32 @reg_or_subregno(ptr noundef nonnull %54) #22
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !27
  %184 = tail call i32 @reg_or_subregno(ptr noundef nonnull %55) #22
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !27
  %188 = load i32, ptr %55, align 8
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  %191 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %183, i32 noundef %187, i32 noundef %190, i32 noundef 1) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %223, label %193

193:                                              ; preds = %179
  %194 = load i32, ptr %55, align 8
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = tail call ptr @get_secondary_mem(ptr noundef nonnull %54, i32 noundef %196, i32 noundef %2, i32 noundef %3) #22
  %198 = load i32, ptr %197, align 8
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 255
  %201 = load i32, ptr %55, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %193
  %206 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %55) #23
  %207 = tail call ptr @gen_rtx_REG(i32 noundef %200, i32 noundef %206) #22
  %208 = load i32, ptr %197, align 8
  %209 = lshr i32 %208, 16
  %210 = and i32 %209, 255
  br label %211

211:                                              ; preds = %205, %193
  %212 = phi i32 [ %210, %205 ], [ %200, %193 ]
  %213 = phi ptr [ %207, %205 ], [ %55, %193 ]
  %214 = load i32, ptr %54, align 8
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  %217 = icmp eq i32 %212, %216
  br i1 %217, label %221, label %218

218:                                              ; preds = %211
  %219 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #23
  %220 = tail call ptr @gen_rtx_REG(i32 noundef %212, i32 noundef %219) #22
  br label %221

221:                                              ; preds = %218, %211
  %222 = phi ptr [ %220, %218 ], [ %54, %211 ]
  tail call fastcc void @gen_reload(ptr noundef nonnull %197, ptr noundef %222, i32 noundef %2, i32 noundef %3) #23
  tail call fastcc void @gen_reload(ptr noundef %213, ptr noundef nonnull %197, i32 noundef %2, i32 noundef %3) #23
  br label %287

223:                                              ; preds = %53, %58, %68, %167, %179, %176, %170, %164, %158
  %224 = load i32, ptr %55, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 37
  %227 = load i32, ptr %54, align 8
  %228 = and i32 %227, 65535
  %229 = zext nneg i32 %228 to i64
  br i1 %226, label %230, label %274

230:                                              ; preds = %223
  %231 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %229
  %232 = load i32, ptr %231, align 4, !tbaa !27
  %233 = icmp eq i32 %232, 4
  br i1 %233, label %234, label %274

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %236 = tail call ptr @find_replacement(ptr noundef nonnull %235) #22
  %237 = load ptr, ptr %235, align 8, !tbaa !5
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %234
  %240 = load i32, ptr %54, align 8
  %241 = and i32 %240, 65535
  %242 = lshr i32 %240, 16
  %243 = and i32 %242, 255
  %244 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %241, i32 noundef %243, ptr noundef %236) #22
  br label %245

245:                                              ; preds = %239, %234
  %246 = phi ptr [ %244, %239 ], [ %54, %234 ]
  %247 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %55, ptr noundef %246) #22
  %248 = tail call fastcc ptr @emit_insn_if_valid_for_reload(ptr noundef %247) #23
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %291

250:                                              ; preds = %245
  %251 = load i32, ptr %236, align 8
  %252 = lshr i32 %251, 16
  %253 = and i32 %252, 255
  %254 = load i32, ptr %55, align 8
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %261, label %258

258:                                              ; preds = %250
  %259 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %55) #23
  %260 = tail call ptr @gen_rtx_REG(i32 noundef %253, i32 noundef %259) #22
  br label %261

261:                                              ; preds = %250, %258
  %262 = phi ptr [ %260, %258 ], [ %55, %250 ]
  tail call fastcc void @gen_reload(ptr noundef %262, ptr noundef nonnull %236, i32 noundef %2, i32 noundef %3) #23
  %263 = load i32, ptr %246, align 8
  %264 = and i32 %263, 65535
  %265 = lshr i32 %263, 16
  %266 = and i32 %265, 255
  %267 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %264, i32 noundef %266, ptr noundef %262) #22
  %268 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %55, ptr noundef %267) #22
  %269 = tail call fastcc ptr @emit_insn_if_valid_for_reload(ptr noundef %268) #23
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %261
  %272 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %269, i32 noundef 3, ptr noundef nonnull %246) #22
  br label %291

273:                                              ; preds = %261
  tail call void @_fatal_insn(ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 8450, ptr noundef nonnull @.str.2) #22
  br label %287

274:                                              ; preds = %223, %230
  %275 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %229
  %276 = load i32, ptr %275, align 4, !tbaa !27
  %277 = and i32 %276, -2
  %278 = icmp eq i32 %277, 8
  %279 = icmp eq i32 %228, 39
  %280 = or i1 %279, %278
  br i1 %280, label %281, label %284

281:                                              ; preds = %274
  %282 = tail call ptr @gen_move_insn(ptr noundef nonnull %55, ptr noundef nonnull %54) #22
  %283 = tail call ptr @emit_insn(ptr noundef %282) #22
  tail call void @mark_jump_label(ptr noundef nonnull %54, ptr noundef %283, i32 noundef 0) #22
  br label %287

284:                                              ; preds = %274
  %285 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %55, ptr noundef nonnull %54) #22
  %286 = tail call ptr @emit_insn(ptr noundef %285) #22
  br label %287

287:                                              ; preds = %273, %154, %221, %281, %284
  %288 = icmp eq ptr %5, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %287
  %290 = tail call ptr @get_insns() #22
  br label %291

291:                                              ; preds = %287, %245, %271, %101, %148, %289
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_reg_eh_region_note_forward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_replacement(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_add2_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_sub2_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @scratch_reload_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @emit_insn_if_valid_for_reload(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @get_last_insn() #22
  %3 = tail call ptr @emit_insn(ptr noundef %0) #22
  %4 = tail call fastcc i32 @recog_memoized(ptr noundef %3) #23
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  tail call void @extract_insn(ptr noundef %3) #22
  %7 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  tail call void @delete_insns_since(ptr noundef %2) #22
  br label %10

10:                                               ; preds = %6, %9
  %11 = phi ptr [ null, %9 ], [ %3, %6 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_or_subregno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_secondary_mem(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_jump_label(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_address_reloads(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %9) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  tail call fastcc void @delete_address_reloads_1(ptr noundef nonnull %0, ptr noundef %25, ptr noundef %1) #23
  br label %26

26:                                               ; preds = %2, %16, %23, %13
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp ne ptr %28, null
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %125

34:                                               ; preds = %26
  %35 = load i32, ptr %30, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 23
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call ptr @single_set_2(ptr noundef nonnull %30, ptr noundef nonnull %41) #22
  br label %47

47:                                               ; preds = %34, %39, %45
  %48 = phi ptr [ %46, %45 ], [ null, %34 ], [ %41, %39 ]
  %49 = load i32, ptr %28, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %125

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = tail call ptr @single_set_2(ptr noundef nonnull %28, ptr noundef nonnull %55) #22
  br label %61

61:                                               ; preds = %53, %59
  %62 = phi ptr [ %60, %59 ], [ %55, %53 ]
  %63 = icmp ne ptr %48, null
  %64 = icmp ne ptr %62, null
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %125

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %68 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 49
  br i1 %72, label %73, label %125

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %75 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 49
  br i1 %79, label %80, label %125

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 30
  br i1 %85, label %86, label %125

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 30
  br i1 %91, label %92, label %125

92:                                               ; preds = %86
  %93 = load ptr, ptr %67, align 8, !tbaa !5
  %94 = load ptr, ptr %74, align 8, !tbaa !5
  %95 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %94) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %68, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %75, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %106) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %68, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !5
  %115 = load ptr, ptr %75, align 8, !tbaa !5
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !5
  %120 = sub nsw i64 0, %119
  %121 = icmp eq i64 %114, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %109
  %123 = tail call ptr @delete_related_insns(ptr noundef nonnull %28) #22
  %124 = tail call ptr @delete_related_insns(ptr noundef nonnull %30) #22
  br label %125

125:                                              ; preds = %47, %92, %97, %103, %109, %61, %66, %73, %80, %86, %26, %122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %184, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %17

17:                                               ; preds = %14, %39
  %18 = phi i64 [ %16, %14 ], [ %19, %39 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds i8, ptr %10, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !5
  switch i8 %21, label %39 [
    i8 101, label %22
    i8 69, label %25
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  tail call fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %24, ptr noundef %2) #23
  br label %39

25:                                               ; preds = %17
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = load i32, ptr %27, align 8, !tbaa !123
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  tail call fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %37, ptr noundef %2) #23
  %38 = icmp ugt i64 %33, 1
  br i1 %38, label %32, label %39, !llvm.loop !376

39:                                               ; preds = %32, %25, %17, %22
  %40 = icmp sgt i64 %18, 1
  br i1 %40, label %17, label %184, !llvm.loop !377

41:                                               ; preds = %3
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #23
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !28
  %46 = icmp slt i16 %45, 0
  br i1 %46, label %184, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %184, label %51

51:                                               ; preds = %47, %64
  %52 = phi ptr [ %66, %64 ], [ %49, %47 ]
  %53 = load i32, ptr %52, align 8
  %54 = trunc i32 %53 to i16
  switch i16 %54, label %64 [
    i16 12, label %184
    i16 9, label %184
    i16 8, label %55
    i16 7, label %55
    i16 10, label %55
  ]

55:                                               ; preds = %51, %51, %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = tail call i32 @reg_set_p(ptr noundef nonnull %1, ptr noundef %57) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !5
  %62 = tail call i32 @reg_referenced_p(ptr noundef nonnull %1, ptr noundef %61) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %184

64:                                               ; preds = %51, %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %184, label %51, !llvm.loop !378

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !5
  %71 = load i32, ptr @reload_first_uid, align 4, !tbaa !27
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %184, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %52, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %184

78:                                               ; preds = %73
  %79 = load ptr, ptr %56, align 8, !tbaa !5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 23
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = tail call ptr @single_set_2(ptr noundef nonnull %52, ptr noundef nonnull %79) #22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %184, label %86

86:                                               ; preds = %78, %83
  %87 = phi ptr [ %84, %83 ], [ %79, %78 ]
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %184

93:                                               ; preds = %86
  %94 = tail call i32 @rtx_equal_p(ptr noundef nonnull %89, ptr noundef nonnull %1) #22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %184, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = tail call i32 @reg_set_p(ptr noundef nonnull %89, ptr noundef %98) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %185

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = icmp eq ptr %103, null
  br i1 %104, label %185, label %105

105:                                              ; preds = %101, %180
  %106 = phi ptr [ %182, %180 ], [ %103, %101 ]
  %107 = load i32, ptr %106, align 8
  %108 = trunc i32 %107 to i16
  switch i16 %108, label %180 [
    i16 12, label %185
    i16 8, label %109
    i16 7, label %109
    i16 9, label %109
    i16 10, label %109
  ]

109:                                              ; preds = %105, %105, %105, %105
  %110 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = tail call i32 @reg_referenced_p(ptr noundef nonnull %89, ptr noundef %111) #22
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %109
  %115 = icmp eq ptr %106, %2
  br i1 %115, label %116, label %184

116:                                              ; preds = %114
  %117 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %118 = zext i32 %117 to i64
  br label %119

119:                                              ; preds = %134, %116
  %120 = phi i64 [ %121, %134 ], [ %118, %116 ]
  %121 = add nsw i64 %120, -1
  %122 = trunc i64 %120 to i32
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = icmp sgt i32 %117, 0
  br i1 %125, label %138, label %184

126:                                              ; preds = %119
  %127 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %121, i32 11
  %128 = load ptr, ptr %127, align 8, !tbaa !195
  %129 = icmp eq ptr %128, %89
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %121
  %132 = load i8, ptr %131, align 1, !tbaa !5
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %184

134:                                              ; preds = %130, %126
  %135 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %121
  %136 = load ptr, ptr %135, align 8, !tbaa !21
  %137 = icmp eq ptr %136, %89
  br i1 %137, label %184, label %119, !llvm.loop !379

138:                                              ; preds = %124, %148
  %139 = phi i64 [ %140, %148 ], [ %118, %124 ]
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !249
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %140, i32 11
  %146 = load ptr, ptr %145, align 8, !tbaa !195
  %147 = icmp eq ptr %146, %89
  br i1 %147, label %185, label %148

148:                                              ; preds = %138, %144
  %149 = icmp sgt i64 %139, 1
  br i1 %149, label %138, label %184, !llvm.loop !380

150:                                              ; preds = %109
  %151 = load i32, ptr %106, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 9
  br i1 %153, label %185, label %154

154:                                              ; preds = %150
  %155 = icmp eq ptr %106, %2
  br i1 %155, label %156, label %176

156:                                              ; preds = %154
  %157 = load i32, ptr @n_reloads, align 4, !tbaa !27
  %158 = zext i32 %157 to i64
  br label %159

159:                                              ; preds = %172, %156
  %160 = phi i64 [ %161, %172 ], [ %158, %156 ]
  %161 = add nsw i64 %160, -1
  %162 = trunc i64 %160 to i32
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %161, i32 11
  %166 = load ptr, ptr %165, align 8, !tbaa !195
  %167 = icmp eq ptr %166, %89
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %161
  %170 = load i8, ptr %169, align 1, !tbaa !5
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %168, %164
  %173 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %161
  %174 = load ptr, ptr %173, align 8, !tbaa !21
  %175 = icmp eq ptr %174, %89
  br i1 %175, label %184, label %159, !llvm.loop !381

176:                                              ; preds = %159, %154
  %177 = load ptr, ptr %110, align 8, !tbaa !5
  %178 = tail call i32 @reg_set_p(ptr noundef nonnull %89, ptr noundef %177) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %105, %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 2
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %105, !llvm.loop !382

184:                                              ; preds = %73, %114, %86, %93, %83, %68, %41, %124, %47, %7, %148, %130, %134, %168, %172, %51, %51, %60, %64, %39, %185
  ret void

185:                                              ; preds = %176, %150, %180, %105, %144, %101, %96
  %186 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  tail call fastcc void @delete_address_reloads_1(ptr noundef nonnull %52, ptr noundef %187, ptr noundef %2) #23
  %188 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #23
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %189
  store i32 -1, ptr %190, align 4, !tbaa !27
  %191 = tail call ptr @delete_insn(ptr noundef nonnull %52) #22
  br label %184
}

; Function Attrs: optsize
declare ptr @delete_related_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_output_reload_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  %8 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !198
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @start_sequence() #22
  br label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !197
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [30 x ptr], ptr @output_reload_insns, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  tail call void @push_to_sequence(ptr noundef %17) #22
  br label %18

18:                                               ; preds = %12, %11
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !383
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %137

28:                                               ; preds = %18
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 14
  %31 = load i32, ptr %30, align 8, !tbaa !383
  %32 = load i32, ptr %7, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %37 = icmp ugt i32 %36, 52
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !21
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !21
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr %7, ptr %42
  br label %45

45:                                               ; preds = %38, %35, %28
  %46 = phi ptr [ %7, %35 ], [ %7, %28 ], [ %44, %38 ]
  %47 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !250
  %49 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %48, i32 noundef %24, ptr noundef nonnull %46) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %137, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !195
  %54 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !384
  %56 = icmp eq i32 %55, 2956
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = icmp slt i32 %31, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7404, ptr noundef nonnull @.str.2) #22
  %60 = load i32, ptr %54, align 8, !tbaa !384
  br label %61

61:                                               ; preds = %57, %59
  %62 = phi i32 [ %55, %57 ], [ %60, %59 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %63, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !360
  %66 = tail call ptr (ptr, ...) %65(ptr noundef nonnull %46, ptr noundef nonnull %21, ptr noundef %53) #22
  %67 = tail call ptr @emit_insn(ptr noundef %66) #22
  br label %182

68:                                               ; preds = %51
  %69 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 16
  %70 = load i32, ptr %69, align 8, !tbaa !384
  %71 = icmp slt i32 %31, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = zext nneg i32 %31 to i64
  %74 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %73, i32 14
  %75 = load i32, ptr %74, align 8, !tbaa !383
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7420, ptr noundef nonnull @.str.2) #22
  br label %78

78:                                               ; preds = %68, %72, %77
  %79 = load i32, ptr %53, align 8
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, %24
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %53, i32 noundef %24) #22
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %53, %78 ]
  %87 = icmp eq i32 %70, 2956
  br i1 %87, label %126, label %88

88:                                               ; preds = %85
  %89 = sext i32 %31 to i64
  %90 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %89, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !195
  %92 = load i32, ptr %46, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = lshr i32 %92, 16
  %97 = and i32 %96, 255
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !5
  %109 = icmp ugt i8 %100, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %95
  %111 = tail call ptr @gen_lowpart_common(i32 noundef %105, ptr noundef %86) #22
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %101, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %113, %110, %95, %88
  %116 = phi ptr [ %114, %113 ], [ %46, %110 ], [ %46, %95 ], [ %46, %88 ]
  %117 = phi ptr [ %111, %113 ], [ %86, %110 ], [ %86, %95 ], [ %86, %88 ]
  %118 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %119 = load i32, ptr %118, align 8, !tbaa !197
  %120 = load i32, ptr %8, align 4, !tbaa !198
  tail call fastcc void @gen_reload(ptr noundef %117, ptr noundef nonnull %21, i32 noundef %119, i32 noundef %120) #23
  %121 = zext i32 %70 to i64
  %122 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %121, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !360
  %124 = tail call ptr (ptr, ...) %123(ptr noundef %116, ptr noundef %117, ptr noundef %91) #22
  %125 = tail call ptr @emit_insn(ptr noundef %124) #22
  br label %182

126:                                              ; preds = %85
  %127 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %128 = load i32, ptr %127, align 8, !tbaa !197
  %129 = load i32, ptr %8, align 4, !tbaa !198
  tail call fastcc void @gen_reload(ptr noundef %86, ptr noundef nonnull %21, i32 noundef %128, i32 noundef %129) #23
  %130 = icmp sgt i32 %31, -1
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = zext nneg i32 %31 to i64
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %132, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !195
  %135 = load i32, ptr %127, align 8, !tbaa !197
  %136 = load i32, ptr %8, align 4, !tbaa !198
  tail call fastcc void @gen_reload(ptr noundef %134, ptr noundef %86, i32 noundef %135, i32 noundef %136) #23
  br label %137

137:                                              ; preds = %18, %45, %131, %126
  %138 = phi ptr [ %86, %126 ], [ %134, %131 ], [ %21, %45 ], [ %21, %18 ]
  %139 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !27
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %178, label %141

141:                                              ; preds = %137
  %142 = load i32, ptr %7, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %145, label %178

145:                                              ; preds = %141
  %146 = load i32, ptr %5, align 8
  %147 = and i32 %146, 65535
  %148 = add nsw i32 %147, -7
  %149 = icmp ult i32 %148, 4
  br i1 %149, label %150, label %178

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 23
  br i1 %155, label %159, label %156

156:                                              ; preds = %150
  %157 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %152) #22
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159

159:                                              ; preds = %150, %156
  %160 = phi ptr [ %157, %156 ], [ %152, %150 ]
  %161 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef %162) #22
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %7, ptr noundef %167) #22
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %165
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %172 = icmp ult i32 %171, 53
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !199
  %176 = tail call i32 @regno_clobbered_p(i32 noundef %171, ptr noundef nonnull %5, i32 noundef %175, i32 noundef 0) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %145, %173, %170, %165, %159, %156, %141, %137
  %179 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %180 = load i32, ptr %179, align 8, !tbaa !197
  %181 = load i32, ptr %8, align 4, !tbaa !198
  tail call fastcc void @gen_reload(ptr noundef %7, ptr noundef %138, i32 noundef %180, i32 noundef %181) #23
  br label %182

182:                                              ; preds = %61, %115, %173, %178
  %183 = tail call ptr @get_insns() #22
  %184 = icmp eq ptr %183, null
  br i1 %184, label %312, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %187 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %19
  %188 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  br label %189

189:                                              ; preds = %185, %308
  %190 = phi ptr [ %183, %185 ], [ %310, %308 ]
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 65535
  %193 = add nsw i32 %192, -7
  %194 = icmp ult i32 %193, 4
  br i1 %194, label %195, label %308

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  tail call void @note_stores(ptr noundef %197, ptr noundef nonnull @forget_old_reloads_1, ptr noundef null) #22
  %198 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %21, ptr noundef %197) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %308, label %200

200:                                              ; preds = %195
  %201 = load i32, ptr %5, align 8
  %202 = and i32 %201, 65535
  %203 = add nsw i32 %202, -7
  %204 = icmp ult i32 %203, 4
  br i1 %204, label %205, label %233

205:                                              ; preds = %200
  %206 = load ptr, ptr %186, align 8, !tbaa !5
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 23
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  %211 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %206) #22
  br label %212

212:                                              ; preds = %205, %210
  %213 = phi ptr [ %211, %210 ], [ %206, %205 ]
  %214 = load i32, ptr %187, align 4, !tbaa !27
  %215 = icmp slt i32 %214, 0
  %216 = icmp ne ptr %213, null
  %217 = select i1 %215, i1 %216, i1 false
  br i1 %217, label %218, label %233

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !5
  %221 = icmp eq ptr %220, %21
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  store i32 %223, ptr %187, align 4, !tbaa !27
  %224 = zext nneg i32 %223 to i64
  %225 = shl nuw i64 1, %224
  %226 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !38
  %227 = or i64 %226, %225
  store i64 %227, ptr @reg_is_output_reload, align 8, !tbaa !38
  %228 = tail call ptr @find_regno_note(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %223) #22
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %222
  %231 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !38
  %232 = or i64 %231, %225
  store i64 %232, ptr @reg_reloaded_died, align 8, !tbaa !38
  br label %233

233:                                              ; preds = %200, %222, %230, %218, %212
  %234 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  %235 = icmp ult i32 %234, 53
  br i1 %235, label %236, label %308

236:                                              ; preds = %233
  %237 = load i32, ptr %25, align 8, !tbaa !383
  %238 = load i32, ptr %190, align 8
  %239 = and i32 %238, 65535
  %240 = add nsw i32 %239, -7
  %241 = icmp ult i32 %240, 4
  br i1 %241, label %242, label %251

242:                                              ; preds = %236
  %243 = load ptr, ptr %196, align 8, !tbaa !5
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 23
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = icmp sgt i32 %237, -1
  br i1 %248, label %257, label %304

249:                                              ; preds = %242
  %250 = tail call ptr @single_set_2(ptr noundef nonnull %190, ptr noundef nonnull %243) #22
  br label %251

251:                                              ; preds = %236, %249
  %252 = phi ptr [ %250, %249 ], [ null, %236 ]
  %253 = icmp sgt i32 %237, -1
  %254 = icmp eq ptr %252, null
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %308, label %256

256:                                              ; preds = %251
  br i1 %253, label %257, label %304

257:                                              ; preds = %247, %256
  %258 = phi ptr [ %243, %247 ], [ %252, %256 ]
  %259 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !5
  %261 = icmp eq ptr %260, %21
  br i1 %261, label %262, label %304

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !5
  %265 = zext nneg i32 %237 to i64
  %266 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %265, i32 11
  %267 = load ptr, ptr %266, align 8, !tbaa !195
  %268 = icmp eq ptr %264, %267
  br i1 %268, label %269, label %304

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 2
  %271 = load ptr, ptr %270, align 8, !tbaa !5
  %272 = load ptr, ptr %6, align 8, !tbaa !248
  %273 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %265, i32 1
  store ptr %272, ptr %273, align 8, !tbaa !248
  %274 = load ptr, ptr %188, align 8, !tbaa !298
  %275 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %265, i32 9
  store ptr %274, ptr %275, align 8, !tbaa !298
  %276 = load i32, ptr %271, align 8
  %277 = and i32 %276, 65535
  %278 = add nsw i32 %277, -7
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %308

280:                                              ; preds = %269
  %281 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !5
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, 65535
  %285 = icmp eq i32 %284, 23
  br i1 %285, label %289, label %286

286:                                              ; preds = %280
  %287 = tail call ptr @single_set_2(ptr noundef nonnull %271, ptr noundef nonnull %282) #22
  %288 = icmp eq ptr %287, null
  br i1 %288, label %308, label %289

289:                                              ; preds = %280, %286
  %290 = phi ptr [ %287, %286 ], [ %282, %280 ]
  %291 = getelementptr inbounds %struct.rtx_def, ptr %290, i64 0, i32 1, i32 0, i32 0, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  %293 = icmp eq ptr %292, %264
  br i1 %293, label %294, label %308

294:                                              ; preds = %289
  %295 = tail call fastcc i32 @rhs_regno(ptr noundef %264) #23
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !21
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %308

300:                                              ; preds = %294
  %301 = shl nuw i64 1, %296
  %302 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !38
  %303 = or i64 %302, %301
  store i64 %303, ptr @reg_is_output_reload, align 8, !tbaa !38
  store ptr %271, ptr %297, align 8, !tbaa !21
  br label %308

304:                                              ; preds = %247, %262, %257, %256
  %305 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %306
  store ptr %190, ptr %307, align 8, !tbaa !21
  br label %308

308:                                              ; preds = %269, %189, %195, %251, %304, %300, %294, %289, %286, %233
  %309 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 2
  %310 = load ptr, ptr %309, align 8, !tbaa !5
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %189, !llvm.loop !385

312:                                              ; preds = %308, %182
  %313 = load i32, ptr %8, align 4, !tbaa !198
  %314 = icmp eq i32 %313, 9
  br i1 %314, label %315, label %323

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %317 = load i32, ptr %316, align 8, !tbaa !197
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [30 x ptr], ptr @other_output_reload_insns, i64 0, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !21
  %321 = tail call ptr @emit_insn(ptr noundef %320) #22
  %322 = tail call ptr @get_insns() #22
  br label %326

323:                                              ; preds = %312
  %324 = tail call ptr @get_insns() #22
  %325 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  br label %326

326:                                              ; preds = %323, %315
  %327 = phi ptr [ %325, %323 ], [ %316, %315 ]
  %328 = phi ptr [ @output_reload_insns, %323 ], [ @other_output_reload_insns, %315 ]
  %329 = phi ptr [ %324, %323 ], [ %322, %315 ]
  %330 = load i32, ptr %327, align 8, !tbaa !197
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [30 x ptr], ptr %328, i64 0, i64 %331
  store ptr %329, ptr %332, align 8, !tbaa !21
  %333 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !27
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %326
  %336 = tail call ptr @get_insns() #22
  tail call void @copy_reg_eh_region_note_forward(ptr noundef %5, ptr noundef %336, ptr noundef null) #22
  br label %337

337:                                              ; preds = %335, %326
  tail call void @end_sequence() #22
  ret void
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #23
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !386
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 687, ptr noundef nonnull @.str.2) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !13, i64 40}
!12 = !{!"obstack", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !13, i64 40, !15, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !15, i64 80, !15, i64 80, !15, i64 80}
!13 = !{!"long", !6, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!12, !14, i64 32}
!17 = !{!12, !14, i64 24}
!18 = !{!12, !14, i64 16}
!19 = !{!12, !15, i64 48}
!20 = !{!12, !14, i64 8}
!21 = !{!14, !14, i64 0}
!22 = !{!23, !14, i64 24}
!23 = !{!"bitmap_head_def", !14, i64 0, !14, i64 8, !15, i64 16, !14, i64 24}
!24 = !{!25, !14, i64 0}
!25 = !{!"insn_chain", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !15, i64 36, !15, i64 36, !15, i64 36, !15, i64 36, !23, i64 40, !23, i64 72, !14, i64 104, !15, i64 112, !13, i64 120}
!26 = !{i8 0, i8 2}
!27 = !{!15, !15, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !6, i64 0}
!30 = distinct !{!30, !9}
!31 = !{!23, !14, i64 0}
!32 = !{!33, !14, i64 0}
!33 = !{!"", !14, i64 0, !14, i64 8, !15, i64 16, !13, i64 24}
!34 = !{!33, !14, i64 8}
!35 = !{!36, !15, i64 16}
!36 = !{!"bitmap_element_def", !14, i64 0, !14, i64 8, !15, i64 16, !6, i64 24}
!37 = !{!33, !15, i64 16}
!38 = !{!13, !13, i64 0}
!39 = !{!33, !13, i64 24}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{!36, !14, i64 0}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = !{!46, !6, i64 466}
!46 = !{!"rtl_data", !47, i64 0, !48, i64 40, !49, i64 96, !50, i64 112, !52, i64 208, !53, i64 248, !15, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !13, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !15, i64 432, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !14, i64 456, !6, i64 464, !6, i64 465, !6, i64 466, !6, i64 467, !6, i64 468, !6, i64 469, !6, i64 470, !6, i64 471, !6, i64 472, !6, i64 473, !6, i64 474, !6, i64 475, !6, i64 476, !6, i64 477, !6, i64 478, !6, i64 479, !6, i64 480, !6, i64 481, !6, i64 482, !6, i64 483, !6, i64 484, !6, i64 485}
!47 = !{!"expr_status", !15, i64 0, !15, i64 4, !15, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!48 = !{!"emit_status", !15, i64 0, !15, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !14, i64 48}
!49 = !{!"varasm_status", !14, i64 0, !15, i64 8}
!50 = !{!"incoming_args", !15, i64 0, !15, i64 4, !15, i64 8, !14, i64 16, !51, i64 24, !14, i64 88}
!51 = !{!"ix86_args", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60}
!52 = !{!"function_subsections", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!53 = !{!"rtl_eh", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !6, i64 48}
!54 = distinct !{!54, !9}
!55 = !{i32 0, i32 2}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = !{!62, !15, i64 0}
!62 = !{!"elim_table", !15, i64 0, !15, i64 4, !13, i64 8, !15, i64 16, !15, i64 20, !13, i64 24, !13, i64 32, !15, i64 40, !14, i64 48, !14, i64 56}
!63 = !{!62, !15, i64 16}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = !{!46, !6, i64 477}
!67 = !{!68, !6, i64 32}
!68 = !{!"mem_attrs", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 28, !6, i64 32}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = !{!62, !15, i64 4}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = !{!76, !14, i64 8}
!76 = !{!"function", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !14, i64 128, !15, i64 136, !15, i64 137, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139}
!77 = !{!78, !14, i64 0}
!78 = !{!"control_flow_graph", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !14, i64 40, !15, i64 48, !6, i64 52, !6, i64 60, !15, i64 68, !15, i64 72}
!79 = !{!80, !14, i64 56}
!80 = !{!"basic_block_def", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !14, i64 48, !14, i64 56, !6, i64 64, !13, i64 72, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96}
!81 = !{!78, !14, i64 8}
!82 = distinct !{!82, !9}
!83 = !{!84, !14, i64 1040}
!84 = !{!"gcc_target", !85, i64 0, !87, i64 368, !88, i64 664, !15, i64 744, !14, i64 752, !14, i64 760, !14, i64 768, !14, i64 776, !14, i64 784, !14, i64 792, !14, i64 800, !14, i64 808, !14, i64 816, !14, i64 824, !14, i64 832, !14, i64 840, !14, i64 848, !14, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !14, i64 968, !14, i64 976, !14, i64 984, !14, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !14, i64 1024, !14, i64 1032, !14, i64 1040, !14, i64 1048, !14, i64 1056, !13, i64 1064, !13, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !14, i64 1104, !14, i64 1112, !14, i64 1120, !14, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !89, i64 1176, !14, i64 1232, !14, i64 1240, !14, i64 1248, !14, i64 1256, !14, i64 1264, !14, i64 1272, !14, i64 1280, !14, i64 1288, !14, i64 1296, !14, i64 1304, !14, i64 1312, !14, i64 1320, !14, i64 1328, !14, i64 1336, !14, i64 1344, !14, i64 1352, !14, i64 1360, !14, i64 1368, !14, i64 1376, !14, i64 1384, !14, i64 1392, !14, i64 1400, !14, i64 1408, !14, i64 1416, !14, i64 1424, !14, i64 1432, !14, i64 1440, !14, i64 1448, !14, i64 1456, !13, i64 1464, !90, i64 1472, !14, i64 1664, !14, i64 1672, !14, i64 1680, !14, i64 1688, !14, i64 1696, !14, i64 1704, !14, i64 1712, !14, i64 1720, !14, i64 1728, !14, i64 1736, !14, i64 1744, !14, i64 1752, !14, i64 1760, !14, i64 1768, !14, i64 1776, !91, i64 1784, !92, i64 1792, !93, i64 1896, !94, i64 1968, !14, i64 2016, !6, i64 2024, !6, i64 2025, !6, i64 2026, !6, i64 2027, !6, i64 2028, !6, i64 2029, !6, i64 2030, !6, i64 2031, !6, i64 2032, !6, i64 2033, !6, i64 2034, !6, i64 2035}
!85 = !{!"asm_out", !14, i64 0, !14, i64 8, !14, i64 16, !86, i64 24, !86, i64 56, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360}
!86 = !{!"asm_int_op", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!87 = !{!"sched", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288}
!88 = !{!"vectorize", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!89 = !{!"addr_space", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!90 = !{!"calls", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184}
!91 = !{!"c", !14, i64 0}
!92 = !{!"cxx", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96}
!93 = !{!"emutls", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !6, i64 64, !6, i64 65}
!94 = !{!"target_option_hooks", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!95 = !{!96, !14, i64 224}
!96 = !{!"df", !6, i64 0, !6, i64 64, !14, i64 128, !97, i64 136, !97, i64 176, !14, i64 216, !14, i64 224, !14, i64 232, !15, i64 240, !15, i64 244, !14, i64 248, !15, i64 256, !15, i64 260, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !15, i64 344, !15, i64 348, !14, i64 352, !15, i64 360, !15, i64 364, !6, i64 365, !6, i64 366}
!97 = !{!"df_ref_info", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!98 = !{!99, !14, i64 0}
!99 = !{!"df_reg_info", !14, i64 0, !15, i64 8}
!100 = !{!101, !14, i64 0}
!101 = !{!"df_insn_info", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !15, i64 40}
!102 = distinct !{!102, !9}
!103 = distinct !{!103, !9}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = distinct !{!107, !9}
!108 = distinct !{!108, !9}
!109 = distinct !{!109, !9}
!110 = !{!46, !14, i64 88}
!111 = !{!78, !15, i64 24}
!112 = !{!80, !15, i64 96}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = !{i64 0, i64 4, !27, i64 8, i64 8, !21}
!116 = !{i64 0, i64 8, !21}
!117 = !{!118, !15, i64 48}
!118 = !{!"edge_def", !14, i64 0, !14, i64 8, !6, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !13, i64 56}
!119 = !{!118, !14, i64 0}
!120 = distinct !{!120, !9}
!121 = distinct !{!121, !9}
!122 = distinct !{!122, !9}
!123 = !{!124, !15, i64 0}
!124 = !{!"rtvec_def", !15, i64 0, !6, i64 8}
!125 = distinct !{!125, !9}
!126 = distinct !{!126, !9}
!127 = !{!128, !15, i64 0}
!128 = !{!"elim_table_1", !15, i64 0, !15, i64 4}
!129 = !{!128, !15, i64 4}
!130 = !{!84, !14, i64 1776}
!131 = !{!46, !6, i64 479}
!132 = !{!62, !15, i64 20}
!133 = distinct !{!133, !9}
!134 = !{!62, !14, i64 48}
!135 = !{!62, !14, i64 56}
!136 = distinct !{!136, !9}
!137 = !{!68, !15, i64 28}
!138 = distinct !{!138, !9}
!139 = !{!25, !14, i64 24}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !9}
!142 = distinct !{!142, !9}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !9}
!145 = distinct !{!145, !9}
!146 = distinct !{!146, !9}
!147 = !{!25, !13, i64 120}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !9}
!151 = distinct !{!151, !9}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = !{!62, !13, i64 8}
!155 = !{!62, !13, i64 24}
!156 = !{!62, !13, i64 32}
!157 = distinct !{!157, !9}
!158 = distinct !{!158, !9}
!159 = !{!25, !15, i64 112}
!160 = !{!25, !14, i64 8}
!161 = distinct !{!161, !9}
!162 = distinct !{!162, !9}
!163 = !{!84, !14, i64 1768}
!164 = distinct !{!164, !9}
!165 = distinct !{!165, !9}
!166 = distinct !{!166, !9}
!167 = distinct !{!167, !9}
!168 = distinct !{!168, !9}
!169 = distinct !{!169, !9}
!170 = distinct !{!170, !9}
!171 = distinct !{!171, !9}
!172 = distinct !{!172, !9}
!173 = distinct !{!173, !9}
!174 = distinct !{!174, !9}
!175 = distinct !{!175, !9}
!176 = distinct !{!176, !9}
!177 = !{!178, !14, i64 8}
!178 = !{!"rtl_bb_info", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!179 = !{!178, !14, i64 0}
!180 = distinct !{!180, !9}
!181 = distinct !{!181, !9}
!182 = distinct !{!182, !9}
!183 = distinct !{!183, !9}
!184 = !{!78, !15, i64 32}
!185 = !{!186, !14, i64 0}
!186 = !{!"simple_bitmap_def", !14, i64 0, !15, i64 8, !15, i64 12, !6, i64 16}
!187 = distinct !{!187, !9}
!188 = distinct !{!188, !9}
!189 = distinct !{!189, !9}
!190 = !{!62, !15, i64 40}
!191 = distinct !{!191, !9}
!192 = distinct !{!192, !9}
!193 = distinct !{!193, !9}
!194 = distinct !{!194, !9}
!195 = !{!196, !14, i64 64}
!196 = !{!"reload", !14, i64 0, !14, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !14, i64 40, !14, i64 48, !15, i64 56, !14, i64 64, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 96, !15, i64 96, !15, i64 96}
!197 = !{!196, !15, i64 72}
!198 = !{!196, !15, i64 92}
!199 = !{!196, !15, i64 28}
!200 = distinct !{!200, !9}
!201 = distinct !{!201, !9, !202, !203}
!202 = !{!"llvm.loop.isvectorized", i32 1}
!203 = !{!"llvm.loop.unroll.runtime.disable"}
!204 = !{!205, !15, i64 0}
!205 = !{!"", !15, i64 0, !14, i64 8}
!206 = distinct !{!206, !9}
!207 = distinct !{!207, !9}
!208 = distinct !{!208, !9}
!209 = distinct !{!209, !9}
!210 = distinct !{!210, !9}
!211 = distinct !{!211, !9}
!212 = distinct !{!212, !9}
!213 = !{!214, !14, i64 0}
!214 = !{!"rtl_hooks", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!215 = distinct !{!215, !9}
!216 = !{!217, !6, i64 1086}
!217 = !{!"recog_data", !6, i64 0, !6, i64 240, !6, i64 480, !6, i64 720, !6, i64 840, !6, i64 960, !6, i64 1072, !6, i64 1086, !6, i64 1087, !6, i64 1088, !6, i64 1089, !14, i64 1120}
!218 = !{!217, !6, i64 1087}
!219 = !{!220, !14, i64 24}
!220 = !{!"insn_data", !14, i64 0, !6, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !6, i64 33, !6, i64 34, !6, i64 35}
!221 = !{!222, !6, i64 19}
!222 = !{!"insn_operand_data", !14, i64 0, !14, i64 8, !15, i64 16, !6, i64 18, !6, i64 19}
!223 = distinct !{!223, !9}
!224 = distinct !{!224, !9}
!225 = distinct !{!225, !9}
!226 = distinct !{!226, !9}
!227 = distinct !{!227, !9}
!228 = distinct !{!228, !9}
!229 = distinct !{!229, !9}
!230 = distinct !{!230, !9}
!231 = distinct !{!231, !9}
!232 = !{!25, !14, i64 104}
!233 = distinct !{!233, !9}
!234 = distinct !{!234, !9}
!235 = distinct !{!235, !9}
!236 = distinct !{!236, !9}
!237 = distinct !{!237, !9}
!238 = distinct !{!238, !9}
!239 = distinct !{!239, !9}
!240 = distinct !{!240, !9}
!241 = distinct !{!241, !9}
!242 = distinct !{!242, !9}
!243 = distinct !{!243, !9}
!244 = distinct !{!244, !9}
!245 = !{!196, !15, i64 56}
!246 = !{!196, !15, i64 32}
!247 = distinct !{!247, !9}
!248 = !{!196, !14, i64 8}
!249 = !{!196, !14, i64 0}
!250 = !{!196, !15, i64 16}
!251 = distinct !{!251, !9}
!252 = distinct !{!252, !9}
!253 = distinct !{!253, !9}
!254 = distinct !{!254, !9, !202, !203}
!255 = distinct !{!255, !9}
!256 = distinct !{!256, !9}
!257 = distinct !{!257, !9}
!258 = distinct !{!258, !9}
!259 = distinct !{!259, !9}
!260 = distinct !{!260, !9}
!261 = distinct !{!261, !9}
!262 = !{!263, !15, i64 0}
!263 = !{!"reg_info_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24}
!264 = distinct !{!264, !9}
!265 = distinct !{!265, !9}
!266 = distinct !{!266, !9}
!267 = distinct !{!267, !9}
!268 = distinct !{!268, !9}
!269 = distinct !{!269, !9}
!270 = !{!271, !15, i64 0}
!271 = !{!"VEC_rtx_p_base", !15, i64 0, !15, i64 4, !6, i64 8}
!272 = !{!271, !15, i64 4}
!273 = !{!274, !15, i64 4}
!274 = !{!"regstat_n_sets_and_refs_t", !15, i64 0, !15, i64 4}
!275 = distinct !{!275, !9}
!276 = distinct !{!276, !9}
!277 = distinct !{!277, !9}
!278 = distinct !{!278, !9}
!279 = distinct !{!279, !9}
!280 = distinct !{!280, !9}
!281 = !{!196, !14, i64 40}
!282 = distinct !{!282, !9}
!283 = distinct !{!283, !9, !202, !203}
!284 = distinct !{!284, !9}
!285 = distinct !{!285, !9, !202, !203}
!286 = distinct !{!286, !9}
!287 = distinct !{!287, !9, !202, !203}
!288 = distinct !{!288, !9}
!289 = distinct !{!289, !9}
!290 = distinct !{!290, !9}
!291 = distinct !{!291, !9}
!292 = distinct !{!292, !9}
!293 = distinct !{!293, !9}
!294 = distinct !{!294, !9}
!295 = distinct !{!295, !9}
!296 = distinct !{!296, !9}
!297 = distinct !{!297, !9}
!298 = !{!196, !14, i64 48}
!299 = distinct !{!299, !9}
!300 = distinct !{!300, !9, !202, !203}
!301 = distinct !{!301, !9}
!302 = distinct !{!302, !9}
!303 = distinct !{!303, !9}
!304 = distinct !{!304, !9}
!305 = distinct !{!305, !9}
!306 = distinct !{!306, !9}
!307 = distinct !{!307, !9}
!308 = distinct !{!308, !9}
!309 = distinct !{!309, !9}
!310 = distinct !{!310, !9}
!311 = distinct !{!311, !9}
!312 = distinct !{!312, !9}
!313 = distinct !{!313, !9}
!314 = distinct !{!314, !9}
!315 = distinct !{!315, !9}
!316 = distinct !{!316, !9}
!317 = distinct !{!317, !9}
!318 = distinct !{!318, !9}
!319 = distinct !{!319, !9}
!320 = distinct !{!320, !9}
!321 = distinct !{!321, !9}
!322 = distinct !{!322, !9}
!323 = distinct !{!323, !9}
!324 = distinct !{!324, !9}
!325 = distinct !{!325, !9}
!326 = distinct !{!326, !9}
!327 = distinct !{!327, !9}
!328 = distinct !{!328, !9}
!329 = distinct !{!329, !9}
!330 = distinct !{!330, !9}
!331 = distinct !{!331, !9}
!332 = distinct !{!332, !9}
!333 = distinct !{!333, !9}
!334 = distinct !{!334, !9}
!335 = distinct !{!335, !9}
!336 = distinct !{!336, !9}
!337 = distinct !{!337, !9}
!338 = distinct !{!338, !9}
!339 = !{!196, !15, i64 20}
!340 = distinct !{!340, !9}
!341 = distinct !{!341, !9}
!342 = distinct !{!342, !9}
!343 = distinct !{!343, !9}
!344 = distinct !{!344, !9}
!345 = distinct !{!345, !9}
!346 = distinct !{!346, !9}
!347 = distinct !{!347, !9}
!348 = distinct !{!348, !9}
!349 = distinct !{!349, !9}
!350 = !{!196, !15, i64 76}
!351 = !{!196, !15, i64 36}
!352 = distinct !{!352, !9}
!353 = !{!263, !15, i64 4}
!354 = distinct !{!354, !9}
!355 = !{!196, !15, i64 84}
!356 = !{!357, !15, i64 0}
!357 = !{!"secondary_reload_info", !15, i64 0, !15, i64 4, !14, i64 8, !15, i64 16}
!358 = !{!357, !14, i64 8}
!359 = !{!84, !14, i64 1728}
!360 = !{!220, !14, i64 16}
!361 = distinct !{!361, !9}
!362 = distinct !{!362, !9}
!363 = distinct !{!363, !9}
!364 = distinct !{!364, !9}
!365 = distinct !{!365, !9}
!366 = distinct !{!366, !9}
!367 = !{!263, !15, i64 24}
!368 = distinct !{!368, !9}
!369 = distinct !{!369, !9}
!370 = distinct !{!370, !9}
!371 = !{!274, !15, i64 0}
!372 = distinct !{!372, !9}
!373 = !{!374, !15, i64 0}
!374 = !{!"optab_handlers", !15, i64 0}
!375 = !{!222, !14, i64 0}
!376 = distinct !{!376, !9}
!377 = distinct !{!377, !9}
!378 = distinct !{!378, !9}
!379 = distinct !{!379, !9}
!380 = distinct !{!380, !9}
!381 = distinct !{!381, !9}
!382 = distinct !{!382, !9}
!383 = !{!196, !15, i64 80}
!384 = !{!196, !15, i64 88}
!385 = distinct !{!385, !9}
!386 = !{!387, !15, i64 0}
!387 = !{!"VEC_edge_base", !15, i64 0, !15, i64 4, !6, i64 8}
