; ModuleID = 'reload1.c'
source_filename = "reload1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.elim_table_1 = type { i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.reload = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.VEC_rtx_p_base = type { i32, i32, [1 x ptr] }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }

@reg_equiv_constant = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_invariant = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_memory_loc = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_memory_loc_vec = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_address = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_mem = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_alt_mem_list = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_init = dso_local local_unnamed_addr global ptr null, align 8
@reg_equiv_init_size = dso_local local_unnamed_addr global i32 0, align 4
@indirect_symref_ok = dso_local local_unnamed_addr global i8 0, align 1
@double_reg_address_ok = dso_local local_unnamed_addr global i8 0, align 1
@reload_first_uid = dso_local local_unnamed_addr global i32 0, align 4
@caller_save_needed = dso_local local_unnamed_addr global i32 0, align 4
@reload_in_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@reload_out_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@reload_insn_chain = dso_local local_unnamed_addr global ptr null, align 8
@num_not_at_initial_offset = dso_local local_unnamed_addr global i32 0, align 4
@reload_in_progress = dso_local local_unnamed_addr global i32 0, align 4
@spill_indirect_levels = internal unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@failure = internal unnamed_addr global i1 false, align 4
@reload_firstobj = internal unnamed_addr global ptr null, align 8
@spill_stack_slot = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@spill_stack_slot_width = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@max_regno = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@reg_max_ref_width = internal unnamed_addr global ptr null, align 8
@reg_old_renumber = internal unnamed_addr global ptr null, align 8
@pseudo_forbidden_regs = internal unnamed_addr global ptr null, align 8
@pseudo_previous_regs = internal unnamed_addr global ptr null, align 8
@bad_spill_regs_global = internal unnamed_addr global i64 0, align 8
@num_eliminable_invariants = internal unnamed_addr global i32 0, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
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
@n_spills = internal unnamed_addr global i32 0, align 4
@spill_regs = internal unnamed_addr global [53 x i16] zeroinitializer, align 16
@substitute_stack = internal unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_eliminate_1 = internal unnamed_addr constant [4 x %struct.elim_table_1] [%struct.elim_table_1 { i32 16, i32 7 }, %struct.elim_table_1 { i32 16, i32 6 }, %struct.elim_table_1 { i32 20, i32 7 }, %struct.elim_table_1 { i32 20, i32 6 }], align 16
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@recog_data = external global %struct.recog_data, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@spill_reg_order = internal global [53 x i16] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [29 x i8] c" Register %d now on stack.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c" Register %d now in %d.\0A\0A\00", align 1
@reload_insn_firstobj = internal unnamed_addr global ptr null, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@n_reloads = external local_unnamed_addr global i32, align 4
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@rld = external global [180 x %struct.reload], align 16
@reload_order = internal global [180 x i16] zeroinitializer, align 16
@used_spill_regs_local = internal unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"Spilling for insn %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"reload failure for reload %d\0A\00", align 1
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
@.str.13 = private unnamed_addr constant [28 x i8] c"Using reg %d for reload %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"can't find a register in class %qs while reloading %<asm%>\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.15 = private unnamed_addr constant [48 x i8] c"unable to find a register to spill in class %qs\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"\0AReloads for insn # %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"this is the insn:\00", align 1
@spill_reg_rtx = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@spill_reg_store = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@reg_last_reload_reg = internal unnamed_addr global ptr null, align 8
@reg_has_output_reload = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reg_reloaded_valid = internal unnamed_addr global i64 0, align 8
@reg_is_output_reload = internal unnamed_addr global i64 0, align 8
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"%<asm%> operand requires impossible reload\00", align 1
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@reload_spill_index = internal unnamed_addr global [180 x i32] zeroinitializer, align 16
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
@.str.19 = private unnamed_addr constant [32 x i8] c"could not find a spill register\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"%<asm%> operand constraint incompatible with operand size\00", align 1
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
@.str.21 = private unnamed_addr constant [26 x i8] c"Failure trying to reload:\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"VOIDmode on an output\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"output operand is constant in %<asm%>\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_reload() local_unnamed_addr #0 !prof !492 {
  %1 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 58) #22
  %2 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4) #22
  %3 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %1, ptr noundef %2) #22
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #22
  store i8 0, ptr @spill_indirect_levels, align 1, !tbaa !493
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %4, i8 noundef zeroext 0) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !496

7:                                                ; preds = %0, %7
  %8 = phi ptr [ %11, %7 ], [ %4, %0 ]
  %9 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !493
  %10 = add i8 %9, 1
  store i8 %10, ptr @spill_indirect_levels, align 1, !tbaa !493
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %8) #22
  %12 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %11, i8 noundef zeroext 0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7, !prof !497, !llvm.loop !498

14:                                               ; preds = %7, %0
  %15 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef nonnull @.str) #22
  %16 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %15) #22
  %17 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %16, i8 noundef zeroext 0) #22
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr @indirect_symref_ok, align 1, !tbaa !493
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 53
  br i1 %21, label %31, label %22, !prof !496, !llvm.loop !500

22:                                               ; preds = %14, %19
  %23 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %24 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 6) #22
  %25 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %23) #22
  %26 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %24, ptr noundef %25) #22
  %27 = tail call ptr @plus_constant(ptr noundef %26, i64 noundef 4) #22
  %28 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %27, i8 noundef zeroext 0) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30, !prof !501

30:                                               ; preds = %22
  store i8 1, ptr @double_reg_address_ok, align 1, !tbaa !493
  br label %31

31:                                               ; preds = %19, %30
  %32 = tail call i32 @_obstack_begin(ptr noundef nonnull @reload_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42, !prof !501

39:                                               ; preds = %31
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %40 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %42

42:                                               ; preds = %31, %39
  %43 = phi ptr [ %34, %31 ], [ %41, %39 ]
  %44 = phi i64 [ 0, %31 ], [ %40, %39 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %51, !prof !510

48:                                               ; preds = %42
  %49 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %50 = or i8 %49, 2
  store i8 %50, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %51

51:                                               ; preds = %42, %48
  %52 = ptrtoint ptr %46 to i64
  store i64 %52, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %53 = ptrtoint ptr %45 to i64
  %54 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = xor i32 %54, -1
  %58 = sext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = inttoptr i64 %59 to ptr
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %59, %62
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %65, %62
  %67 = icmp sgt i64 %63, %66
  %68 = select i1 %67, ptr %64, ptr %60, !prof !501
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %46, ptr @reload_startobj, align 8, !tbaa !513
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
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !514 !PGOFuncName !515 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !516
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @new_insn_chain() local_unnamed_addr #0 !prof !518 {
  %1 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !513
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %44, !prof !519

3:                                                ; preds = %0
  store i64 128, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 128
  br i1 %9, label %10, label %13, !prof !520

10:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 128) #22
  %11 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %5, %3 ], [ %12, %10 ]
  %15 = phi i64 [ 128, %3 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22, !prof !521

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  store ptr %31, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %40, !prof !521

39:                                               ; preds = %22
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %40

40:                                               ; preds = %22, %39
  %41 = phi ptr [ %31, %22 ], [ %35, %39 ]
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %42 = getelementptr inbounds %struct.insn_chain, ptr %17, i64 0, i32 6
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %42) #23
  %43 = getelementptr inbounds %struct.insn_chain, ptr %17, i64 0, i32 7
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %43) #23
  br label %46

44:                                               ; preds = %0
  %45 = load ptr, ptr %1, align 8, !tbaa !522
  store ptr %45, ptr @unused_insn_chains, align 8, !tbaa !513
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi ptr [ %17, %40 ], [ %1, %44 ]
  %48 = getelementptr inbounds %struct.insn_chain, ptr %47, i64 0, i32 5
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, -16
  store i8 %50, ptr %48, align 4
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_use_by_pseudos(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !524 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 53, ptr noundef nonnull %3) #23
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !525
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7, !prof !526

7:                                                ; preds = %2, %29
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %9 = load i32, ptr %3, align 4, !tbaa !527
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %8, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !528
  %13 = icmp slt i16 %12, 0
  br i1 %13, label %14, label %21, !prof !530

14:                                               ; preds = %7
  %15 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %29, !prof !531

17:                                               ; preds = %14
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !527
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2) #22
  br label %29

21:                                               ; preds = %7
  %22 = zext nneg i16 %12 to i32
  %23 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %24 = getelementptr inbounds ptr, ptr %23, i64 %10
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  tail call fastcc void @add_to_hard_reg_set(ptr noundef %0, i32 noundef %28, i32 noundef %22) #23
  br label %29

29:                                               ; preds = %20, %17, %14, %21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !525
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %7, !prof !532, !llvm.loop !533

32:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !prof !534 !PGOFuncName !535 {
  %5 = load ptr, ptr %1, align 8, !tbaa !536
  store ptr %5, ptr %0, align 8, !tbaa !537
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !539
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !540

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !537
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !541
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14, !prof !543
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !544
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !545
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !546
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !527
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !547 !PGOFuncName !548 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !546
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !549

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !550

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !527
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !551, !llvm.loop !552

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !527
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !527
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !544
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !537
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !544
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !553

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !545
  store i64 %35, ptr %3, align 8, !tbaa !546
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !554

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !527
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !527
  %40 = load i32, ptr %23, align 8, !tbaa !544
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !544
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !555, !llvm.loop !556

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !557
  store ptr %44, ptr %0, align 8, !tbaa !537
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !558

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !541
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !527
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !546
  store i32 %16, ptr %1, align 4, !tbaa !527
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !559 !PGOFuncName !560 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #23
  %5 = load i64, ptr %0, align 8, !tbaa !545
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !prof !561, !llvm.loop !562

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !545
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !563 !PGOFuncName !564 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !546
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !546
  %6 = load i32, ptr %1, align 4, !tbaa !527
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !527
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !prof !565 !PGOFuncName !566 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !493
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reload(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !567 {
  %3 = alloca i64, align 8
  tail call void @init_recog() #22
  store i1 false, ptr @failure, align 4
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13, !prof !568

10:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %11 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %5, %2 ], [ %12, %10 ]
  %15 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22, !prof !569

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  store ptr %31, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %40, !prof !568

39:                                               ; preds = %22
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %40

40:                                               ; preds = %22, %39
  %41 = phi ptr [ %31, %22 ], [ %35, %39 ]
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %17, ptr @reload_firstobj, align 8, !tbaa !513
  %42 = tail call ptr @emit_note(i32 noundef 0) #22
  %43 = tail call i32 @get_max_uid() #22
  store i32 %43, ptr @reload_first_uid, align 4, !tbaa !527
  tail call void @clear_secondary_mem() #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_stack_slot, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_stack_slot_width, i8 0, i64 212, i1 false)
  tail call void @init_save_areas() #22
  %44 = load i32, ptr @max_regno, align 4, !tbaa !527
  %45 = icmp sgt i32 %44, 53
  br i1 %45, label %46, label %51, !prof !570

46:                                               ; preds = %40, %46
  %47 = phi i32 [ %48, %46 ], [ 53, %40 ]
  tail call void @mark_home_live(i32 noundef %47) #23
  %48 = add nuw nsw i32 %47, 1
  %49 = load i32, ptr @max_regno, align 4, !tbaa !527
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %46, label %51, !prof !571, !llvm.loop !572

51:                                               ; preds = %46, %40
  %52 = load ptr, ptr @cfun, align 8, !tbaa !513
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 20
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 1048576
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !569

57:                                               ; preds = %51
  %58 = tail call fastcc zeroext i8 @has_nonexceptional_receiver() #23, !range !525
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !573
  br label %64

61:                                               ; preds = %57, %51
  %62 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !573
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %79, label %64, !prof !582

64:                                               ; preds = %60, %61
  br label %65

65:                                               ; preds = %64, %76
  %66 = phi i64 [ %77, %76 ], [ 0, %64 ]
  %67 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !493
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %66
  %72 = load i8, ptr %71, align 1, !tbaa !493
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = trunc i64 %66 to i32
  tail call void @df_set_regs_ever_live(i32 noundef %75, i8 noundef zeroext 1) #22
  br label %76

76:                                               ; preds = %65, %70, %74
  %77 = add nuw nsw i64 %66, 1
  %78 = icmp eq i64 %77, 53
  br i1 %78, label %79, label %65, !llvm.loop !583

79:                                               ; preds = %76, %61
  %80 = load i32, ptr @max_regno, align 4, !tbaa !527
  %81 = sext i32 %80 to i64
  %82 = tail call ptr @xcalloc(i64 noundef %81, i64 noundef 8) #22
  store ptr %82, ptr @reg_equiv_constant, align 8, !tbaa !513
  %83 = load i32, ptr @max_regno, align 4, !tbaa !527
  %84 = sext i32 %83 to i64
  %85 = tail call ptr @xcalloc(i64 noundef %84, i64 noundef 8) #22
  store ptr %85, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %86 = load i32, ptr @max_regno, align 4, !tbaa !527
  %87 = sext i32 %86 to i64
  %88 = tail call ptr @xcalloc(i64 noundef %87, i64 noundef 8) #22
  store ptr %88, ptr @reg_equiv_mem, align 8, !tbaa !513
  %89 = load i32, ptr @max_regno, align 4, !tbaa !527
  %90 = sext i32 %89 to i64
  %91 = tail call ptr @xcalloc(i64 noundef %90, i64 noundef 8) #22
  store ptr %91, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !513
  %92 = load i32, ptr @max_regno, align 4, !tbaa !527
  %93 = sext i32 %92 to i64
  %94 = tail call ptr @xcalloc(i64 noundef %93, i64 noundef 8) #22
  store ptr %94, ptr @reg_equiv_address, align 8, !tbaa !513
  %95 = load i32, ptr @max_regno, align 4, !tbaa !527
  %96 = sext i32 %95 to i64
  %97 = tail call ptr @xcalloc(i64 noundef %96, i64 noundef 4) #22
  store ptr %97, ptr @reg_max_ref_width, align 8, !tbaa !513
  %98 = load i32, ptr @max_regno, align 4, !tbaa !527
  %99 = sext i32 %98 to i64
  %100 = tail call ptr @xcalloc(i64 noundef %99, i64 noundef 2) #22
  store ptr %100, ptr @reg_old_renumber, align 8, !tbaa !513
  %101 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %102 = load i32, ptr @max_regno, align 4, !tbaa !527
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %100, ptr align 2 %101, i64 %104, i1 false)
  %105 = load i32, ptr @max_regno, align 4, !tbaa !527
  %106 = sext i32 %105 to i64
  %107 = shl nsw i64 %106, 3
  %108 = tail call ptr @xmalloc(i64 noundef %107) #22
  store ptr %108, ptr @pseudo_forbidden_regs, align 8, !tbaa !513
  %109 = load i32, ptr @max_regno, align 4, !tbaa !527
  %110 = sext i32 %109 to i64
  %111 = tail call ptr @xcalloc(i64 noundef %110, i64 noundef 8) #22
  store ptr %111, ptr @pseudo_previous_regs, align 8, !tbaa !513
  store i64 0, ptr @bad_spill_regs_global, align 8, !tbaa !545
  store i32 0, ptr @num_eliminable_invariants, align 4, !tbaa !527
  %112 = icmp eq ptr %0, null
  br i1 %112, label %261, label %113, !prof !584

113:                                              ; preds = %79, %257
  %114 = phi ptr [ %259, %257 ], [ %0, %79 ]
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = add nsw i32 %116, -7
  %118 = icmp ult i32 %117, 4
  br i1 %118, label %119, label %130, !prof !585

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !493
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 23
  br i1 %124, label %136, label %125, !prof !586

125:                                              ; preds = %119
  %126 = tail call ptr @single_set_2(ptr noundef nonnull %114, ptr noundef nonnull %121) #22
  %127 = load i32, ptr %114, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -7
  br label %130

130:                                              ; preds = %113, %125
  %131 = phi i32 [ %117, %113 ], [ %129, %125 ]
  %132 = phi i32 [ %116, %113 ], [ %128, %125 ]
  %133 = phi i32 [ %115, %113 ], [ %127, %125 ]
  %134 = phi ptr [ null, %113 ], [ %126, %125 ]
  %135 = icmp ult i32 %131, 4
  br i1 %135, label %136, label %151, !prof !587

136:                                              ; preds = %119, %130
  %137 = phi ptr [ %134, %130 ], [ %121, %119 ]
  %138 = phi i32 [ %133, %130 ], [ %115, %119 ]
  %139 = phi i32 [ %132, %130 ], [ %116, %119 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !493
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 24
  br i1 %144, label %145, label %151, !prof !588

145:                                              ; preds = %136
  %146 = and i32 %138, 16711680
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148, !prof !589

148:                                              ; preds = %145
  %149 = and i32 %138, -16711681
  store i32 %149, ptr %114, align 8
  %150 = and i32 %138, 65535
  br label %151

151:                                              ; preds = %130, %148, %145, %136
  %152 = phi ptr [ %134, %130 ], [ %137, %148 ], [ %137, %145 ], [ %137, %136 ]
  %153 = phi i32 [ %132, %130 ], [ %150, %148 ], [ %139, %145 ], [ %139, %136 ]
  %154 = add nsw i32 %153, -11
  %155 = icmp ult i32 %154, -3
  br i1 %155, label %159, label %156, !prof !590

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !493
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %158) #23
  br label %159

159:                                              ; preds = %151, %156
  %160 = icmp eq ptr %152, null
  br i1 %160, label %257, label %161, !prof !591

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !493
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 37
  br i1 %166, label %167, label %257, !prof !592

167:                                              ; preds = %161
  %168 = tail call ptr @find_reg_note(ptr noundef nonnull %114, i32 noundef 3, ptr noundef null) #22
  %169 = icmp eq ptr %168, null
  br i1 %169, label %257, label %170, !prof !593

170:                                              ; preds = %167
  %171 = load ptr, ptr %162, align 8, !tbaa !493
  %172 = tail call fastcc i32 @rhs_regno(ptr noundef %171) #23
  %173 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !493
  %175 = icmp slt i32 %172, 58
  br i1 %175, label %257, label %176, !prof !594

176:                                              ; preds = %170
  %177 = tail call i32 @function_invariant_p(ptr noundef %174) #23, !range !595
  %178 = icmp ne i32 %177, 0
  %179 = load i32, ptr @flag_pic, align 4
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %192, !prof !596

182:                                              ; preds = %176
  %183 = load i32, ptr %174, align 8
  %184 = and i32 %183, 65535
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !527
  %188 = icmp eq i32 %187, 9
  br i1 %188, label %189, label %253

189:                                              ; preds = %182
  %190 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %174) #22
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %253, label %192

192:                                              ; preds = %189, %176
  %193 = tail call i32 @memory_operand(ptr noundef %174, i32 noundef 0) #22
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %200, label %195, !prof !597

195:                                              ; preds = %192
  %196 = tail call ptr @copy_rtx(ptr noundef %174) #22
  %197 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %198 = zext nneg i32 %172 to i64
  %199 = getelementptr inbounds ptr, ptr %197, i64 %198
  store ptr %196, ptr %199, align 8, !tbaa !513
  br label %257

200:                                              ; preds = %192
  %201 = tail call i32 @function_invariant_p(ptr noundef %174) #23, !range !595
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %249, label %203, !prof !598

203:                                              ; preds = %200
  %204 = load i32, ptr %174, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 49
  br i1 %206, label %207, label %214, !prof !599

207:                                              ; preds = %203
  %208 = tail call ptr @copy_rtx(ptr noundef nonnull %174) #22
  %209 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %210 = zext nneg i32 %172 to i64
  %211 = getelementptr inbounds ptr, ptr %209, i64 %210
  store ptr %208, ptr %211, align 8, !tbaa !513
  %212 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !527
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr @num_eliminable_invariants, align 4, !tbaa !527
  br label %257

214:                                              ; preds = %203
  %215 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !513
  %216 = icmp eq ptr %174, %215
  %217 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %218 = icmp eq ptr %174, %217
  %219 = select i1 %216, i1 true, i1 %218
  br i1 %219, label %220, label %226, !prof !600

220:                                              ; preds = %214
  %221 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %222 = zext nneg i32 %172 to i64
  %223 = getelementptr inbounds ptr, ptr %221, i64 %222
  store ptr %174, ptr %223, align 8, !tbaa !513
  %224 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !527
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr @num_eliminable_invariants, align 4, !tbaa !527
  br label %257

226:                                              ; preds = %214
  %227 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %174) #22
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %233, label %229, !prof !601

229:                                              ; preds = %226
  %230 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %231 = zext nneg i32 %172 to i64
  %232 = getelementptr inbounds ptr, ptr %230, i64 %231
  store ptr %174, ptr %232, align 8, !tbaa !513
  br label %257

233:                                              ; preds = %226
  %234 = load ptr, ptr %162, align 8, !tbaa !493
  %235 = load i32, ptr %234, align 8
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  %238 = tail call ptr @force_const_mem(i32 noundef %237, ptr noundef nonnull %174) #22
  %239 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %240 = zext nneg i32 %172 to i64
  %241 = getelementptr inbounds ptr, ptr %239, i64 %240
  store ptr %238, ptr %241, align 8, !tbaa !513
  %242 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %243 = getelementptr inbounds ptr, ptr %242, i64 %240
  %244 = load ptr, ptr %243, align 8, !tbaa !513
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %257

246:                                              ; preds = %233
  %247 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %248 = getelementptr inbounds ptr, ptr %247, i64 %240
  store ptr null, ptr %248, align 8, !tbaa !513
  br label %257

249:                                              ; preds = %200
  %250 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %251 = zext nneg i32 %172 to i64
  %252 = getelementptr inbounds ptr, ptr %250, i64 %251
  store ptr null, ptr %252, align 8, !tbaa !513
  br label %257

253:                                              ; preds = %189, %182
  %254 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %255 = zext nneg i32 %172 to i64
  %256 = getelementptr inbounds ptr, ptr %254, i64 %255
  store ptr null, ptr %256, align 8, !tbaa !513
  br label %257

257:                                              ; preds = %249, %167, %170, %159, %161, %253, %220, %233, %246, %229, %207, %195
  %258 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %259 = load ptr, ptr %258, align 8, !tbaa !493
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %113, !prof !602, !llvm.loop !603

261:                                              ; preds = %257, %79
  %262 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %263 = icmp eq ptr %262, null
  br i1 %263, label %294, label %264, !prof !569

264:                                              ; preds = %261
  %265 = load i32, ptr @max_regno, align 4, !tbaa !527
  %266 = icmp sgt i32 %265, 53
  br i1 %266, label %267, label %294

267:                                              ; preds = %264
  %268 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  br label %269

269:                                              ; preds = %267, %288
  %270 = phi i32 [ %265, %267 ], [ %289, %288 ]
  %271 = phi ptr [ %268, %267 ], [ %290, %288 ]
  %272 = phi i64 [ 53, %267 ], [ %291, %288 ]
  %273 = getelementptr inbounds ptr, ptr %271, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !513
  %275 = icmp eq ptr %274, null
  br i1 %275, label %288, label %276

276:                                              ; preds = %269
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %278 = trunc i64 %272 to i32
  %279 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.3, i32 noundef %278) #23
  %280 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %281 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %282 = getelementptr inbounds ptr, ptr %281, i64 %272
  %283 = load ptr, ptr %282, align 8, !tbaa !513
  tail call void @print_inline_rtx(ptr noundef %280, ptr noundef %283, i32 noundef 20) #22
  %284 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %285 = tail call i32 @fputc(i32 10, ptr %284)
  %286 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %287 = load i32, ptr @max_regno, align 4, !tbaa !527
  br label %288

288:                                              ; preds = %269, %276
  %289 = phi i32 [ %270, %269 ], [ %287, %276 ]
  %290 = phi ptr [ %271, %269 ], [ %286, %276 ]
  %291 = add nuw nsw i64 %272, 1
  %292 = sext i32 %289 to i64
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %269, label %294, !llvm.loop !604

294:                                              ; preds = %288, %264, %261
  tail call fastcc void @init_elim_table() #23
  %295 = tail call i32 @get_first_label_num() #22
  store i32 %295, ptr @first_label_num, align 4, !tbaa !527
  %296 = tail call i32 @max_label_num() #22
  %297 = load i32, ptr @first_label_num, align 4, !tbaa !527
  %298 = sub nsw i32 %296, %297
  store i32 %298, ptr @num_labels, align 4, !tbaa !527
  %299 = sext i32 %298 to i64
  %300 = tail call ptr @xmalloc(i64 noundef %299) #22
  store ptr %300, ptr @offsets_known_at, align 8, !tbaa !513
  %301 = load i32, ptr @num_labels, align 4, !tbaa !527
  %302 = sext i32 %301 to i64
  %303 = shl nsw i64 %302, 5
  %304 = tail call ptr @xmalloc(i64 noundef %303) #22
  store ptr %304, ptr @offsets_at, align 8, !tbaa !513
  %305 = load i32, ptr @max_regno, align 4, !tbaa !527
  %306 = add nsw i32 %305, -58
  %307 = sext i32 %306 to i64
  %308 = shl nsw i64 %307, 2
  %309 = tail call ptr @xmalloc(i64 noundef %308) #22
  store ptr %309, ptr @temp_pseudo_reg_arr, align 8, !tbaa !513
  %310 = load i32, ptr @max_regno, align 4, !tbaa !527
  %311 = icmp sgt i32 %310, 58
  br i1 %311, label %312, label %322, !prof !570

312:                                              ; preds = %294, %312
  %313 = phi i64 [ %315, %312 ], [ 0, %294 ]
  %314 = phi i32 [ %317, %312 ], [ 58, %294 ]
  %315 = add nuw nsw i64 %313, 1
  %316 = getelementptr inbounds i32, ptr %309, i64 %313
  store i32 %314, ptr %316, align 4, !tbaa !527
  %317 = add nuw nsw i32 %314, 1
  %318 = load i32, ptr @max_regno, align 4, !tbaa !527
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %312, label %320, !prof !605, !llvm.loop !606

320:                                              ; preds = %312
  %321 = trunc i64 %315 to i32
  br label %322

322:                                              ; preds = %320, %294
  %323 = phi i32 [ 0, %294 ], [ %321, %320 ]
  %324 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %328, label %326, !prof !568

326:                                              ; preds = %322
  %327 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !513
  tail call void @ira_sort_regnos_for_alter_reg(ptr noundef %309, i32 noundef %323, ptr noundef %327) #22
  br label %328

328:                                              ; preds = %326, %322
  %329 = icmp eq i32 %323, 0
  br i1 %329, label %332, label %330, !prof !584

330:                                              ; preds = %328
  %331 = zext i32 %323 to i64
  br label %337

332:                                              ; preds = %337, %328
  %333 = icmp ne ptr %0, null
  %334 = load i32, ptr @num_eliminable, align 4
  %335 = icmp ne i32 %334, 0
  %336 = select i1 %333, i1 %335, i1 false, !prof !607
  br i1 %336, label %344, label %362, !prof !570

337:                                              ; preds = %330, %337
  %338 = phi i64 [ 0, %330 ], [ %342, %337 ]
  %339 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !513
  %340 = getelementptr inbounds i32, ptr %339, i64 %338
  %341 = load i32, ptr %340, align 4, !tbaa !527
  tail call fastcc void @alter_reg(i32 noundef %341, i32 noundef -1, i8 noundef zeroext 0) #23
  %342 = add nuw nsw i64 %338, 1
  %343 = icmp eq i64 %342, %331
  br i1 %343, label %332, label %337, !prof !608, !llvm.loop !609

344:                                              ; preds = %332, %355
  %345 = phi i32 [ %356, %355 ], [ %334, %332 ]
  %346 = phi ptr [ %358, %355 ], [ %0, %332 ]
  %347 = load i32, ptr %346, align 8
  %348 = and i32 %347, 65535
  %349 = add nsw i32 %348, -7
  %350 = icmp ult i32 %349, 4
  br i1 %350, label %351, label %355, !prof !585

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.rtx_def, ptr %346, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !493
  tail call void @note_stores(ptr noundef %353, ptr noundef nonnull @mark_not_eliminable, ptr noundef null) #22
  %354 = load i32, ptr @num_eliminable, align 4
  br label %355

355:                                              ; preds = %344, %351
  %356 = phi i32 [ %345, %344 ], [ %354, %351 ]
  %357 = getelementptr inbounds %struct.rtx_def, ptr %346, i64 0, i32 1, i32 0, i32 0, i64 2
  %358 = load ptr, ptr %357, align 8, !tbaa !493
  %359 = icmp ne ptr %358, null
  %360 = icmp ne i32 %356, 0
  %361 = select i1 %359, i1 %360, i1 false, !prof !607
  br i1 %361, label %344, label %362, !prof !610, !llvm.loop !611

362:                                              ; preds = %355, %332
  tail call fastcc void @maybe_fix_stack_asms() #23
  store ptr null, ptr @insns_need_reload, align 8, !tbaa !513
  store i1 false, ptr @something_needs_elimination, align 4
  store i32 -1, ptr @last_spill_reg, align 4, !tbaa !527
  store i64 0, ptr @used_spill_regs, align 8, !tbaa !545
  %363 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %364 = getelementptr inbounds %struct.elim_table, ptr %363, i64 4
  br label %365

365:                                              ; preds = %362, %385
  %366 = phi ptr [ %386, %385 ], [ %363, %362 ]
  %367 = phi ptr [ %387, %385 ], [ %364, %362 ]
  %368 = phi ptr [ %376, %385 ], [ %363, %362 ]
  %369 = load i32, ptr %368, align 8, !tbaa !612
  br label %370

370:                                              ; preds = %378, %365
  %371 = phi i32 [ 0, %365 ], [ %375, %378 ]
  %372 = phi ptr [ %368, %365 ], [ %376, %378 ]
  %373 = getelementptr inbounds %struct.elim_table, ptr %372, i64 0, i32 3
  %374 = load i32, ptr %373, align 8, !tbaa !614
  %375 = or i32 %374, %371
  %376 = getelementptr inbounds %struct.elim_table, ptr %372, i64 1
  %377 = icmp ult ptr %376, %367
  br i1 %377, label %378, label %381, !prof !615

378:                                              ; preds = %370
  %379 = load i32, ptr %376, align 8, !tbaa !612
  %380 = icmp eq i32 %379, %369
  br i1 %380, label %370, label %381, !prof !616, !llvm.loop !617

381:                                              ; preds = %370, %378
  %382 = icmp eq i32 %375, 0
  br i1 %382, label %383, label %385, !prof !618

383:                                              ; preds = %381
  tail call fastcc void @spill_hard_reg(i32 noundef %369) #23
  %384 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %385

385:                                              ; preds = %383, %381
  %386 = phi ptr [ %384, %383 ], [ %366, %381 ]
  %387 = getelementptr inbounds %struct.elim_table, ptr %386, i64 4
  %388 = icmp ult ptr %376, %387
  br i1 %388, label %365, label %389, !prof !619, !llvm.loop !620

389:                                              ; preds = %385
  %390 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %393, label %392, !prof !568

392:                                              ; preds = %389
  tail call fastcc void @spill_hard_reg(i32 noundef 6) #23
  br label %393

393:                                              ; preds = %392, %389
  %394 = tail call fastcc i32 @finish_spills(i32 noundef %1) #23, !range !595
  store i32 1, ptr @reload_in_progress, align 4, !tbaa !527
  br label %395

395:                                              ; preds = %602, %393
  %396 = tail call i64 @get_frame_size() #22
  tail call fastcc void @set_initial_elim_offsets() #23
  tail call fastcc void @set_initial_label_offsets() #23
  %397 = load i32, ptr @max_regno, align 4, !tbaa !527
  %398 = icmp sgt i32 %397, 53
  br i1 %398, label %399, label %482, !prof !622

399:                                              ; preds = %395, %477
  %400 = phi i64 [ %478, %477 ], [ 53, %395 ]
  %401 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %402 = getelementptr inbounds i16, ptr %401, i64 %400
  %403 = load i16, ptr %402, align 2, !tbaa !528
  %404 = icmp slt i16 %403, 0
  br i1 %404, label %405, label %477, !prof !623

405:                                              ; preds = %399
  %406 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %407 = getelementptr inbounds ptr, ptr %406, i64 %400
  %408 = load ptr, ptr %407, align 8, !tbaa !513
  %409 = icmp eq ptr %408, null
  br i1 %409, label %477, label %410, !prof !624

410:                                              ; preds = %405
  %411 = tail call ptr @eliminate_regs(ptr noundef nonnull %408, i32 noundef 0, ptr noundef null) #23
  %412 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %413 = getelementptr inbounds ptr, ptr %412, i64 %400
  %414 = load ptr, ptr %413, align 8, !tbaa !513
  %415 = load i32, ptr %414, align 8
  %416 = lshr i32 %415, 16
  %417 = and i32 %416, 255
  %418 = getelementptr inbounds %struct.rtx_def, ptr %411, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !493
  %420 = getelementptr inbounds %struct.rtx_def, ptr %411, i64 0, i32 1, i32 0, i32 0, i64 1
  %421 = load ptr, ptr %420, align 8, !tbaa !493
  %422 = icmp eq ptr %421, null
  br i1 %422, label %426, label %423, !prof !625

423:                                              ; preds = %410
  %424 = getelementptr inbounds %struct.mem_attrs, ptr %421, i64 0, i32 5
  %425 = load i8, ptr %424, align 8, !tbaa !626
  br label %426

426:                                              ; preds = %410, %423
  %427 = phi i8 [ %425, %423 ], [ 0, %410 ]
  %428 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %417, ptr noundef %419, i8 noundef zeroext %427) #22
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %435, label %430, !prof !628

430:                                              ; preds = %426
  %431 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %432 = getelementptr inbounds ptr, ptr %431, i64 %400
  store ptr %411, ptr %432, align 8, !tbaa !513
  %433 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !513
  %434 = getelementptr inbounds ptr, ptr %433, i64 %400
  store ptr null, ptr %434, align 8, !tbaa !513
  br label %477

435:                                              ; preds = %426
  %436 = load ptr, ptr %418, align 8, !tbaa !493
  %437 = load i32, ptr %436, align 8
  %438 = and i32 %437, 65535
  %439 = zext nneg i32 %438 to i64
  %440 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !527
  %442 = icmp eq i32 %441, 9
  br i1 %442, label %466, label %443, !prof !629

443:                                              ; preds = %435
  %444 = trunc i32 %437 to i16
  switch i16 %444, label %471 [
    i16 37, label %445
    i16 49, label %448
  ], !prof !630

445:                                              ; preds = %443
  %446 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %436) #23
  %447 = icmp ult i32 %446, 53
  br i1 %447, label %466, label %471, !prof !631

448:                                              ; preds = %443
  %449 = getelementptr inbounds %struct.rtx_def, ptr %436, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !493
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 65535
  %453 = icmp eq i32 %452, 37
  br i1 %453, label %454, label %471, !prof !632

454:                                              ; preds = %448
  %455 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %450) #23
  %456 = icmp ult i32 %455, 53
  br i1 %456, label %457, label %471, !prof !633

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.rtx_def, ptr %436, i64 0, i32 1, i32 0, i32 0, i64 1
  %459 = load ptr, ptr %458, align 8, !tbaa !493
  %460 = load i32, ptr %459, align 8
  %461 = and i32 %460, 65535
  %462 = zext nneg i32 %461 to i64
  %463 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !527
  %465 = icmp eq i32 %464, 9
  br i1 %465, label %466, label %471, !prof !634

466:                                              ; preds = %457, %445, %435
  %467 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !513
  %468 = getelementptr inbounds ptr, ptr %467, i64 %400
  store ptr %436, ptr %468, align 8, !tbaa !513
  %469 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %470 = getelementptr inbounds ptr, ptr %469, i64 %400
  store ptr null, ptr %470, align 8, !tbaa !513
  br label %477

471:                                              ; preds = %443, %445, %457, %454, %448
  %472 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %473 = getelementptr inbounds ptr, ptr %472, i64 %400
  store ptr null, ptr %473, align 8, !tbaa !513
  %474 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %475 = getelementptr inbounds ptr, ptr %474, i64 %400
  store ptr null, ptr %475, align 8, !tbaa !513
  %476 = trunc i64 %400 to i32
  tail call fastcc void @alter_reg(i32 noundef %476, i32 noundef -1, i8 noundef zeroext 1) #23
  br label %477

477:                                              ; preds = %430, %471, %466, %399, %405
  %478 = add nuw nsw i64 %400, 1
  %479 = load i32, ptr @max_regno, align 4, !tbaa !527
  %480 = sext i32 %479 to i64
  %481 = icmp slt i64 %478, %480
  br i1 %481, label %399, label %482, !prof !635, !llvm.loop !636

482:                                              ; preds = %477, %395
  %483 = load i32, ptr @caller_save_needed, align 4, !tbaa !527
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %486, label %485, !prof !637

485:                                              ; preds = %482
  tail call void @setup_save_areas() #22
  br label %486

486:                                              ; preds = %485, %482
  %487 = tail call i64 @get_frame_size() #22
  %488 = icmp eq i64 %396, %487
  br i1 %488, label %489, label %602, !prof !638

489:                                              ; preds = %486
  %490 = icmp ne i64 %396, 0
  %491 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %490, i1 %492, i1 false
  br i1 %493, label %494, label %498, !prof !639

494:                                              ; preds = %489
  %495 = tail call ptr @assign_stack_local(i32 noundef 1, i64 noundef 0, i32 noundef %491) #22
  %496 = tail call i64 @get_frame_size() #22
  %497 = icmp eq i64 %396, %496
  br i1 %497, label %498, label %602, !prof !640

498:                                              ; preds = %494, %489
  %499 = load i32, ptr @caller_save_needed, align 4, !tbaa !527
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %540, label %501, !prof !641

501:                                              ; preds = %498
  tail call void @save_call_clobbered_regs() #22
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %502 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %503 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %504 = ptrtoint ptr %502 to i64
  %505 = ptrtoint ptr %503 to i64
  %506 = sub i64 %504, %505
  %507 = icmp slt i64 %506, 0
  br i1 %507, label %508, label %511, !prof !642

508:                                              ; preds = %501
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %509 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %510 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %511

511:                                              ; preds = %501, %508
  %512 = phi ptr [ %503, %501 ], [ %510, %508 ]
  %513 = phi i64 [ 0, %501 ], [ %509, %508 ]
  %514 = getelementptr inbounds i8, ptr %512, i64 %513
  %515 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %516 = icmp eq ptr %514, %515
  br i1 %516, label %517, label %520, !prof !643

517:                                              ; preds = %511
  %518 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %519 = or i8 %518, 2
  store i8 %519, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %520

520:                                              ; preds = %511, %517
  %521 = ptrtoint ptr %515 to i64
  store i64 %521, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %522 = ptrtoint ptr %514 to i64
  %523 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %524 = sext i32 %523 to i64
  %525 = add nsw i64 %524, %522
  %526 = xor i32 %523, -1
  %527 = sext i32 %526 to i64
  %528 = and i64 %525, %527
  %529 = inttoptr i64 %528 to ptr
  store ptr %529, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %530 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %531 = ptrtoint ptr %530 to i64
  %532 = sub i64 %528, %531
  %533 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %534 = ptrtoint ptr %533 to i64
  %535 = sub i64 %534, %531
  %536 = icmp sgt i64 %532, %535
  br i1 %536, label %537, label %538, !prof !642

537:                                              ; preds = %520
  store ptr %533, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %538

538:                                              ; preds = %520, %537
  %539 = phi ptr [ %529, %520 ], [ %533, %537 ]
  store ptr %539, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %515, ptr @reload_firstobj, align 8, !tbaa !513
  br label %540

540:                                              ; preds = %538, %498
  tail call fastcc void @calculate_needs_all_insns(i32 noundef %1) #23
  %541 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %543, label %544, !prof !644

543:                                              ; preds = %540
  tail call void @bitmap_clear(ptr noundef nonnull @spilled_pseudos) #22
  br label %544

544:                                              ; preds = %543, %540
  %545 = tail call i64 @get_frame_size() #22
  %546 = icmp eq i64 %396, %545
  br i1 %546, label %547, label %551, !prof !645

547:                                              ; preds = %544
  %548 = tail call fastcc zeroext i8 @verify_initial_elim_offsets() #23, !range !525
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %550, label %551, !prof !646

550:                                              ; preds = %547
  br label %551

551:                                              ; preds = %544, %547, %550
  %552 = phi i32 [ 0, %547 ], [ 1, %550 ], [ 1, %544 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !545
  call fastcc void @update_eliminables(ptr noundef nonnull %3) #23
  %553 = load i64, ptr %3, align 8, !tbaa !545
  %554 = xor i64 %553, -1
  %555 = load i64, ptr @used_spill_regs, align 8, !tbaa !545
  %556 = and i64 %555, %554
  store i64 %556, ptr @used_spill_regs, align 8, !tbaa !545
  br label %557

557:                                              ; preds = %551, %566
  %558 = phi i64 [ 0, %551 ], [ %569, %566 ]
  %559 = phi i32 [ 0, %551 ], [ %568, %566 ]
  %560 = phi i32 [ %552, %551 ], [ %567, %566 ]
  %561 = shl nuw nsw i64 1, %558
  %562 = and i64 %561, %553
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %566, label %564, !prof !647

564:                                              ; preds = %557
  %565 = trunc i64 %558 to i32
  tail call fastcc void @spill_hard_reg(i32 noundef %565) #23
  br label %566

566:                                              ; preds = %557, %564
  %567 = phi i32 [ 1, %564 ], [ %560, %557 ]
  %568 = phi i32 [ 1, %564 ], [ %559, %557 ]
  %569 = add nuw nsw i64 %558, 1
  %570 = icmp eq i64 %569, 53
  br i1 %570, label %571, label %557, !prof !648, !llvm.loop !649

571:                                              ; preds = %566
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  tail call fastcc void @select_reload_regs() #23
  %572 = load i1, ptr @failure, align 4
  br i1 %572, label %713, label %573, !prof !644

573:                                              ; preds = %571
  %574 = load ptr, ptr @insns_need_reload, align 8, !tbaa !513
  %575 = icmp ne ptr %574, null
  %576 = icmp ne i32 %568, 0
  %577 = select i1 %575, i1 true, i1 %576
  br i1 %577, label %578, label %581, !prof !650

578:                                              ; preds = %573
  %579 = tail call fastcc i32 @finish_spills(i32 noundef %1) #23, !range !595
  %580 = or i32 %579, %567
  br label %581

581:                                              ; preds = %573, %578
  %582 = phi i32 [ %580, %578 ], [ %567, %573 ]
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %605, label %584, !prof !651

584:                                              ; preds = %581
  %585 = load i32, ptr @caller_save_needed, align 4, !tbaa !527
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %588, label %587, !prof !652

587:                                              ; preds = %584
  tail call fastcc void @delete_caller_save_insns() #23
  br label %588

588:                                              ; preds = %587, %584
  %589 = load ptr, ptr @reload_firstobj, align 8, !tbaa !513
  %590 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %591 = ptrtoint ptr %589 to i64
  %592 = ptrtoint ptr %590 to i64
  %593 = sub i64 %591, %592
  store i64 %593, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %594 = icmp sgt i64 %593, 0
  br i1 %594, label %595, label %603, !prof !653

595:                                              ; preds = %588
  %596 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %597 = ptrtoint ptr %596 to i64
  %598 = sub i64 %597, %592
  %599 = icmp slt i64 %593, %598
  br i1 %599, label %600, label %603, !prof !654

600:                                              ; preds = %595
  %601 = getelementptr inbounds i8, ptr %590, i64 %593
  store ptr %601, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %601, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %602

602:                                              ; preds = %600, %603, %494, %486
  br label %395

603:                                              ; preds = %595, %588
  %604 = getelementptr inbounds i8, ptr %590, i64 %593
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %604) #22
  br label %602

605:                                              ; preds = %581
  %606 = icmp eq i32 %1, 0
  br i1 %606, label %625, label %607, !prof !568

607:                                              ; preds = %605
  %608 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %609

609:                                              ; preds = %607, %620
  %610 = phi ptr [ %621, %620 ], [ %608, %607 ]
  %611 = phi ptr [ %622, %620 ], [ %608, %607 ]
  %612 = getelementptr inbounds %struct.elim_table, ptr %611, i64 0, i32 3
  %613 = load i32, ptr %612, align 8, !tbaa !614
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %620, label %615, !prof !616

615:                                              ; preds = %609
  %616 = load i32, ptr %611, align 8, !tbaa !612
  %617 = getelementptr inbounds %struct.elim_table, ptr %611, i64 0, i32 1
  %618 = load i32, ptr %617, align 4, !tbaa !655
  tail call void @mark_elimination(i32 noundef %616, i32 noundef %618) #22
  %619 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %620

620:                                              ; preds = %609, %615
  %621 = phi ptr [ %610, %609 ], [ %619, %615 ]
  %622 = getelementptr inbounds %struct.elim_table, ptr %611, i64 1
  %623 = getelementptr inbounds %struct.elim_table, ptr %621, i64 4
  %624 = icmp ult ptr %622, %623
  br i1 %624, label %609, label %625, !prof !656, !llvm.loop !657

625:                                              ; preds = %620, %605
  %626 = load i32, ptr @max_regno, align 4, !tbaa !527
  %627 = icmp sgt i32 %626, 53
  br i1 %627, label %628, label %671, !prof !570

628:                                              ; preds = %625, %666
  %629 = phi i32 [ %667, %666 ], [ %626, %625 ]
  %630 = phi i64 [ %668, %666 ], [ 53, %625 ]
  %631 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %632 = getelementptr inbounds i16, ptr %631, i64 %630
  %633 = load i16, ptr %632, align 2, !tbaa !528
  %634 = icmp slt i16 %633, 0
  br i1 %634, label %635, label %666, !prof !658

635:                                              ; preds = %628
  %636 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %637 = getelementptr inbounds ptr, ptr %636, i64 %630
  %638 = load ptr, ptr %637, align 8, !tbaa !513
  %639 = icmp eq ptr %638, null
  br i1 %639, label %666, label %640, !prof !659

640:                                              ; preds = %635, %660
  %641 = phi ptr [ %662, %660 ], [ %638, %635 ]
  %642 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 0, i32 1
  %643 = load ptr, ptr %642, align 8, !tbaa !493
  %644 = load i32, ptr %643, align 8
  %645 = and i32 %644, 65535
  %646 = icmp eq i32 %645, 13
  br i1 %646, label %660, label %647, !prof !660

647:                                              ; preds = %640
  %648 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %643) #22
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %650, label %660, !prof !661

650:                                              ; preds = %647
  %651 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %652 = getelementptr inbounds ptr, ptr %651, i64 %630
  %653 = load ptr, ptr %652, align 8, !tbaa !513
  %654 = getelementptr inbounds %struct.rtx_def, ptr %643, i64 1
  %655 = load ptr, ptr %654, align 8, !tbaa !493
  %656 = tail call i32 @reg_set_p(ptr noundef %653, ptr noundef %655) #22
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %659, label %658, !prof !662

658:                                              ; preds = %650
  tail call fastcc void @delete_dead_insn(ptr noundef nonnull %643) #23
  br label %660

659:                                              ; preds = %650
  tail call void @set_insn_deleted(ptr noundef nonnull %643) #22
  br label %660

660:                                              ; preds = %658, %659, %640, %647
  %661 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 0, i32 1, i32 0, i32 0, i64 1
  %662 = load ptr, ptr %661, align 8, !tbaa !493
  %663 = icmp eq ptr %662, null
  br i1 %663, label %664, label %640, !prof !663, !llvm.loop !664

664:                                              ; preds = %660
  %665 = load i32, ptr @max_regno, align 4, !tbaa !527
  br label %666

666:                                              ; preds = %664, %628, %635
  %667 = phi i32 [ %665, %664 ], [ %629, %628 ], [ %629, %635 ]
  %668 = add nuw nsw i64 %630, 1
  %669 = sext i32 %667 to i64
  %670 = icmp slt i64 %668, %669
  br i1 %670, label %628, label %671, !prof !571, !llvm.loop !665

671:                                              ; preds = %666, %625
  %672 = load ptr, ptr @insns_need_reload, align 8, !tbaa !513
  %673 = icmp ne ptr %672, null
  %674 = load i1, ptr @something_needs_elimination, align 4
  %675 = select i1 %673, i1 true, i1 %674
  %676 = load i32, ptr @something_needs_operands_changed, align 4
  %677 = icmp ne i32 %676, 0
  %678 = select i1 %675, i1 true, i1 %677
  br i1 %678, label %679, label %688, !prof !666

679:                                              ; preds = %671
  %680 = tail call i64 @get_frame_size() #22
  tail call fastcc void @reload_as_needed(i32 noundef %1) #23
  %681 = tail call i64 @get_frame_size() #22
  %682 = icmp eq i64 %680, %681
  br i1 %682, label %684, label %683, !prof !569

683:                                              ; preds = %679
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1188, ptr noundef nonnull @.str.2) #22
  br label %684

684:                                              ; preds = %679, %683
  %685 = tail call fastcc zeroext i8 @verify_initial_elim_offsets() #23, !range !525
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %687, label %688, !prof !568

687:                                              ; preds = %684
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1190, ptr noundef nonnull @.str.2) #22
  br label %688

688:                                              ; preds = %687, %684, %671
  %689 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %690 = icmp eq i8 %689, 0
  br i1 %690, label %691, label %713, !prof !568

691:                                              ; preds = %688
  %692 = load ptr, ptr @cfun, align 8, !tbaa !513
  %693 = getelementptr inbounds %struct.function, ptr %692, i64 0, i32 1
  %694 = load ptr, ptr %693, align 8, !tbaa !667
  %695 = load ptr, ptr %694, align 8, !tbaa !669
  %696 = getelementptr inbounds %struct.basic_block_def, ptr %695, i64 0, i32 6
  %697 = load ptr, ptr %696, align 8, !tbaa !671
  %698 = getelementptr inbounds %struct.control_flow_graph, ptr %694, i64 0, i32 1
  %699 = load ptr, ptr %698, align 8, !tbaa !673
  %700 = icmp eq ptr %697, %699
  br i1 %700, label %713, label %701

701:                                              ; preds = %691, %701
  %702 = phi ptr [ %706, %701 ], [ %697, %691 ]
  %703 = tail call ptr @df_get_live_in(ptr noundef %702) #22
  %704 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %703, i32 noundef 6) #22
  %705 = getelementptr inbounds %struct.basic_block_def, ptr %702, i64 0, i32 6
  %706 = load ptr, ptr %705, align 8, !tbaa !671
  %707 = load ptr, ptr @cfun, align 8, !tbaa !513
  %708 = getelementptr inbounds %struct.function, ptr %707, i64 0, i32 1
  %709 = load ptr, ptr %708, align 8, !tbaa !667
  %710 = getelementptr inbounds %struct.control_flow_graph, ptr %709, i64 0, i32 1
  %711 = load ptr, ptr %710, align 8, !tbaa !673
  %712 = icmp eq ptr %706, %711
  br i1 %712, label %713, label %701, !llvm.loop !674

713:                                              ; preds = %571, %701, %691, %688
  tail call void @bitmap_clear(ptr noundef nonnull @changed_allocation_pseudos) #22
  tail call void @bitmap_clear(ptr noundef nonnull @spilled_pseudos) #22
  store i32 0, ptr @reload_in_progress, align 4, !tbaa !527
  %714 = load i32, ptr @max_regno, align 4, !tbaa !527
  %715 = icmp sgt i32 %714, 53
  br i1 %715, label %716, label %906, !prof !570

716:                                              ; preds = %713, %901
  %717 = phi i64 [ %902, %901 ], [ 53, %713 ]
  %718 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %719 = getelementptr inbounds ptr, ptr %718, i64 %717
  %720 = load ptr, ptr %719, align 8, !tbaa !513
  %721 = icmp eq ptr %720, null
  %722 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !513
  %723 = getelementptr inbounds ptr, ptr %722, i64 %717
  %724 = load ptr, ptr %723, align 8, !tbaa !513
  %725 = icmp eq ptr %724, null
  br i1 %721, label %727, label %726, !prof !675

726:                                              ; preds = %716
  br i1 %725, label %728, label %732, !prof !676

727:                                              ; preds = %716
  br i1 %725, label %817, label %738, !prof !676

728:                                              ; preds = %726
  %729 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !493
  %731 = icmp eq ptr %730, null
  br i1 %731, label %817, label %732, !prof !677

732:                                              ; preds = %726, %728
  %733 = phi ptr [ %730, %728 ], [ %724, %726 ]
  %734 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %735 = getelementptr inbounds i16, ptr %734, i64 %717
  %736 = load i16, ptr %735, align 2, !tbaa !528
  %737 = icmp slt i16 %736, 0
  br i1 %737, label %743, label %814, !prof !678

738:                                              ; preds = %727
  %739 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %740 = getelementptr inbounds i16, ptr %739, i64 %717
  %741 = load i16, ptr %740, align 2, !tbaa !528
  %742 = icmp slt i16 %741, 0
  br i1 %742, label %743, label %817, !prof !678

743:                                              ; preds = %738, %732
  %744 = phi ptr [ %724, %738 ], [ %733, %732 ]
  %745 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %746 = getelementptr inbounds ptr, ptr %745, i64 %717
  %747 = load ptr, ptr %746, align 8, !tbaa !513
  %748 = load i32, ptr %747, align 8
  %749 = and i32 %748, -134283264
  %750 = or disjoint i32 %749, 43
  store i32 %750, ptr %747, align 8
  %751 = getelementptr inbounds %struct.rtx_def, ptr %747, i64 0, i32 1
  store ptr %744, ptr %751, align 8, !tbaa !493
  %752 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %753 = getelementptr inbounds ptr, ptr %752, i64 %717
  %754 = load ptr, ptr %753, align 8, !tbaa !513
  %755 = icmp eq ptr %754, null
  br i1 %755, label %807, label %756, !prof !679

756:                                              ; preds = %743
  %757 = load i32, ptr %754, align 8
  %758 = and i32 %757, 134217728
  %759 = or disjoint i32 %758, %750
  store i32 %759, ptr %747, align 8
  %760 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %761 = getelementptr inbounds ptr, ptr %760, i64 %717
  %762 = load ptr, ptr %761, align 8, !tbaa !513
  %763 = load i32, ptr %762, align 8
  %764 = and i32 %763, 268435456
  %765 = and i32 %759, -268500949
  %766 = or disjoint i32 %764, %765
  store i32 %766, ptr %747, align 8
  %767 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %768 = getelementptr inbounds ptr, ptr %767, i64 %717
  %769 = load ptr, ptr %768, align 8, !tbaa !513
  %770 = load i32, ptr %769, align 8
  %771 = and i32 %770, -2147483648
  %772 = and i32 %766, 2147418155
  %773 = or disjoint i32 %771, %772
  store i32 %773, ptr %747, align 8
  %774 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %775 = getelementptr inbounds ptr, ptr %774, i64 %717
  %776 = load ptr, ptr %775, align 8, !tbaa !513
  %777 = load i32, ptr %776, align 8
  %778 = and i32 %777, 33554432
  %779 = and i32 %773, -33619925
  %780 = or disjoint i32 %778, %779
  store i32 %780, ptr %747, align 8
  %781 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %782 = getelementptr inbounds ptr, ptr %781, i64 %717
  %783 = load ptr, ptr %782, align 8, !tbaa !513
  %784 = load i32, ptr %783, align 8
  %785 = and i32 %784, 67108864
  %786 = and i32 %780, -67174357
  %787 = or disjoint i32 %785, %786
  store i32 %787, ptr %747, align 8
  %788 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %789 = getelementptr inbounds ptr, ptr %788, i64 %717
  %790 = load ptr, ptr %789, align 8, !tbaa !513
  %791 = load i32, ptr %790, align 8
  %792 = and i32 %791, 16777216
  %793 = and i32 %787, -16842709
  %794 = or disjoint i32 %792, %793
  store i32 %794, ptr %747, align 8
  %795 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %796 = getelementptr inbounds ptr, ptr %795, i64 %717
  %797 = load ptr, ptr %796, align 8, !tbaa !513
  %798 = load i32, ptr %797, align 8
  %799 = and i32 %798, 1073741824
  %800 = and i32 %794, -1073807317
  %801 = or disjoint i32 %799, %800
  store i32 %801, ptr %747, align 8
  %802 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %803 = getelementptr inbounds ptr, ptr %802, i64 %717
  %804 = load ptr, ptr %803, align 8, !tbaa !513
  %805 = getelementptr inbounds %struct.rtx_def, ptr %804, i64 0, i32 1, i32 0, i32 0, i64 1
  %806 = load ptr, ptr %805, align 8, !tbaa !493
  br label %809

807:                                              ; preds = %743
  %808 = and i32 %750, 1744764971
  br label %809

809:                                              ; preds = %807, %756
  %810 = phi i32 [ %808, %807 ], [ %801, %756 ]
  %811 = phi ptr [ null, %807 ], [ %806, %756 ]
  %812 = getelementptr inbounds %struct.rtx_def, ptr %747, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %811, ptr %812, align 8
  %813 = or i32 %810, 33554432
  store i32 %813, ptr %747, align 8
  br label %817

814:                                              ; preds = %732
  br i1 %721, label %817, label %815, !prof !680

815:                                              ; preds = %814
  %816 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 0, i32 1
  store ptr %733, ptr %816, align 8, !tbaa !493
  br label %817

817:                                              ; preds = %738, %727, %809, %815, %814, %728
  %818 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !527
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %901, label %820, !prof !676

820:                                              ; preds = %817
  %821 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %822 = getelementptr inbounds i16, ptr %821, i64 %717
  %823 = load i16, ptr %822, align 2, !tbaa !528
  %824 = icmp slt i16 %823, 0
  br i1 %824, label %825, label %901

825:                                              ; preds = %820
  %826 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %827 = getelementptr inbounds ptr, ptr %826, i64 %717
  %828 = load ptr, ptr %827, align 8, !tbaa !513
  %829 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %830 = getelementptr inbounds ptr, ptr %829, i64 %717
  %831 = load ptr, ptr %830, align 8, !tbaa !513
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %851

833:                                              ; preds = %825
  %834 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %835 = getelementptr inbounds ptr, ptr %834, i64 %717
  %836 = load ptr, ptr %835, align 8, !tbaa !513
  %837 = icmp eq ptr %836, null
  br i1 %837, label %838, label %851

838:                                              ; preds = %833
  %839 = icmp eq ptr %828, null
  br i1 %839, label %851, label %840

840:                                              ; preds = %838
  %841 = load i32, ptr %828, align 8
  %842 = trunc i32 %841 to i16
  switch i16 %842, label %851 [
    i16 43, label %843
    i16 37, label %846
  ]

843:                                              ; preds = %840
  %844 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !681
  %845 = tail call ptr %844(ptr noundef nonnull %828) #22
  br label %851

846:                                              ; preds = %840
  %847 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %828) #23
  %848 = zext i32 %847 to i64
  %849 = icmp eq i64 %717, %848
  %850 = select i1 %849, ptr null, ptr %828
  br label %851

851:                                              ; preds = %840, %846, %838, %833, %825, %843
  %852 = phi ptr [ %845, %843 ], [ %831, %825 ], [ %836, %833 ], [ %850, %846 ], [ null, %838 ], [ null, %840 ]
  %853 = icmp eq ptr %852, %828
  br i1 %853, label %901, label %854

854:                                              ; preds = %851
  %855 = load ptr, ptr @df, align 8, !tbaa !513
  %856 = getelementptr inbounds %struct.df, ptr %855, i64 0, i32 6
  %857 = load ptr, ptr %856, align 8, !tbaa !693
  %858 = getelementptr inbounds ptr, ptr %857, i64 %717
  %859 = load ptr, ptr %858, align 8, !tbaa !513
  %860 = load ptr, ptr %859, align 8, !tbaa !696
  %861 = icmp eq ptr %860, null
  br i1 %861, label %901, label %862

862:                                              ; preds = %854
  %863 = icmp eq ptr %852, null
  br label %864

864:                                              ; preds = %862, %899
  %865 = phi ptr [ %860, %862 ], [ %872, %899 ]
  %866 = getelementptr inbounds %struct.df_base_ref, ptr %865, i64 0, i32 3
  %867 = load ptr, ptr %866, align 8, !tbaa !493
  %868 = load ptr, ptr %867, align 8, !tbaa !698
  br label %869

869:                                              ; preds = %874, %864
  %870 = phi ptr [ %865, %864 ], [ %872, %874 ]
  %871 = getelementptr inbounds %struct.df_base_ref, ptr %870, i64 0, i32 4
  %872 = load ptr, ptr %871, align 8, !tbaa !493
  %873 = icmp eq ptr %872, null
  br i1 %873, label %879, label %874

874:                                              ; preds = %869
  %875 = getelementptr inbounds %struct.df_base_ref, ptr %872, i64 0, i32 3
  %876 = load ptr, ptr %875, align 8, !tbaa !493
  %877 = load ptr, ptr %876, align 8, !tbaa !698
  %878 = icmp eq ptr %877, %868
  br i1 %878, label %869, label %879, !llvm.loop !700

879:                                              ; preds = %869, %874
  %880 = load i32, ptr %868, align 8
  %881 = and i32 %880, 65535
  %882 = icmp eq i32 %881, 7
  br i1 %882, label %883, label %899

883:                                              ; preds = %879
  br i1 %863, label %884, label %891

884:                                              ; preds = %883
  %885 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !513
  %886 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %885) #22
  %887 = getelementptr inbounds %struct.rtx_def, ptr %868, i64 1
  %888 = load ptr, ptr %887, align 8, !tbaa !493
  %889 = getelementptr inbounds %struct.rtx_def, ptr %888, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %886, ptr %889, align 8, !tbaa !493
  %890 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %868) #22
  br label %899

891:                                              ; preds = %883
  %892 = getelementptr inbounds %struct.rtx_def, ptr %868, i64 1
  %893 = load ptr, ptr %892, align 8, !tbaa !493
  %894 = getelementptr inbounds %struct.rtx_def, ptr %893, i64 0, i32 1, i32 0, i32 0, i64 1
  %895 = load ptr, ptr %894, align 8, !tbaa !493
  %896 = tail call ptr @simplify_replace_rtx(ptr noundef %895, ptr noundef %828, ptr noundef nonnull %852) #22
  %897 = load ptr, ptr %892, align 8, !tbaa !493
  %898 = getelementptr inbounds %struct.rtx_def, ptr %897, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %896, ptr %898, align 8, !tbaa !493
  br label %899

899:                                              ; preds = %879, %891, %884
  %900 = icmp eq ptr %872, null
  br i1 %900, label %901, label %864, !llvm.loop !701

901:                                              ; preds = %899, %854, %851, %817, %820
  %902 = add nuw nsw i64 %717, 1
  %903 = load i32, ptr @max_regno, align 4, !tbaa !527
  %904 = sext i32 %903 to i64
  %905 = icmp slt i64 %902, %904
  br i1 %905, label %716, label %906, !prof !571, !llvm.loop !702

906:                                              ; preds = %901, %713
  store i32 1, ptr @reload_completed, align 4, !tbaa !527
  br i1 %112, label %1017, label %907, !prof !584

907:                                              ; preds = %906, %1013
  %908 = phi ptr [ %1015, %1013 ], [ %0, %906 ]
  %909 = load i32, ptr %908, align 8
  %910 = and i32 %909, 65535
  %911 = add nsw i32 %910, -7
  %912 = icmp ult i32 %911, 4
  br i1 %912, label %913, label %1013, !prof !703

913:                                              ; preds = %907
  %914 = icmp eq i32 %910, 10
  br i1 %914, label %915, label %918, !prof !704

915:                                              ; preds = %913
  %916 = getelementptr inbounds %struct.rtx_def, ptr %908, i64 1, i32 1, i32 0, i32 0, i64 2
  %917 = load ptr, ptr %916, align 8, !tbaa !493
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %916, i32 noundef 0, ptr noundef %917) #23
  br label %918

918:                                              ; preds = %915, %913
  %919 = getelementptr inbounds %struct.rtx_def, ptr %908, i64 1
  %920 = load ptr, ptr %919, align 8, !tbaa !493
  %921 = load i32, ptr %920, align 8
  %922 = and i32 %921, 65535
  %923 = icmp eq i32 %922, 24
  br i1 %923, label %924, label %934, !prof !705

924:                                              ; preds = %918
  %925 = load i32, ptr %908, align 8
  %926 = and i32 %925, 16711680
  %927 = icmp eq i32 %926, 917504
  br i1 %927, label %1011, label %928, !prof !706

928:                                              ; preds = %924
  %929 = tail call ptr @find_reg_note(ptr noundef nonnull %908, i32 noundef 4, ptr noundef null) #22
  %930 = icmp eq ptr %929, null
  br i1 %930, label %931, label %1011, !prof !589

931:                                              ; preds = %928
  %932 = load ptr, ptr %919, align 8, !tbaa !493
  %933 = load i32, ptr %932, align 8
  br label %934

934:                                              ; preds = %931, %918
  %935 = phi i32 [ %933, %931 ], [ %921, %918 ]
  %936 = phi ptr [ %932, %931 ], [ %920, %918 ]
  %937 = and i32 %935, 65535
  %938 = icmp eq i32 %937, 25
  br i1 %938, label %939, label %958, !prof !707

939:                                              ; preds = %934
  %940 = getelementptr inbounds %struct.rtx_def, ptr %936, i64 0, i32 1
  %941 = load ptr, ptr %940, align 8, !tbaa !493
  %942 = load i32, ptr %941, align 8
  %943 = and i32 %942, 16777215
  %944 = icmp eq i32 %943, 65579
  br i1 %944, label %945, label %954, !prof !708

945:                                              ; preds = %939
  %946 = getelementptr inbounds %struct.rtx_def, ptr %941, i64 0, i32 1
  %947 = load ptr, ptr %946, align 8, !tbaa !493
  %948 = load i32, ptr %947, align 8
  %949 = and i32 %948, 65535
  %950 = icmp eq i32 %949, 38
  %951 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %952 = icmp eq ptr %947, %951
  %953 = select i1 %950, i1 true, i1 %952
  br i1 %953, label %957, label %1011

954:                                              ; preds = %939
  %955 = and i32 %942, -2147418113
  %956 = icmp eq i32 %955, -2147483611
  br i1 %956, label %957, label %1011, !prof !709

957:                                              ; preds = %954, %945
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %940, i32 noundef 0, ptr noundef nonnull %936) #23
  br label %958

958:                                              ; preds = %934, %957
  %959 = load i32, ptr %908, align 8
  %960 = and i32 %959, 65535
  %961 = icmp eq i32 %960, 8
  br i1 %961, label %962, label %983, !prof !710

962:                                              ; preds = %958
  %963 = load ptr, ptr %919, align 8, !tbaa !493
  %964 = load i32, ptr %963, align 8
  %965 = and i32 %964, 65535
  %966 = icmp eq i32 %965, 23
  br i1 %966, label %967, label %983, !prof !711

967:                                              ; preds = %962
  %968 = getelementptr inbounds %struct.rtx_def, ptr %963, i64 0, i32 1, i32 0, i32 0, i64 1
  %969 = load ptr, ptr %968, align 8, !tbaa !493
  %970 = load i32, ptr %969, align 8
  %971 = and i32 %970, 65535
  %972 = icmp eq i32 %971, 37
  br i1 %972, label %973, label %983, !prof !712

973:                                              ; preds = %967
  %974 = getelementptr inbounds %struct.rtx_def, ptr %963, i64 0, i32 1
  %975 = load ptr, ptr %974, align 8, !tbaa !493
  %976 = load i32, ptr %975, align 8
  %977 = and i32 %976, 65535
  %978 = icmp eq i32 %977, 37
  br i1 %978, label %979, label %983, !prof !713

979:                                              ; preds = %973
  %980 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %969) #23
  %981 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %975) #23
  %982 = icmp eq i32 %980, %981
  br i1 %982, label %1011, label %983, !prof !714

983:                                              ; preds = %979, %973, %967, %962, %958
  %984 = getelementptr inbounds %struct.rtx_def, ptr %908, i64 1, i32 1, i32 0, i32 0, i64 1
  %985 = load ptr, ptr %984, align 8, !tbaa !513
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1003, label %987, !prof !715

987:                                              ; preds = %983, %999
  %988 = phi ptr [ %1000, %999 ], [ %985, %983 ]
  %989 = phi ptr [ %1001, %999 ], [ %984, %983 ]
  %990 = load i32, ptr %988, align 8
  %991 = lshr i32 %990, 16
  %992 = trunc i32 %991 to i8
  switch i8 %992, label %996 [
    i8 1, label %993
    i8 6, label %993
    i8 2, label %993
  ], !prof !716

993:                                              ; preds = %987, %987, %987
  %994 = getelementptr inbounds %struct.rtx_def, ptr %988, i64 0, i32 1, i32 0, i32 0, i64 1
  %995 = load ptr, ptr %994, align 8, !tbaa !493
  store ptr %995, ptr %989, align 8, !tbaa !513
  br label %999

996:                                              ; preds = %987
  %997 = getelementptr inbounds %struct.rtx_def, ptr %988, i64 0, i32 1, i32 0, i32 0, i64 1
  %998 = load ptr, ptr %997, align 8, !tbaa !513
  br label %999

999:                                              ; preds = %996, %993
  %1000 = phi ptr [ %995, %993 ], [ %998, %996 ]
  %1001 = phi ptr [ %989, %993 ], [ %997, %996 ]
  %1002 = icmp eq ptr %1000, null
  br i1 %1002, label %1003, label %987, !prof !717, !llvm.loop !718

1003:                                             ; preds = %999, %983
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %908) #22
  %1004 = load ptr, ptr %919, align 8, !tbaa !493
  %1005 = tail call i32 @asm_noperands(ptr noundef %1004) #22
  %1006 = icmp sgt i32 %1005, -1
  br i1 %1006, label %1007, label %1013, !prof !719

1007:                                             ; preds = %1003
  tail call void @extract_insn(ptr noundef nonnull %908) #22
  %1008 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %1013

1010:                                             ; preds = %1007
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %908, ptr noundef nonnull @.str.5) #22
  br label %1011

1011:                                             ; preds = %979, %924, %928, %954, %945, %1010
  %1012 = tail call ptr @delete_insn(ptr noundef nonnull %908) #22
  br label %1013

1013:                                             ; preds = %1011, %907, %1007, %1003
  %1014 = getelementptr inbounds %struct.rtx_def, ptr %908, i64 0, i32 1, i32 0, i32 0, i64 2
  %1015 = load ptr, ptr %1014, align 8, !tbaa !493
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %1017, label %907, !prof !720, !llvm.loop !721

1017:                                             ; preds = %1013, %906
  %1018 = load i32, ptr @flag_stack_check, align 4, !tbaa !527
  %1019 = icmp eq i32 %1018, 1
  br i1 %1019, label %1020, label %1050, !prof !568

1020:                                             ; preds = %1017
  %1021 = tail call i64 @get_frame_size() #22
  %1022 = add nsw i64 %1021, 16
  br label %1023

1023:                                             ; preds = %1020, %1039
  %1024 = phi i64 [ 0, %1020 ], [ %1041, %1039 ]
  %1025 = phi i64 [ %1022, %1020 ], [ %1040, %1039 ]
  %1026 = trunc i64 %1024 to i32
  %1027 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %1026) #22
  %1028 = icmp eq i8 %1027, 0
  br i1 %1028, label %1039, label %1029

1029:                                             ; preds = %1023
  %1030 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1024
  %1031 = load i8, ptr %1030, align 1, !tbaa !493
  %1032 = icmp eq i8 %1031, 0
  br i1 %1032, label %1033, label %1039

1033:                                             ; preds = %1029
  %1034 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %1024
  %1035 = load i8, ptr %1034, align 1, !tbaa !493
  %1036 = icmp eq i8 %1035, 0
  %1037 = add nsw i64 %1025, 4
  %1038 = select i1 %1036, i64 %1025, i64 %1037
  br label %1039

1039:                                             ; preds = %1033, %1023, %1029
  %1040 = phi i64 [ %1025, %1029 ], [ %1025, %1023 ], [ %1038, %1033 ]
  %1041 = add nuw nsw i64 %1024, 1
  %1042 = icmp eq i64 %1041, 53
  br i1 %1042, label %1043, label %1023, !llvm.loop !722

1043:                                             ; preds = %1039
  %1044 = icmp sgt i64 %1040, 4092
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1043
  %1046 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.6) #22
  %1047 = load i1, ptr @reload.verbose_warned, align 4
  br i1 %1047, label %1050, label %1048

1048:                                             ; preds = %1045
  %1049 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.7) #22
  store i1 true, ptr @reload.verbose_warned, align 4
  br label %1050

1050:                                             ; preds = %1043, %1048, %1045, %1017
  %1051 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1054, label %1053, !prof !568

1053:                                             ; preds = %1050
  tail call void @free(ptr noundef nonnull %1051) #23
  br label %1054

1054:                                             ; preds = %1053, %1050
  %1055 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1058, label %1057, !prof !568

1057:                                             ; preds = %1054
  tail call void @free(ptr noundef nonnull %1055) #23
  br label %1058

1058:                                             ; preds = %1057, %1054
  store ptr null, ptr @reg_equiv_constant, align 8, !tbaa !513
  store ptr null, ptr @reg_equiv_invariant, align 8, !tbaa !513
  tail call fastcc void @VEC_rtx_gc_free() #23
  store ptr null, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %1059 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !513
  tail call void @free(ptr noundef %1059) #23
  %1060 = load ptr, ptr @offsets_known_at, align 8, !tbaa !513
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1063, label %1062, !prof !568

1062:                                             ; preds = %1058
  tail call void @free(ptr noundef nonnull %1060) #23
  br label %1063

1063:                                             ; preds = %1062, %1058
  %1064 = load ptr, ptr @offsets_at, align 8, !tbaa !513
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1067, label %1066, !prof !568

1066:                                             ; preds = %1063
  tail call void @free(ptr noundef nonnull %1064) #23
  br label %1067

1067:                                             ; preds = %1066, %1063
  %1068 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !513
  br label %1069

1069:                                             ; preds = %1067, %1077
  %1070 = phi ptr [ %1068, %1067 ], [ %1078, %1077 ]
  %1071 = phi i64 [ 0, %1067 ], [ %1079, %1077 ]
  %1072 = getelementptr inbounds ptr, ptr %1070, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !513
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1077, label %1075, !prof !723

1075:                                             ; preds = %1069
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %1072) #22
  %1076 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !513
  br label %1077

1077:                                             ; preds = %1069, %1075
  %1078 = phi ptr [ %1070, %1069 ], [ %1076, %1075 ]
  %1079 = add nuw nsw i64 %1071, 1
  %1080 = icmp eq i64 %1079, 53
  br i1 %1080, label %1081, label %1069, !prof !724, !llvm.loop !725

1081:                                             ; preds = %1077
  tail call void @free(ptr noundef %1078) #23
  %1082 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  tail call void @free(ptr noundef %1082) #23
  store ptr null, ptr @reg_equiv_init, align 8, !tbaa !513
  %1083 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !513
  tail call void @free(ptr noundef %1083) #23
  %1084 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !513
  tail call void @free(ptr noundef %1084) #23
  %1085 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !513
  tail call void @free(ptr noundef %1085) #23
  %1086 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !513
  tail call void @free(ptr noundef %1086) #23
  %1087 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !513
  tail call void @free(ptr noundef %1087) #23
  store i64 0, ptr @used_spill_regs, align 8, !tbaa !545
  %1088 = load i32, ptr @n_spills, align 4, !tbaa !527
  %1089 = icmp sgt i32 %1088, 0
  br i1 %1089, label %1090, label %1104, !prof !726

1090:                                             ; preds = %1081
  %1091 = zext nneg i32 %1088 to i64
  br label %1092

1092:                                             ; preds = %1090, %1092
  %1093 = phi i64 [ 0, %1090 ], [ %1101, %1092 ]
  %1094 = phi i64 [ 0, %1090 ], [ %1100, %1092 ]
  %1095 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %1093
  %1096 = load i16, ptr %1095, align 2, !tbaa !528
  %1097 = sext i16 %1096 to i64
  %1098 = and i64 %1097, 4294967295
  %1099 = shl nuw i64 1, %1098
  %1100 = or i64 %1099, %1094
  %1101 = add nuw nsw i64 %1093, 1
  %1102 = icmp eq i64 %1101, %1091
  br i1 %1102, label %1103, label %1092, !prof !727, !llvm.loop !728

1103:                                             ; preds = %1092
  store i64 %1100, ptr @used_spill_regs, align 8, !tbaa !545
  br label %1104

1104:                                             ; preds = %1103, %1081
  %1105 = load ptr, ptr @reload_startobj, align 8, !tbaa !513
  %1106 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %1107 = ptrtoint ptr %1105 to i64
  %1108 = ptrtoint ptr %1106 to i64
  %1109 = sub i64 %1107, %1108
  store i64 %1109, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %1110 = icmp sgt i64 %1109, 0
  br i1 %1110, label %1111, label %1118, !prof !729

1111:                                             ; preds = %1104
  %1112 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %1113 = ptrtoint ptr %1112 to i64
  %1114 = sub i64 %1113, %1108
  %1115 = icmp slt i64 %1109, %1114
  br i1 %1115, label %1116, label %1118, !prof !730

1116:                                             ; preds = %1111
  %1117 = getelementptr inbounds i8, ptr %1106, i64 %1109
  store ptr %1117, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %1117, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %1120

1118:                                             ; preds = %1111, %1104
  %1119 = getelementptr inbounds i8, ptr %1106, i64 %1109
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %1119) #22
  br label %1120

1120:                                             ; preds = %1118, %1116
  store ptr null, ptr @unused_insn_chains, align 8, !tbaa !513
  tail call void @fixup_abnormal_edges() #23
  tail call void @unshare_all_rtl_again(ptr noundef %0) #22
  %1121 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %1122 = icmp eq i8 %1121, 0
  br i1 %1122, label %1123, label %1126, !prof !568

1123:                                             ; preds = %1120
  %1124 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !731
  %1125 = getelementptr inbounds i8, ptr %1124, i64 6
  store i8 8, ptr %1125, align 1, !tbaa !493
  br label %1126

1126:                                             ; preds = %1120, %1123
  tail call fastcc void @VEC_rtx_p_heap_free() #23
  %1127 = load i1, ptr @failure, align 4
  %1128 = zext i1 %1127 to i32
  ret i32 %1128
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @init_save_areas() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_home_live(i32 noundef %0) local_unnamed_addr #0 !prof !732 {
  %2 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !528
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %7, label %14, !prof !733

7:                                                ; preds = %1
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %9 = getelementptr inbounds ptr, ptr %8, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  tail call fastcc void @mark_home_live_1(i32 noundef %0, i32 noundef %13) #23
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_nonexceptional_receiver() unnamed_addr #0 !prof !734 !PGOFuncName !735 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %3 = load i32, ptr @optimize, align 4, !tbaa !527
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %110, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !513
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !667
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !736
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #22
  %15 = load ptr, ptr @cfun, align 8, !tbaa !513
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !667
  %18 = load ptr, ptr %17, align 8, !tbaa !669
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !673
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !671
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %32, label %24

24:                                               ; preds = %5, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %5 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !737
  %28 = and i32 %27, -3
  store i32 %28, ptr %26, align 8, !tbaa !737
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !671
  %31 = icmp eq ptr %30, %20
  br i1 %31, label %32, label %24, !llvm.loop !738

32:                                               ; preds = %24, %5
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !737
  %35 = or i32 %34, 2
  store i32 %35, ptr %33, align 8, !tbaa !737
  %36 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %20, ptr %14, align 8, !tbaa !513
  %37 = getelementptr inbounds i8, ptr %2, i64 8
  br label %41

38:                                               ; preds = %64, %41
  %39 = phi ptr [ %43, %41 ], [ %65, %64 ]
  %40 = icmp eq ptr %39, %14
  br i1 %40, label %70, label %41, !llvm.loop !739

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %36, %32 ], [ %39, %38 ]
  %43 = getelementptr inbounds ptr, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !tbaa !513
  %45 = tail call fastcc ptr @ei_start_1(ptr noundef %44) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !740
  store ptr %45, ptr %37, align 8, !tbaa.struct !741
  %46 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %45, ptr noundef nonnull %1) #23, !range !525
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %41, %64
  %49 = phi ptr [ %65, %64 ], [ %43, %41 ]
  %50 = load ptr, ptr %1, align 8, !tbaa !513
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !742
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load ptr, ptr %50, align 8, !tbaa !744
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !737
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = or disjoint i32 %58, 2
  store i32 %62, ptr %57, align 8, !tbaa !737
  %63 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %56, ptr %49, align 8, !tbaa !513
  br label %64

64:                                               ; preds = %55, %61, %48
  %65 = phi ptr [ %49, %48 ], [ %49, %55 ], [ %63, %61 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %66 = load i32, ptr %2, align 8
  %67 = load ptr, ptr %37, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %1) #23, !range !525
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %38, label %48, !llvm.loop !745

70:                                               ; preds = %38
  tail call void @free(ptr noundef %14) #23
  %71 = load ptr, ptr @cfun, align 8, !tbaa !513
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !667
  %74 = load ptr, ptr %73, align 8, !tbaa !669
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !671
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !673
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %110, label %80

80:                                               ; preds = %70, %101
  %81 = phi ptr [ %103, %101 ], [ %76, %70 ]
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !737
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %81) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !740
  store ptr %87, ptr %37, align 8, !tbaa.struct !741
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %1) #23, !range !525
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86, %96
  %91 = load ptr, ptr %1, align 8, !tbaa !513
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !742
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %97 = load i32, ptr %2, align 8
  %98 = load ptr, ptr %37, align 8
  %99 = call fastcc zeroext i8 @ei_cond(i32 %97, ptr %98, ptr noundef nonnull %1) #23, !range !525
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %90, !llvm.loop !746

101:                                              ; preds = %96, %86, %80
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !671
  %104 = load ptr, ptr @cfun, align 8, !tbaa !513
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !667
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !673
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %80, !llvm.loop !747

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_paradoxical_subregs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !748 !PGOFuncName !749 {
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
  ], !prof !750

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !493
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %67, !prof !751

10:                                               ; preds = %4
  %11 = lshr i32 %2, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !493
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !513
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !527
  %22 = icmp ult i32 %21, %16
  br i1 %22, label %23, label %67, !prof !752

23:                                               ; preds = %10
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %17, i64 %25
  store i32 %16, ptr %26, align 4, !tbaa !527
  %27 = load ptr, ptr %5, align 8, !tbaa !493
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
  %36 = load ptr, ptr %35, align 8, !tbaa !513
  %37 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !493
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %67, label %40, !prof !753

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %42 = zext i8 %38 to i64
  br label %43

43:                                               ; preds = %40, %65
  %44 = phi i64 [ %42, %40 ], [ %45, %65 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds i8, ptr %36, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !493
  switch i8 %47, label %65 [
    i8 101, label %48
    i8 69, label %51
  ], !prof !754

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %50 = load ptr, ptr %49, align 8, !tbaa !493
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %50) #23
  br label %65

51:                                               ; preds = %43
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %53 = load ptr, ptr %52, align 8, !tbaa !493
  %54 = load i32, ptr %53, align 8, !tbaa !755
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65, !prof !757

56:                                               ; preds = %51
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %57, %56 ], [ %60, %58 ]
  %60 = add nsw i64 %59, -1
  %61 = load ptr, ptr %52, align 8, !tbaa !493
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !513
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %63) #23
  %64 = icmp ugt i64 %59, 1
  br i1 %64, label %58, label %65, !prof !758, !llvm.loop !759

65:                                               ; preds = %58, %51, %43, %48
  %66 = icmp sgt i64 %44, 1
  br i1 %66, label %43, label %67, !prof !760, !llvm.loop !761

67:                                               ; preds = %65, %32, %4, %10, %23, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !762 !PGOFuncName !763 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !493
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @function_invariant_p(ptr noundef readonly %0) local_unnamed_addr #12 !prof !764 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !527
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %32, label %8, !prof !765

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !513
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %32, label %11, !prof !766

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !513
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %32, label %14, !prof !766

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 49
  br i1 %15, label %16, label %31, !prof !767

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !493
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %22, label %20, !prof !768

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, %12
  br i1 %21, label %22, label %31, !prof !769

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !493
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !527
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %32, label %31, !prof !770

31:                                               ; preds = %22, %20, %14
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
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_elim_table() unnamed_addr #0 !prof !567 !PGOFuncName !771 {
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !772

3:                                                ; preds = %0
  %4 = tail call ptr @xcalloc(i64 noundef 4, i64 noundef 64) #22
  store ptr %4, ptr @reg_eliminate, align 8, !tbaa !513
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  store i32 0, ptr @num_eliminable, align 4, !tbaa !527
  br label %7

7:                                                ; preds = %5, %32
  %8 = phi ptr [ %38, %32 ], [ @reg_eliminate_1, %5 ]
  %9 = phi ptr [ %37, %32 ], [ %6, %5 ]
  %10 = load i32, ptr %8, align 4, !tbaa !773
  store i32 %10, ptr %9, align 8, !tbaa !612
  %11 = getelementptr inbounds %struct.elim_table_1, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !775
  %13 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !655
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !776
  %15 = tail call zeroext i8 %14(i32 noundef %10, i32 noundef %12) #22
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17, !prof !616

17:                                               ; preds = %7
  %18 = load i32, ptr %13, align 4, !tbaa !655
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %29, !prof !777

20:                                               ; preds = %17
  %21 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23, !prof !501

23:                                               ; preds = %20
  %24 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !778
  %25 = icmp eq i8 %24, 0
  %26 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %27 = icmp ne i8 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br label %29

29:                                               ; preds = %23, %20, %17
  %30 = phi i1 [ false, %20 ], [ false, %17 ], [ %28, %23 ]
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %29, %7
  %33 = phi i1 [ false, %7 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 4
  store i32 %34, ptr %35, align 4, !tbaa !779
  %36 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 3
  store i32 %34, ptr %36, align 8, !tbaa !614
  %37 = getelementptr inbounds %struct.elim_table, ptr %9, i64 1
  %38 = getelementptr inbounds %struct.elim_table_1, ptr %8, i64 1
  %39 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %40 = getelementptr inbounds %struct.elim_table, ptr %39, i64 4
  %41 = icmp ult ptr %37, %40
  br i1 %41, label %7, label %42, !prof !656, !llvm.loop !780

42:                                               ; preds = %32, %42
  %43 = phi ptr [ %55, %42 ], [ %39, %32 ]
  %44 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !614
  %46 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr @num_eliminable, align 4, !tbaa !527
  %48 = load i32, ptr %43, align 8, !tbaa !612
  %49 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %48) #22
  %50 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !781
  %51 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !655
  %53 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %52) #22
  %54 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 9
  store ptr %53, ptr %54, align 8, !tbaa !782
  %55 = getelementptr inbounds %struct.elim_table, ptr %43, i64 1
  %56 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %57 = getelementptr inbounds %struct.elim_table, ptr %56, i64 4
  %58 = icmp ult ptr %55, %57
  br i1 %58, label %42, label %59, !prof !656, !llvm.loop !783

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
define internal fastcc void @alter_reg(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !784 !PGOFuncName !785 {
  %4 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  %8 = icmp eq ptr %7, null
  br i1 %8, label %163, label %9, !prof !786

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %163, !prof !787

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %15 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %16 = getelementptr inbounds i16, ptr %15, i64 %5
  %17 = load i16, ptr %16, align 2, !tbaa !528
  %18 = sext i16 %17 to i32
  %19 = icmp slt i16 %17, 0
  %20 = select i1 %19, i32 %0, i32 %18, !prof !788
  tail call void @df_ref_change_reg_with_loc(i32 noundef %14, i32 noundef %20, ptr noundef nonnull %7) #22
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %22 = getelementptr inbounds i16, ptr %21, i64 %5
  %23 = load i16, ptr %22, align 2, !tbaa !528
  %24 = sext i16 %23 to i32
  %25 = icmp slt i16 %23, 0
  %26 = select i1 %25, i32 %0, i32 %24, !prof !788
  %27 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %28 = getelementptr inbounds ptr, ptr %27, i64 %5
  %29 = load ptr, ptr %28, align 8, !tbaa !513
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store i32 %26, ptr %30, align 8, !tbaa !493
  %31 = load i16, ptr %22, align 2, !tbaa !528
  %32 = icmp slt i16 %31, 0
  br i1 %32, label %33, label %163, !prof !788

33:                                               ; preds = %13
  %34 = tail call fastcc i32 @REG_N_REFS(i32 noundef %0) #23
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %163, !prof !789

36:                                               ; preds = %33
  %37 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %38 = getelementptr inbounds ptr, ptr %37, i64 %5
  %39 = load ptr, ptr %38, align 8, !tbaa !513
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %163, !prof !790

41:                                               ; preds = %36
  %42 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %43 = getelementptr inbounds ptr, ptr %42, i64 %5
  %44 = load ptr, ptr %43, align 8, !tbaa !513
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !791

46:                                               ; preds = %41
  %47 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %48 = getelementptr inbounds ptr, ptr %47, i64 %5
  %49 = load ptr, ptr %48, align 8, !tbaa !513
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %163, !prof !792

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %53 = getelementptr inbounds ptr, ptr %52, i64 %5
  %54 = load ptr, ptr %53, align 8, !tbaa !513
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %163, !prof !793

56:                                               ; preds = %51
  %57 = load ptr, ptr %28, align 8, !tbaa !513
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !493
  %64 = zext i8 %63 to i32
  %65 = tail call i32 @get_mode_alignment(i32 noundef %60) #22
  %66 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !513
  %67 = getelementptr inbounds i32, ptr %66, i64 %5
  %68 = load i32, ptr %67, align 4, !tbaa !527
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %64)
  %70 = shl i32 %68, 3
  %71 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73, !prof !794

73:                                               ; preds = %56
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %0) #22
  %75 = icmp eq i8 %2, 0
  br i1 %75, label %76, label %79, !prof !795

76:                                               ; preds = %73
  %77 = tail call ptr @ira_reuse_stack_slot(i32 noundef %0, i32 noundef %64, i32 noundef %69) #22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %152, !prof !796

79:                                               ; preds = %56, %73, %76
  %80 = icmp eq i32 %1, -1
  br i1 %80, label %86, label %81, !prof !797

81:                                               ; preds = %79
  %82 = icmp eq i8 %2, 0
  %83 = load i8, ptr @ira_conflicts_p, align 1
  %84 = icmp ne i8 %83, 0
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %98, !prof !798

86:                                               ; preds = %81, %79
  %87 = zext i32 %69 to i64
  %88 = icmp ugt i32 %70, %65
  %89 = icmp ugt i32 %68, %64
  %90 = select i1 %88, i1 true, i1 %89, !prof !799
  %91 = sext i1 %90 to i32
  %92 = tail call ptr @assign_stack_local(i32 noundef %60, i64 noundef %87, i32 noundef %91) #22
  %93 = icmp eq i8 %2, 0
  %94 = load i8, ptr @ira_conflicts_p, align 1
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %152, !prof !800

97:                                               ; preds = %86
  tail call void @ira_mark_new_stack_slot(ptr noundef %92, i32 noundef %0, i32 noundef %69) #22
  br label %152

98:                                               ; preds = %81
  %99 = sext i32 %1 to i64
  %100 = getelementptr inbounds [53 x ptr], ptr @spill_stack_slot, i64 0, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !513
  %102 = icmp eq ptr %101, null
  br i1 %102, label %141, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds [53 x i32], ptr @spill_stack_slot_width, i64 0, i64 %99
  %105 = load i32, ptr %104, align 4, !tbaa !527
  %106 = icmp ult i32 %105, %69
  %107 = load i32, ptr %101, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  br i1 %106, label %125, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %113 = load i8, ptr %112, align 1, !tbaa !493
  %114 = icmp ult i8 %113, %63
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !493
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mem_attrs, ptr %117, i64 0, i32 4
  %121 = load i32, ptr %120, align 4, !tbaa !801
  br label %122

122:                                              ; preds = %115, %119
  %123 = phi i32 [ %121, %119 ], [ 8, %115 ]
  %124 = icmp ult i32 %123, %70
  br i1 %124, label %125, label %152

125:                                              ; preds = %103, %122, %111
  %126 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %127 = load i8, ptr %126, align 1, !tbaa !493
  %128 = icmp ugt i8 %127, %63
  %129 = select i1 %128, i32 %109, i32 %60
  %130 = tail call i32 @llvm.umax.i32(i32 %105, i32 %69)
  %131 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !493
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = icmp eq i32 %70, 0
  %136 = select i1 %135, i32 8, i32 %70
  br label %141

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.mem_attrs, ptr %132, i64 0, i32 4
  %139 = load i32, ptr %138, align 4, !tbaa !801
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
  store ptr %150, ptr %100, align 8, !tbaa !513
  %151 = getelementptr inbounds [53 x i32], ptr @spill_stack_slot_width, i64 0, i64 %99
  store i32 %143, ptr %151, align 4, !tbaa !527
  br label %152

152:                                              ; preds = %122, %86, %97, %141, %76
  %153 = phi ptr [ %77, %76 ], [ %150, %141 ], [ %92, %97 ], [ %92, %86 ], [ %101, %122 ]
  %154 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %155 = getelementptr inbounds ptr, ptr %154, i64 %5
  %156 = load ptr, ptr %155, align 8, !tbaa !513
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = tail call ptr @adjust_address_1(ptr noundef %153, i32 noundef %159, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  tail call void @set_mem_attrs_for_spill(ptr noundef %160) #22
  %161 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %162 = getelementptr inbounds ptr, ptr %161, i64 %5
  store ptr %160, ptr %162, align 8, !tbaa !513
  br label %163

163:                                              ; preds = %9, %3, %152, %51, %46, %36, %33, %13
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mark_not_eliminable(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #14 !prof !802 !PGOFuncName !803 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10, !prof !804

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !513
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %54, label %14, !prof !805

14:                                               ; preds = %10
  %15 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %16 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  br label %17

17:                                               ; preds = %14, %50
  %18 = phi i64 [ 0, %14 ], [ %52, %50 ]
  %19 = phi i32 [ %16, %14 ], [ %51, %50 ]
  %20 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %18, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !614
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %23, !prof !806

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %18, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !782
  %26 = icmp eq ptr %11, %25
  br i1 %26, label %27, label %50, !prof !807

27:                                               ; preds = %23
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !493
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 49
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !493
  %40 = icmp eq ptr %39, %11
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !493
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %37, %31, %27
  store i32 0, ptr %20, align 8, !tbaa !614
  %48 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %18, i32 4
  store i32 0, ptr %48, align 4, !tbaa !779
  %49 = add nsw i32 %19, -1
  store i32 %49, ptr @num_eliminable, align 4, !tbaa !527
  br label %50

50:                                               ; preds = %17, %23, %41, %47
  %51 = phi i32 [ %19, %17 ], [ %19, %23 ], [ %19, %41 ], [ %49, %47 ]
  %52 = add nuw nsw i64 %18, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %17, !prof !808, !llvm.loop !809

54:                                               ; preds = %50, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_fix_stack_asms() unnamed_addr #0 !prof !567 !PGOFuncName !810 {
  %1 = alloca [30 x ptr], align 16
  %2 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #24
  %3 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !513
  %4 = icmp eq ptr %3, null
  br i1 %4, label %128, label %5, !prof !584

5:                                                ; preds = %0, %125
  %6 = phi ptr [ %126, %125 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.insn_chain, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !811
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %125, !prof !812

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !493
  %16 = call i32 @asm_noperands(ptr noundef %15) #22
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %125, label %18, !prof !813

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !tbaa !811
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !493
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %125

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !493
  %28 = load i32, ptr %27, align 8, !tbaa !755
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %54
  %33 = phi i64 [ 0, %30 ], [ %56, %54 ]
  %34 = phi i64 [ 0, %30 ], [ %55, %54 ]
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !513
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 25
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !493
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
  br i1 %57, label %58, label %32, !llvm.loop !814

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
  %74 = load ptr, ptr %73, align 8, !tbaa !513
  br label %75

75:                                               ; preds = %106, %70
  %76 = phi i64 [ %87, %106 ], [ %72, %70 ]
  %77 = phi ptr [ %107, %106 ], [ %74, %70 ]
  br label %78

78:                                               ; preds = %75, %102
  %79 = phi ptr [ %105, %102 ], [ %77, %75 ]
  %80 = phi i32 [ %103, %102 ], [ 0, %75 ]
  %81 = load i8, ptr %79, align 1, !tbaa !493
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
  %86 = load i64, ptr %85, align 8, !tbaa !545
  %87 = or i64 %86, %76
  %88 = getelementptr inbounds i8, ptr %79, i64 1
  br i1 %83, label %89, label %106

89:                                               ; preds = %82, %89
  %90 = phi ptr [ %91, %89 ], [ %88, %82 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load i8, ptr %90, align 1, !tbaa !493
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
  %101 = load i32, ptr %100, align 4, !tbaa !527
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
  br i1 %112, label %65, label %70, !llvm.loop !815

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
  br i1 %124, label %125, label %113, !llvm.loop !816

125:                                              ; preds = %122, %5, %18, %13
  %126 = load ptr, ptr %6, align 8, !tbaa !513
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %5, !prof !817, !llvm.loop !818

128:                                              ; preds = %125, %0
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spill_hard_reg(i32 noundef %0) unnamed_addr #0 !prof !567 !PGOFuncName !819 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw i64 1, %2
  %4 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !545
  %5 = or i64 %4, %3
  store i64 %5, ptr @bad_spill_regs_global, align 8, !tbaa !545
  tail call void @df_set_regs_ever_live(i32 noundef %0, i8 noundef zeroext 1) #22
  %6 = load i32, ptr @max_regno, align 4, !tbaa !527
  %7 = icmp sgt i32 %6, 53
  br i1 %7, label %8, label %40, !prof !570

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  br label %10

10:                                               ; preds = %8, %34
  %11 = phi i32 [ %6, %8 ], [ %35, %34 ]
  %12 = phi ptr [ %9, %8 ], [ %36, %34 ]
  %13 = phi i64 [ 53, %8 ], [ %37, %34 ]
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !528
  %16 = sext i16 %15 to i32
  %17 = icmp slt i16 %15, 0
  %18 = icmp ugt i32 %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %34, label %20, !prof !820

20:                                               ; preds = %10
  %21 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %22 = getelementptr inbounds ptr, ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !513
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = tail call fastcc i32 @end_hard_regno(i32 noundef %26, i32 noundef %16) #23
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %29, label %34, !prof !821

29:                                               ; preds = %20
  %30 = trunc i64 %13 to i32
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %30) #22
  %32 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %33 = load i32, ptr @max_regno, align 4, !tbaa !527
  br label %34

34:                                               ; preds = %10, %20, %29
  %35 = phi i32 [ %11, %10 ], [ %11, %20 ], [ %33, %29 ]
  %36 = phi ptr [ %12, %10 ], [ %12, %20 ], [ %32, %29 ]
  %37 = add nuw nsw i64 %13, 1
  %38 = sext i32 %35 to i64
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %10, label %40, !prof !571, !llvm.loop !822

40:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @finish_spills(i32 noundef %0) unnamed_addr #0 !prof !823 !PGOFuncName !824 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  store i32 0, ptr @n_spills, align 4, !tbaa !527
  %6 = load i64, ptr @used_spill_regs, align 8, !tbaa !545
  br label %7

7:                                                ; preds = %1, %34
  %8 = phi i64 [ %6, %1 ], [ %35, %34 ]
  %9 = phi i64 [ 0, %1 ], [ %37, %34 ]
  %10 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %11 = shl nuw nsw i64 1, %9
  %12 = and i64 %8, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %32, label %14, !prof !825

14:                                               ; preds = %7
  %15 = load i32, ptr @n_spills, align 4, !tbaa !527
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %9
  store i16 %16, ptr %17, align 2, !tbaa !528
  %18 = trunc i64 %9 to i32
  %19 = trunc i64 %9 to i16
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr @n_spills, align 4, !tbaa !527
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %21
  store i16 %19, ptr %22, align 2, !tbaa !528
  %23 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !826

25:                                               ; preds = %14
  %26 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %18) #22
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 1, i32 %10, !prof !827
  br label %29

29:                                               ; preds = %25, %14
  %30 = phi i32 [ %10, %14 ], [ %28, %25 ]
  tail call void @df_set_regs_ever_live(i32 noundef %18, i8 noundef zeroext 1) #22
  %31 = load i64, ptr @used_spill_regs, align 8, !tbaa !545
  br label %34

32:                                               ; preds = %7
  %33 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %9
  store i16 -1, ptr %33, align 2, !tbaa !528
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi i64 [ %31, %29 ], [ %8, %32 ]
  %36 = phi i32 [ %30, %29 ], [ %10, %32 ]
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, 53
  br i1 %38, label %39, label %7, !prof !828, !llvm.loop !829

39:                                               ; preds = %34
  store i32 53, ptr %2, align 4, !tbaa !527
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull @spilled_pseudos, i32 noundef 53, ptr noundef nonnull %2) #23
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %41 = icmp eq i8 %40, 0
  %42 = load i8, ptr @ira_conflicts_p, align 1
  br i1 %41, label %85, label %43, !prof !830

43:                                               ; preds = %39
  %44 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  br label %45

45:                                               ; preds = %43, %78
  %46 = phi ptr [ %79, %78 ], [ %44, %43 ]
  %47 = phi i8 [ %80, %78 ], [ %42, %43 ]
  %48 = phi i8 [ %81, %78 ], [ %42, %43 ]
  %49 = phi i32 [ %82, %78 ], [ %36, %43 ]
  %50 = icmp eq i8 %48, 0
  %51 = load i32, ptr %2, align 4, !tbaa !527
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %46, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !528
  %55 = icmp sgt i16 %54, -1
  br i1 %50, label %57, label %56, !prof !831

56:                                               ; preds = %45
  br i1 %55, label %62, label %78, !prof !832

57:                                               ; preds = %45
  br i1 %55, label %62, label %58, !prof !833

58:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3991, ptr noundef nonnull @.str.2) #22
  %59 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %60 = getelementptr inbounds i16, ptr %59, i64 %52
  %61 = load i16, ptr %60, align 2, !tbaa !528
  br label %62

62:                                               ; preds = %56, %57, %58
  %63 = phi ptr [ %46, %57 ], [ %59, %58 ], [ %46, %56 ]
  %64 = phi i16 [ %54, %57 ], [ %61, %58 ], [ %54, %56 ]
  %65 = getelementptr inbounds i16, ptr %63, i64 %52
  %66 = sext i16 %64 to i64
  %67 = and i64 %66, 4294967295
  %68 = shl nuw i64 1, %67
  %69 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !513
  %70 = getelementptr inbounds i64, ptr %69, i64 %52
  %71 = load i64, ptr %70, align 8, !tbaa !545
  %72 = or i64 %68, %71
  store i64 %72, ptr %70, align 8, !tbaa !545
  store i16 -1, ptr %65, align 2, !tbaa !528
  %73 = load i8, ptr @ira_conflicts_p, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75, !prof !834

75:                                               ; preds = %62
  tail call void @ira_mark_allocation_change(i32 noundef %51) #22
  %76 = load i8, ptr @ira_conflicts_p, align 1
  %77 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  br label %78

78:                                               ; preds = %62, %75, %56
  %79 = phi ptr [ %46, %56 ], [ %77, %75 ], [ %63, %62 ]
  %80 = phi i8 [ %47, %56 ], [ %76, %75 ], [ 0, %62 ]
  %81 = phi i8 [ %48, %56 ], [ %76, %75 ], [ 0, %62 ]
  %82 = phi i32 [ %49, %56 ], [ 1, %75 ], [ 1, %62 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %45, !prof !835, !llvm.loop !836

85:                                               ; preds = %78, %39
  %86 = phi i8 [ %42, %39 ], [ %80, %78 ]
  %87 = phi i32 [ %36, %39 ], [ %82, %78 ]
  %88 = icmp ne i32 %0, 0
  %89 = icmp ne i8 %86, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %183, !prof !837

91:                                               ; preds = %85
  %92 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !513
  %93 = load i32, ptr @max_regno, align 4, !tbaa !527
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %92, i8 0, i64 %95, i1 false)
  %96 = load ptr, ptr @insns_need_reload, align 8, !tbaa !513
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %104, !prof !830

98:                                               ; preds = %135, %91
  %99 = load i32, ptr @max_regno, align 4, !tbaa !527
  %100 = icmp ugt i32 %99, 53
  br i1 %100, label %101, label %173, !prof !838

101:                                              ; preds = %98
  %102 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !513
  %103 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  br label %139

104:                                              ; preds = %91, %135
  %105 = phi ptr [ %137, %135 ], [ %96, %91 ]
  %106 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %106, i32 noundef 53, ptr noundef nonnull %2) #23
  %107 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %120, label %109, !prof !839

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 10
  br label %111

111:                                              ; preds = %109, %111
  %112 = load i64, ptr %110, align 8, !tbaa !840
  %113 = load i32, ptr %2, align 4, !tbaa !527
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, ptr %92, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !545
  %117 = or i64 %116, %112
  store i64 %117, ptr %115, align 8, !tbaa !545
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %111, !prof !841, !llvm.loop !842

120:                                              ; preds = %111, %104
  %121 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %121, i32 noundef 53, ptr noundef nonnull %2) #23
  %122 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %135, label %124, !prof !843

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 10
  br label %126

126:                                              ; preds = %124, %126
  %127 = load i64, ptr %125, align 8, !tbaa !840
  %128 = load i32, ptr %2, align 4, !tbaa !527
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, ptr %92, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !545
  %132 = or i64 %131, %127
  store i64 %132, ptr %130, align 8, !tbaa !545
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %133 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %126, !prof !844, !llvm.loop !845

135:                                              ; preds = %126, %120
  %136 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !513
  %138 = icmp eq ptr %137, null
  br i1 %138, label %98, label %104, !prof !846, !llvm.loop !847

139:                                              ; preds = %101, %162
  %140 = phi ptr [ %103, %101 ], [ %163, %162 ]
  %141 = phi ptr [ %102, %101 ], [ %164, %162 ]
  %142 = phi i64 [ 53, %101 ], [ %166, %162 ]
  %143 = phi i32 [ 0, %101 ], [ %165, %162 ]
  %144 = getelementptr inbounds i16, ptr %141, i64 %142
  %145 = load i16, ptr %144, align 2, !tbaa !528
  %146 = getelementptr inbounds i16, ptr %140, i64 %142
  %147 = load i16, ptr %146, align 2, !tbaa !528
  %148 = icmp eq i16 %145, %147
  br i1 %148, label %162, label %149, !prof !848

149:                                              ; preds = %139
  %150 = icmp slt i16 %147, 0
  br i1 %150, label %151, label %157, !prof !849

151:                                              ; preds = %149
  %152 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !513
  %153 = add i32 %143, 1
  %154 = zext i32 %143 to i64
  %155 = getelementptr inbounds i32, ptr %152, i64 %154
  %156 = trunc i64 %142 to i32
  store i32 %156, ptr %155, align 4, !tbaa !527
  br label %162

157:                                              ; preds = %149
  %158 = trunc i64 %142 to i32
  %159 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %158) #22
  %160 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !513
  %161 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  br label %162

162:                                              ; preds = %139, %157, %151
  %163 = phi ptr [ %140, %151 ], [ %161, %157 ], [ %140, %139 ]
  %164 = phi ptr [ %141, %151 ], [ %160, %157 ], [ %141, %139 ]
  %165 = phi i32 [ %153, %151 ], [ %143, %157 ], [ %143, %139 ]
  %166 = add nuw nsw i64 %142, 1
  %167 = load i32, ptr @max_regno, align 4, !tbaa !527
  %168 = zext i32 %167 to i64
  %169 = icmp ult i64 %166, %168
  br i1 %169, label %139, label %170, !prof !850, !llvm.loop !851

170:                                              ; preds = %162
  %171 = trunc i64 %166 to i32
  %172 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !513
  br label %173

173:                                              ; preds = %170, %98
  %174 = phi ptr [ %92, %98 ], [ %172, %170 ]
  %175 = phi i32 [ 53, %98 ], [ %171, %170 ]
  %176 = phi i32 [ 0, %98 ], [ %165, %170 ]
  store i32 %175, ptr %2, align 4, !tbaa !527
  %177 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !513
  %178 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !545
  %179 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !513
  %180 = tail call zeroext i8 @ira_reassign_pseudos(ptr noundef %177, i32 noundef %176, i64 noundef %178, ptr noundef %174, ptr noundef %179, ptr noundef nonnull @spilled_pseudos) #22
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, i32 %87, i32 1, !prof !852
  br label %183

183:                                              ; preds = %173, %85
  %184 = phi i32 [ %182, %173 ], [ %87, %85 ]
  %185 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !513
  %186 = icmp eq ptr %185, null
  br i1 %186, label %215, label %187, !prof !830

187:                                              ; preds = %183, %212
  %188 = phi ptr [ %213, %212 ], [ %185, %183 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %189 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %196, !prof !853

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
  br i1 %200, label %212, label %201, !prof !854

201:                                              ; preds = %196
  store i64 0, ptr %4, align 8, !tbaa !545
  %202 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %202) #22
  store i64 0, ptr %5, align 8, !tbaa !545
  %203 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %5, ptr noundef nonnull %203) #22
  %204 = load i64, ptr %5, align 8, !tbaa !545
  %205 = load i64, ptr %4, align 8, !tbaa !545
  %206 = or i64 %205, %204
  store i64 %206, ptr %4, align 8, !tbaa !545
  call void @compute_use_by_pseudos(ptr noundef nonnull %4, ptr noundef nonnull %202) #23
  call void @compute_use_by_pseudos(ptr noundef nonnull %4, ptr noundef nonnull %203) #23
  %207 = load i64, ptr %4, align 8, !tbaa !545
  %208 = xor i64 %207, -1
  %209 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 10
  %210 = load i64, ptr @used_spill_regs, align 8, !tbaa !545
  %211 = and i64 %210, %208
  store i64 %211, ptr %209, align 8, !tbaa !840
  br label %212

212:                                              ; preds = %201, %196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %213 = load ptr, ptr %188, align 8, !tbaa !513
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %187, !prof !855, !llvm.loop !856

215:                                              ; preds = %212, %183
  call void @bitmap_clear(ptr noundef nonnull @changed_allocation_pseudos) #22
  %216 = load i32, ptr @max_regno, align 4, !tbaa !527
  %217 = icmp ugt i32 %216, 53
  br i1 %217, label %218, label %253, !prof !838

218:                                              ; preds = %215, %248
  %219 = phi i64 [ %249, %248 ], [ 53, %215 ]
  %220 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %221 = getelementptr inbounds i16, ptr %220, i64 %219
  %222 = load i16, ptr %221, align 2, !tbaa !528
  %223 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !513
  %224 = getelementptr inbounds i16, ptr %223, i64 %219
  %225 = load i16, ptr %224, align 2, !tbaa !528
  %226 = icmp eq i16 %225, %222
  br i1 %226, label %248, label %227, !prof !857

227:                                              ; preds = %218
  %228 = trunc i64 %219 to i32
  %229 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @changed_allocation_pseudos, i32 noundef %228) #22
  %230 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !513
  %231 = getelementptr inbounds i16, ptr %230, i64 %219
  %232 = load i16, ptr %231, align 2, !tbaa !528
  %233 = sext i16 %232 to i32
  call fastcc void @alter_reg(i32 noundef %228, i32 noundef %233, i8 noundef zeroext 0) #23
  %234 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !513
  %235 = getelementptr inbounds i16, ptr %234, i64 %219
  store i16 %222, ptr %235, align 2, !tbaa !528
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %237 = icmp eq ptr %236, null
  br i1 %237, label %248, label %238, !prof !858

238:                                              ; preds = %227
  %239 = icmp eq i16 %222, -1
  br i1 %239, label %240, label %242

240:                                              ; preds = %238
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.9, i32 noundef %228) #23
  br label %248

242:                                              ; preds = %238
  %243 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %244 = getelementptr inbounds i16, ptr %243, i64 %219
  %245 = load i16, ptr %244, align 2, !tbaa !528
  %246 = sext i16 %245 to i32
  %247 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.10, i32 noundef %228, i32 noundef %246) #23
  br label %248

248:                                              ; preds = %227, %242, %240, %218
  %249 = add nuw nsw i64 %219, 1
  %250 = load i32, ptr @max_regno, align 4, !tbaa !527
  %251 = zext i32 %250 to i64
  %252 = icmp ult i64 %249, %251
  br i1 %252, label %218, label %253, !prof !850, !llvm.loop !859

253:                                              ; preds = %248, %215
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %184
}

; Function Attrs: optsize
declare i64 @get_frame_size() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_initial_elim_offsets() unnamed_addr #0 !prof !860 !PGOFuncName !861 {
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi ptr [ %11, %2 ], [ %1, %0 ]
  %4 = load i32, ptr %3, align 8, !tbaa !612
  %5 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !655
  %7 = tail call i64 @ix86_initial_elimination_offset(i32 noundef %4, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 2
  store i64 %7, ptr %8, align 8, !tbaa !862
  %9 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 5
  store i64 %7, ptr %9, align 8, !tbaa !863
  %10 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 6
  store i64 %7, ptr %10, align 8, !tbaa !864
  %11 = getelementptr inbounds %struct.elim_table, ptr %3, i64 1
  %12 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %13 = getelementptr inbounds %struct.elim_table, ptr %12, i64 4
  %14 = icmp ult ptr %11, %13
  br i1 %14, label %2, label %15, !prof !865, !llvm.loop !866

15:                                               ; preds = %2
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !527
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_initial_label_offsets() unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %1 = load ptr, ptr @offsets_known_at, align 8, !tbaa !513
  %2 = load i32, ptr @num_labels, align 4, !tbaa !527
  %3 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %3, i1 false)
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !493
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !622

6:                                                ; preds = %0, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @set_label_offsets(ptr noundef nonnull %9, ptr noundef null, i32 noundef 1) #23
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !493
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !prof !497, !llvm.loop !869

16:                                               ; preds = %12, %0
  tail call void @for_each_eh_label(ptr noundef nonnull @set_initial_eh_label_offset) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @eliminate_regs(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !870 {
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
define internal fastcc void @calculate_needs_all_insns(i32 noundef %0) unnamed_addr #0 !prof !871 !PGOFuncName !872 {
  store i1 false, ptr @something_needs_elimination, align 4
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11, !prof !644

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20, !prof !873

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  store ptr %29, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38, !prof !644

37:                                               ; preds = %20
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %38

38:                                               ; preds = %20, %37
  %39 = phi ptr [ %29, %20 ], [ %33, %37 ]
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %15, ptr @reload_insn_firstobj, align 8, !tbaa !513
  %40 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !513
  %41 = icmp eq ptr %40, null
  br i1 %41, label %254, label %42, !prof !874

42:                                               ; preds = %38, %251
  %43 = phi ptr [ %252, %251 ], [ @insns_need_reload, %38 ]
  %44 = phi ptr [ %47, %251 ], [ %40, %38 ]
  %45 = getelementptr inbounds %struct.insn_chain, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !811
  %47 = load ptr, ptr %44, align 8, !tbaa !522
  %48 = getelementptr inbounds %struct.insn_chain, ptr %44, i64 0, i32 9
  store i32 0, ptr %48, align 8, !tbaa !875
  %49 = getelementptr inbounds %struct.insn_chain, ptr %44, i64 0, i32 5
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, -8
  store i8 %51, ptr %49, align 4
  %52 = load i32, ptr %46, align 8
  %53 = trunc i32 %52 to i16
  switch i16 %53, label %60 [
    i16 12, label %58
    i16 9, label %58
    i16 8, label %54
    i16 7, label %54
    i16 10, label %54
  ], !prof !876

54:                                               ; preds = %42, %42, %42
  %55 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !493
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !877

58:                                               ; preds = %42, %42, %54
  tail call fastcc void @set_label_offsets(ptr noundef nonnull %46, ptr noundef nonnull %46, i32 noundef 0) #23
  %59 = load i32, ptr %46, align 8
  br label %60

60:                                               ; preds = %42, %58, %54
  %61 = phi i32 [ %52, %42 ], [ %59, %58 ], [ %52, %54 ]
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -7
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %65, label %251, !prof !878

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !493
  %68 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !493
  %70 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !493
  %72 = load i32, ptr %67, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %78, label %75, !prof !879

75:                                               ; preds = %65
  %76 = tail call ptr @single_set_2(ptr noundef nonnull %46, ptr noundef nonnull %67) #22
  %77 = icmp eq ptr %76, null
  br i1 %77, label %109, label %78, !prof !880

78:                                               ; preds = %65, %75
  %79 = phi ptr [ %76, %75 ], [ %67, %65 ]
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !493
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %109, !prof !881

85:                                               ; preds = %78
  %86 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %87 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %81) #23
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i16, ptr %86, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !528
  %91 = icmp slt i16 %90, 0
  br i1 %91, label %92, label %109, !prof !882

92:                                               ; preds = %85
  %93 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %81) #23
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !513
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %104, !prof !883

99:                                               ; preds = %92
  %100 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !513
  %101 = getelementptr inbounds ptr, ptr %100, i64 %95
  %102 = load ptr, ptr %101, align 8, !tbaa !513
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104, !prof !884

104:                                              ; preds = %99, %92
  %105 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %106 = getelementptr inbounds ptr, ptr %105, i64 %95
  %107 = load ptr, ptr %106, align 8, !tbaa !513
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %251, !prof !885

109:                                              ; preds = %104, %99, %85, %78, %75
  %110 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115, !prof !886

112:                                              ; preds = %109
  %113 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !527
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112, %109
  %116 = tail call fastcc i32 @eliminate_regs_in_insn(ptr noundef nonnull %46, i32 noundef 0) #23
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi i32 [ %116, %115 ], [ 0, %112 ]
  %119 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !493
  %120 = sext i8 %119 to i32
  %121 = tail call i32 @find_reloads(ptr noundef nonnull %46, i32 noundef 0, i32 noundef %120, i32 noundef %0, ptr noundef nonnull @spill_reg_order) #22
  %122 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !527
  %123 = icmp ne i32 %122, 0
  %124 = load i32, ptr @n_reloads, align 4
  %125 = icmp sgt i32 %124, 1
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %205, !prof !887

127:                                              ; preds = %117
  %128 = load i32, ptr %46, align 8
  %129 = and i32 %128, 65535
  %130 = add nsw i32 %129, -7
  %131 = icmp ult i32 %130, 4
  br i1 %131, label %132, label %205, !prof !888

132:                                              ; preds = %127
  %133 = load ptr, ptr %66, align 8, !tbaa !493
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 23
  br i1 %136, label %140, label %137, !prof !889

137:                                              ; preds = %132
  %138 = tail call ptr @single_set_2(ptr noundef nonnull %46, ptr noundef nonnull %133) #22
  %139 = icmp eq ptr %138, null
  br i1 %139, label %205, label %140, !prof !880

140:                                              ; preds = %132, %137
  %141 = phi ptr [ %138, %137 ], [ %133, %132 ]
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %143 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !493
  %145 = load ptr, ptr %142, align 8, !tbaa !493
  %146 = icmp eq ptr %144, %145
  %147 = load i32, ptr %144, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 37
  br i1 %146, label %150, label %154, !prof !890

150:                                              ; preds = %140
  br i1 %149, label %151, label %205, !prof !891

151:                                              ; preds = %150
  %152 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %144) #23
  %153 = icmp ugt i32 %152, 52
  br i1 %153, label %186, label %155

154:                                              ; preds = %140
  br i1 %149, label %155, label %205, !prof !892

155:                                              ; preds = %151, %154
  %156 = load i32, ptr %145, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 37
  br i1 %158, label %159, label %205, !prof !893

159:                                              ; preds = %155
  %160 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %161 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %144) #23
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i16, ptr %160, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !528
  %165 = icmp slt i16 %164, 0
  br i1 %165, label %166, label %205, !prof !894

166:                                              ; preds = %159
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %145) #23
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i16, ptr %160, i64 %168
  %170 = load i16, ptr %169, align 2, !tbaa !528
  %171 = icmp slt i16 %170, 0
  br i1 %171, label %172, label %205, !prof !894

172:                                              ; preds = %166
  %173 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %174 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %144) #23
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds ptr, ptr %173, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !513
  %178 = icmp eq ptr %177, null
  br i1 %178, label %205, label %179, !prof !895

179:                                              ; preds = %172
  %180 = getelementptr inbounds ptr, ptr %173, i64 %168
  %181 = load ptr, ptr %180, align 8, !tbaa !513
  %182 = icmp eq ptr %181, null
  br i1 %182, label %205, label %183, !prof !896

183:                                              ; preds = %179
  %184 = tail call i32 @rtx_equal_p(ptr noundef nonnull %177, ptr noundef nonnull %181) #22
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %205, label %186, !prof !897

186:                                              ; preds = %183, %151
  %187 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %194, label %189, !prof !898

189:                                              ; preds = %186
  %190 = load ptr, ptr %142, align 8, !tbaa !493
  %191 = tail call fastcc i32 @rhs_regno(ptr noundef %190) #23
  %192 = load ptr, ptr %143, align 8, !tbaa !493
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef %192) #23
  tail call void @ira_mark_memory_move_deletion(i32 noundef %191, i32 noundef %193) #22
  br label %194

194:                                              ; preds = %189, %186
  %195 = tail call ptr @delete_insn(ptr noundef nonnull %46) #22
  %196 = getelementptr inbounds %struct.insn_chain, ptr %44, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !899
  %198 = icmp eq ptr %197, null
  %199 = select i1 %198, ptr @reload_insn_chain, ptr %197, !prof !898
  store ptr %47, ptr %199, align 8, !tbaa !513
  %200 = icmp eq ptr %47, null
  br i1 %200, label %203, label %201, !prof !898

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.insn_chain, ptr %47, i64 0, i32 1
  store ptr %197, ptr %202, align 8, !tbaa !899
  br label %203

203:                                              ; preds = %201, %194
  %204 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !513
  store ptr %204, ptr %44, align 8, !tbaa !522
  store ptr %44, ptr @unused_insn_chains, align 8, !tbaa !513
  br label %251

205:                                              ; preds = %150, %127, %183, %179, %172, %166, %159, %155, %154, %137, %117
  %206 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208, !prof !900

208:                                              ; preds = %205
  tail call fastcc void @update_eliminable_offsets() #23
  br label %209

209:                                              ; preds = %208, %205
  %210 = trunc i32 %118 to i8
  %211 = load i8, ptr %49, align 4
  %212 = shl i8 %210, 2
  %213 = and i8 %212, 4
  %214 = and i8 %211, -8
  %215 = or disjoint i8 %214, %213
  %216 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %217 = icmp sgt i32 %216, 0
  %218 = zext i1 %217 to i8
  %219 = trunc i32 %121 to i8
  %220 = shl i8 %219, 1
  %221 = and i8 %220, 2
  %222 = or disjoint i8 %215, %221
  %223 = or disjoint i8 %222, %218
  store i8 %223, ptr %49, align 4
  %224 = icmp eq i32 %118, 0
  br i1 %224, label %244, label %225, !prof !901

225:                                              ; preds = %209
  %226 = load ptr, ptr @reload_insn_firstobj, align 8, !tbaa !513
  %227 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %228 = ptrtoint ptr %226 to i64
  %229 = ptrtoint ptr %227 to i64
  %230 = sub i64 %228, %229
  store i64 %230, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %232, label %239, !prof !902

232:                                              ; preds = %225
  %233 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %234 = ptrtoint ptr %233 to i64
  %235 = sub i64 %234, %229
  %236 = icmp slt i64 %230, %235
  br i1 %236, label %237, label %239, !prof !903

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %227, i64 %230
  store ptr %238, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %238, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %242

239:                                              ; preds = %232, %225
  %240 = getelementptr inbounds i8, ptr %227, i64 %230
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %240) #22
  %241 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %242

242:                                              ; preds = %239, %237
  %243 = phi i32 [ %241, %239 ], [ %216, %237 ]
  store ptr %67, ptr %66, align 8, !tbaa !493
  store i32 %69, ptr %68, align 8, !tbaa !493
  store ptr %71, ptr %70, align 8, !tbaa !493
  store i1 true, ptr @something_needs_elimination, align 4
  br label %244

244:                                              ; preds = %242, %209
  %245 = phi i32 [ %243, %242 ], [ %216, %209 ]
  %246 = load i32, ptr @something_needs_operands_changed, align 4, !tbaa !527
  %247 = or i32 %246, %121
  store i32 %247, ptr @something_needs_operands_changed, align 4, !tbaa !527
  %248 = icmp eq i32 %245, 0
  br i1 %248, label %251, label %249, !prof !904

249:                                              ; preds = %244
  tail call fastcc void @copy_reloads(ptr noundef nonnull %44) #23
  store ptr %44, ptr %43, align 8, !tbaa !513
  %250 = getelementptr inbounds %struct.insn_chain, ptr %44, i64 0, i32 2
  br label %251

251:                                              ; preds = %203, %104, %249, %244, %60
  %252 = phi ptr [ %43, %60 ], [ %43, %104 ], [ %250, %249 ], [ %43, %244 ], [ %43, %203 ]
  %253 = icmp eq ptr %47, null
  br i1 %253, label %254, label %42, !prof !905, !llvm.loop !906

254:                                              ; preds = %251, %38
  %255 = phi ptr [ @insns_need_reload, %38 ], [ %252, %251 ]
  store ptr null, ptr %255, align 8, !tbaa !513
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @verify_initial_elim_offsets() unnamed_addr #0 !prof !907 !PGOFuncName !908 {
  %1 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3, !prof !909

3:                                                ; preds = %0
  %4 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %14, %5 ]
  %7 = load i32, ptr %6, align 8, !tbaa !612
  %8 = getelementptr inbounds %struct.elim_table, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !655
  %10 = tail call i64 @ix86_initial_elimination_offset(i32 noundef %7, i32 noundef %9) #22
  %11 = getelementptr inbounds %struct.elim_table, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !862
  %13 = icmp eq i64 %10, %12
  %14 = getelementptr inbounds %struct.elim_table, ptr %6, i64 1
  %15 = load ptr, ptr @reg_eliminate, align 8
  %16 = getelementptr inbounds %struct.elim_table, ptr %15, i64 4
  %17 = icmp ult ptr %14, %16
  %18 = select i1 %13, i1 %17, i1 false
  br i1 %18, label %5, label %19, !prof !910, !llvm.loop !911

19:                                               ; preds = %5
  %20 = zext i1 %13 to i8
  br label %21

21:                                               ; preds = %19, %0
  %22 = phi i8 [ 1, %0 ], [ %20, %19 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_eliminables(ptr nocapture noundef %0) unnamed_addr #0 !prof !871 !PGOFuncName !912 {
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %3 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %6 = load i32, ptr %5, align 8, !tbaa !612
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %14, !prof !913

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !914
  %10 = tail call zeroext i8 %9() #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, ptr %5, align 8, !tbaa !612
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ %6, %4 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !776
  %17 = getelementptr inbounds %struct.elim_table, ptr %5, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !655
  %19 = tail call zeroext i8 %16(i32 noundef %15, i32 noundef %18) #22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !915

21:                                               ; preds = %14, %8
  %22 = getelementptr inbounds %struct.elim_table, ptr %5, i64 0, i32 3
  store i32 0, ptr %22, align 8, !tbaa !614
  br label %23

23:                                               ; preds = %14, %21
  %24 = getelementptr inbounds %struct.elim_table, ptr %5, i64 1
  %25 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %26 = getelementptr inbounds %struct.elim_table, ptr %25, i64 4
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %4, label %28, !prof !916, !llvm.loop !917

28:                                               ; preds = %23, %75
  %29 = phi ptr [ %77, %75 ], [ %25, %23 ]
  %30 = phi i64 [ %76, %75 ], [ 0, %23 ]
  %31 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !614
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %75, !prof !915

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !779
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %75, label %38, !prof !918

38:                                               ; preds = %34
  %39 = load i32, ptr %29, align 8, !tbaa !612
  br label %40

40:                                               ; preds = %38, %52
  %41 = phi ptr [ %25, %38 ], [ %54, %52 ]
  %42 = phi i64 [ 0, %38 ], [ %53, %52 ]
  %43 = load i32, ptr %41, align 8, !tbaa !612
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.elim_table, ptr %41, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !614
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.elim_table, ptr %41, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !655
  br label %56

52:                                               ; preds = %40, %45
  %53 = add nuw nsw i64 %42, 64
  %54 = getelementptr inbounds i8, ptr %25, i64 %53
  %55 = icmp ult i64 %42, 192
  br i1 %55, label %40, label %56, !llvm.loop !919

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ -1, %52 ]
  %58 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 1
  br label %59

59:                                               ; preds = %56, %71
  %60 = phi ptr [ %25, %56 ], [ %73, %71 ]
  %61 = phi i64 [ 0, %56 ], [ %72, %71 ]
  %62 = load i32, ptr %60, align 8, !tbaa !612
  %63 = icmp eq i32 %62, %57
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.elim_table, ptr %60, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !655
  %67 = load i32, ptr %58, align 4, !tbaa !655
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.elim_table, ptr %60, i64 0, i32 3
  store i32 0, ptr %70, align 8, !tbaa !614
  br label %71

71:                                               ; preds = %59, %64, %69
  %72 = add nuw nsw i64 %61, 64
  %73 = getelementptr inbounds i8, ptr %25, i64 %72
  %74 = icmp ult i64 %61, 192
  br i1 %74, label %59, label %75, !llvm.loop !920

75:                                               ; preds = %71, %34, %28
  %76 = add nuw nsw i64 %30, 64
  %77 = getelementptr inbounds i8, ptr %25, i64 %76
  %78 = icmp ult i64 %30, 192
  br i1 %78, label %28, label %79, !prof !921, !llvm.loop !922

79:                                               ; preds = %75
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %80 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %81 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  br label %82

82:                                               ; preds = %79, %111
  %83 = phi i8 [ 1, %79 ], [ %112, %111 ]
  %84 = phi ptr [ %25, %79 ], [ %115, %111 ]
  %85 = phi i64 [ 0, %79 ], [ %114, %111 ]
  %86 = phi i32 [ %80, %79 ], [ %113, %111 ]
  %87 = getelementptr inbounds %struct.elim_table, ptr %84, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !614
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90, !prof !915

90:                                               ; preds = %82
  %91 = load i32, ptr %84, align 8, !tbaa !612
  %92 = icmp eq i32 %91, 20
  br i1 %92, label %93, label %111, !prof !923

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.elim_table, ptr %84, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !655
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %111, label %97, !prof !924

97:                                               ; preds = %93
  %98 = icmp eq i8 %81, 0
  br i1 %98, label %99, label %111, !prof !501

99:                                               ; preds = %97
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  br label %111

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.elim_table, ptr %84, i64 0, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !779
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104, !prof !918

104:                                              ; preds = %100
  store i32 0, ptr %101, align 4, !tbaa !779
  %105 = load i32, ptr %84, align 8, !tbaa !612
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = load i64, ptr %0, align 8, !tbaa !545
  %109 = or i64 %107, %108
  store i64 %109, ptr %0, align 8, !tbaa !545
  %110 = add nsw i32 %86, -1
  store i32 %110, ptr @num_eliminable, align 4, !tbaa !527
  br label %111

111:                                              ; preds = %90, %93, %97, %99, %100, %104
  %112 = phi i8 [ %83, %90 ], [ %83, %93 ], [ %83, %97 ], [ 0, %99 ], [ %83, %100 ], [ %83, %104 ]
  %113 = phi i32 [ %86, %90 ], [ %86, %93 ], [ %86, %97 ], [ %86, %99 ], [ %86, %100 ], [ %110, %104 ]
  %114 = add nuw nsw i64 %85, 64
  %115 = getelementptr inbounds i8, ptr %25, i64 %114
  %116 = icmp ult i64 %85, 192
  br i1 %116, label %82, label %117, !prof !921, !llvm.loop !925

117:                                              ; preds = %111
  %118 = icmp eq i8 %112, 0
  %119 = icmp ne i8 %2, 0
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %124, label %121, !prof !926

121:                                              ; preds = %117
  %122 = load i64, ptr %0, align 8, !tbaa !545
  %123 = or i64 %122, 64
  store i64 %123, ptr %0, align 8, !tbaa !545
  br label %124

124:                                              ; preds = %121, %117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_reload_regs() unnamed_addr #0 !prof !871 !PGOFuncName !927 {
  %1 = load ptr, ptr @insns_need_reload, align 8, !tbaa !513
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !874

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  tail call fastcc void @find_reload_regs(ptr noundef nonnull %4) #23
  %5 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !513
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !prof !928, !llvm.loop !929

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_caller_save_insns() unnamed_addr #0 !prof !930 !PGOFuncName !931 {
  %1 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !513
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3, !prof !932

3:                                                ; preds = %0, %28
  %4 = phi ptr [ %9, %28 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !522
  br i1 %8, label %29, label %10, !prof !933

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !811
  %13 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !513
  %14 = icmp eq ptr %4, %13
  br i1 %14, label %15, label %16, !prof !934

15:                                               ; preds = %10
  store ptr %9, ptr @reload_insn_chain, align 8, !tbaa !513
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call ptr @delete_insn(ptr noundef %12) #22
  %18 = icmp eq ptr %9, null
  %19 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !899
  br i1 %18, label %23, label %21, !prof !934

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !899
  br label %23

23:                                               ; preds = %16, %21
  %24 = icmp eq ptr %20, null
  br i1 %24, label %26, label %25, !prof !934

25:                                               ; preds = %23
  store ptr %9, ptr %20, align 8, !tbaa !522
  br label %26

26:                                               ; preds = %25, %23
  %27 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !513
  store ptr %27, ptr %4, align 8, !tbaa !522
  store ptr %4, ptr @unused_insn_chains, align 8, !tbaa !513
  br i1 %18, label %31, label %28, !prof !935

28:                                               ; preds = %26, %29
  br label %3, !llvm.loop !936

29:                                               ; preds = %3
  %30 = icmp eq ptr %9, null
  br i1 %30, label %31, label %28, !prof !937

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
define internal fastcc void @delete_dead_insn(ptr noundef %0) unnamed_addr #0 !prof !938 !PGOFuncName !939 {
  %2 = tail call ptr @prev_real_insn(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4, !prof !940

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !493
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 23
  br i1 %9, label %10, label %32, !prof !941

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !493
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %32, !prof !942

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !493
  %19 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %12, ptr noundef %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21, !prof !943

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %23 = tail call ptr @find_regno_note(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25, !prof !944

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !493
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !493
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
define internal fastcc void @reload_as_needed(i32 noundef %0) unnamed_addr #0 !prof !567 !PGOFuncName !945 {
  %2 = alloca %struct.bitmap_head_def, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_reg_rtx, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_reg_store, i8 0, i64 424, i1 false)
  %3 = load i32, ptr @max_regno, align 4, !tbaa !527
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #22
  store ptr %5, ptr @reg_last_reload_reg, align 8, !tbaa !513
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @reg_has_output_reload) #23
  store i64 0, ptr @reg_reloaded_valid, align 8, !tbaa !545
  tail call fastcc void @set_initial_elim_offsets() #23
  %6 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !513
  %7 = icmp eq ptr %6, null
  br i1 %7, label %154, label %8, !prof !584

8:                                                ; preds = %1, %151
  %9 = phi ptr [ %152, %151 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !811
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !493
  %14 = load i32, ptr %11, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %142 [
    i16 12, label %16
    i16 8, label %17
    i16 7, label %17
    i16 9, label %17
    i16 10, label %17
  ], !prof !946

16:                                               ; preds = %8
  call fastcc void @set_offsets_for_label(ptr noundef nonnull %11) #23
  br label %142

17:                                               ; preds = %8, %8, %8, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %2) #23
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !493
  call void @note_stores(ptr noundef %19, ptr noundef nonnull @forget_old_reloads_1, ptr noundef nonnull %2) #22
  %20 = load ptr, ptr %18, align 8, !tbaa !493
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %24, label %40, !prof !947

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !493
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 43
  br i1 %29, label %30, label %40, !prof !948

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !493
  %33 = lshr i32 %27, 16
  %34 = and i32 %33, 255
  %35 = call ptr @eliminate_regs(ptr noundef %32, i32 noundef %34, ptr noundef null) #23
  %36 = load ptr, ptr %18, align 8, !tbaa !493
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !493
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  store ptr %35, ptr %39, align 8, !tbaa !493
  br label %40

40:                                               ; preds = %17, %30, %24
  %41 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !949

43:                                               ; preds = %40
  %44 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !527
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51, !prof !950

51:                                               ; preds = %46
  %52 = call fastcc i32 @eliminate_regs_in_insn(ptr noundef nonnull %11, i32 noundef 1) #23
  %53 = load i32, ptr %11, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %57, !prof !951

56:                                               ; preds = %51
  call fastcc void @update_eliminable_offsets() #23
  call void @bitmap_clear(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  br label %151

57:                                               ; preds = %51, %46, %43
  %58 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 7
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63, !prof !952

62:                                               ; preds = %57
  store i32 0, ptr @n_reloads, align 4, !tbaa !527
  br label %114

63:                                               ; preds = %57
  call void @bitmap_clear(ptr noundef nonnull @reg_has_output_reload) #22
  store i64 0, ptr @reg_is_output_reload, align 8, !tbaa !545
  %64 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !493
  %65 = sext i8 %64 to i32
  %66 = call i32 @find_reloads(ptr noundef nonnull %11, i32 noundef 1, i32 noundef %65, i32 noundef %0, ptr noundef nonnull @spill_reg_order) #22
  %67 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %114, !prof !953

69:                                               ; preds = %63
  %70 = load ptr, ptr %12, align 8, !tbaa !493
  %71 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !493
  call fastcc void @choose_reload_regs(ptr noundef nonnull %9) #23
  call fastcc void @merge_assigned_reloads(ptr noundef nonnull %11) #23
  call fastcc void @emit_reload_insns(ptr noundef nonnull %9) #23
  call void @subst_reloads(ptr noundef nonnull %11) #22
  %73 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !527
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75, !prof !954

75:                                               ; preds = %69
  %76 = load i32, ptr %11, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call fastcc void @fixup_eh_region_note(ptr noundef nonnull %11, ptr noundef %72, ptr noundef %70) #23
  br label %80

80:                                               ; preds = %79, %75, %69
  %81 = load ptr, ptr %18, align 8, !tbaa !493
  %82 = call i32 @asm_noperands(ptr noundef %81) #22
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %114, !prof !955

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !493
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
  %98 = load ptr, ptr %97, align 8, !tbaa !493
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
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %11, ptr noundef nonnull @.str.18) #22
  %109 = call ptr @delete_insn(ptr noundef nonnull %89) #22
  br label %110

110:                                              ; preds = %91, %88, %96, %105, %108
  %111 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !493
  %113 = icmp eq ptr %112, %70
  br i1 %113, label %114, label %88, !llvm.loop !956

114:                                              ; preds = %110, %84, %62, %80, %63
  %115 = load i32, ptr @num_eliminable, align 4, !tbaa !527
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117, !prof !949

117:                                              ; preds = %114
  %118 = load i8, ptr %58, align 4
  %119 = and i8 %118, 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121, !prof !950

121:                                              ; preds = %117
  call fastcc void @update_eliminable_offsets() #23
  br label %122

122:                                              ; preds = %121, %117, %114
  call fastcc void @forget_marked_reloads(ptr noundef nonnull %2) #23
  call void @bitmap_clear(ptr noundef nonnull %2) #22
  %123 = load ptr, ptr %12, align 8, !tbaa !493
  %124 = icmp eq ptr %123, %13
  br i1 %124, label %141, label %125, !prof !957

125:                                              ; preds = %122, %137
  %126 = phi ptr [ %139, %137 ], [ %123, %122 ]
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %137, !prof !958

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !493
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 25
  br i1 %135, label %136, label %137, !prof !959

136:                                              ; preds = %130
  call void @note_stores(ptr noundef nonnull %132, ptr noundef nonnull @forget_old_reloads_1, ptr noundef null) #22
  br label %137

137:                                              ; preds = %125, %130, %136
  %138 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 2
  %139 = load ptr, ptr %138, align 8, !tbaa !493
  %140 = icmp eq ptr %139, %13
  br i1 %140, label %141, label %125, !prof !960, !llvm.loop !961

141:                                              ; preds = %137, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  br label %142

142:                                              ; preds = %141, %8, %16
  %143 = load i32, ptr %11, align 8
  %144 = trunc i32 %143 to i16
  switch i16 %144, label %151 [
    i16 12, label %145
    i16 10, label %146
  ], !prof !962

145:                                              ; preds = %142
  store i64 0, ptr @reg_reloaded_valid, align 8, !tbaa !545
  br label %151

146:                                              ; preds = %142
  %147 = load i64, ptr @call_used_reg_set, align 8, !tbaa !545
  %148 = xor i64 %147, -1
  %149 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %150 = and i64 %149, %148
  store i64 %150, ptr @reg_reloaded_valid, align 8, !tbaa !545
  br label %151

151:                                              ; preds = %145, %146, %142, %56
  %152 = load ptr, ptr %9, align 8, !tbaa !513
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %8, !prof !963, !llvm.loop !964

154:                                              ; preds = %151, %1
  %155 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
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
define internal fastcc void @replace_pseudos_in(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !965 !PGOFuncName !966 {
  %4 = load ptr, ptr %0, align 8, !tbaa !513
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6, !prof !967

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
  ], !prof !968

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #23
  %16 = icmp ult i32 %15, 53
  br i1 %16, label %101, label %17, !prof !969

17:                                               ; preds = %14
  %18 = tail call ptr @eliminate_regs(ptr noundef nonnull %11, i32 noundef %8, ptr noundef %2) #23
  %19 = load ptr, ptr %9, align 8, !tbaa !513
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  store ptr %18, ptr %9, align 8, !tbaa !513
  %22 = icmp eq ptr %18, null
  br i1 %22, label %101, label %10, !prof !970

23:                                               ; preds = %17
  %24 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %25 = zext i32 %15 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !513
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %99

29:                                               ; preds = %23
  %30 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %31 = getelementptr inbounds ptr, ptr %30, i64 %25
  %32 = load ptr, ptr %31, align 8, !tbaa !513
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !513
  %36 = getelementptr inbounds ptr, ptr %35, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !513
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %18, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef %42, ptr noundef nonnull %37) #22
  br label %99

44:                                               ; preds = %34
  %45 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %46 = getelementptr inbounds ptr, ptr %45, i64 %25
  %47 = load ptr, ptr %46, align 8, !tbaa !513
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
  %55 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %56 = getelementptr inbounds ptr, ptr %55, i64 %25
  %57 = load ptr, ptr %56, align 8, !tbaa !513
  br label %99

58:                                               ; preds = %10
  %59 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %60 = lshr i32 %12, 16
  %61 = and i32 %60, 255
  %62 = load ptr, ptr %59, align 8, !tbaa !513
  %63 = icmp eq ptr %62, null
  br i1 %63, label %101, label %6, !prof !971

64:                                               ; preds = %10
  %65 = and i32 %12, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !493
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %101, label %70, !prof !972

70:                                               ; preds = %64
  %71 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %66
  %72 = load ptr, ptr %71, align 8, !tbaa !513
  %73 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %74 = zext i8 %68 to i64
  br label %75

75:                                               ; preds = %70, %95
  %76 = phi i64 [ 0, %70 ], [ %96, %95 ]
  %77 = phi ptr [ %72, %70 ], [ %97, %95 ]
  %78 = load i8, ptr %77, align 1, !tbaa !493
  switch i8 %78, label %95 [
    i8 101, label %84
    i8 69, label %79
  ], !prof !973

79:                                               ; preds = %75
  %80 = getelementptr inbounds [1 x %union.rtunion_def], ptr %73, i64 0, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !493
  %82 = load i32, ptr %81, align 8, !tbaa !755
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
  %91 = load ptr, ptr %80, align 8, !tbaa !493
  %92 = load i32, ptr %91, align 8, !tbaa !755
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %86, label %95, !llvm.loop !974

95:                                               ; preds = %86, %79, %75, %84
  %96 = add nuw nsw i64 %76, 1
  %97 = getelementptr inbounds i8, ptr %77, i64 1
  %98 = icmp eq i64 %96, %74
  br i1 %98, label %101, label %75, !prof !975, !llvm.loop !976

99:                                               ; preds = %54, %51, %44, %29, %23, %39
  %100 = phi ptr [ %43, %39 ], [ %27, %23 ], [ %32, %29 ], [ %47, %44 ], [ %47, %51 ], [ %57, %54 ]
  store ptr %100, ptr %9, align 8, !tbaa !513
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
define internal fastcc void @VEC_rtx_gc_free() unnamed_addr #0 !prof !567 !PGOFuncName !977 {
  %1 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !513
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !568

3:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !513
  ret void
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_abnormal_edges() local_unnamed_addr #0 !prof !978 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !513
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !667
  %6 = load ptr, ptr %5, align 8, !tbaa !669
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !671
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !673
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %139, label %12, !prof !979

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
  store i32 0, ptr %2, align 8, !tbaa.struct !740
  store ptr %18, ptr %13, align 8, !tbaa.struct !741
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #23, !range !525
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %35, label %21, !prof !980

21:                                               ; preds = %14, %30
  %22 = load ptr, ptr %1, align 8, !tbaa !513
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !742
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 10
  %28 = icmp eq i32 %27, 10
  %29 = or i1 %26, %28
  br i1 %29, label %35, label %30, !prof !981

30:                                               ; preds = %21
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %1) #23, !range !525
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %21, !prof !982, !llvm.loop !983

35:                                               ; preds = %30, %21, %14
  %36 = load ptr, ptr %1, align 8, !tbaa !513
  %37 = icmp eq ptr %36, null
  br i1 %37, label %127, label %38, !prof !984

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !493
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !985
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %127, label %46

46:                                               ; preds = %38
  %47 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %42) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %46
  %50 = load ptr, ptr %39, align 8, !tbaa !493
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  br label %52

52:                                               ; preds = %64, %49
  %53 = phi ptr [ %51, %49 ], [ %65, %64 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !493
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
  %61 = load ptr, ptr %39, align 8, !tbaa !493
  %62 = load ptr, ptr %61, align 8, !tbaa !987
  %63 = icmp eq ptr %54, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %52, !llvm.loop !988

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
  %74 = load ptr, ptr %39, align 8, !tbaa !493
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !985
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !493
  store ptr %54, ptr %75, align 8, !tbaa !985
  %79 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !493
  store i32 0, ptr %2, align 8, !tbaa.struct !740
  store ptr %18, ptr %13, align 8, !tbaa.struct !741
  %81 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #23, !range !525
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %73, %89
  %84 = load ptr, ptr %1, align 8, !tbaa !513
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !742
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %90 = load i32, ptr %2, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = call fastcc zeroext i8 @ei_cond(i32 %90, ptr %91, ptr noundef nonnull %1) #23, !range !525
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %83, !llvm.loop !989

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
  %104 = load ptr, ptr %103, align 8, !tbaa !493
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
  %110 = load ptr, ptr %109, align 8, !tbaa !493
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
  store ptr null, ptr %119, align 8, !tbaa !493
  br label %120

120:                                              ; preds = %100, %118, %107, %114
  %121 = phi i8 [ 1, %114 ], [ %101, %107 ], [ %101, %118 ], [ %101, %100 ]
  %122 = icmp ne ptr %104, null
  %123 = icmp ne ptr %104, %78
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %100, label %127, !llvm.loop !990

125:                                              ; preds = %70
  %126 = tail call zeroext i8 @purge_dead_edges(ptr noundef %15) #22
  br label %127

127:                                              ; preds = %120, %94, %125, %46, %38, %35
  %128 = phi i8 [ %16, %38 ], [ %16, %46 ], [ %16, %35 ], [ %16, %125 ], [ %16, %94 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !671
  %131 = load ptr, ptr @cfun, align 8, !tbaa !513
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !667
  %134 = getelementptr inbounds %struct.control_flow_graph, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !673
  %136 = icmp eq ptr %130, %135
  br i1 %136, label %137, label %14, !prof !991, !llvm.loop !992

137:                                              ; preds = %127
  %138 = icmp eq i8 %128, 0
  br label %139

139:                                              ; preds = %137, %0
  %140 = phi i1 [ true, %0 ], [ %138, %137 ]
  %141 = phi ptr [ %5, %0 ], [ %133, %137 ]
  %142 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !527
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144, !prof !993

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 5
  %146 = load i32, ptr %145, align 8, !tbaa !994
  %147 = tail call ptr @sbitmap_alloc(i32 noundef %146) #22
  tail call void @sbitmap_ones(ptr noundef %147) #22
  tail call void @find_many_sub_basic_blocks(ptr noundef %147) #22
  %148 = load ptr, ptr %147, align 8, !tbaa !995
  tail call void @free(ptr noundef %148) #23
  tail call void @free(ptr noundef %147) #23
  br label %149

149:                                              ; preds = %144, %139
  br i1 %140, label %151, label %150, !prof !993

150:                                              ; preds = %149
  tail call void @commit_edge_insertions() #22
  br label %151

151:                                              ; preds = %150, %149
  ret void
}

; Function Attrs: optsize
declare void @unshare_all_rtl_again(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_p_heap_free() unnamed_addr #15 !prof !567 !PGOFuncName !997 {
  %1 = load ptr, ptr @substitute_stack, align 8, !tbaa !513
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !569

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @substitute_stack, align 8, !tbaa !513
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 !prof !998 !PGOFuncName !999 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1000 !PGOFuncName !1001 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !525
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1002

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !513
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1003 !PGOFuncName !1004 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1005

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1006

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.2) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1007
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1007
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1000 !PGOFuncName !1009 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1010

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1003 !PGOFuncName !1011 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1005

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !1012 !PGOFuncName !1013 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1014

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1015
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1017 !PGOFuncName !1018 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1019

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef nonnull @.str.2) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !513
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !1003 !PGOFuncName !1020 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !513
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_home_live_1(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1021 !PGOFuncName !1022 {
  %3 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !528
  %7 = icmp slt i16 %6, 0
  br i1 %7, label %16, label %8, !prof !1023

8:                                                ; preds = %2
  %9 = zext nneg i16 %6 to i32
  %10 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %9) #23
  %11 = icmp sgt i32 %10, %9
  br i1 %11, label %12, label %16, !prof !1024

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %14, %12 ], [ %9, %8 ]
  %14 = add nuw i32 %13, 1
  tail call void @df_set_regs_ever_live(i32 noundef %13, i8 noundef zeroext 1) #22
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %12, !prof !1025, !llvm.loop !1026

16:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #12 !prof !1027 !PGOFuncName !1028 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !513
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1029
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ira_reuse_stack_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_mark_new_stack_slot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_attrs_for_spill(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decode_asm_operands(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #16 !prof !734 !PGOFuncName !1031 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: optsize
declare void @ira_mark_allocation_change(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ira_reassign_pseudos(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ix86_initial_elimination_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_label_offsets(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1032 !PGOFuncName !1033 {
  br label %4

4:                                                ; preds = %150, %3
  %5 = phi ptr [ %0, %3 ], [ %151, %150 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %168 [
    i16 44, label %8
    i16 12, label %14
    i16 9, label %84
    i16 8, label %87
    i16 10, label %87
    i16 15, label %103
    i16 20, label %103
    i16 21, label %103
    i16 23, label %122
  ], !prof !1034

8:                                                ; preds = %4
  %9 = and i32 %6, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %168, !prof !1035

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !493
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %13, %11 ], [ %5, %4 ]
  %16 = load ptr, ptr @offsets_known_at, align 8, !tbaa !513
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !493
  %19 = load i32, ptr @first_label_num, align 4, !tbaa !527
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !493
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %49, !prof !1036

25:                                               ; preds = %14
  %26 = icmp eq i32 %2, 0
  %27 = load ptr, ptr @offsets_at, align 8, !tbaa !513
  %28 = load ptr, ptr @reg_eliminate, align 8
  br label %29

29:                                               ; preds = %25, %35
  %30 = phi i64 [ 0, %25 ], [ %42, %35 ]
  br i1 %26, label %33, label %31, !prof !1037

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.elim_table, ptr %28, i64 %30, i32 2
  br label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.elim_table, ptr %28, i64 %30, i32 5
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  %37 = load i64, ptr %36, align 8, !tbaa !545
  %38 = load i32, ptr %17, align 8, !tbaa !493
  %39 = sub nsw i32 %38, %19
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i64], ptr %27, i64 %40, i64 %30
  store i64 %37, ptr %41, align 8, !tbaa !545
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %29, !prof !1038, !llvm.loop !1039

44:                                               ; preds = %35
  %45 = load i32, ptr %17, align 8, !tbaa !493
  %46 = sub nsw i32 %45, %19
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %16, i64 %47
  store i8 1, ptr %48, align 1, !tbaa !493
  br label %168

49:                                               ; preds = %14
  %50 = icmp eq ptr %15, %1
  br i1 %50, label %51, label %59, !prof !1040

51:                                               ; preds = %49
  %52 = tail call ptr @prev_nonnote_insn(ptr noundef %1) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54, !prof !1041

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %58, label %59, !prof !1042

58:                                               ; preds = %54
  tail call fastcc void @set_offsets_for_label(ptr noundef %1) #23
  br label %168

59:                                               ; preds = %54, %51, %49
  %60 = load ptr, ptr @offsets_at, align 8, !tbaa !513
  %61 = load i32, ptr @first_label_num, align 4, !tbaa !527
  %62 = icmp eq i32 %2, 0
  %63 = load ptr, ptr @reg_eliminate, align 8
  br label %64

64:                                               ; preds = %59, %81
  %65 = phi i64 [ 0, %59 ], [ %82, %81 ]
  %66 = load i32, ptr %17, align 8, !tbaa !493
  %67 = sub nsw i32 %66, %61
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i64], ptr %60, i64 %68, i64 %65
  %70 = load i64, ptr %69, align 8, !tbaa !545
  br i1 %62, label %73, label %71, !prof !1043

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.elim_table, ptr %63, i64 %65, i32 2
  br label %75

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.elim_table, ptr %63, i64 %65, i32 5
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = load i64, ptr %76, align 8, !tbaa !545
  %78 = icmp eq i64 %70, %77
  br i1 %78, label %81, label %79, !prof !1043

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.elim_table, ptr %63, i64 %65, i32 3
  store i32 0, ptr %80, align 8, !tbaa !614
  br label %81

81:                                               ; preds = %75, %79
  %82 = add nuw nsw i64 %65, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %168, label %64, !prof !1044, !llvm.loop !1045

84:                                               ; preds = %4
  %85 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !493
  tail call fastcc void @set_label_offsets(ptr noundef %86, ptr noundef %1, i32 noundef %2) #23
  br label %87

87:                                               ; preds = %4, %4, %84
  %88 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !493
  %90 = icmp eq ptr %89, null
  br i1 %90, label %168, label %91, !prof !1046

91:                                               ; preds = %87, %99
  %92 = phi ptr [ %101, %99 ], [ %89, %87 ]
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 16711680
  %95 = icmp eq i32 %94, 655360
  br i1 %95, label %96, label %99, !prof !1047

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !493
  tail call fastcc void @set_label_offsets(ptr noundef %98, ptr noundef %1, i32 noundef 1) #23
  br label %99

99:                                               ; preds = %91, %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !493
  %102 = icmp eq ptr %101, null
  br i1 %102, label %168, label %91, !prof !1048, !llvm.loop !1049

103:                                              ; preds = %4, %4, %4
  %104 = and i32 %6, 65535
  %105 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %106 = icmp eq i32 %104, 21
  %107 = zext i1 %106 to i64
  %108 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !493
  %110 = load i32, ptr %109, align 8, !tbaa !755
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %168, label %112, !prof !1050

112:                                              ; preds = %103, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %103 ]
  %114 = phi ptr [ %118, %112 ], [ %109, %103 ]
  %115 = getelementptr inbounds %struct.rtvec_def, ptr %114, i64 0, i32 1, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !513
  tail call fastcc void @set_label_offsets(ptr noundef %116, ptr noundef %1, i32 noundef %2) #23
  %117 = add nuw nsw i64 %113, 1
  %118 = load ptr, ptr %108, align 8, !tbaa !493
  %119 = load i32, ptr %118, align 8, !tbaa !755
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %112, label %168, !prof !1051, !llvm.loop !1052

122:                                              ; preds = %4
  %123 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !493
  %125 = load ptr, ptr @global_rtl, align 16, !tbaa !513
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %127, label %168, !prof !1053

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !493
  %130 = load i32, ptr %129, align 8
  %131 = trunc i32 %130 to i16
  switch i16 %131, label %152 [
    i16 36, label %168
    i16 27, label %168
    i16 44, label %150
    i16 47, label %132
  ], !prof !1054

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1, i32 0, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !493
  %135 = load i32, ptr %134, align 8
  %136 = trunc i32 %135 to i16
  switch i16 %136, label %152 [
    i16 44, label %137
    i16 36, label %141
    i16 27, label %141
  ], !prof !1055

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !493
  tail call fastcc void @set_label_offsets(ptr noundef %139, ptr noundef %1, i32 noundef %2) #23
  %140 = load ptr, ptr %128, align 8, !tbaa !493
  br label %141

141:                                              ; preds = %132, %132, %137
  %142 = phi ptr [ %129, %132 ], [ %129, %132 ], [ %140, %137 ]
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !493
  %145 = load i32, ptr %144, align 8
  %146 = trunc i32 %145 to i16
  switch i16 %146, label %152 [
    i16 44, label %147
    i16 36, label %168
    i16 27, label %168
  ], !prof !1056

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !493
  br label %150

150:                                              ; preds = %147, %127
  %151 = phi ptr [ %149, %147 ], [ %129, %127 ]
  br label %4

152:                                              ; preds = %141, %132, %127
  %153 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %154

154:                                              ; preds = %152, %164
  %155 = phi ptr [ %153, %152 ], [ %166, %164 ]
  %156 = phi i64 [ 0, %152 ], [ %165, %164 ]
  %157 = getelementptr inbounds %struct.elim_table, ptr %155, i64 0, i32 5
  %158 = load i64, ptr %157, align 8, !tbaa !863
  %159 = getelementptr inbounds %struct.elim_table, ptr %155, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !862
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %164, label %162, !prof !1057

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.elim_table, ptr %155, i64 0, i32 3
  store i32 0, ptr %163, align 8, !tbaa !614
  br label %164

164:                                              ; preds = %154, %162
  %165 = add nuw nsw i64 %156, 64
  %166 = getelementptr inbounds i8, ptr %153, i64 %165
  %167 = icmp ult i64 %156, 192
  br i1 %167, label %154, label %168, !prof !1058, !llvm.loop !1059

168:                                              ; preds = %4, %141, %141, %127, %127, %122, %164, %112, %99, %81, %103, %87, %44, %58, %8
  ret void
}

; Function Attrs: optsize
declare void @for_each_eh_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_initial_eh_label_offset(ptr noundef %0) #0 !prof !734 !PGOFuncName !1060 {
  tail call fastcc void @set_label_offsets(ptr noundef %0, ptr noundef null, i32 noundef 1) #23
  ret void
}

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_offsets_for_label(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !1061 !PGOFuncName !1062 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !493
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !527
  %4 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  %5 = load ptr, ptr @offsets_at, align 8, !tbaa !513
  %6 = load i32, ptr @first_label_num, align 4, !tbaa !527
  %7 = sub nsw i32 %3, %6
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %1, %26
  %10 = phi i64 [ 0, %1 ], [ %29, %26 ]
  %11 = phi ptr [ %4, %1 ], [ %28, %26 ]
  %12 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %13 = getelementptr inbounds [4 x i64], ptr %5, i64 %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !545
  %15 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 6
  store i64 %14, ptr %15, align 8, !tbaa !864
  %16 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 5
  store i64 %14, ptr %16, align 8, !tbaa !863
  %17 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !614
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !prof !1063

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !862
  %23 = icmp eq i64 %14, %22
  br i1 %23, label %26, label %24, !prof !1064

24:                                               ; preds = %20
  %25 = add nsw i32 %12, 1
  store i32 %25, ptr @num_not_at_initial_offset, align 4, !tbaa !527
  br label %26

26:                                               ; preds = %9, %20, %24
  %27 = phi i32 [ %12, %9 ], [ %12, %20 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.elim_table, ptr %11, i64 1
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %9, !prof !1065, !llvm.loop !1066

31:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @eliminate_regs_in_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1067 !PGOFuncName !1068 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca [30 x ptr], align 16
  %5 = tail call fastcc i32 @recog_memoized(ptr noundef %0) #23
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !493
  %8 = tail call i32 @asm_noperands(ptr noundef %7) #22
  %9 = icmp slt i32 %8, 0
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %25, !prof !1069

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !tbaa !493
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 23
  br i1 %18, label %21, label %19, !prof !1070

19:                                               ; preds = %14
  %20 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %15) #22
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #24
  %23 = icmp slt i32 %5, 0
  %24 = select i1 %9, i1 %23, i1 false
  br i1 %24, label %28, label %48, !prof !1071

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #24
  %26 = icmp slt i32 %5, 0
  %27 = select i1 %9, i1 %26, i1 false
  br i1 %27, label %28, label %336, !prof !1071

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr %6, align 8, !tbaa !493
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %32 [
    i16 24, label %37
    i16 25, label %37
    i16 20, label %37
    i16 21, label %37
    i16 16, label %37
  ], !prof !1072

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
  br i1 %40, label %41, label %595, !prof !1073

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 8, !tbaa !493
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !493
  %45 = tail call ptr @eliminate_regs(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %0) #23
  %46 = load ptr, ptr %6, align 8, !tbaa !493
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %45, ptr %47, align 8, !tbaa !493
  br label %595

48:                                               ; preds = %21
  %49 = icmp eq ptr %22, null
  br i1 %49, label %336, label %50, !prof !1074

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !493
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %336, !prof !1075

56:                                               ; preds = %50
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %52) #23
  %58 = icmp ult i32 %57, 53
  br i1 %58, label %59, label %186, !prof !1076

59:                                               ; preds = %56
  %60 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %61

61:                                               ; preds = %59, %182
  %62 = phi ptr [ %60, %59 ], [ %184, %182 ]
  %63 = phi i64 [ 0, %59 ], [ %183, %182 ]
  %64 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !781
  %66 = icmp eq ptr %65, %52
  br i1 %66, label %67, label %182, !prof !1077

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !614
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %182, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %62, align 8, !tbaa !612
  %73 = icmp eq i32 %72, 20
  br i1 %73, label %74, label %179

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !655
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %179

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 9
  %81 = load ptr, ptr %79, align 8, !tbaa !493
  %82 = load ptr, ptr %80, align 8, !tbaa !782
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
  %94 = load ptr, ptr %93, align 8, !tbaa !493
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %100 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !493
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
  %113 = load ptr, ptr %112, align 8, !tbaa !493
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
  %123 = load ptr, ptr %122, align 8, !tbaa !493
  %124 = tail call i32 @rtx_equal_p(ptr noundef %123, ptr noundef nonnull %86) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %80, align 8, !tbaa !782
  br label %129

129:                                              ; preds = %98, %126
  %130 = phi ptr [ %85, %98 ], [ %128, %126 ]
  %131 = phi ptr [ %99, %98 ], [ %127, %126 ]
  %132 = phi ptr [ %88, %98 ], [ %104, %126 ]
  %133 = phi i64 [ %102, %98 ], [ %87, %126 ]
  %134 = load ptr, ptr %131, align 8, !tbaa !493
  %135 = icmp eq ptr %134, %130
  br i1 %135, label %136, label %84

136:                                              ; preds = %129, %120, %117, %103, %106
  %137 = phi i64 [ %133, %129 ], [ %87, %120 ], [ %87, %117 ], [ %87, %103 ], [ %87, %106 ]
  %138 = phi ptr [ %130, %129 ], [ %86, %120 ], [ %86, %117 ], [ %86, %103 ], [ %86, %106 ]
  %139 = load ptr, ptr %80, align 8, !tbaa !782
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %78, %136
  %142 = phi i64 [ %137, %136 ], [ 0, %78 ]
  %143 = phi ptr [ %139, %136 ], [ %81, %78 ]
  %144 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 5
  %145 = load i64, ptr %144, align 8, !tbaa !863
  %146 = sub nsw i64 %142, %145
  %147 = tail call ptr @plus_constant(ptr noundef %143, i64 noundef %146) #22
  %148 = icmp eq i32 %1, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = tail call ptr @copy_insn(ptr noundef %7) #22
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !493
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = tail call ptr @copy_insn_1(ptr noundef nonnull %152) #22
  store ptr %155, ptr %151, align 8, !tbaa !493
  br label %156

156:                                              ; preds = %149, %154, %141
  %157 = phi ptr [ %7, %141 ], [ %150, %154 ], [ %150, %149 ]
  store ptr %157, ptr %6, align 8, !tbaa !493
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
  %173 = load ptr, ptr %80, align 8, !tbaa !782
  %174 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %170, ptr noundef %173, i8 noundef zeroext 1) #22
  %175 = tail call i32 @apply_change_group() #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %588

177:                                              ; preds = %168
  store ptr %147, ptr %171, align 8, !tbaa !493
  %178 = load ptr, ptr %80, align 8, !tbaa !782
  store ptr %178, ptr %170, align 8, !tbaa !493
  br label %588

179:                                              ; preds = %136, %74, %71
  %180 = icmp eq i32 %1, 0
  br i1 %180, label %588, label %181

181:                                              ; preds = %179
  tail call fastcc void @delete_dead_insn(ptr noundef nonnull %0) #23
  br label %595

182:                                              ; preds = %61, %67
  %183 = add nuw nsw i64 %63, 64
  %184 = getelementptr inbounds i8, ptr %60, i64 %183
  %185 = icmp ult i64 %63, 192
  br i1 %185, label %61, label %186, !prof !1078, !llvm.loop !1079

186:                                              ; preds = %182, %56
  %187 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !493
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 49
  %192 = select i1 %191, ptr %188, ptr null, !prof !1080
  br i1 %191, label %193, label %199, !prof !1080

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !493
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 30
  br i1 %198, label %228, label %201, !prof !1081

199:                                              ; preds = %186
  %200 = trunc i32 %189 to i16
  switch i16 %200, label %336 [
    i16 49, label %201
    i16 37, label %201
  ]

201:                                              ; preds = %199, %199, %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !493
  %204 = icmp eq ptr %203, null
  br i1 %204, label %336, label %205, !prof !1082

205:                                              ; preds = %201, %224
  %206 = phi ptr [ %226, %224 ], [ %203, %201 ]
  %207 = load i32, ptr %206, align 8
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  %210 = add nsw i32 %209, -3
  %211 = icmp ult i32 %210, 2
  br i1 %211, label %212, label %224, !prof !1083

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !493
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 49
  br i1 %217, label %218, label %224, !prof !1084

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !493
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 65535
  %223 = icmp eq i32 %222, 30
  br i1 %223, label %228, label %224, !prof !1085

224:                                              ; preds = %205, %212, %218
  %225 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !493
  %227 = icmp eq ptr %226, null
  br i1 %227, label %336, label %205, !prof !1086, !llvm.loop !1087

228:                                              ; preds = %218, %193
  %229 = phi ptr [ %188, %193 ], [ %214, %218 ]
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !493
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 39
  br i1 %234, label %235, label %241, !prof !1088

235:                                              ; preds = %228
  %236 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %231) #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238, !prof !1089

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !493
  br label %241

241:                                              ; preds = %238, %235, %228
  %242 = phi ptr [ %240, %238 ], [ %231, %235 ], [ %231, %228 ]
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 37
  br i1 %245, label %246, label %336, !prof !1090

246:                                              ; preds = %241
  %247 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %242) #23
  %248 = icmp ugt i32 %247, 52
  br i1 %248, label %336, label %249, !prof !1091

249:                                              ; preds = %246
  %250 = load ptr, ptr %230, align 8, !tbaa !493
  %251 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !493
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !493
  %255 = load i32, ptr %250, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 39
  br i1 %257, label %258, label %261, !prof !1092

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !493
  br label %261

261:                                              ; preds = %258, %249
  %262 = phi ptr [ %260, %258 ], [ %250, %249 ]
  %263 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %264

264:                                              ; preds = %261, %332
  %265 = phi ptr [ %263, %261 ], [ %334, %332 ]
  %266 = phi i64 [ 0, %261 ], [ %333, %332 ]
  %267 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 8
  %268 = load ptr, ptr %267, align 8, !tbaa !781
  %269 = icmp eq ptr %268, %262
  br i1 %269, label %270, label %332, !prof !1093

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 3
  %272 = load i32, ptr %271, align 8, !tbaa !614
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %332, label %274, !prof !1094

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 9
  %276 = load ptr, ptr %275, align 8, !tbaa !782
  %277 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 5
  %278 = load i64, ptr %277, align 8, !tbaa !863
  %279 = add nsw i64 %278, %254
  %280 = load i32, ptr %229, align 8
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = tail call i64 @trunc_int_for_mode(i64 noundef %279, i32 noundef %282) #22
  %284 = load ptr, ptr %230, align 8, !tbaa !493
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 39
  br i1 %287, label %288, label %293, !prof !1095

288:                                              ; preds = %274
  %289 = load ptr, ptr @rtl_hooks, align 8, !tbaa !1096
  %290 = lshr i32 %285, 16
  %291 = and i32 %290, 255
  %292 = tail call ptr %289(i32 noundef %291, ptr noundef %276) #22
  br label %293

293:                                              ; preds = %288, %274
  %294 = phi ptr [ %292, %288 ], [ %276, %274 ]
  %295 = icmp ne i64 %283, 0
  %296 = icmp eq ptr %192, null
  %297 = and i1 %296, %295
  br i1 %297, label %336, label %298, !prof !1098

298:                                              ; preds = %293
  %299 = tail call ptr @plus_constant(ptr noundef %294, i64 noundef %283) #22
  %300 = icmp eq i32 %1, 0
  br i1 %300, label %301, label %308, !prof !1099

301:                                              ; preds = %298
  %302 = tail call ptr @copy_insn(ptr noundef %7) #22
  %303 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !493
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306, !prof !1100

306:                                              ; preds = %301
  %307 = tail call ptr @copy_insn_1(ptr noundef nonnull %304) #22
  store ptr %307, ptr %303, align 8, !tbaa !493
  br label %308

308:                                              ; preds = %301, %306, %298
  %309 = phi ptr [ %7, %298 ], [ %302, %306 ], [ %302, %301 ]
  store ptr %309, ptr %6, align 8, !tbaa !493
  %310 = load i32, ptr %0, align 8
  %311 = and i32 %310, 65535
  %312 = add nsw i32 %311, -7
  %313 = icmp ult i32 %312, 4
  br i1 %313, label %314, label %320, !prof !1101

314:                                              ; preds = %308
  %315 = load i32, ptr %309, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 23
  br i1 %317, label %320, label %318, !prof !1102

318:                                              ; preds = %314
  %319 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %309) #22
  br label %320

320:                                              ; preds = %308, %314, %318
  %321 = phi ptr [ %319, %318 ], [ null, %308 ], [ %309, %314 ]
  %322 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1, i32 0, i32 0, i64 1
  %323 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %322, ptr noundef %299, i8 noundef zeroext 0) #22
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %588, !prof !1103

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !493
  %328 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %327, ptr noundef %299) #22
  %329 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %328, i8 noundef zeroext 0) #22
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %588

331:                                              ; preds = %325
  store ptr %299, ptr %322, align 8, !tbaa !493
  br label %588

332:                                              ; preds = %264, %270
  %333 = add nuw nsw i64 %266, 64
  %334 = getelementptr inbounds i8, ptr %263, i64 %333
  %335 = icmp ult i64 %266, 192
  br i1 %335, label %264, label %336, !prof !1104, !llvm.loop !1105

336:                                              ; preds = %224, %332, %201, %199, %293, %241, %246, %50, %25, %48
  %337 = phi ptr [ null, %48 ], [ null, %25 ], [ null, %50 ], [ null, %199 ], [ %192, %246 ], [ %192, %241 ], [ null, %293 ], [ %192, %201 ], [ %192, %332 ], [ %192, %224 ]
  %338 = phi ptr [ null, %48 ], [ null, %25 ], [ %22, %50 ], [ %22, %199 ], [ %22, %246 ], [ %22, %241 ], [ %22, %293 ], [ %22, %201 ], [ %22, %332 ], [ %22, %224 ]
  tail call fastcc void @elimination_effects(ptr noundef %7, i32 noundef 0) #23
  tail call void @extract_insn(ptr noundef nonnull %0) #22
  %339 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !1106
  %340 = icmp sgt i8 %339, 0
  br i1 %340, label %341, label %349, !prof !1108

341:                                              ; preds = %336
  %342 = sext i32 %5 to i64
  %343 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %342, i32 3
  %344 = icmp eq ptr %338, null
  %345 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = icmp eq ptr %337, null
  %347 = icmp eq i32 %1, 0
  %348 = select i1 %347, ptr null, ptr %0
  br label %355

349:                                              ; preds = %428, %336
  %350 = phi i32 [ 0, %336 ], [ %429, %428 ]
  %351 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !1109
  %352 = icmp sgt i8 %351, 0
  br i1 %352, label %353, label %446, !prof !1110

353:                                              ; preds = %349
  %354 = zext nneg i8 %351 to i64
  br label %434

355:                                              ; preds = %341, %428
  %356 = phi i64 [ 0, %341 ], [ %430, %428 ]
  %357 = phi i32 [ 0, %341 ], [ %429, %428 ]
  %358 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %356
  %359 = load ptr, ptr %358, align 8, !tbaa !513
  %360 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %356
  store ptr %359, ptr %360, align 8, !tbaa !513
  %361 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %356
  store ptr %359, ptr %361, align 8, !tbaa !513
  br i1 %9, label %362, label %367, !prof !1111

362:                                              ; preds = %355
  %363 = load ptr, ptr %343, align 8, !tbaa !1112
  %364 = getelementptr inbounds %struct.insn_operand_data, ptr %363, i64 %356, i32 4
  %365 = load i8, ptr %364, align 1, !tbaa !1114
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %428, label %367, !prof !1116

367:                                              ; preds = %362, %355
  %368 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %356
  %369 = load i32, ptr %368, align 4, !tbaa !527
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %389, label %371, !prof !1117

371:                                              ; preds = %367
  %372 = load i32, ptr %359, align 8
  %373 = and i32 %372, 65535
  %374 = icmp eq i32 %373, 37
  br i1 %374, label %375, label %389, !prof !1118

375:                                              ; preds = %371
  %376 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %377

377:                                              ; preds = %375, %385
  %378 = phi ptr [ %376, %375 ], [ %387, %385 ]
  %379 = phi i64 [ 0, %375 ], [ %386, %385 ]
  %380 = getelementptr inbounds %struct.elim_table, ptr %378, i64 0, i32 8
  %381 = load ptr, ptr %380, align 8, !tbaa !781
  %382 = icmp eq ptr %381, %359
  br i1 %382, label %383, label %385, !prof !1119

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.elim_table, ptr %378, i64 0, i32 3
  store i32 0, ptr %384, align 8, !tbaa !614
  br label %385

385:                                              ; preds = %377, %383
  %386 = add nuw nsw i64 %379, 64
  %387 = getelementptr inbounds i8, ptr %376, i64 %386
  %388 = icmp ult i64 %379, 192
  br i1 %388, label %377, label %389, !prof !1120, !llvm.loop !1121

389:                                              ; preds = %385, %371, %367
  br i1 %344, label %395, label %390, !prof !1122

390:                                              ; preds = %389
  %391 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %356
  %392 = load ptr, ptr %391, align 8, !tbaa !513
  %393 = icmp eq ptr %392, %345
  %394 = zext i1 %393 to i8
  br label %395

395:                                              ; preds = %390, %389
  %396 = phi i8 [ 0, %389 ], [ %394, %390 ]
  br i1 %346, label %406, label %397, !prof !1123

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1
  %399 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %400 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %356
  %401 = load ptr, ptr %400, align 8, !tbaa !513
  %402 = icmp eq ptr %401, %398
  %403 = icmp eq ptr %401, %399
  %404 = select i1 %402, i1 true, i1 %403
  %405 = zext i1 %404 to i8
  br label %406

406:                                              ; preds = %397, %395
  %407 = phi i8 [ 0, %395 ], [ %405, %397 ]
  %408 = or i8 %407, %396
  %409 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %359, i32 noundef 0, ptr noundef %348, i8 noundef zeroext %408) #23
  store ptr %409, ptr %361, align 8, !tbaa !513
  %410 = icmp eq ptr %409, %359
  %411 = select i1 %410, i32 %357, i32 1, !prof !1124
  %412 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %356
  %413 = load ptr, ptr %412, align 8, !tbaa !513
  store ptr null, ptr %413, align 8, !tbaa !513
  %414 = load i32, ptr %368, align 4, !tbaa !527
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %428, label %416, !prof !1117

416:                                              ; preds = %406
  %417 = load i32, ptr %359, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 37
  br i1 %419, label %420, label %428, !prof !1118

420:                                              ; preds = %416
  %421 = load i32, ptr %409, align 8
  %422 = and i32 %421, 65535
  %423 = icmp eq i32 %422, 43
  br i1 %423, label %424, label %428, !prof !1125

424:                                              ; preds = %420
  br i1 %347, label %428, label %425

425:                                              ; preds = %424
  %426 = tail call ptr @gen_clobber(ptr noundef nonnull %359) #22
  %427 = tail call ptr @emit_insn_after(ptr noundef %426, ptr noundef nonnull %0) #22
  br label %428

428:                                              ; preds = %406, %416, %420, %424, %425, %362
  %429 = phi i32 [ %357, %362 ], [ %411, %425 ], [ %411, %424 ], [ %411, %420 ], [ %411, %416 ], [ %411, %406 ]
  %430 = add nuw nsw i64 %356, 1
  %431 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !1106
  %432 = sext i8 %431 to i64
  %433 = icmp slt i64 %430, %432
  br i1 %433, label %355, label %349, !prof !1126, !llvm.loop !1127

434:                                              ; preds = %353, %434
  %435 = phi i64 [ 0, %353 ], [ %444, %434 ]
  %436 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !493
  %438 = sext i8 %437 to i64
  %439 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !513
  %441 = load ptr, ptr %440, align 8, !tbaa !513
  %442 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %435
  %443 = load ptr, ptr %442, align 8, !tbaa !513
  store ptr %441, ptr %443, align 8, !tbaa !513
  %444 = add nuw nsw i64 %435, 1
  %445 = icmp eq i64 %444, %354
  br i1 %445, label %446, label %434, !prof !1128, !llvm.loop !1129

446:                                              ; preds = %434, %349
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %7) #23
  %447 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !1106
  %448 = icmp sgt i8 %447, 0
  br i1 %448, label %449, label %451, !prof !1108

449:                                              ; preds = %446
  %450 = zext nneg i8 %447 to i64
  br label %456

451:                                              ; preds = %456, %446
  %452 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !1109
  %453 = icmp sgt i8 %452, 0
  br i1 %453, label %454, label %475, !prof !1110

454:                                              ; preds = %451
  %455 = zext nneg i8 %452 to i64
  br label %464

456:                                              ; preds = %449, %456
  %457 = phi i64 [ 0, %449 ], [ %462, %456 ]
  %458 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %457
  %459 = load ptr, ptr %458, align 8, !tbaa !513
  %460 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %457
  %461 = load ptr, ptr %460, align 8, !tbaa !513
  store ptr %459, ptr %461, align 8, !tbaa !513
  %462 = add nuw nsw i64 %457, 1
  %463 = icmp eq i64 %462, %450
  br i1 %463, label %451, label %456, !prof !1130, !llvm.loop !1131

464:                                              ; preds = %454, %464
  %465 = phi i64 [ 0, %454 ], [ %473, %464 ]
  %466 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !493
  %468 = sext i8 %467 to i64
  %469 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !513
  %471 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %465
  %472 = load ptr, ptr %471, align 8, !tbaa !513
  store ptr %470, ptr %472, align 8, !tbaa !513
  %473 = add nuw nsw i64 %465, 1
  %474 = icmp eq i64 %473, %455
  br i1 %474, label %475, label %464, !prof !1128, !llvm.loop !1132

475:                                              ; preds = %464, %451
  %476 = icmp eq i32 %350, 0
  br i1 %476, label %527, label %477, !prof !1133

477:                                              ; preds = %475
  %478 = icmp eq i32 %1, 0
  br i1 %478, label %479, label %486, !prof !1134

479:                                              ; preds = %477
  %480 = tail call ptr @copy_insn(ptr noundef %7) #22
  %481 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %482 = load ptr, ptr %481, align 8, !tbaa !493
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484, !prof !1135

484:                                              ; preds = %479
  %485 = tail call ptr @copy_insn_1(ptr noundef nonnull %482) #22
  store ptr %485, ptr %481, align 8, !tbaa !493
  br label %486

486:                                              ; preds = %479, %484, %477
  %487 = phi ptr [ %7, %477 ], [ %480, %484 ], [ %480, %479 ]
  store ptr %487, ptr %6, align 8, !tbaa !493
  %488 = icmp ne ptr %338, null
  %489 = select i1 %9, i1 %488, i1 false
  br i1 %489, label %490, label %527, !prof !1136

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %492 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1, i32 0, i32 0, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !493
  %494 = load i32, ptr %493, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 37
  br i1 %496, label %497, label %507, !prof !1137

497:                                              ; preds = %490
  %498 = load i32, ptr %487, align 8
  %499 = and i32 %498, 65535
  %500 = icmp eq i32 %499, 23
  br i1 %500, label %501, label %522, !prof !1138

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.rtx_def, ptr %487, i64 0, i32 1, i32 0, i32 0, i64 1
  %503 = load ptr, ptr %502, align 8, !tbaa !493
  %504 = load i32, ptr %503, align 8
  %505 = and i32 %504, 65535
  %506 = icmp eq i32 %505, 37
  br i1 %506, label %512, label %522, !prof !1138

507:                                              ; preds = %490
  %508 = icmp ne i32 %495, 43
  %509 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %510 = icmp eq ptr %493, %509
  %511 = select i1 %508, i1 true, i1 %510
  br i1 %511, label %512, label %522, !prof !1139

512:                                              ; preds = %501, %507
  %513 = load ptr, ptr %491, align 8, !tbaa !493
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 43
  %517 = load ptr, ptr @recog_data, align 8
  %518 = icmp ne ptr %513, %517
  %519 = select i1 %516, i1 %518, i1 false
  %520 = icmp eq i32 %495, 49
  %521 = or i1 %520, %519
  br i1 %521, label %522, label %527, !prof !1140

522:                                              ; preds = %512, %507, %501, %497
  %523 = tail call i32 @recog(ptr noundef %487, ptr noundef nonnull %0, ptr noundef null) #22
  %524 = icmp sgt i32 %523, -1
  br i1 %524, label %525, label %527, !prof !1141

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 %523, ptr %526, align 8, !tbaa !493
  br label %527

527:                                              ; preds = %512, %522, %525, %486, %475
  %528 = icmp eq i32 %1, 0
  br i1 %528, label %529, label %558, !prof !1142

529:                                              ; preds = %527
  %530 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !1106
  %531 = icmp sgt i8 %530, 0
  br i1 %531, label %532, label %534, !prof !1143

532:                                              ; preds = %529
  %533 = zext nneg i8 %530 to i64
  br label %539

534:                                              ; preds = %539, %529
  %535 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !1109
  %536 = icmp sgt i8 %535, 0
  br i1 %536, label %537, label %558, !prof !1144

537:                                              ; preds = %534
  %538 = zext nneg i8 %535 to i64
  br label %547

539:                                              ; preds = %532, %539
  %540 = phi i64 [ 0, %532 ], [ %545, %539 ]
  %541 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !513
  %543 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %540
  %544 = load ptr, ptr %543, align 8, !tbaa !513
  store ptr %542, ptr %544, align 8, !tbaa !513
  %545 = add nuw nsw i64 %540, 1
  %546 = icmp eq i64 %545, %533
  br i1 %546, label %534, label %539, !prof !1145, !llvm.loop !1146

547:                                              ; preds = %537, %547
  %548 = phi i64 [ 0, %537 ], [ %556, %547 ]
  %549 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %548
  %550 = load i8, ptr %549, align 1, !tbaa !493
  %551 = sext i8 %550 to i64
  %552 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !513
  %554 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %548
  %555 = load ptr, ptr %554, align 8, !tbaa !513
  store ptr %553, ptr %555, align 8, !tbaa !513
  %556 = add nuw nsw i64 %548, 1
  %557 = icmp eq i64 %556, %538
  br i1 %557, label %558, label %547, !prof !1147, !llvm.loop !1148

558:                                              ; preds = %547, %534, %527
  %559 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %560

560:                                              ; preds = %582, %558
  %561 = phi ptr [ %584, %582 ], [ %559, %558 ]
  %562 = phi i32 [ 1, %582 ], [ %350, %558 ]
  %563 = phi i64 [ %583, %582 ], [ 0, %558 ]
  br label %564

564:                                              ; preds = %560, %578
  %565 = phi ptr [ %580, %578 ], [ %561, %560 ]
  %566 = phi i64 [ %579, %578 ], [ %563, %560 ]
  %567 = getelementptr inbounds %struct.elim_table, ptr %565, i64 0, i32 6
  %568 = load i64, ptr %567, align 8, !tbaa !864
  %569 = getelementptr inbounds %struct.elim_table, ptr %565, i64 0, i32 5
  %570 = load i64, ptr %569, align 8, !tbaa !863
  %571 = icmp eq i64 %568, %570
  %572 = getelementptr inbounds %struct.elim_table, ptr %565, i64 0, i32 7
  br i1 %571, label %578, label %573, !prof !1149

573:                                              ; preds = %564
  %574 = load i32, ptr %572, align 8, !tbaa !1150
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %582, label %576, !prof !1151

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.elim_table, ptr %565, i64 0, i32 3
  store i32 0, ptr %577, align 8, !tbaa !614
  br label %582

578:                                              ; preds = %564
  store i32 0, ptr %572, align 8, !tbaa !1150
  %579 = add nuw nsw i64 %566, 64
  %580 = getelementptr inbounds i8, ptr %559, i64 %579
  %581 = icmp ult i64 %566, 192
  br i1 %581, label %564, label %586, !prof !1152, !llvm.loop !1153

582:                                              ; preds = %573, %576
  store i32 0, ptr %572, align 8, !tbaa !1150
  %583 = add nuw nsw i64 %566, 64
  %584 = getelementptr inbounds i8, ptr %559, i64 %583
  %585 = icmp ult i64 %566, 192
  br i1 %585, label %560, label %588, !prof !1152, !llvm.loop !1153

586:                                              ; preds = %578
  %587 = icmp eq i32 %562, 0
  br i1 %587, label %595, label %588, !prof !1154

588:                                              ; preds = %582, %325, %331, %320, %168, %177, %179, %586
  %589 = phi i32 [ %562, %586 ], [ 1, %179 ], [ 1, %177 ], [ 1, %168 ], [ 1, %320 ], [ 1, %331 ], [ 1, %325 ], [ 1, %582 ]
  %590 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %591 = load ptr, ptr %590, align 8, !tbaa !493
  %592 = icmp eq ptr %591, null
  br i1 %592, label %595, label %593, !prof !1155

593:                                              ; preds = %588
  %594 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %591, i32 noundef 0, ptr noundef nonnull %591, i8 noundef zeroext 1) #23
  store ptr %594, ptr %590, align 8, !tbaa !493
  br label %595

595:                                              ; preds = %586, %588, %593, %37, %41, %181
  %596 = phi i32 [ 1, %181 ], [ 0, %41 ], [ 0, %37 ], [ %589, %593 ], [ %589, %588 ], [ 0, %586 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #24
  ret i32 %596
}

; Function Attrs: optsize
declare i32 @find_reloads(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_mark_memory_move_deletion(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_eliminable_offsets() unnamed_addr #14 !prof !1156 !PGOFuncName !1157 {
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !527
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %2

2:                                                ; preds = %0, %18
  %3 = phi ptr [ %1, %0 ], [ %21, %18 ]
  %4 = phi i64 [ 0, %0 ], [ %20, %18 ]
  %5 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %6 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !863
  %8 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 6
  store i64 %7, ptr %8, align 8, !tbaa !864
  %9 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !614
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12, !prof !1158

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !862
  %15 = icmp eq i64 %7, %14
  br i1 %15, label %18, label %16, !prof !1159

16:                                               ; preds = %12
  %17 = add nsw i32 %5, 1
  store i32 %17, ptr @num_not_at_initial_offset, align 4, !tbaa !527
  br label %18

18:                                               ; preds = %2, %12, %16
  %19 = phi i32 [ %5, %2 ], [ %5, %12 ], [ %17, %16 ]
  %20 = add nuw nsw i64 %4, 64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = icmp ult i64 %4, 192
  br i1 %22, label %2, label %23, !prof !1160, !llvm.loop !1161

23:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_reloads(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !1162 !PGOFuncName !1163 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %3 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  store i32 %2, ptr %3, align 8, !tbaa !875
  %4 = sext i32 %2 to i64
  %5 = mul nsw i64 %4, 104
  store i64 %5, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, %5
  br i1 %11, label %12, label %16, !prof !1164

12:                                               ; preds = %1
  %13 = trunc i64 %5 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef %13) #22
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %16

16:                                               ; preds = %1, %12
  %17 = phi ptr [ %7, %1 ], [ %15, %12 ]
  %18 = phi i64 [ %5, %1 ], [ %14, %12 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25, !prof !1165

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %19 to i64
  %27 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = xor i32 %27, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %29, %31
  %33 = inttoptr i64 %32 to ptr
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %32, %35
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %35
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %42, !prof !1165

41:                                               ; preds = %25
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %42

42:                                               ; preds = %25, %41
  %43 = phi ptr [ %33, %25 ], [ %37, %41 ]
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %44 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  store ptr %20, ptr %44, align 8, !tbaa !1166
  %45 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr nonnull align 16 @rld, i64 %47, i1 false)
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57, !prof !1165

54:                                               ; preds = %42
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %55 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %56 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %57

57:                                               ; preds = %42, %54
  %58 = phi ptr [ %49, %42 ], [ %56, %54 ]
  %59 = phi i64 [ 0, %42 ], [ %55, %54 ]
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %66, !prof !1167

63:                                               ; preds = %57
  %64 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %65 = or i8 %64, 2
  store i8 %65, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %66

66:                                               ; preds = %57, %63
  %67 = ptrtoint ptr %61 to i64
  store i64 %67, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !502
  %68 = ptrtoint ptr %60 to i64
  %69 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !511
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = xor i32 %69, -1
  %73 = sext i32 %72 to i64
  %74 = and i64 %71, %73
  %75 = inttoptr i64 %74 to ptr
  store ptr %75, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !512
  %77 = ptrtoint ptr %76 to i64
  %78 = sub i64 %74, %77
  %79 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !507
  %80 = ptrtoint ptr %79 to i64
  %81 = sub i64 %80, %77
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %84, !prof !1165

83:                                               ; preds = %66
  store ptr %79, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !508
  br label %84

84:                                               ; preds = %66, %83
  %85 = phi ptr [ %75, %66 ], [ %79, %83 ]
  store ptr %85, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !509
  store ptr %61, ptr @reload_insn_firstobj, align 8, !tbaa !513
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !1168 !PGOFuncName !1169 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !493
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !1170

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !493
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #22
  store i32 %8, ptr %2, align 8, !tbaa !493
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
define internal fastcc void @elimination_effects(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #17 !prof !1171 !PGOFuncName !1172 {
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
  br label %14

14:                                               ; preds = %136, %7
  %15 = phi ptr [ %12, %7 ], [ %137, %136 ]
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %260 [
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
    i16 37, label %18
    i16 75, label %53
    i16 77, label %53
    i16 74, label %53
    i16 76, label %53
    i16 79, label %53
    i16 78, label %53
    i16 40, label %131
    i16 51, label %131
    i16 64, label %131
    i16 98, label %131
    i16 99, label %131
    i16 100, label %131
    i16 101, label %131
    i16 102, label %131
    i16 103, label %131
    i16 104, label %131
    i16 106, label %131
    i16 105, label %131
    i16 111, label %131
    i16 112, label %131
    i16 114, label %131
    i16 115, label %131
    i16 116, label %131
    i16 117, label %131
    i16 118, label %131
    i16 113, label %131
    i16 39, label %138
    i16 24, label %164
    i16 25, label %179
    i16 23, label %194
    i16 43, label %256
  ], !prof !1173

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %20 = icmp slt i32 %19, 53
  br i1 %20, label %21, label %39, !prof !1174

21:                                               ; preds = %18, %35
  %22 = phi ptr [ %37, %35 ], [ %11, %18 ]
  %23 = phi i64 [ %36, %35 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.elim_table, ptr %22, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !781
  %26 = icmp eq ptr %25, %15
  br i1 %26, label %27, label %35, !prof !1175

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.elim_table, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !614
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !1176

31:                                               ; preds = %27
  %32 = icmp eq i32 %13, 0
  br i1 %32, label %33, label %297, !prof !1177

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.elim_table, ptr %22, i64 0, i32 7
  store i32 1, ptr %34, align 8, !tbaa !1150
  br label %297

35:                                               ; preds = %21, %27
  %36 = add nuw nsw i64 %23, 64
  %37 = getelementptr inbounds i8, ptr %11, i64 %36
  %38 = icmp ult i64 %23, 192
  br i1 %38, label %21, label %297, !prof !1178, !llvm.loop !1179

39:                                               ; preds = %18
  %40 = icmp ne ptr %8, null
  %41 = zext nneg i32 %19 to i64
  %42 = getelementptr inbounds i16, ptr %9, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !528
  %44 = icmp slt i16 %43, 0
  %45 = select i1 %44, i1 %40, i1 false
  br i1 %45, label %46, label %297, !prof !1180

46:                                               ; preds = %39
  %47 = getelementptr inbounds ptr, ptr %8, i64 %41
  %48 = load ptr, ptr %47, align 8, !tbaa !513
  %49 = icmp eq ptr %48, null
  br i1 %49, label %297, label %50, !prof !1181

50:                                               ; preds = %46
  %51 = tail call i32 @function_invariant_p(ptr noundef nonnull %48) #23, !range !595
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %136, label %297, !prof !1182

53:                                               ; preds = %14, %14, %14, %14, %14, %14
  %54 = zext nneg i32 %13 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %62

57:                                               ; preds = %71
  %58 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %59 = and i32 %16, 65534
  %60 = icmp eq i32 %59, 78
  %61 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %75

62:                                               ; preds = %53, %71
  %63 = phi ptr [ %11, %53 ], [ %73, %71 ]
  %64 = phi i64 [ 0, %53 ], [ %72, %71 ]
  %65 = getelementptr inbounds %struct.elim_table, ptr %63, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !781
  %67 = load ptr, ptr %56, align 8, !tbaa !493
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.elim_table, ptr %63, i64 0, i32 3
  store i32 0, ptr %70, align 8, !tbaa !614
  br label %71

71:                                               ; preds = %62, %69
  %72 = add nuw nsw i64 %64, 64
  %73 = getelementptr inbounds i8, ptr %11, i64 %72
  %74 = icmp ult i64 %64, 192
  br i1 %74, label %62, label %57, !llvm.loop !1183

75:                                               ; preds = %125, %57
  %76 = phi ptr [ %11, %57 ], [ %127, %125 ]
  %77 = phi i64 [ 0, %57 ], [ %126, %125 ]
  %78 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !782
  %80 = load ptr, ptr %56, align 8, !tbaa !493
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %75
  %83 = load i8, ptr %55, align 1, !tbaa !493
  %84 = zext i8 %83 to i32
  %85 = icmp eq ptr %79, %58
  %86 = add nuw nsw i32 %84, 3
  %87 = and i32 %86, 508
  %88 = select i1 %85, i32 %87, i32 %84
  switch i16 %17, label %99 [
    i16 76, label %89
    i16 74, label %89
    i16 77, label %94
    i16 75, label %94
  ]

89:                                               ; preds = %82, %82
  %90 = zext nneg i32 %88 to i64
  %91 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 5
  %92 = load i64, ptr %91, align 8, !tbaa !863
  %93 = add nsw i64 %92, %90
  store i64 %93, ptr %91, align 8, !tbaa !863
  br label %123

94:                                               ; preds = %82, %82
  %95 = zext nneg i32 %88 to i64
  %96 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 5
  %97 = load i64, ptr %96, align 8, !tbaa !863
  %98 = sub nsw i64 %97, %95
  store i64 %98, ptr %96, align 8, !tbaa !863
  br label %123

99:                                               ; preds = %82
  br i1 %60, label %100, label %128

100:                                              ; preds = %99
  %101 = load ptr, ptr %61, align 8, !tbaa !493
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 49
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !493
  %108 = icmp eq ptr %79, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !493
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 30
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !493
  %118 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 5
  %119 = load i64, ptr %118, align 8, !tbaa !863
  %120 = sub nsw i64 %119, %117
  store i64 %120, ptr %118, align 8, !tbaa !863
  br label %123

121:                                              ; preds = %109, %105, %100
  %122 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 3
  store i32 0, ptr %122, align 8, !tbaa !614
  br label %123

123:                                              ; preds = %89, %121, %115, %94, %75
  %124 = icmp ult i64 %77, 192
  br i1 %124, label %125, label %130

125:                                              ; preds = %123, %128
  %126 = add nuw nsw i64 %77, 64
  %127 = getelementptr inbounds i8, ptr %11, i64 %126
  br label %75, !llvm.loop !1184

128:                                              ; preds = %99
  %129 = icmp ult i64 %77, 192
  br i1 %129, label %125, label %131

130:                                              ; preds = %123
  br i1 %60, label %260, label %131

131:                                              ; preds = %128, %130, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %132 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %133

133:                                              ; preds = %190, %175, %131
  %134 = phi ptr [ %132, %131 ], [ %165, %175 ], [ %180, %190 ]
  %135 = load ptr, ptr %134, align 8, !tbaa !493
  br label %136

136:                                              ; preds = %133, %138, %144, %158, %50
  %137 = phi ptr [ %48, %50 ], [ %140, %158 ], [ %140, %144 ], [ %140, %138 ], [ %135, %133 ]
  br label %14

138:                                              ; preds = %14
  %139 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !493
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %136, !prof !1185

144:                                              ; preds = %138
  %145 = icmp ne ptr %10, null
  %146 = lshr i32 %16, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !493
  %151 = lshr i32 %141, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !493
  %156 = icmp ule i8 %150, %155
  %157 = select i1 %156, i1 %145, i1 false
  br i1 %157, label %158, label %136, !prof !1186

158:                                              ; preds = %144
  %159 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %140) #23
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %10, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !513
  %163 = icmp eq ptr %162, null
  br i1 %163, label %136, label %297, !prof !1187

164:                                              ; preds = %14
  %165 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %175
  %167 = phi ptr [ %11, %164 ], [ %177, %175 ]
  %168 = phi i64 [ 0, %164 ], [ %176, %175 ]
  %169 = getelementptr inbounds %struct.elim_table, ptr %167, i64 0, i32 8
  %170 = load ptr, ptr %169, align 8, !tbaa !781
  %171 = load ptr, ptr %165, align 8, !tbaa !493
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %175, !prof !1188

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.elim_table, ptr %167, i64 0, i32 3
  store i32 0, ptr %174, align 8, !tbaa !614
  br label %175

175:                                              ; preds = %166, %173
  %176 = add nuw nsw i64 %168, 64
  %177 = getelementptr inbounds i8, ptr %11, i64 %176
  %178 = icmp ult i64 %168, 192
  br i1 %178, label %166, label %133, !prof !1189, !llvm.loop !1190

179:                                              ; preds = %14
  %180 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %181

181:                                              ; preds = %179, %190
  %182 = phi ptr [ %11, %179 ], [ %192, %190 ]
  %183 = phi i64 [ 0, %179 ], [ %191, %190 ]
  %184 = getelementptr inbounds %struct.elim_table, ptr %182, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !782
  %186 = load ptr, ptr %180, align 8, !tbaa !493
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %190, !prof !1191

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.elim_table, ptr %182, i64 0, i32 3
  store i32 0, ptr %189, align 8, !tbaa !614
  br label %190

190:                                              ; preds = %181, %188
  %191 = add nuw nsw i64 %183, 64
  %192 = getelementptr inbounds i8, ptr %11, i64 %191
  %193 = icmp ult i64 %183, 192
  br i1 %193, label %181, label %133, !prof !1192, !llvm.loop !1193

194:                                              ; preds = %14
  %195 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !493
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 37
  br i1 %199, label %200, label %241, !prof !1194

200:                                              ; preds = %194
  %201 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  br label %202

202:                                              ; preds = %200, %235
  %203 = phi ptr [ %11, %200 ], [ %237, %235 ]
  %204 = phi i64 [ 0, %200 ], [ %236, %235 ]
  %205 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !782
  %207 = load ptr, ptr %195, align 8, !tbaa !493
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %235, !prof !1195

209:                                              ; preds = %202
  %210 = icmp eq ptr %206, %201
  br i1 %210, label %235, label %211, !prof !1196

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !493
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 49
  br i1 %216, label %217, label %233, !prof !1151

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !493
  %220 = icmp eq ptr %219, %206
  br i1 %220, label %221, label %233, !prof !1151

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !493
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 30
  br i1 %226, label %227, label %233, !prof !1151

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !493
  %230 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 5
  %231 = load i64, ptr %230, align 8, !tbaa !863
  %232 = sub nsw i64 %231, %229
  store i64 %232, ptr %230, align 8, !tbaa !863
  br label %235

233:                                              ; preds = %221, %217, %211
  %234 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 3
  store i32 0, ptr %234, align 8, !tbaa !614
  br label %235

235:                                              ; preds = %227, %233, %202, %209
  %236 = add nuw nsw i64 %204, 64
  %237 = getelementptr inbounds i8, ptr %11, i64 %236
  %238 = icmp ult i64 %204, 192
  br i1 %238, label %202, label %239, !prof !1197, !llvm.loop !1198

239:                                              ; preds = %235
  %240 = load ptr, ptr %195, align 8, !tbaa !493
  br label %241

241:                                              ; preds = %239, %194
  %242 = phi ptr [ %240, %239 ], [ %196, %194 ]
  tail call fastcc void @elimination_effects(ptr noundef %242, i32 noundef 0) #23
  %243 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
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
  %255 = load ptr, ptr %253, align 8, !tbaa !493
  br label %7

256:                                              ; preds = %14
  %257 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %258 = lshr i32 %16, 16
  %259 = and i32 %258, 255
  br label %248

260:                                              ; preds = %14, %130
  %261 = and i32 %16, 65535
  %262 = zext nneg i32 %261 to i64
  %263 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !493
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %297, label %266, !prof !1199

266:                                              ; preds = %260
  %267 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %262
  %268 = load ptr, ptr %267, align 8, !tbaa !513
  %269 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %270 = zext i8 %264 to i64
  br label %271

271:                                              ; preds = %266, %293
  %272 = phi i64 [ 0, %266 ], [ %294, %293 ]
  %273 = phi ptr [ %268, %266 ], [ %295, %293 ]
  %274 = load i8, ptr %273, align 1, !tbaa !493
  switch i8 %274, label %293 [
    i8 101, label %280
    i8 69, label %275
  ], !prof !1200

275:                                              ; preds = %271
  %276 = getelementptr inbounds [1 x %union.rtunion_def], ptr %269, i64 0, i64 %272
  %277 = load ptr, ptr %276, align 8, !tbaa !493
  %278 = load i32, ptr %277, align 8, !tbaa !755
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %283, label %293, !prof !1201

280:                                              ; preds = %271
  %281 = getelementptr inbounds [1 x %union.rtunion_def], ptr %269, i64 0, i64 %272
  %282 = load ptr, ptr %281, align 8, !tbaa !493
  tail call fastcc void @elimination_effects(ptr noundef %282, i32 noundef %13) #23
  br label %293

283:                                              ; preds = %275, %283
  %284 = phi i64 [ %288, %283 ], [ 0, %275 ]
  %285 = phi ptr [ %289, %283 ], [ %277, %275 ]
  %286 = getelementptr inbounds %struct.rtvec_def, ptr %285, i64 0, i32 1, i64 %284
  %287 = load ptr, ptr %286, align 8, !tbaa !513
  tail call fastcc void @elimination_effects(ptr noundef %287, i32 noundef %13) #23
  %288 = add nuw nsw i64 %284, 1
  %289 = load ptr, ptr %276, align 8, !tbaa !493
  %290 = load i32, ptr %289, align 8, !tbaa !755
  %291 = sext i32 %290 to i64
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %283, label %293, !prof !1202, !llvm.loop !1203

293:                                              ; preds = %283, %275, %271, %280
  %294 = add nuw nsw i64 %272, 1
  %295 = getelementptr inbounds i8, ptr %273, i64 1
  %296 = icmp eq i64 %294, %270
  br i1 %296, label %297, label %271, !prof !1204, !llvm.loop !1205

297:                                              ; preds = %158, %50, %46, %39, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %35, %293, %260, %31, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @eliminate_regs_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1206 !PGOFuncName !1207 {
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !513
  %6 = icmp eq ptr %5, null
  br i1 %6, label %410, label %7, !prof !967

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
  ], !prof !1208

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #23
  %16 = icmp slt i32 %15, 53
  br i1 %16, label %17, label %39, !prof !1209

17:                                               ; preds = %14
  %18 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %19

19:                                               ; preds = %17, %35
  %20 = phi ptr [ %18, %17 ], [ %37, %35 ]
  %21 = phi i64 [ 0, %17 ], [ %36, %35 ]
  %22 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !781
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %25, label %35, !prof !1210

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !614
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29, !prof !1211

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !782
  %32 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 6
  %33 = load i64, ptr %32, align 8, !tbaa !864
  %34 = tail call ptr @plus_constant(ptr noundef %31, i64 noundef %33) #22
  br label %410

35:                                               ; preds = %19, %25
  %36 = add nuw nsw i64 %21, 64
  %37 = getelementptr inbounds i8, ptr %18, i64 %36
  %38 = icmp ult i64 %21, 192
  br i1 %38, label %19, label %410, !prof !1212, !llvm.loop !1213

39:                                               ; preds = %14
  %40 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %41 = icmp eq ptr %40, null
  br i1 %41, label %410, label %42, !prof !1214

42:                                               ; preds = %39
  %43 = zext nneg i32 %15 to i64
  %44 = getelementptr inbounds i16, ptr %40, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !528
  %46 = icmp slt i16 %45, 0
  %47 = load ptr, ptr @reg_equiv_invariant, align 8
  %48 = icmp ne ptr %47, null
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %410, !prof !1215

50:                                               ; preds = %42
  %51 = getelementptr inbounds ptr, ptr %47, i64 %43
  %52 = load ptr, ptr %51, align 8, !tbaa !513
  %53 = icmp eq ptr %52, null
  br i1 %53, label %410, label %54, !prof !1216

54:                                               ; preds = %50
  %55 = icmp eq i8 %10, 0
  br i1 %55, label %56, label %61, !prof !1217

56:                                               ; preds = %54
  br i1 %8, label %67, label %57, !prof !1218

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
  %65 = load ptr, ptr @current_function_decl, align 8, !tbaa !513
  %66 = icmp eq ptr %65, null
  br i1 %66, label %410, label %9, !prof !1219

67:                                               ; preds = %57, %56
  %68 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !513
  %69 = getelementptr inbounds ptr, ptr %68, i64 %43
  store ptr null, ptr %69, align 8, !tbaa !513
  tail call fastcc void @alter_reg(i32 noundef %15, i32 noundef -1, i8 noundef zeroext 1) #23
  br label %410

70:                                               ; preds = %9
  %71 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !493
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %127, !prof !1220

76:                                               ; preds = %70
  %77 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %72) #23
  %78 = icmp ult i32 %77, 53
  br i1 %78, label %79, label %127, !prof !1221

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !493
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !527
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %127, !prof !1222

88:                                               ; preds = %79
  %89 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %90

90:                                               ; preds = %88, %123
  %91 = phi ptr [ %89, %88 ], [ %125, %123 ]
  %92 = phi i64 [ 0, %88 ], [ %124, %123 ]
  %93 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !781
  %95 = icmp eq ptr %94, %72
  br i1 %95, label %96, label %123, !prof !1223

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !614
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100, !prof !1224

100:                                              ; preds = %96
  %101 = icmp ne i32 %1, 0
  %102 = icmp eq i32 %83, 30
  %103 = and i1 %101, %102
  br i1 %103, label %107, label %104, !prof !1225

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 6
  %106 = load i64, ptr %105, align 8, !tbaa !864
  br label %117

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !493
  %110 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 6
  %111 = load i64, ptr %110, align 8, !tbaa !864
  %112 = sub nsw i64 0, %111
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %117, !prof !1226

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !782
  br label %410

117:                                              ; preds = %104, %107
  %118 = phi i64 [ %106, %104 ], [ %111, %107 ]
  %119 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !782
  %121 = tail call ptr @plus_constant(ptr noundef nonnull %81, i64 noundef %118) #22
  %122 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %120, ptr noundef %121) #22
  br label %410

123:                                              ; preds = %90, %96
  %124 = add nuw nsw i64 %92, 64
  %125 = getelementptr inbounds i8, ptr %89, i64 %124
  %126 = icmp ult i64 %92, 192
  br i1 %126, label %90, label %410, !prof !1227, !llvm.loop !1228

127:                                              ; preds = %79, %76, %70
  %128 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %72, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %129 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !493
  %131 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %130, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %132 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %133 = icmp eq ptr %132, null
  br i1 %133, label %410, label %134, !prof !1229

134:                                              ; preds = %127
  %135 = load ptr, ptr %71, align 8, !tbaa !493
  %136 = icmp eq ptr %128, %135
  br i1 %136, label %137, label %140, !prof !1230

137:                                              ; preds = %134
  %138 = load ptr, ptr %129, align 8, !tbaa !493
  %139 = icmp eq ptr %131, %138
  br i1 %139, label %410, label %140, !prof !1231

140:                                              ; preds = %137, %134
  %141 = load i32, ptr %128, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 49
  %144 = load i32, ptr %131, align 8
  %145 = and i32 %144, 65535
  br i1 %143, label %146, label %164, !prof !1232

146:                                              ; preds = %140
  %147 = icmp eq i32 %145, 37
  br i1 %147, label %148, label %163, !prof !1233

148:                                              ; preds = %146
  %149 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %131) #23
  %150 = icmp ugt i32 %149, 52
  br i1 %150, label %151, label %163, !prof !1234

151:                                              ; preds = %148
  %152 = zext i32 %149 to i64
  %153 = getelementptr inbounds i16, ptr %132, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !528
  %155 = icmp slt i16 %154, 0
  %156 = load ptr, ptr @reg_equiv_constant, align 8
  %157 = icmp ne ptr %156, null
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %163, !prof !1235

159:                                              ; preds = %151
  %160 = getelementptr inbounds ptr, ptr %156, i64 %152
  %161 = load ptr, ptr %160, align 8, !tbaa !513
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %182, !prof !1236

163:                                              ; preds = %159, %151, %148, %146
  br label %182

164:                                              ; preds = %140
  %165 = icmp eq i32 %145, 49
  %166 = icmp eq i32 %142, 37
  %167 = and i1 %166, %165
  br i1 %167, label %168, label %182, !prof !1237

168:                                              ; preds = %164
  %169 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %128) #23
  %170 = icmp ugt i32 %169, 52
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = zext i32 %169 to i64
  %173 = getelementptr inbounds i16, ptr %132, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !528
  %175 = icmp slt i16 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %178 = getelementptr inbounds ptr, ptr %177, i64 %172
  %179 = load ptr, ptr %178, align 8, !tbaa !513
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
  br i1 %189, label %190, label %410, !prof !1238

190:                                              ; preds = %182
  %191 = load i32, ptr %188, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 49
  br i1 %193, label %410, label %194, !prof !1239

194:                                              ; preds = %190
  %195 = load i32, ptr %11, align 8
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !513
  %199 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %197, ptr noundef nonnull %188, ptr noundef %198) #22
  br label %410

200:                                              ; preds = %9
  %201 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !493
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 37
  br i1 %205, label %206, label %255, !prof !1240

206:                                              ; preds = %200
  %207 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %202) #23
  %208 = icmp ult i32 %207, 53
  br i1 %208, label %209, label %255, !prof !1241

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !493
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 30
  br i1 %214, label %215, label %255, !prof !1242

215:                                              ; preds = %209
  %216 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %217

217:                                              ; preds = %215, %248
  %218 = phi ptr [ %216, %215 ], [ %250, %248 ]
  %219 = phi i64 [ 0, %215 ], [ %249, %248 ]
  %220 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !781
  %222 = icmp eq ptr %221, %202
  br i1 %222, label %223, label %248, !prof !1243

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 3
  %225 = load i32, ptr %224, align 8, !tbaa !614
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
  store i32 1, ptr %234, align 8, !tbaa !1150
  %235 = load ptr, ptr %210, align 8, !tbaa !493
  br label %236

236:                                              ; preds = %230, %230, %230, %233, %227
  %237 = phi ptr [ %211, %230 ], [ %211, %230 ], [ %211, %230 ], [ %235, %233 ], [ %211, %227 ]
  %238 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 9
  %239 = load ptr, ptr %238, align 8, !tbaa !782
  %240 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef 16, ptr noundef %239, ptr noundef %237) #22
  %241 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 6
  %242 = load i64, ptr %241, align 8, !tbaa !864
  %243 = load ptr, ptr %210, align 8, !tbaa !493
  %244 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !493
  %246 = mul nsw i64 %245, %242
  %247 = tail call ptr @plus_constant(ptr noundef %240, i64 noundef %246) #22
  br label %410

248:                                              ; preds = %217, %223
  %249 = add nuw nsw i64 %219, 64
  %250 = getelementptr inbounds i8, ptr %216, i64 %249
  %251 = icmp ult i64 %219, 192
  br i1 %251, label %217, label %255, !prof !1244, !llvm.loop !1245

252:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %253 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !493
  br label %255

255:                                              ; preds = %248, %252, %200, %206, %209
  %256 = phi ptr [ %254, %252 ], [ %202, %200 ], [ %202, %206 ], [ %202, %209 ], [ %202, %248 ]
  %257 = and i32 %12, 65535
  %258 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %259 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %256, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %260 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !493
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263, !prof !1246

263:                                              ; preds = %255
  %264 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %261, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  br label %265

265:                                              ; preds = %255, %263
  %266 = phi ptr [ %264, %263 ], [ null, %255 ]
  %267 = load ptr, ptr %258, align 8, !tbaa !493
  %268 = icmp eq ptr %259, %267
  br i1 %268, label %269, label %272, !prof !1247

269:                                              ; preds = %265
  %270 = load ptr, ptr %260, align 8, !tbaa !493
  %271 = icmp eq ptr %266, %270
  br i1 %271, label %410, label %272, !prof !1248

272:                                              ; preds = %265, %269
  %273 = load i32, ptr %11, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %257, i32 noundef %275, ptr noundef %259, ptr noundef %266) #22
  br label %410

277:                                              ; preds = %9
  %278 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !493
  %280 = icmp eq ptr %279, null
  br i1 %280, label %296, label %281, !prof !1249

281:                                              ; preds = %277
  %282 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %279, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %283 = load ptr, ptr %278, align 8, !tbaa !493
  %284 = icmp eq ptr %282, %283
  br i1 %284, label %296, label %285, !prof !1250

285:                                              ; preds = %281
  %286 = load i32, ptr %11, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = icmp eq i32 %288, 1
  %290 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !493
  br i1 %289, label %292, label %294, !prof !1251

292:                                              ; preds = %285
  %293 = icmp eq ptr %291, null
  br i1 %293, label %410, label %63, !prof !1252

294:                                              ; preds = %285
  %295 = tail call ptr @alloc_reg_note(i32 noundef %288, ptr noundef %282, ptr noundef %291) #22
  br label %296

296:                                              ; preds = %277, %281, %9, %294
  %297 = phi ptr [ %295, %294 ], [ %11, %9 ], [ %11, %281 ], [ %11, %277 ]
  %298 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1
  %299 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !493
  %301 = icmp eq ptr %300, null
  br i1 %301, label %410, label %302, !prof !1253

302:                                              ; preds = %296
  %303 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %300, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %304 = load ptr, ptr %299, align 8, !tbaa !493
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %410, label %306, !prof !1254

306:                                              ; preds = %302
  %307 = load i32, ptr %297, align 8
  %308 = and i32 %307, 65535
  %309 = lshr i32 %307, 16
  %310 = and i32 %309, 255
  %311 = load ptr, ptr %298, align 8, !tbaa !493
  %312 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %308, i32 noundef %310, ptr noundef %311, ptr noundef %303) #22
  br label %410

313:                                              ; preds = %9, %9
  %314 = and i32 %12, 65535
  %315 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %316 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !493
  %318 = load i32, ptr %317, align 8
  %319 = and i32 %318, 65535
  %320 = icmp eq i32 %319, 49
  br i1 %320, label %321, label %410

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !493
  %324 = load ptr, ptr %315, align 8, !tbaa !493
  %325 = icmp eq ptr %323, %324
  br i1 %325, label %326, label %410

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !493
  %329 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %328, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %330 = load ptr, ptr %316, align 8, !tbaa !493
  %331 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1, i32 0, i32 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !493
  %333 = icmp eq ptr %329, %332
  br i1 %333, label %410, label %334

334:                                              ; preds = %326
  %335 = load i32, ptr %11, align 8
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  %338 = load ptr, ptr %315, align 8, !tbaa !493
  %339 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %337, ptr noundef %338, ptr noundef %329) #22
  %340 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %314, i32 noundef %337, ptr noundef %338, ptr noundef %339) #22
  br label %410

341:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %342 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !493
  %344 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %343, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %345 = load ptr, ptr %342, align 8, !tbaa !493
  %346 = icmp eq ptr %344, %345
  br i1 %346, label %410, label %347, !prof !1255

347:                                              ; preds = %341
  %348 = and i32 %12, 65535
  %349 = load i32, ptr %11, align 8
  %350 = lshr i32 %349, 16
  %351 = and i32 %350, 255
  %352 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %348, i32 noundef %351, ptr noundef %344) #22
  br label %410

353:                                              ; preds = %9
  %354 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !493
  %356 = load i32, ptr %355, align 8
  %357 = and i32 %356, 65535
  %358 = icmp eq i32 %357, 37
  br i1 %358, label %359, label %380, !prof !1256

359:                                              ; preds = %353
  %360 = lshr i32 %12, 16
  %361 = and i32 %360, 255
  %362 = zext nneg i32 %361 to i64
  %363 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !493
  %365 = lshr i32 %356, 16
  %366 = and i32 %365, 255
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !493
  %370 = icmp ule i8 %364, %369
  %371 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %372 = icmp ne ptr %371, null
  %373 = select i1 %370, i1 %372, i1 false
  br i1 %373, label %374, label %380, !prof !1257

374:                                              ; preds = %359
  %375 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %355) #23
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds ptr, ptr %371, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !513
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %410, !prof !1258

380:                                              ; preds = %353, %359, %374
  %381 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %355, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %382 = load ptr, ptr %354, align 8, !tbaa !493
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %410, label %384, !prof !1259

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
  %396 = load i8, ptr %395, align 1, !tbaa !493
  %397 = zext nneg i32 %387 to i64
  %398 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !493
  %400 = icmp ugt i8 %399, %396
  br i1 %400, label %406, label %401

401:                                              ; preds = %391
  %402 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %403 = load i32, ptr %402, align 8, !tbaa !493
  %404 = zext i32 %403 to i64
  %405 = tail call ptr @adjust_address_1(ptr noundef nonnull %381, i32 noundef %387, i64 noundef %404, i32 noundef 0, i32 noundef 1) #22
  br label %410

406:                                              ; preds = %391, %384
  %407 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load i32, ptr %407, align 8, !tbaa !493
  %409 = tail call ptr @gen_rtx_SUBREG(i32 noundef %387, ptr noundef nonnull %381, i32 noundef %408) #22
  br label %410

410:                                              ; preds = %326, %182, %190, %194, %313, %321, %334, %272, %269, %137, %127, %419, %380, %401, %406, %341, %296, %302, %67, %425, %347, %306, %236, %117, %114, %29, %437, %4, %374, %519, %35, %123, %63, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %39, %42, %50, %292, %412
  %411 = phi ptr [ %418, %412 ], [ %429, %425 ], [ %352, %347 ], [ %340, %334 ], [ %312, %306 ], [ %247, %236 ], [ %116, %114 ], [ %122, %117 ], [ %34, %29 ], [ %11, %67 ], [ %297, %302 ], [ %297, %296 ], [ %11, %341 ], [ %405, %401 ], [ %409, %406 ], [ %11, %380 ], [ %11, %419 ], [ %11, %137 ], [ %11, %127 ], [ %276, %272 ], [ %11, %269 ], [ %11, %321 ], [ %11, %313 ], [ %188, %182 ], [ %188, %190 ], [ %199, %194 ], [ %11, %326 ], [ %11, %437 ], [ %0, %4 ], [ %11, %374 ], [ %521, %519 ], [ %11, %35 ], [ %11, %123 ], [ null, %292 ], [ %11, %50 ], [ %11, %42 ], [ %11, %39 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %64, %63 ]
  ret ptr %411

412:                                              ; preds = %9
  %413 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !493
  %415 = lshr i32 %12, 16
  %416 = and i32 %415, 255
  %417 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %414, i32 noundef %416, ptr noundef %2, i8 noundef zeroext 1) #23
  %418 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %11, ptr noundef %417) #22
  br label %410

419:                                              ; preds = %9
  %420 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !493
  %422 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %421, i32 noundef 0, ptr noundef %2, i8 noundef zeroext 0) #23
  %423 = load ptr, ptr %420, align 8, !tbaa !493
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
  %441 = load i8, ptr %440, align 1, !tbaa !493
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %410, label %443, !prof !1260

443:                                              ; preds = %437
  %444 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %439
  %445 = load ptr, ptr %444, align 8, !tbaa !513
  %446 = zext i8 %441 to i64
  br label %447

447:                                              ; preds = %443, %519
  %448 = phi i64 [ 0, %443 ], [ %522, %519 ]
  %449 = phi ptr [ %11, %443 ], [ %521, %519 ]
  %450 = phi i32 [ 0, %443 ], [ %520, %519 ]
  %451 = phi ptr [ %445, %443 ], [ %523, %519 ]
  %452 = load i8, ptr %451, align 1, !tbaa !493
  switch i8 %452, label %519 [
    i8 101, label %459
    i8 69, label %453
  ], !prof !1261

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %455 = getelementptr inbounds [1 x %union.rtunion_def], ptr %454, i64 0, i64 %448
  %456 = load ptr, ptr %455, align 8, !tbaa !493
  %457 = load i32, ptr %456, align 8, !tbaa !755
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %475, label %519

459:                                              ; preds = %447
  %460 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %461 = getelementptr inbounds [1 x %union.rtunion_def], ptr %460, i64 0, i64 %448
  %462 = load ptr, ptr %461, align 8, !tbaa !493
  %463 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %462, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %464 = load ptr, ptr %461, align 8, !tbaa !493
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
  store ptr %463, ptr %474, align 8, !tbaa !493
  br label %519

475:                                              ; preds = %453, %506
  %476 = phi i64 [ %514, %506 ], [ 0, %453 ]
  %477 = phi ptr [ %515, %506 ], [ %456, %453 ]
  %478 = phi ptr [ %512, %506 ], [ %455, %453 ]
  %479 = phi i32 [ %510, %506 ], [ 0, %453 ]
  %480 = phi ptr [ %509, %506 ], [ %449, %453 ]
  %481 = phi i32 [ %508, %506 ], [ %450, %453 ]
  %482 = getelementptr inbounds %struct.rtvec_def, ptr %477, i64 0, i32 1, i64 %476
  %483 = load ptr, ptr %482, align 8, !tbaa !513
  %484 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %483, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %485 = load ptr, ptr %478, align 8, !tbaa !493
  %486 = getelementptr inbounds %struct.rtvec_def, ptr %485, i64 0, i32 1, i64 %476
  %487 = load ptr, ptr %486, align 8, !tbaa !513
  %488 = icmp eq ptr %484, %487
  %489 = icmp ne i32 %479, 0
  %490 = select i1 %488, i1 true, i1 %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %475
  %492 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1
  %493 = getelementptr inbounds [1 x %union.rtunion_def], ptr %492, i64 0, i64 %448
  %494 = load ptr, ptr %493, align 8, !tbaa !493
  br label %506

495:                                              ; preds = %475
  %496 = getelementptr inbounds %struct.rtvec_def, ptr %485, i64 0, i32 1
  %497 = load i32, ptr %485, align 8, !tbaa !755
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
  store ptr %498, ptr %505, align 8, !tbaa !493
  br label %506

506:                                              ; preds = %491, %502
  %507 = phi ptr [ %494, %491 ], [ %498, %502 ]
  %508 = phi i32 [ %481, %491 ], [ 1, %502 ]
  %509 = phi ptr [ %480, %491 ], [ %503, %502 ]
  %510 = phi i32 [ %479, %491 ], [ 1, %502 ]
  %511 = getelementptr inbounds %struct.rtx_def, ptr %509, i64 0, i32 1
  %512 = getelementptr inbounds [1 x %union.rtunion_def], ptr %511, i64 0, i64 %448
  %513 = getelementptr inbounds %struct.rtvec_def, ptr %507, i64 0, i32 1, i64 %476
  store ptr %484, ptr %513, align 8, !tbaa !513
  %514 = add nuw nsw i64 %476, 1
  %515 = load ptr, ptr %512, align 8, !tbaa !493
  %516 = load i32, ptr %515, align 8, !tbaa !755
  %517 = sext i32 %516 to i64
  %518 = icmp slt i64 %514, %517
  br i1 %518, label %475, label %519, !llvm.loop !1262

519:                                              ; preds = %506, %453, %447, %470
  %520 = phi i32 [ %471, %470 ], [ %450, %447 ], [ %450, %453 ], [ %508, %506 ]
  %521 = phi ptr [ %472, %470 ], [ %449, %447 ], [ %449, %453 ], [ %509, %506 ]
  %522 = add nuw nsw i64 %448, 1
  %523 = getelementptr inbounds i8, ptr %451, i64 1
  %524 = icmp eq i64 %522, %446
  br i1 %524, label %410, label %447, !prof !1263, !llvm.loop !1264
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @check_eliminable_occurrences(ptr noundef readonly %0) unnamed_addr #17 !prof !1265 !PGOFuncName !1266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3, !prof !1267

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %24, !prof !1268

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #23
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %24, !prof !1269

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ %11, %10 ], [ %22, %20 ]
  %14 = phi i64 [ 0, %10 ], [ %21, %20 ]
  %15 = getelementptr inbounds %struct.elim_table, ptr %13, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !781
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %20, !prof !1270

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.elim_table, ptr %13, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !614
  br label %20

20:                                               ; preds = %12, %18
  %21 = add nuw nsw i64 %14, 64
  %22 = getelementptr inbounds i8, ptr %11, i64 %21
  %23 = icmp ult i64 %14, 192
  br i1 %23, label %12, label %60, !prof !1271, !llvm.loop !1272

24:                                               ; preds = %7, %3
  %25 = zext nneg i32 %5 to i64
  %26 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !493
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %60, label %29, !prof !1273

29:                                               ; preds = %24
  %30 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !513
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = zext i8 %27 to i64
  br label %34

34:                                               ; preds = %29, %56
  %35 = phi i64 [ 0, %29 ], [ %57, %56 ]
  %36 = phi ptr [ %31, %29 ], [ %58, %56 ]
  %37 = load i8, ptr %36, align 1, !tbaa !493
  switch i8 %37, label %56 [
    i8 101, label %43
    i8 69, label %38
  ], !prof !1274

38:                                               ; preds = %34
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !493
  %41 = load i32, ptr %40, align 8, !tbaa !755
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %46, label %56, !prof !1201

43:                                               ; preds = %34
  %44 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %35
  %45 = load ptr, ptr %44, align 8, !tbaa !493
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %45) #23
  br label %56

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %38 ]
  %48 = phi ptr [ %52, %46 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !513
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %50) #23
  %51 = add nuw nsw i64 %47, 1
  %52 = load ptr, ptr %39, align 8, !tbaa !493
  %53 = load i32, ptr %52, align 8, !tbaa !755
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %46, label %56, !prof !1202, !llvm.loop !1275

56:                                               ; preds = %46, %38, %34, %43
  %57 = add nuw nsw i64 %35, 1
  %58 = getelementptr inbounds i8, ptr %36, i64 1
  %59 = icmp eq i64 %57, %33
  br i1 %59, label %60, label %34, !prof !1276, !llvm.loop !1277

60:                                               ; preds = %56, %20, %24, %1
  ret void
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reload_regs(ptr noundef %0) unnamed_addr #0 !prof !1162 !PGOFuncName !1278 {
  %2 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !875
  %4 = icmp sgt i32 %3, 0
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !1166
  br i1 %4, label %7, label %33, !prof !1279

7:                                                ; preds = %1
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi i64 [ 0, %7 ], [ %31, %28 ]
  %11 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !1280
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14, !prof !1282

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %16 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 10
  store i32 %15, ptr %16, align 8, !tbaa !1283
  %17 = sext i32 %15 to i64
  %18 = load i32, ptr %12, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %17, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !493
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !1284
  br label %28

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 10
  store i32 -1, ptr %27, align 8, !tbaa !1283
  br label %28

28:                                               ; preds = %26, %14
  %29 = trunc i64 %10 to i16
  %30 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %10
  store i16 %29, ptr %30, align 2, !tbaa !528
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %33, label %9, !prof !1285, !llvm.loop !1286

33:                                               ; preds = %28, %1
  store i32 %3, ptr @n_reloads, align 4, !tbaa !527
  %34 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  %35 = sext i32 %3 to i64
  %36 = mul nsw i64 %35, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @rld, ptr align 8 %6, i64 %36, i1 false)
  store i64 0, ptr @used_spill_regs_local, align 8, !tbaa !545
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39, !prof !1167

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !811
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !493
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.11, i32 noundef %43) #23
  %45 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %39, %33
  %48 = phi i64 [ %46, %39 ], [ %35, %33 ]
  tail call void @spec_qsort(ptr noundef nonnull @reload_order, i64 noundef %48, i64 noundef 2, ptr noundef nonnull @reload_reg_class_lower) #22
  tail call fastcc void @order_regs_for_reload(ptr noundef nonnull %0) #23
  %49 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %53, label %51, !prof !1279

51:                                               ; preds = %47
  %52 = sext i32 %49 to i64
  br label %102

53:                                               ; preds = %47, %97
  %54 = phi i32 [ %98, %97 ], [ %49, %47 ]
  %55 = phi i64 [ %99, %97 ], [ 0, %47 ]
  %56 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !528
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !1287
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %71, !prof !1288

62:                                               ; preds = %53
  %63 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !1289
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71, !prof !1290

66:                                               ; preds = %62
  %67 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 18
  %68 = load i8, ptr %67, align 8
  %69 = and i8 %68, 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %97, label %71, !prof !1291

71:                                               ; preds = %66, %62, %53
  %72 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 18
  %73 = load i8, ptr %72, align 8
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %97, !prof !1292

76:                                               ; preds = %71
  %77 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa !1283
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %97, !prof !1293

80:                                               ; preds = %76
  %81 = trunc i64 %55 to i32
  %82 = tail call fastcc i32 @find_reg(ptr noundef %0, i32 noundef %81) #23, !range !595
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !1294

84:                                               ; preds = %80
  %85 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %97

86:                                               ; preds = %80
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = sext i16 %57 to i32
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.12, i32 noundef %90) #23
  br label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !811
  %95 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !1295
  tail call fastcc void @spill_failure(ptr noundef %94, i32 noundef %96) #23
  store i1 true, ptr @failure, align 4
  br label %110

97:                                               ; preds = %84, %76, %71, %66
  %98 = phi i32 [ %85, %84 ], [ %54, %76 ], [ %54, %71 ], [ %54, %66 ]
  %99 = add nuw nsw i64 %55, 1
  %100 = sext i32 %98 to i64
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %53, label %102, !prof !1296, !llvm.loop !1297

102:                                              ; preds = %97, %51
  %103 = phi i64 [ %52, %51 ], [ %100, %97 ]
  %104 = load i64, ptr @used_spill_regs_local, align 8, !tbaa !545
  %105 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 10
  store i64 %104, ptr %105, align 8, !tbaa !840
  %106 = load i64, ptr @used_spill_regs, align 8, !tbaa !545
  %107 = or i64 %106, %104
  store i64 %107, ptr @used_spill_regs, align 8, !tbaa !545
  %108 = load ptr, ptr %34, align 8, !tbaa !1166
  %109 = mul nsw i64 %103, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %108, ptr nonnull align 16 @rld, i64 %109, i1 false)
  br label %110

110:                                              ; preds = %92, %102
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @reload_reg_class_lower(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !1298 !PGOFuncName !1299 {
  %3 = load i16, ptr %0, align 2, !tbaa !528
  %4 = sext i16 %3 to i32
  %5 = load i16, ptr %1, align 2, !tbaa !528
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
  br i1 %18, label %19, label %48, !prof !1300

19:                                               ; preds = %2
  %20 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %12, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !1295
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !527
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !1295
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !527
  %32 = icmp eq i32 %31, 1
  %33 = sext i1 %32 to i32
  %34 = add nsw i32 %33, %26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48, !prof !1301

36:                                               ; preds = %19
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %12, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !1284
  %39 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !1284
  %41 = sub i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48, !prof !1302

43:                                               ; preds = %36
  %44 = sub nsw i32 %28, %21
  %45 = icmp eq i32 %28, %21
  %46 = sub nsw i32 %4, %6
  %47 = select i1 %45, i32 %46, i32 %44, !prof !1303
  br label %48

48:                                               ; preds = %43, %36, %19, %2
  %49 = phi i32 [ %17, %2 ], [ %34, %19 ], [ %41, %36 ], [ %47, %43 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @order_regs_for_reload(ptr noundef %0) unnamed_addr #0 !prof !1162 !PGOFuncName !1304 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = load i64, ptr @fixed_reg_set, align 8, !tbaa !545
  store i64 %6, ptr @bad_spill_regs, align 8, !tbaa !545
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_cost, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_add_cost, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @hard_regno_to_pseudo_regno, i8 -1, i64 212, i1 false), !tbaa !527
  store i32 53, ptr %2, align 4, !tbaa !527
  store i64 0, ptr %3, align 8, !tbaa !545
  %7 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %7) #22
  store i64 0, ptr %4, align 8, !tbaa !545
  %8 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %8) #22
  %9 = load i64, ptr %3, align 8, !tbaa !545
  %10 = load i64, ptr @bad_spill_regs, align 8, !tbaa !545
  %11 = or i64 %10, %9
  %12 = load i64, ptr %4, align 8, !tbaa !545
  %13 = or i64 %12, %11
  store i64 %13, ptr @bad_spill_regs, align 8, !tbaa !545
  call void @bitmap_clear(ptr noundef nonnull @pseudos_counted) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 53, ptr noundef nonnull %2) #23
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !525
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16, !prof !839

16:                                               ; preds = %1, %16
  %17 = load i32, ptr %2, align 4, !tbaa !527
  call fastcc void @count_pseudo(i32 noundef %17) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #23
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !525
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %16, !prof !841, !llvm.loop !1305

20:                                               ; preds = %16, %1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 53, ptr noundef nonnull %2) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !525
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !843

23:                                               ; preds = %20, %23
  %24 = load i32, ptr %2, align 4, !tbaa !527
  call fastcc void @count_pseudo(i32 noundef %24) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #23
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !525
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %23, !prof !844, !llvm.loop !1306

27:                                               ; preds = %23, %20
  call void @bitmap_clear(ptr noundef nonnull @pseudos_counted) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_reg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1307 !PGOFuncName !1308 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !528
  %8 = sext i16 %7 to i32
  %9 = sext i16 %7 to i64
  %10 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %11 = load i64, ptr @bad_spill_regs, align 8, !tbaa !545
  %12 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !545
  %13 = or i64 %12, %11
  %14 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !1295
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !545
  %19 = xor i64 %18, -1
  %20 = or i64 %13, %19
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %24, !prof !1309

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
  %35 = load i16, ptr %34, align 2, !tbaa !528
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %36, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !1283
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %76, !prof !1310

40:                                               ; preds = %30
  %41 = sext i16 %35 to i32
  %42 = tail call fastcc i32 @reloads_conflict(i32 noundef %41, i32 noundef %8) #23, !range !595
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44, !prof !1311

44:                                               ; preds = %40
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %36, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !1284
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48, !prof !1312

48:                                               ; preds = %44
  %49 = zext i32 %46 to i64
  %50 = load i32, ptr %37, align 8, !tbaa !1283
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
  br i1 %71, label %72, label %59, !prof !1313, !llvm.loop !1314

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
  br i1 %80, label %24, label %30, !prof !1317, !llvm.loop !1318

81:                                               ; preds = %24, %223
  %82 = phi i64 [ 0, %24 ], [ %227, %223 ]
  %83 = phi i32 [ 2147483647, %24 ], [ %226, %223 ]
  %84 = phi i32 [ -1, %24 ], [ %225, %223 ]
  %85 = phi i32 [ %25, %24 ], [ %224, %223 ]
  %86 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %82
  %87 = load i32, ptr %86, align 4, !tbaa !527
  %88 = zext i32 %87 to i64
  %89 = shl nuw i64 1, %88
  %90 = and i64 %89, %20
  %91 = icmp eq i64 %90, 0
  %92 = and i64 %89, %26
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %223, !prof !1319

95:                                               ; preds = %81
  %96 = load i32, ptr %27, align 4, !tbaa !1320
  %97 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %87, i32 noundef %96) #22
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %223, label %99, !prof !1321

99:                                               ; preds = %95
  %100 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %88
  %101 = load i32, ptr %100, align 4, !tbaa !527
  %102 = load i32, ptr %27, align 4, !tbaa !1320
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %88, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !493
  %106 = zext i8 %105 to i32
  %107 = icmp ugt i8 %105, 1
  br i1 %107, label %108, label %131, !prof !1322

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
  %118 = load i32, ptr %117, align 4, !tbaa !527
  %119 = add nsw i32 %118, %113
  %120 = shl nuw i64 1, %116
  %121 = and i64 %120, %20
  %122 = icmp eq i64 %121, 0
  %123 = and i64 %120, %26
  %124 = icmp eq i64 %123, 0
  %125 = select i1 %122, i1 %124, i1 false
  %126 = select i1 %125, i32 %112, i32 0, !prof !1323
  %127 = add nuw nsw i64 %111, 1
  %128 = icmp eq i64 %127, %109
  br i1 %128, label %129, label %110, !prof !1324, !llvm.loop !1325

129:                                              ; preds = %110
  %130 = icmp eq i32 %126, 0
  br i1 %130, label %223, label %131, !prof !1326

131:                                              ; preds = %99, %129
  %132 = phi i32 [ %119, %129 ], [ %101, %99 ]
  %133 = phi i32 [ %106, %129 ], [ 1, %99 ]
  %134 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %185, label %136, !prof !1327

136:                                              ; preds = %131
  %137 = icmp eq i8 %105, 0
  br i1 %137, label %165, label %138, !prof !1328

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
  %147 = load i32, ptr %146, align 4, !tbaa !527
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %161, label %149, !prof !1329

149:                                              ; preds = %140
  %150 = icmp eq i32 %142, 0
  br i1 %150, label %157, label %151, !prof !1330

151:                                              ; preds = %149
  %152 = add i32 %142, -1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !527
  %156 = icmp eq i32 %155, %147
  br i1 %156, label %161, label %157, !prof !1331

157:                                              ; preds = %151, %149
  %158 = add i32 %142, 1
  %159 = zext i32 %142 to i64
  %160 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %159
  store i32 %147, ptr %160, align 4, !tbaa !527
  br label %161

161:                                              ; preds = %151, %157, %140
  %162 = phi i32 [ %142, %140 ], [ %158, %157 ], [ %142, %151 ]
  %163 = add nuw nsw i64 %141, 1
  %164 = icmp eq i64 %163, %139
  br i1 %164, label %165, label %140, !prof !1332, !llvm.loop !1333

165:                                              ; preds = %161, %136
  %166 = phi i32 [ 0, %136 ], [ %162, %161 ]
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %167
  store i32 -1, ptr %168, align 4, !tbaa !527
  %169 = icmp slt i32 %84, 0
  br i1 %169, label %176, label %170, !prof !1334

170:                                              ; preds = %165
  %171 = load ptr, ptr %10, align 8, !tbaa !1289
  %172 = load ptr, ptr %28, align 8, !tbaa !1287
  %173 = load ptr, ptr %29, align 8, !tbaa !811
  %174 = tail call zeroext i8 @ira_better_spill_reload_regno_p(ptr noundef nonnull @find_reg.regno_pseudo_regs, ptr noundef nonnull @find_reg.best_regno_pseudo_regs, ptr noundef %171, ptr noundef %172, ptr noundef %173) #22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %223, label %176, !prof !1335

176:                                              ; preds = %170, %165
  br label %177

177:                                              ; preds = %176, %177
  %178 = phi i32 [ %184, %177 ], [ 0, %176 ]
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !527
  %182 = getelementptr inbounds [53 x i32], ptr @find_reg.best_regno_pseudo_regs, i64 0, i64 %179
  store i32 %181, ptr %182, align 4, !tbaa !527
  %183 = icmp slt i32 %181, 0
  %184 = add i32 %178, 1
  br i1 %183, label %223, label %177, !prof !1336

185:                                              ; preds = %131
  %186 = load ptr, ptr %10, align 8, !tbaa !1289
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
  %199 = load ptr, ptr %28, align 8, !tbaa !1287
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
  %217 = load i32, ptr %216, align 4, !tbaa !527
  %218 = sext i32 %84 to i64
  %219 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !527
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
  br i1 %228, label %229, label %81, !prof !1337, !llvm.loop !1338

229:                                              ; preds = %223
  store i32 %224, ptr %3, align 4, !tbaa !527
  %230 = icmp eq i32 %225, -1
  br i1 %230, label %292, label %231, !prof !1294

231:                                              ; preds = %229
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234, !prof !1339

234:                                              ; preds = %231
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %232, ptr noundef nonnull @.str.13, i32 noundef %225, i32 noundef %8) #23
  br label %236

236:                                              ; preds = %234, %231
  %237 = sext i32 %225 to i64
  %238 = load i32, ptr %27, align 4, !tbaa !1320
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %237, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !493
  %242 = zext i8 %241 to i32
  %243 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 6
  store i32 %242, ptr %243, align 8, !tbaa !1284
  %244 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 10
  store i32 %225, ptr %244, align 8, !tbaa !1283
  %245 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %245, i32 noundef 53, ptr noundef nonnull %3) #23
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !525
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %253, label %248, !prof !1340

248:                                              ; preds = %236, %248
  %249 = load i32, ptr %243, align 8, !tbaa !1284
  %250 = load i32, ptr %3, align 4, !tbaa !527
  tail call fastcc void @count_spilled_pseudo(i32 noundef %225, i32 noundef %249, i32 noundef %250) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !525
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %248, !prof !1341, !llvm.loop !1342

253:                                              ; preds = %248, %236
  %254 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %254, i32 noundef 53, ptr noundef nonnull %3) #23
  %255 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !525
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %260, !prof !1343

257:                                              ; preds = %260, %253
  %258 = load i32, ptr %243, align 8, !tbaa !1284
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %292, label %265, !prof !1340

260:                                              ; preds = %253, %260
  %261 = load i32, ptr %243, align 8, !tbaa !1284
  %262 = load i32, ptr %3, align 4, !tbaa !527
  tail call fastcc void @count_spilled_pseudo(i32 noundef %225, i32 noundef %261, i32 noundef %262) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %263 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !525
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %257, label %260, !prof !1344, !llvm.loop !1345

265:                                              ; preds = %257, %284
  %266 = phi i64 [ %288, %284 ], [ 0, %257 ]
  %267 = trunc i64 %266 to i32
  %268 = add i32 %225, %267
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !527
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273, !prof !1346

273:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2020, ptr noundef nonnull @.str.2) #22
  br label %274

274:                                              ; preds = %265, %273
  %275 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %269
  %276 = load i32, ptr %275, align 4, !tbaa !527
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278, !prof !1346

278:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2021, ptr noundef nonnull @.str.2) #22
  br label %279

279:                                              ; preds = %274, %278
  %280 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %269
  %281 = load i32, ptr %280, align 4, !tbaa !527
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %284, label %283, !prof !1346

283:                                              ; preds = %279
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2022, ptr noundef nonnull @.str.2) #22
  br label %284

284:                                              ; preds = %279, %283
  %285 = shl nuw i64 1, %269
  %286 = load i64, ptr @used_spill_regs_local, align 8, !tbaa !545
  %287 = or i64 %286, %285
  store i64 %287, ptr @used_spill_regs_local, align 8, !tbaa !545
  %288 = add nuw nsw i64 %266, 1
  %289 = load i32, ptr %243, align 8, !tbaa !1284
  %290 = zext i32 %289 to i64
  %291 = icmp ult i64 %288, %290
  br i1 %291, label %265, label %292, !prof !1347, !llvm.loop !1348

292:                                              ; preds = %284, %257, %229
  %293 = phi i32 [ 0, %229 ], [ 1, %257 ], [ 1, %284 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %293
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spill_failure(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !734 !PGOFuncName !1349 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !493
  %6 = tail call i32 @asm_noperands(ptr noundef %5) #22
  %7 = icmp sgt i32 %6, -1
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  br i1 %7, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef %10) #22
  br label %20

12:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef %10) #22
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 8, !tbaa !493
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.16, i32 noundef %16) #23
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !513
  tail call void @debug_reload_to_stream(ptr noundef %18) #22
  br label %19

19:                                               ; preds = %15, %12
  tail call void @_fatal_insn(ptr noundef nonnull @.str.17, ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 2162, ptr noundef nonnull @.str.2) #22
  br label %20

20:                                               ; preds = %19, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_pseudo(i32 noundef %0) unnamed_addr #0 !prof !1350 !PGOFuncName !1351 {
  %2 = load ptr, ptr @reg_info_p, align 8, !tbaa !513
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.reg_info_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !1352
  %6 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %7 = getelementptr inbounds i16, ptr %6, i64 %3
  %8 = load i16, ptr %7, align 2, !tbaa !528
  %9 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @pseudos_counted, i32 noundef %0) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50, !prof !1354

11:                                               ; preds = %1
  %12 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @spilled_pseudos, i32 noundef %0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50, !prof !1355

14:                                               ; preds = %11
  %15 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %16 = icmp ne i8 %15, 0
  %17 = icmp slt i16 %8, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %50, label %19, !prof !1356

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @pseudos_counted, i32 noundef %0) #22
  %21 = icmp sgt i16 %8, -1
  br i1 %21, label %23, label %22, !prof !1357

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1796, ptr noundef nonnull @.str.2) #22
  br label %23

23:                                               ; preds = %19, %22
  %24 = sext i16 %8 to i64
  %25 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !527
  %27 = add nsw i32 %26, %5
  store i32 %27, ptr %25, align 4, !tbaa !527
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %29 = getelementptr inbounds ptr, ptr %28, i64 %3
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %24, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !493
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38, !prof !1358

38:                                               ; preds = %23
  %39 = zext i8 %36 to i64
  %40 = sext i16 %8 to i64
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ %39, %38 ], [ %43, %41 ]
  %43 = add nsw i64 %42, -1
  %44 = add nsw i64 %43, %40
  %45 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %44
  store i32 %0, ptr %45, align 4, !tbaa !527
  %46 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !527
  %48 = add nsw i32 %47, %5
  store i32 %48, ptr %46, align 4, !tbaa !527
  %49 = icmp ugt i64 %42, 1
  br i1 %49, label %41, label %50, !prof !1359, !llvm.loop !1360

50:                                               ; preds = %41, %23, %1, %11, %14
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reloads_conflict(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1361 !PGOFuncName !1362 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 17
  %6 = load i32, ptr %5, align 4, !tbaa !1363
  %7 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !1364
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !1364
  %11 = icmp eq i32 %6, 9
  br i1 %11, label %88, label %12, !prof !1365

12:                                               ; preds = %2
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !1363
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
  ], !prof !1366

15:                                               ; preds = %12
  %16 = icmp ult i32 %6, 9
  br i1 %16, label %83, label %17

17:                                               ; preds = %83, %15
  %18 = add i32 %6, -3
  %19 = icmp ult i32 %18, 2
  %20 = icmp sgt i32 %10, %8
  %21 = select i1 %19, i1 %20, i1 false, !prof !1367
  br label %88

22:                                               ; preds = %12
  %23 = icmp eq i32 %6, 3
  %24 = icmp eq i32 %8, %10
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp eq i32 %6, 0
  %27 = icmp slt i32 %10, %8
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %25, i1 true, i1 %28, !prof !1368
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
  %45 = select i1 %41, i1 true, i1 %44, !prof !1369
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
  br i1 %56, label %88, label %57, !prof !1370

57:                                               ; preds = %54
  %58 = icmp eq i32 %6, 7
  br i1 %58, label %59, label %88, !prof !1371

59:                                               ; preds = %57
  %60 = tail call fastcc zeroext i8 @reloads_unique_chain_p(i32 noundef %0, i32 noundef %1) #23, !range !525
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %88, label %62, !prof !1372

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
  br i1 %70, label %88, label %71, !prof !1373

71:                                               ; preds = %68
  %72 = add i32 %6, -5
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %88, !prof !1373

74:                                               ; preds = %71
  %75 = icmp sge i32 %10, %8
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

88:                                               ; preds = %83, %17, %12, %68, %71, %74, %54, %59, %62, %57, %2, %82, %80, %76, %65, %46, %38, %30, %22
  %89 = phi i1 [ false, %82 ], [ %81, %80 ], [ %79, %76 ], [ %67, %65 ], [ %53, %46 ], [ %45, %38 ], [ %37, %30 ], [ %29, %22 ], [ true, %2 ], [ true, %54 ], [ false, %57 ], [ true, %59 ], [ %64, %62 ], [ true, %68 ], [ %75, %74 ], [ false, %71 ], [ true, %12 ], [ %21, %17 ], [ true, %83 ]
  %90 = zext i1 %89 to i32
  ret i32 %90
}

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ira_better_spill_reload_regno_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_spilled_pseudo(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1374 !PGOFuncName !1375 {
  %4 = load ptr, ptr @reg_info_p, align 8, !tbaa !513
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.reg_info_t, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !1352
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %9 = getelementptr inbounds i16, ptr %8, i64 %5
  %10 = load i16, ptr %9, align 2, !tbaa !528
  %11 = sext i16 %10 to i64
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %13 = getelementptr inbounds ptr, ptr %12, i64 %5
  %14 = load ptr, ptr %13, align 8, !tbaa !513
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !493
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %23 = icmp ne i8 %22, 0
  %24 = icmp slt i16 %10, 0
  %25 = and i1 %24, %23
  br i1 %25, label %62, label %26, !prof !1376

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
  br i1 %35, label %36, label %62, !prof !1377

36:                                               ; preds = %26
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %2) #22
  %38 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %11
  %39 = load i32, ptr %38, align 4, !tbaa !527
  %40 = sub nsw i32 %39, %7
  store i32 %40, ptr %38, align 4, !tbaa !527
  %41 = icmp eq i8 %20, 0
  br i1 %41, label %62, label %42, !prof !1378

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
  tail call void @llvm.memset.p0.i64(ptr align 4 %50, i8 -1, i64 %52, i1 false), !tbaa !527
  %53 = sext i16 %10 to i64
  br label %54

54:                                               ; preds = %42, %54
  %55 = phi i64 [ %51, %42 ], [ %56, %54 ]
  %56 = add nsw i64 %55, -1
  %57 = add nsw i64 %56, %53
  %58 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !527
  %60 = sub nsw i32 %59, %7
  store i32 %60, ptr %58, align 4, !tbaa !527
  %61 = icmp ugt i64 %55, 1
  br i1 %61, label %54, label %62, !prof !1379, !llvm.loop !1380

62:                                               ; preds = %54, %36, %26, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reloads_unique_chain_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1381 !PGOFuncName !1382 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1289
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7, !prof !1383

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1289
  %11 = icmp eq ptr %10, null
  br i1 %11, label %76, label %12, !prof !1383

12:                                               ; preds = %7
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1287
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %76, !prof !1372

16:                                               ; preds = %12
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1287
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %76, !prof !1372

20:                                               ; preds = %16
  %21 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !1364
  %23 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !1364
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %76, !prof !1372

26:                                               ; preds = %20
  %27 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %10) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %76, !prof !1372

29:                                               ; preds = %26
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 18
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %76, !prof !1372

34:                                               ; preds = %29
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 18
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %76, !prof !1372

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !1289
  %41 = load ptr, ptr %9, align 8, !tbaa !1289
  %42 = tail call i32 @reg_mentioned_p(ptr noundef %40, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49, !prof !1372

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8, !tbaa !1289
  %46 = load ptr, ptr %4, align 8, !tbaa !1289
  %47 = tail call i32 @reg_mentioned_p(ptr noundef %45, ptr noundef %46) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49, !prof !1372

49:                                               ; preds = %44, %39
  %50 = load i32, ptr @n_reloads, align 4, !tbaa !527
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
  %63 = load ptr, ptr %62, align 8, !tbaa !1289
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8, !tbaa !1289
  %67 = tail call i32 @reg_mentioned_p(ptr noundef %66, ptr noundef nonnull %63) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %71

71:                                               ; preds = %69, %55, %61
  %72 = phi i32 [ %70, %69 ], [ %56, %55 ], [ %56, %61 ]
  %73 = add nuw nsw i64 %57, 1
  %74 = sext i32 %72 to i64
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %55, label %76, !llvm.loop !1384

76:                                               ; preds = %65, %71, %49, %20, %26, %29, %34, %44, %12, %16, %2, %7
  %77 = phi i8 [ 0, %7 ], [ 0, %2 ], [ 0, %16 ], [ 0, %12 ], [ 0, %44 ], [ 0, %34 ], [ 0, %29 ], [ 0, %26 ], [ 0, %20 ], [ 1, %49 ], [ 0, %65 ], [ 1, %71 ]
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gen_reload_chain_without_interm_reg_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !734 !PGOFuncName !1385 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = tail call ptr @get_last_insn() #22
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !1289
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1289
  %11 = tail call i32 @reg_mentioned_p(ptr noundef %7, ptr noundef %10) #22
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %1, i32 %0
  %14 = select i1 %12, i32 %0, i32 %1
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !1289
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !1289
  %21 = tail call i32 @reg_mentioned_p(ptr noundef %17, ptr noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5254, ptr noundef nonnull @.str.2) #22
  br label %24

24:                                               ; preds = %2, %23
  %25 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !1283
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !1283
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5256, ptr noundef nonnull @.str.2) #22
  br label %33

33:                                               ; preds = %24, %28, %32
  %34 = phi i32 [ %30, %28 ], [ %30, %32 ], [ %26, %24 ]
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !1320
  %37 = tail call ptr @gen_rtx_REG(i32 noundef %36, i32 noundef %34) #22
  %38 = load ptr, ptr %19, align 8, !tbaa !1289
  store ptr %38, ptr %3, align 8, !tbaa !513
  %39 = load ptr, ptr %16, align 8, !tbaa !1289
  %40 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !1320
  %42 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %34) #22
  call fastcc void @substitute(ptr noundef nonnull %3, ptr noundef %39, ptr noundef %42) #23
  %43 = load ptr, ptr %3, align 8, !tbaa !513
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 39
  br i1 %46, label %47, label %69

47:                                               ; preds = %33
  %48 = lshr i32 %44, 16
  %49 = and i32 %48, 255
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !493
  %53 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !493
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !493
  %61 = icmp ugt i8 %52, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %47
  %63 = call ptr @gen_lowpart_common(i32 noundef %57, ptr noundef %37) #22
  %64 = icmp eq ptr %63, null
  %65 = load ptr, ptr %3, align 8, !tbaa !513
  br i1 %64, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !493
  store ptr %68, ptr %3, align 8, !tbaa !513
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
  %77 = load ptr, ptr %76, align 8, !tbaa !493
  %78 = load i32, ptr %77, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %103 [
    i16 37, label %80
    i16 39, label %80
    i16 43, label %80
  ]

80:                                               ; preds = %75, %75, %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !493
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
  %89 = load i32, ptr %88, align 4, !tbaa !527
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
  %113 = load ptr, ptr %16, align 8, !tbaa !1289
  store ptr %113, ptr %112, align 8, !tbaa !513
  %114 = call fastcc i32 @VEC_rtx_p_base_length(ptr noundef %109) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %110, !llvm.loop !1386

116:                                              ; preds = %110, %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %104
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @substitute(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !734 !PGOFuncName !1387 {
  %4 = load ptr, ptr %0, align 8, !tbaa !513
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
  store ptr %2, ptr %0, align 8, !tbaa !513
  br label %53

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !513
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !513
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !493
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %12
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %51
  %25 = phi i64 [ %23, %22 ], [ %26, %51 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds i8, ptr %18, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !493
  switch i8 %28, label %51 [
    i8 69, label %29
    i8 101, label %47
  ]

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !513
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !493
  %34 = load i32, ptr %33, align 8, !tbaa !755
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ %37, %36 ], [ %40, %38 ]
  %40 = add nsw i64 %39, -1
  %41 = load ptr, ptr %0, align 8, !tbaa !513
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %26
  %44 = load ptr, ptr %43, align 8, !tbaa !493
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %40
  tail call fastcc void @substitute(ptr noundef nonnull %45, ptr noundef %1, ptr noundef %2) #23
  %46 = icmp ugt i64 %39, 1
  br i1 %46, label %38, label %51, !llvm.loop !1388

47:                                               ; preds = %24
  %48 = load ptr, ptr %0, align 8, !tbaa !513
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %49, i64 0, i64 %26
  tail call fastcc void @substitute(ptr noundef nonnull %50, ptr noundef %1, ptr noundef %2) #23
  br label %51

51:                                               ; preds = %38, %29, %24, %47
  %52 = icmp sgt i64 %25, 1
  br i1 %52, label %24, label %53, !llvm.loop !1389

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
define internal fastcc i32 @VEC_rtx_p_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !734 !PGOFuncName !1390 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1391
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_p_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !734 !PGOFuncName !1393 {
  %2 = load i32, ptr %0, align 8, !tbaa !1391
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1391
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !513
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !734 !PGOFuncName !1394 {
  tail call fastcc void @VEC_rtx_p_heap_reserve() #23
  %2 = load ptr, ptr @substitute_stack, align 8, !tbaa !513
  tail call fastcc void @VEC_rtx_p_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_p_heap_reserve() unnamed_addr #0 !prof !734 !PGOFuncName !1395 {
  %1 = load ptr, ptr @substitute_stack, align 8, !tbaa !513
  %2 = tail call fastcc i32 @VEC_rtx_p_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #22
  store ptr %5, ptr @substitute_stack, align 8, !tbaa !513
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !734 !PGOFuncName !1396 {
  %3 = load i32, ptr %0, align 8, !tbaa !1391
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1391
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !513
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_p_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !734 !PGOFuncName !1397 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1398
  %6 = load i32, ptr %0, align 8, !tbaa !1391
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @forget_old_reloads_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !1399 !PGOFuncName !1400 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %82 [
    i16 39, label %8
    i16 37, label %11
  ], !prof !1401

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !493
  br label %4, !llvm.loop !1402

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #23
  %13 = icmp ugt i32 %12, 52
  br i1 %13, label %46, label %14, !prof !1403

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !493
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %49, !prof !1404

22:                                               ; preds = %14
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %82, label %24, !prof !1405

24:                                               ; preds = %22
  %25 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %26 = load i32, ptr @n_reloads, align 4, !tbaa !527
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
  br i1 %37, label %38, label %42, !prof !1406

38:                                               ; preds = %30
  %39 = xor i64 %34, -1
  %40 = and i64 %32, %39
  store i64 %40, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %41 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %33
  store ptr null, ptr %41, align 8, !tbaa !513
  br label %42

42:                                               ; preds = %30, %38
  %43 = phi i64 [ %40, %38 ], [ %32, %30 ]
  %44 = add nuw nsw i64 %31, 1
  %45 = icmp eq i64 %44, %29
  br i1 %45, label %46, label %30, !prof !1407, !llvm.loop !1408

46:                                               ; preds = %42, %11
  %47 = phi i8 [ 1, %11 ], [ %20, %42 ]
  %48 = icmp eq ptr %2, null
  br i1 %48, label %54, label %49, !prof !1409

49:                                               ; preds = %14, %46
  %50 = phi i8 [ %47, %46 ], [ %20, %14 ]
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %82, label %52, !prof !1410

52:                                               ; preds = %49
  %53 = zext i8 %50 to i32
  br label %57

54:                                               ; preds = %46
  %55 = zext i8 %47 to i64
  %56 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %63

57:                                               ; preds = %52, %57
  %58 = phi i32 [ %59, %57 ], [ %53, %52 ]
  %59 = add nsw i32 %58, -1
  %60 = add i32 %59, %12
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %60) #22
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %82, label %57, !prof !1411, !llvm.loop !1412

63:                                               ; preds = %54, %79
  %64 = phi i32 [ %56, %54 ], [ %80, %79 ]
  %65 = phi i64 [ %55, %54 ], [ %66, %79 ]
  %66 = add nsw i64 %65, -1
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %64, 0
  %69 = add i32 %12, %67
  br i1 %68, label %74, label %70, !prof !1413

70:                                               ; preds = %63
  %71 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %69) #22
  %72 = icmp eq i32 %71, 0
  %73 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br i1 %72, label %74, label %79, !prof !1414

74:                                               ; preds = %63, %70
  %75 = phi i32 [ %73, %70 ], [ 0, %63 ]
  %76 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %77 = zext i32 %69 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr null, ptr %78, align 8, !tbaa !513
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %75, %74 ], [ %73, %70 ]
  %81 = icmp eq i32 %67, 0
  br i1 %81, label %82, label %63, !prof !1415, !llvm.loop !1416

82:                                               ; preds = %4, %57, %79, %22, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_reload_regs(ptr noundef %0) unnamed_addr #0 !prof !1417 !PGOFuncName !1418 {
  %2 = alloca [180 x ptr], align 16
  %3 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !811
  call void @llvm.lifetime.start.p0(i64 1440, ptr nonnull %2) #24
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55, !prof !1419

7:                                                ; preds = %1, %43
  %8 = phi i64 [ %47, %43 ], [ 0, %1 ]
  %9 = phi i32 [ %45, %43 ], [ 1, %1 ]
  %10 = phi i32 [ %44, %43 ], [ 0, %1 ]
  %11 = trunc i64 %8 to i16
  %12 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %8
  store i16 %11, ptr %12, align 2, !tbaa !528
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !1280
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !1420

16:                                               ; preds = %7
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %23, !prof !1421

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #23
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %25, label %23, !prof !1421

23:                                               ; preds = %20, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5984, ptr noundef nonnull @.str.2) #22
  %24 = load ptr, ptr %13, align 8, !tbaa !1280
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %14, %20 ], [ %24, %23 ]
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #23
  br label %28

28:                                               ; preds = %7, %25
  %29 = phi i32 [ %27, %25 ], [ -1, %7 ]
  %30 = phi ptr [ %26, %25 ], [ null, %7 ]
  %31 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %8
  store i32 %29, ptr %31, align 4, !tbaa !527
  %32 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !1284
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %43, !prof !1422

35:                                               ; preds = %28
  %36 = tail call i32 @llvm.umax.i32(i32 %33, i32 %9)
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !1295
  %39 = sext i32 %38 to i64
  %40 = sext i32 %10 to i64
  %41 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_superunion, i64 0, i64 %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !527
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ %42, %35 ], [ %10, %28 ]
  %45 = phi i32 [ %36, %35 ], [ %9, %28 ]
  %46 = getelementptr inbounds [180 x ptr], ptr %2, i64 0, i64 %8
  store ptr %30, ptr %46, align 8, !tbaa !513
  %47 = add nuw nsw i64 %8, 1
  %48 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %7, label %51, !prof !1423, !llvm.loop !1424

51:                                               ; preds = %43
  %52 = icmp sgt i32 %48, 1
  br i1 %52, label %53, label %55, !prof !1425

53:                                               ; preds = %51
  %54 = zext nneg i32 %48 to i64
  tail call void @spec_qsort(ptr noundef nonnull @reload_order, i64 noundef %54, i64 noundef 2, ptr noundef nonnull @reload_reg_class_lower) #22
  br label %55

55:                                               ; preds = %1, %53, %51
  %56 = phi i32 [ %45, %53 ], [ %45, %51 ], [ 1, %1 ]
  %57 = phi i32 [ %44, %53 ], [ %44, %51 ], [ 0, %1 ]
  %58 = load i32, ptr @optimize, align 4, !tbaa !527
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  br label %64

61:                                               ; preds = %767
  %62 = add nsw i32 %65, -1
  %63 = icmp slt i32 %65, 1
  br i1 %63, label %771, label %64, !prof !1426, !llvm.loop !1427

64:                                               ; preds = %55, %61
  %65 = phi i32 [ %60, %55 ], [ %62, %61 ]
  call fastcc void @choose_reload_regs_init(ptr noundef %0, ptr noundef nonnull %2) #23
  %66 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %767, !prof !1428

68:                                               ; preds = %64
  %69 = icmp eq i32 %65, 0
  br label %72

70:                                               ; preds = %717
  %71 = icmp sgt i32 %719, 0
  br i1 %71, label %722, label %767, !prof !880

72:                                               ; preds = %68, %717
  %73 = phi i64 [ 0, %68 ], [ %718, %717 ]
  %74 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !528
  %76 = sext i16 %75 to i32
  %77 = sext i16 %75 to i64
  %78 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77
  %79 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !1287
  %81 = icmp eq ptr %80, null
  %82 = load ptr, ptr %78, align 8, !tbaa !1289
  %83 = icmp eq ptr %82, null
  br i1 %81, label %84, label %90, !prof !1429

84:                                               ; preds = %72
  br i1 %83, label %85, label %91, !prof !1430

85:                                               ; preds = %84
  %86 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %87 = load i8, ptr %86, align 8
  %88 = and i8 %87, 4
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %717, label %112, !prof !1431

90:                                               ; preds = %72
  br i1 %83, label %112, label %91, !prof !1432

91:                                               ; preds = %84, %90
  %92 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  %93 = load ptr, ptr %92, align 8, !tbaa !1280
  %94 = icmp eq ptr %93, null
  br i1 %94, label %112, label %95, !prof !1433

95:                                               ; preds = %91
  %96 = tail call i32 @rtx_equal_p(ptr noundef nonnull %82, ptr noundef nonnull %93) #22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %717, !prof !1434

98:                                               ; preds = %95
  %99 = load ptr, ptr %79, align 8, !tbaa !1287
  %100 = load ptr, ptr %92, align 8, !tbaa !1280
  %101 = tail call i32 @rtx_equal_p(ptr noundef %99, ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103, !prof !1435

103:                                              ; preds = %98
  %104 = load ptr, ptr %78, align 8, !tbaa !1289
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 43
  br i1 %107, label %112, label %108, !prof !1436

108:                                              ; preds = %103
  %109 = tail call i32 @true_regnum(ptr noundef nonnull %104) #22
  %110 = icmp slt i32 %109, 53
  %111 = or i1 %69, %110
  br i1 %111, label %717, label %113, !prof !1437

112:                                              ; preds = %85, %103, %98, %91, %90
  br i1 %69, label %717, label %113, !prof !1438

113:                                              ; preds = %108, %112
  %114 = load ptr, ptr %78, align 8, !tbaa !1289
  %115 = icmp eq ptr %114, null
  br i1 %115, label %483, label %116, !prof !1439

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %120, label %122, !prof !1440

120:                                              ; preds = %116
  %121 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %114) #23
  br label %145

122:                                              ; preds = %116
  %123 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !1441
  %125 = load i32, ptr %124, align 8
  %126 = trunc i32 %125 to i16
  switch i16 %126, label %451 [
    i16 37, label %127
    i16 39, label %129
  ], !prof !1442

127:                                              ; preds = %122
  %128 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %124) #23
  br label %145

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !493
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 37
  br i1 %134, label %135, label %451, !prof !1443

135:                                              ; preds = %129
  %136 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %131) #23
  %137 = icmp slt i32 %136, 53
  br i1 %137, label %138, label %142, !prof !1444

138:                                              ; preds = %135
  %139 = tail call i32 @subreg_regno(ptr noundef nonnull %124) #22
  %140 = load ptr, ptr %123, align 8, !tbaa !1441
  %141 = load i32, ptr %140, align 8
  br label %145

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load i32, ptr %143, align 8, !tbaa !493
  br label %149

145:                                              ; preds = %138, %120, %127
  %146 = phi i32 [ %117, %120 ], [ %125, %127 ], [ %141, %138 ]
  %147 = phi i32 [ %121, %120 ], [ %128, %127 ], [ %139, %138 ]
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %149, label %451, !prof !1445

149:                                              ; preds = %142, %145
  %150 = phi i32 [ %125, %142 ], [ %146, %145 ]
  %151 = phi i32 [ %144, %142 ], [ 0, %145 ]
  %152 = phi i32 [ %136, %142 ], [ %147, %145 ]
  %153 = lshr i32 %150, 16
  %154 = and i32 %153, 255
  %155 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %156 = zext nneg i32 %152 to i64
  %157 = getelementptr inbounds ptr, ptr %155, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !513
  %159 = icmp eq ptr %158, null
  br i1 %159, label %451, label %160, !prof !1446

160:                                              ; preds = %149
  %161 = load i32, ptr %158, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %158) #23
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !527
  %168 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %163, i32 noundef %154, i32 noundef %167) #22
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %451, !prof !1447

170:                                              ; preds = %160
  %171 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !1295
  %173 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %174 = getelementptr inbounds ptr, ptr %173, i64 %156
  %175 = load ptr, ptr %174, align 8, !tbaa !513
  %176 = tail call fastcc i32 @rhs_regno(ptr noundef %175) #23
  %177 = load i32, ptr %175, align 8
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = tail call i32 @subreg_regno_offset(i32 noundef %176, i32 noundef %179, i32 noundef %151, i32 noundef %154) #22
  %181 = add i32 %180, %176
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !527
  %185 = icmp eq i32 %151, 0
  br i1 %185, label %199, label %186, !prof !1448

186:                                              ; preds = %170
  %187 = zext nneg i32 %154 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !493
  %190 = zext i8 %189 to i32
  %191 = add i32 %151, %190
  %192 = shl i32 %191, 3
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %194 = load i8, ptr %193, align 1, !tbaa !493
  %195 = icmp eq i8 %194, 3
  %196 = select i1 %195, i8 2, i8 %194, !prof !1449
  %197 = zext i8 %196 to i32
  %198 = tail call i32 @smallest_mode_for_size(i32 noundef %192, i32 noundef %197) #22
  br label %199

199:                                              ; preds = %170, %186
  %200 = phi i32 [ %198, %186 ], [ %154, %170 ]
  %201 = load i32, ptr %175, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !493
  %207 = zext i32 %200 to i64
  %208 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !493
  %210 = icmp ult i8 %206, %209
  br i1 %210, label %451, label %211, !prof !1450

211:                                              ; preds = %199
  %212 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %182
  %213 = load i32, ptr %212, align 4, !tbaa !527
  %214 = icmp eq i32 %213, %152
  br i1 %214, label %215, label %451, !prof !1451

215:                                              ; preds = %211
  %216 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %217 = zext nneg i32 %181 to i64
  %218 = shl nuw i64 1, %217
  %219 = and i64 %216, %218
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %451, label %221, !prof !1452

221:                                              ; preds = %215
  %222 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 5
  %223 = load i32, ptr %222, align 4, !tbaa !1320
  %224 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %181, i32 noundef %223) #22
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %451, label %226, !prof !1453

226:                                              ; preds = %221
  %227 = sext i32 %172 to i64
  %228 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !545
  %230 = and i64 %229, %218
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %242, !prof !1454

232:                                              ; preds = %226
  %233 = tail call i32 @ix86_register_move_cost(i32 noundef %154, i32 noundef %184, i32 noundef %172) #22
  %234 = tail call i32 @ix86_memory_move_cost(i32 noundef %154, i32 noundef %172, i32 noundef 1) #22
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %451, !prof !1455

236:                                              ; preds = %232
  %237 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %172, i32 noundef %154, ptr noundef nonnull %175) #22
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %451, !prof !1455

239:                                              ; preds = %236
  %240 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %184, i32 noundef %172, i32 noundef %154, i32 noundef 1) #22
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %451, !prof !1455

242:                                              ; preds = %239, %226
  %243 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %244 = load i32, ptr %243, align 8, !tbaa !1284
  %245 = icmp eq i32 %244, %56
  br i1 %245, label %252, label %246, !prof !1456

246:                                              ; preds = %242
  %247 = sext i32 %57 to i64
  %248 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !545
  %250 = and i64 %249, %218
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %451, !prof !1457

252:                                              ; preds = %246, %242
  %253 = load i32, ptr %222, align 4, !tbaa !1320
  %254 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 12
  %255 = load i32, ptr %254, align 8, !tbaa !1364
  %256 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %257 = load i32, ptr %256, align 4, !tbaa !1363
  %258 = load ptr, ptr %78, align 8, !tbaa !1289
  %259 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !513
  %260 = tail call fastcc i32 @free_for_value_p(i32 noundef %181, i32 noundef %253, i32 noundef %255, i32 noundef %257, ptr noundef %258, ptr noundef %259, i32 noundef %76, i32 noundef 1) #23, !range !595
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %451, label %262, !prof !1458

262:                                              ; preds = %252
  %263 = load i32, ptr %222, align 4, !tbaa !1320
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %182, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !493
  %267 = zext i8 %266 to i32
  %268 = icmp ugt i8 %266, 1
  br i1 %268, label %269, label %286, !prof !1459

269:                                              ; preds = %262, %280
  %270 = phi i64 [ %282, %280 ], [ 1, %262 ]
  %271 = add nsw i64 %270, %182
  %272 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !527
  %274 = icmp eq i32 %273, %152
  br i1 %274, label %275, label %284, !prof !1460

275:                                              ; preds = %269
  %276 = load i64, ptr @reg_reloaded_valid, align 8
  %277 = shl nuw i64 1, %271
  %278 = and i64 %276, %277
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %284, label %280, !prof !1461

280:                                              ; preds = %275
  %281 = zext i8 %266 to i64
  %282 = add nuw nsw i64 %270, 1
  %283 = icmp eq i64 %282, %281
  br i1 %283, label %289, label %269, !prof !1462, !llvm.loop !1463

284:                                              ; preds = %269, %275
  %285 = trunc i64 %270 to i32
  br label %286

286:                                              ; preds = %284, %262
  %287 = phi i32 [ 1, %262 ], [ %285, %284 ]
  %288 = icmp eq i32 %287, %267
  br i1 %288, label %289, label %451, !prof !1464

289:                                              ; preds = %280, %286
  %290 = load i32, ptr %175, align 8
  %291 = lshr i32 %290, 16
  %292 = and i32 %291, 255
  %293 = icmp eq i32 %292, %154
  br i1 %293, label %296, label %294, !prof !1465

294:                                              ; preds = %289
  %295 = tail call ptr @gen_rtx_REG(i32 noundef %154, i32 noundef %181) #22
  br label %296

296:                                              ; preds = %289, %294
  %297 = phi ptr [ %295, %294 ], [ %175, %289 ]
  %298 = icmp eq i8 %266, 0
  br i1 %298, label %331, label %299, !prof !1466

299:                                              ; preds = %296
  %300 = zext i8 %266 to i64
  %301 = load i32, ptr %171, align 8, !tbaa !1295
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %302
  %304 = load i64, ptr %303, align 8, !tbaa !545
  %305 = add nuw nsw i64 %300, 3
  %306 = and i64 %305, 508
  %307 = add nsw i64 %300, -1
  %308 = insertelement <4 x i64> poison, i64 %307, i64 0
  %309 = shufflevector <4 x i64> %308, <4 x i64> poison, <4 x i32> zeroinitializer
  %310 = insertelement <4 x i64> poison, i64 %182, i64 0
  %311 = shufflevector <4 x i64> %310, <4 x i64> poison, <4 x i32> zeroinitializer
  %312 = insertelement <4 x i64> poison, i64 %304, i64 0
  %313 = shufflevector <4 x i64> %312, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %314

314:                                              ; preds = %314, %299
  %315 = phi i64 [ 0, %299 ], [ %324, %314 ]
  %316 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %299 ], [ %325, %314 ]
  %317 = phi <4 x i32> [ zeroinitializer, %299 ], [ %323, %314 ]
  %318 = add nsw <4 x i64> %316, %311
  %319 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %318
  %320 = and <4 x i64> %313, %319
  %321 = icmp eq <4 x i64> %320, zeroinitializer
  %322 = zext <4 x i1> %321 to <4 x i32>
  %323 = or <4 x i32> %317, %322
  %324 = add i64 %315, 4
  %325 = add <4 x i64> %316, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %324, %306
  br i1 %326, label %327, label %314, !prof !1313, !llvm.loop !1467

327:                                              ; preds = %314
  %328 = icmp ugt <4 x i64> %316, %309
  %329 = select <4 x i1> %328, <4 x i32> %317, <4 x i32> %323
  %330 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %329)
  br label %331

331:                                              ; preds = %327, %296
  %332 = phi i32 [ 0, %296 ], [ %330, %327 ]
  %333 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !527
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %352, !prof !1468

335:                                              ; preds = %331, %345
  %336 = phi i64 [ %346, %345 ], [ 0, %331 ]
  %337 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %338 = getelementptr inbounds ptr, ptr %337, i64 %156
  %339 = load ptr, ptr %338, align 8, !tbaa !513
  %340 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %336
  %341 = load ptr, ptr %340, align 8, !tbaa !513
  %342 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %339, ptr noundef %341) #22
  %343 = icmp eq i32 %342, 0
  %344 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !527
  br i1 %343, label %345, label %349, !prof !1469

345:                                              ; preds = %335
  %346 = add nuw nsw i64 %336, 1
  %347 = sext i32 %344 to i64
  %348 = icmp slt i64 %346, %347
  br i1 %348, label %335, label %349, !prof !1470, !llvm.loop !1471

349:                                              ; preds = %335, %345
  %350 = phi i64 [ %346, %345 ], [ %336, %335 ]
  %351 = trunc i64 %350 to i32
  br label %352

352:                                              ; preds = %349, %331
  %353 = phi i32 [ %333, %331 ], [ %344, %349 ]
  %354 = phi i32 [ 0, %331 ], [ %351, %349 ]
  %355 = icmp eq i32 %354, %353
  br i1 %355, label %356, label %406, !prof !1472

356:                                              ; preds = %352
  %357 = load i32, ptr %222, align 4, !tbaa !1320
  %358 = load i32, ptr %254, align 8, !tbaa !1364
  %359 = load i32, ptr %256, align 4, !tbaa !1363
  %360 = load ptr, ptr %78, align 8, !tbaa !1289
  %361 = load ptr, ptr %79, align 8, !tbaa !1287
  %362 = tail call fastcc i32 @free_for_value_p(i32 noundef %181, i32 noundef %357, i32 noundef %358, i32 noundef %359, ptr noundef %360, ptr noundef %361, i32 noundef %76, i32 noundef 1) #23, !range !595
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %406, label %364, !prof !1473

364:                                              ; preds = %356
  %365 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !545
  %366 = and i64 %365, %218
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %375, label %368, !prof !1472

368:                                              ; preds = %364
  %369 = load ptr, ptr %79, align 8, !tbaa !1287
  %370 = icmp eq ptr %369, null
  br i1 %370, label %375, label %371

371:                                              ; preds = %368
  %372 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !545
  %373 = and i64 %372, %218
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %406, label %375

375:                                              ; preds = %371, %368, %364
  %376 = icmp eq i32 %181, 6
  br i1 %376, label %377, label %383, !prof !1473

377:                                              ; preds = %375
  %378 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %377
  %381 = load ptr, ptr %79, align 8, !tbaa !1287
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %406

383:                                              ; preds = %380, %377, %375
  %384 = load i32, ptr %222, align 4, !tbaa !1320
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !493
  %388 = zext nneg i32 %154 to i64
  %389 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !493
  %391 = icmp ugt i8 %387, %390
  %392 = icmp ne i32 %332, 0
  %393 = select i1 %391, i1 true, i1 %392
  br i1 %393, label %406, label %394, !prof !1474

394:                                              ; preds = %383
  %395 = load ptr, ptr %79, align 8, !tbaa !1287
  %396 = icmp eq ptr %395, null
  br i1 %396, label %416, label %397, !prof !1475

397:                                              ; preds = %394
  %398 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  %399 = load ptr, ptr %398, align 8, !tbaa !1280
  %400 = icmp eq ptr %399, null
  br i1 %400, label %416, label %401, !prof !1476

401:                                              ; preds = %397
  %402 = tail call i32 @rtx_equal_p(ptr noundef nonnull %395, ptr noundef nonnull %399) #22
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %406, !prof !1477

404:                                              ; preds = %401
  %405 = load i32, ptr %222, align 4, !tbaa !1320
  br label %416

406:                                              ; preds = %401, %383, %380, %371, %356, %352
  %407 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %408 = load i8, ptr %407, align 8
  %409 = and i8 %408, 1
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %411, label %451, !prof !1478

411:                                              ; preds = %406
  %412 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %77
  store ptr %297, ptr %412, align 8, !tbaa !513
  %413 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %182
  %414 = load ptr, ptr %413, align 8, !tbaa !513
  %415 = getelementptr inbounds [180 x ptr], ptr @reload_inheritance_insn, i64 0, i64 %77
  store ptr %414, ptr %415, align 8, !tbaa !513
  br label %451

416:                                              ; preds = %404, %397, %394
  %417 = phi i32 [ %405, %404 ], [ %384, %397 ], [ %384, %394 ]
  %418 = load i32, ptr %254, align 8, !tbaa !1364
  %419 = load i32, ptr %256, align 4, !tbaa !1363
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %181, i32 noundef %418, i32 noundef %419, i32 noundef %417) #23
  %420 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  store ptr %297, ptr %420, align 8, !tbaa !1280
  %421 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %77
  store i8 1, ptr %421, align 1, !tbaa !493
  %422 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %182
  %423 = load ptr, ptr %422, align 8, !tbaa !513
  %424 = getelementptr inbounds [180 x ptr], ptr @reload_inheritance_insn, i64 0, i64 %77
  store ptr %423, ptr %424, align 8, !tbaa !513
  %425 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %77
  store i32 %181, ptr %425, align 4, !tbaa !527
  br i1 %298, label %451, label %426, !prof !1479

426:                                              ; preds = %416
  %427 = zext i8 %266 to i64
  %428 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !545
  %429 = add nuw nsw i64 %427, 1
  %430 = and i64 %429, 510
  %431 = add nsw i64 %427, -1
  %432 = insertelement <2 x i64> poison, i64 %431, i64 0
  %433 = shufflevector <2 x i64> %432, <2 x i64> poison, <2 x i32> zeroinitializer
  %434 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %428, i64 0
  %435 = insertelement <2 x i64> poison, i64 %182, i64 0
  %436 = shufflevector <2 x i64> %435, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %437

437:                                              ; preds = %437, %426
  %438 = phi i64 [ 0, %426 ], [ %444, %437 ]
  %439 = phi <2 x i64> [ <i64 0, i64 1>, %426 ], [ %445, %437 ]
  %440 = phi <2 x i64> [ %434, %426 ], [ %443, %437 ]
  %441 = add nsw <2 x i64> %439, %436
  %442 = shl nuw <2 x i64> <i64 1, i64 1>, %441
  %443 = or <2 x i64> %440, %442
  %444 = add i64 %438, 2
  %445 = add <2 x i64> %439, <i64 2, i64 2>
  %446 = icmp eq i64 %444, %430
  br i1 %446, label %447, label %437, !prof !1313, !llvm.loop !1480

447:                                              ; preds = %437
  %448 = icmp ugt <2 x i64> %439, %433
  %449 = select <2 x i1> %448, <2 x i64> %440, <2 x i64> %443
  %450 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %449)
  store i64 %450, ptr @reload_reg_used_for_inherit, align 8, !tbaa !545
  br label %451

451:                                              ; preds = %416, %447, %122, %129, %199, %211, %215, %221, %232, %236, %239, %246, %252, %411, %406, %286, %160, %149, %145
  %452 = load ptr, ptr %78, align 8, !tbaa !1289
  %453 = icmp eq ptr %452, null
  br i1 %453, label %483, label %454, !prof !1481

454:                                              ; preds = %451
  %455 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %77
  %456 = load i8, ptr %455, align 1, !tbaa !493
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %458, label %717, !prof !1482

458:                                              ; preds = %454
  %459 = load ptr, ptr %79, align 8, !tbaa !1287
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %717, !prof !1483

461:                                              ; preds = %458
  %462 = load i32, ptr %452, align 8
  %463 = and i32 %462, 65535
  %464 = zext nneg i32 %463 to i64
  %465 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %464
  %466 = load i32, ptr %465, align 4, !tbaa !527
  %467 = freeze i32 %466
  %468 = icmp eq i32 %467, 9
  br i1 %468, label %471, label %469

469:                                              ; preds = %461
  %470 = trunc i32 %462 to i16
  switch i16 %470, label %717 [
    i16 49, label %471
    i16 43, label %471
    i16 37, label %471
  ]

471:                                              ; preds = %469, %469, %469, %461
  %472 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %473 = load i32, ptr %472, align 8, !tbaa !1284
  %474 = icmp eq i32 %473, %56
  br i1 %474, label %519, label %475, !prof !1484

475:                                              ; preds = %471
  %476 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 2
  %477 = load i32, ptr %476, align 8, !tbaa !1295
  %478 = tail call i32 @reg_classes_intersect_p(i32 noundef %477, i32 noundef %57) #22
  %479 = icmp eq i32 %478, 0
  %480 = load ptr, ptr %78, align 8, !tbaa !1289
  %481 = icmp eq ptr %480, null
  br i1 %479, label %518, label %482, !prof !1485

482:                                              ; preds = %475
  br i1 %481, label %483, label %717, !prof !1481

483:                                              ; preds = %113, %451, %482
  %484 = load ptr, ptr %79, align 8, !tbaa !1287
  %485 = icmp eq ptr %484, null
  br i1 %485, label %717, label %486, !prof !1486

486:                                              ; preds = %483
  %487 = load i32, ptr %4, align 8
  %488 = and i32 %487, 65535
  %489 = add nsw i32 %488, -7
  %490 = icmp ult i32 %489, 4
  br i1 %490, label %491, label %717, !prof !1487

491:                                              ; preds = %486
  %492 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !493
  %494 = load i32, ptr %493, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 23
  br i1 %496, label %502, label %497, !prof !1488

497:                                              ; preds = %491
  %498 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %493) #22
  %499 = icmp eq ptr %498, null
  br i1 %499, label %717, label %500, !prof !880

500:                                              ; preds = %497
  %501 = load ptr, ptr %79, align 8, !tbaa !1287
  br label %502

502:                                              ; preds = %500, %491
  %503 = phi ptr [ %501, %500 ], [ %484, %491 ]
  %504 = phi ptr [ %498, %500 ], [ %493, %491 ]
  %505 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !493
  %507 = tail call i32 @rtx_equal_p(ptr noundef %503, ptr noundef %506) #22
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %717, label %509, !prof !1489

509:                                              ; preds = %502
  %510 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1, i32 0, i32 0, i64 1
  %511 = load ptr, ptr %510, align 8, !tbaa !493
  %512 = load i32, ptr %511, align 8
  %513 = and i32 %512, 65535
  %514 = zext nneg i32 %513 to i64
  %515 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !527
  %517 = icmp eq i32 %516, 9
  br i1 %517, label %519, label %717, !prof !1490

518:                                              ; preds = %475
  br i1 %481, label %717, label %519, !prof !880

519:                                              ; preds = %471, %509, %518
  %520 = phi ptr [ %480, %518 ], [ %511, %509 ], [ %452, %471 ]
  %521 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 2
  %522 = load i32, ptr %521, align 8, !tbaa !1295
  %523 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 5
  %524 = load i32, ptr %523, align 4, !tbaa !1320
  %525 = tail call ptr @find_equiv_reg(ptr noundef nonnull %520, ptr noundef %4, i32 noundef %522, i32 noundef -1, ptr noundef null, i32 noundef 0, i32 noundef %524) #22
  %526 = icmp eq ptr %525, null
  br i1 %526, label %717, label %527, !prof !1491

527:                                              ; preds = %519
  %528 = load i32, ptr %525, align 8
  %529 = trunc i32 %528 to i16
  switch i16 %529, label %535 [
    i16 37, label %530
    i16 39, label %536
  ], !prof !1492

530:                                              ; preds = %527
  %531 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %525) #23
  %532 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %533 = load i32, ptr %532, align 8, !tbaa !1284
  %534 = add i32 %533, %531
  br label %559

535:                                              ; preds = %527
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6322, ptr noundef nonnull @.str.2) #22
  br label %536

536:                                              ; preds = %527, %535
  %537 = tail call i32 @subreg_regno(ptr noundef nonnull %525) #22
  %538 = load i32, ptr %523, align 4, !tbaa !1320
  %539 = tail call ptr @gen_rtx_REG(i32 noundef %538, i32 noundef %537) #22
  %540 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %541 = load i32, ptr %540, align 8, !tbaa !1284
  %542 = add i32 %541, %537
  %543 = icmp sgt i32 %541, 0
  br i1 %543, label %544, label %556, !prof !1493

544:                                              ; preds = %536
  %545 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !545
  br label %546

546:                                              ; preds = %544, %546
  %547 = phi i32 [ %537, %544 ], [ %554, %546 ]
  %548 = phi ptr [ %539, %544 ], [ %553, %546 ]
  %549 = zext nneg i32 %547 to i64
  %550 = shl nuw i64 1, %549
  %551 = and i64 %545, %550
  %552 = icmp eq i64 %551, 0
  %553 = select i1 %552, ptr %548, ptr null, !prof !1494
  %554 = add nsw i32 %547, 1
  %555 = icmp slt i32 %554, %542
  br i1 %555, label %546, label %556, !prof !967, !llvm.loop !1495

556:                                              ; preds = %546, %536
  %557 = phi ptr [ %539, %536 ], [ %553, %546 ]
  %558 = icmp eq ptr %557, null
  br i1 %558, label %717, label %559, !prof !1496

559:                                              ; preds = %530, %556
  %560 = phi i32 [ %534, %530 ], [ %542, %556 ]
  %561 = phi i32 [ %531, %530 ], [ %537, %556 ]
  %562 = phi ptr [ %525, %530 ], [ %557, %556 ]
  %563 = icmp slt i32 %561, %560
  br i1 %563, label %564, label %623, !prof !1497

564:                                              ; preds = %559
  %565 = sub i32 %560, %561
  %566 = load i32, ptr %521, align 8, !tbaa !1295
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %567
  %569 = load i64, ptr %568, align 8, !tbaa !545
  %570 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !545
  %571 = add i32 %565, 3
  %572 = and i32 %571, -4
  %573 = add i32 %565, -1
  %574 = insertelement <4 x i32> poison, i32 %573, i64 0
  %575 = shufflevector <4 x i32> %574, <4 x i32> poison, <4 x i32> zeroinitializer
  %576 = insertelement <4 x i32> poison, i32 %561, i64 0
  %577 = shufflevector <4 x i32> %576, <4 x i32> poison, <4 x i32> zeroinitializer
  %578 = add <4 x i32> %577, <i32 0, i32 1, i32 2, i32 3>
  %579 = insertelement <4 x i64> poison, i64 %570, i64 0
  %580 = shufflevector <4 x i64> %579, <4 x i64> poison, <4 x i32> zeroinitializer
  %581 = insertelement <4 x i64> poison, i64 %569, i64 0
  %582 = shufflevector <4 x i64> %581, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %583

583:                                              ; preds = %583, %564
  %584 = phi i32 [ 0, %564 ], [ %598, %583 ]
  %585 = phi <4 x i32> [ %578, %564 ], [ %599, %583 ]
  %586 = phi <4 x i32> [ zeroinitializer, %564 ], [ %597, %583 ]
  %587 = phi <4 x i32> [ zeroinitializer, %564 ], [ %593, %583 ]
  %588 = zext nneg <4 x i32> %585 to <4 x i64>
  %589 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %588
  %590 = and <4 x i64> %580, %589
  %591 = icmp ne <4 x i64> %590, zeroinitializer
  %592 = zext <4 x i1> %591 to <4 x i32>
  %593 = or <4 x i32> %587, %592
  %594 = and <4 x i64> %582, %589
  %595 = icmp eq <4 x i64> %594, zeroinitializer
  %596 = zext <4 x i1> %595 to <4 x i32>
  %597 = or <4 x i32> %586, %596
  %598 = add i32 %584, 4
  %599 = add <4 x i32> %585, <i32 4, i32 4, i32 4, i32 4>
  %600 = icmp eq i32 %598, %572
  br i1 %600, label %601, label %583, !prof !1313, !llvm.loop !1498

601:                                              ; preds = %583
  %602 = insertelement <4 x i32> poison, i32 %584, i64 0
  %603 = shufflevector <4 x i32> %602, <4 x i32> poison, <4 x i32> zeroinitializer
  %604 = or disjoint <4 x i32> %603, <i32 0, i32 1, i32 2, i32 3>
  %605 = icmp ugt <4 x i32> %604, %575
  %606 = select <4 x i1> %605, <4 x i32> %587, <4 x i32> %593
  %607 = select <4 x i1> %605, <4 x i32> %586, <4 x i32> %597
  %608 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %607)
  %609 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %606)
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %621, label %611, !prof !1499

611:                                              ; preds = %601
  %612 = load i32, ptr %523, align 4, !tbaa !1320
  %613 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 12
  %614 = load i32, ptr %613, align 8, !tbaa !1364
  %615 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %616 = load i32, ptr %615, align 4, !tbaa !1363
  %617 = load ptr, ptr %78, align 8, !tbaa !1289
  %618 = load ptr, ptr %79, align 8, !tbaa !1287
  %619 = tail call fastcc i32 @free_for_value_p(i32 noundef %561, i32 noundef %612, i32 noundef %614, i32 noundef %616, ptr noundef %617, ptr noundef %618, i32 noundef %76, i32 noundef 1) #23, !range !595
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %717, label %621, !prof !1500

621:                                              ; preds = %611, %601
  %622 = icmp eq i32 %608, 0
  br i1 %622, label %623, label %717, !prof !1501

623:                                              ; preds = %559, %621
  %624 = load i32, ptr %523, align 4, !tbaa !1320
  %625 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %561, i32 noundef %624) #22
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %717, label %627, !prof !1502

627:                                              ; preds = %623
  %628 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !527
  %629 = icmp sgt i32 %628, 0
  br i1 %629, label %635, label %646, !prof !1503

630:                                              ; preds = %635
  %631 = add nuw nsw i64 %636, 1
  %632 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !527
  %633 = sext i32 %632 to i64
  %634 = icmp slt i64 %631, %633
  br i1 %634, label %635, label %646, !prof !1504, !llvm.loop !1505

635:                                              ; preds = %627, %630
  %636 = phi i64 [ %631, %630 ], [ 0, %627 ]
  %637 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %636
  %638 = load ptr, ptr %637, align 8, !tbaa !513
  %639 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %562, ptr noundef %638) #22
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %630, label %641, !prof !1506

641:                                              ; preds = %635
  %642 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %643 = load i8, ptr %642, align 8
  %644 = and i8 %643, 1
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %715, label %717, !prof !1506

646:                                              ; preds = %630, %627
  %647 = load i32, ptr %523, align 4, !tbaa !1320
  %648 = tail call i32 @regno_clobbered_p(i32 noundef %561, ptr noundef %4, i32 noundef %647, i32 noundef 2) #22
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %658, label %650, !prof !1507

650:                                              ; preds = %646
  %651 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %652 = load i32, ptr %651, align 4, !tbaa !1363
  switch i32 %652, label %717 [
    i32 10, label %670
    i32 4, label %670
    i32 3, label %670
    i32 8, label %670
    i32 9, label %653
    i32 0, label %653
    i32 7, label %653
  ]

653:                                              ; preds = %650, %650, %650
  %654 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %655 = load i8, ptr %654, align 8
  %656 = and i8 %655, 1
  %657 = icmp eq i8 %656, 0
  br i1 %657, label %715, label %717

658:                                              ; preds = %646
  %659 = load i32, ptr %523, align 4, !tbaa !1320
  %660 = tail call i32 @regno_clobbered_p(i32 noundef %561, ptr noundef %4, i32 noundef %659, i32 noundef 1) #22
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %670, label %662, !prof !1508

662:                                              ; preds = %658
  %663 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %664 = load i32, ptr %663, align 4, !tbaa !1363
  switch i32 %664, label %717 [
    i32 10, label %670
    i32 4, label %670
    i32 3, label %670
    i32 8, label %670
    i32 7, label %670
    i32 0, label %670
    i32 9, label %665
  ], !prof !1509

665:                                              ; preds = %662
  %666 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %667 = load i8, ptr %666, align 8
  %668 = and i8 %667, 1
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %715, label %717

670:                                              ; preds = %650, %650, %650, %650, %662, %662, %662, %662, %662, %662, %658
  %671 = icmp eq i32 %561, 6
  br i1 %671, label %672, label %675, !prof !1510

672:                                              ; preds = %670
  %673 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !621
  %674 = icmp eq i8 %673, 0
  br i1 %674, label %675, label %717

675:                                              ; preds = %672, %670
  %676 = sext i32 %561 to i64
  %677 = load i32, ptr %523, align 4, !tbaa !1320
  %678 = zext i32 %677 to i64
  %679 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %676, i64 %678
  %680 = load i8, ptr %679, align 1, !tbaa !493
  %681 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  store ptr %562, ptr %681, align 8, !tbaa !1280
  %682 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %77
  store i32 %561, ptr %682, align 4, !tbaa !527
  %683 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %77
  store i8 1, ptr %683, align 1, !tbaa !493
  %684 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %685 = zext nneg i32 %561 to i64
  %686 = shl nuw i64 1, %685
  %687 = and i64 %684, %686
  %688 = icmp eq i64 %687, 0
  br i1 %688, label %689, label %691, !prof !1511

689:                                              ; preds = %675
  %690 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %676
  store ptr null, ptr %690, align 8, !tbaa !513
  br label %691

691:                                              ; preds = %689, %675
  %692 = icmp eq i8 %680, 0
  br i1 %692, label %717, label %693, !prof !1512

693:                                              ; preds = %691
  %694 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !545
  %695 = zext i8 %680 to i64
  br label %696

696:                                              ; preds = %693, %711
  %697 = phi i64 [ 0, %693 ], [ %713, %711 ]
  %698 = phi i64 [ %694, %693 ], [ %712, %711 ]
  %699 = add nsw i64 %697, %676
  %700 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %699
  %701 = load i16, ptr %700, align 2, !tbaa !528
  %702 = icmp sgt i16 %701, -1
  br i1 %702, label %703, label %711, !prof !1513

703:                                              ; preds = %696
  %704 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 12
  %705 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %706 = load i32, ptr %704, align 8, !tbaa !1364
  %707 = load i32, ptr %705, align 4, !tbaa !1363
  %708 = load i32, ptr %523, align 4, !tbaa !1320
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %561, i32 noundef %706, i32 noundef %707, i32 noundef %708) #23
  %709 = shl nuw i64 1, %699
  %710 = or i64 %698, %709
  store i64 %710, ptr @reload_reg_used_for_inherit, align 8, !tbaa !545
  br label %711

711:                                              ; preds = %696, %703
  %712 = phi i64 [ %698, %696 ], [ %710, %703 ]
  %713 = add nuw nsw i64 %697, 1
  %714 = icmp eq i64 %713, %695
  br i1 %714, label %717, label %696, !prof !1514, !llvm.loop !1515

715:                                              ; preds = %665, %653, %641
  %716 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %77
  store ptr %562, ptr %716, align 8, !tbaa !513
  br label %717

717:                                              ; preds = %711, %715, %458, %454, %469, %691, %662, %665, %650, %653, %623, %611, %621, %519, %556, %641, %486, %112, %509, %497, %502, %482, %483, %518, %672, %95, %108, %85
  %718 = add nuw nsw i64 %73, 1
  %719 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %720 = sext i32 %719 to i64
  %721 = icmp slt i64 %718, %720
  br i1 %721, label %72, label %70, !prof !1516, !llvm.loop !1517

722:                                              ; preds = %70, %758
  %723 = phi i32 [ %759, %758 ], [ %719, %70 ]
  %724 = phi i64 [ %760, %758 ], [ 0, %70 ]
  %725 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %724
  %726 = load i16, ptr %725, align 2, !tbaa !528
  %727 = sext i16 %726 to i32
  %728 = sext i16 %726 to i64
  %729 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %728, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !1287
  %731 = icmp eq ptr %730, null
  br i1 %731, label %732, label %741, !prof !1518

732:                                              ; preds = %722
  %733 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %728
  %734 = load ptr, ptr %733, align 8, !tbaa !1289
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %741, !prof !1519

736:                                              ; preds = %732
  %737 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %728, i32 18
  %738 = load i8, ptr %737, align 8
  %739 = and i8 %738, 4
  %740 = icmp eq i8 %739, 0
  br i1 %740, label %758, label %741, !prof !1431

741:                                              ; preds = %736, %732, %722
  %742 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %728, i32 11
  %743 = load ptr, ptr %742, align 8, !tbaa !1280
  %744 = icmp eq ptr %743, null
  br i1 %744, label %745, label %758, !prof !1520

745:                                              ; preds = %741
  %746 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %728, i32 18
  %747 = load i8, ptr %746, align 8
  %748 = and i8 %747, 1
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %750, label %758, !prof !1521

750:                                              ; preds = %745
  %751 = add nsw i32 %723, -1
  %752 = zext i32 %751 to i64
  %753 = icmp eq i64 %724, %752
  %754 = zext i1 %753 to i32
  %755 = tail call fastcc i32 @allocate_reload_reg(i32 noundef %727, i32 noundef %754) #23
  %756 = icmp eq i32 %755, 0
  %757 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br i1 %756, label %763, label %758

758:                                              ; preds = %750, %741, %745, %736
  %759 = phi i32 [ %723, %741 ], [ %723, %745 ], [ %723, %736 ], [ %757, %750 ]
  %760 = add nuw nsw i64 %724, 1
  %761 = sext i32 %759 to i64
  %762 = icmp slt i64 %760, %761
  br i1 %762, label %722, label %763, !prof !1522, !llvm.loop !1523

763:                                              ; preds = %750, %758
  %764 = phi i32 [ %759, %758 ], [ %757, %750 ]
  %765 = phi i64 [ %760, %758 ], [ %724, %750 ]
  %766 = trunc i64 %765 to i32
  br label %767

767:                                              ; preds = %64, %763, %70
  %768 = phi i32 [ %719, %70 ], [ %764, %763 ], [ %66, %64 ]
  %769 = phi i32 [ 0, %70 ], [ %766, %763 ], [ 0, %64 ]
  %770 = icmp eq i32 %769, %768
  br i1 %770, label %830, label %61, !prof !1524

771:                                              ; preds = %61
  call fastcc void @choose_reload_regs_init(ptr noundef %0, ptr noundef nonnull %2) #23
  %772 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  %773 = load i32, ptr %772, align 8, !tbaa !875
  %774 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %775 = icmp eq i32 %773, %774
  br i1 %775, label %778, label %776

776:                                              ; preds = %771
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6539, ptr noundef nonnull @.str.2) #22
  %777 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %778

778:                                              ; preds = %771, %776
  %779 = phi i32 [ %773, %771 ], [ %777, %776 ]
  %780 = icmp sgt i32 %779, 0
  br i1 %780, label %781, label %830

781:                                              ; preds = %778
  %782 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  br label %783

783:                                              ; preds = %781, %825
  %784 = phi i64 [ 0, %781 ], [ %826, %825 ]
  %785 = load ptr, ptr %782, align 8, !tbaa !1166
  %786 = getelementptr inbounds %struct.reload, ptr %785, i64 %784, i32 10
  %787 = load i32, ptr %786, align 8, !tbaa !1283
  %788 = icmp slt i32 %787, 0
  br i1 %788, label %825, label %789

789:                                              ; preds = %783
  %790 = getelementptr inbounds %struct.reload, ptr %785, i64 %784, i32 11
  %791 = load ptr, ptr %790, align 8, !tbaa !1280
  %792 = icmp eq ptr %791, null
  br i1 %792, label %793, label %825

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.reload, ptr %785, i64 %784, i32 17
  %795 = load i32, ptr %794, align 4, !tbaa !1363
  %796 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %784, i32 17
  %797 = load i32, ptr %796, align 4, !tbaa !1363
  %798 = icmp eq i32 %795, %797
  br i1 %798, label %800, label %799

799:                                              ; preds = %793
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6545, ptr noundef nonnull @.str.2) #22
  br label %800

800:                                              ; preds = %793, %799
  %801 = load i32, ptr @n_spills, align 4, !tbaa !527
  %802 = icmp sgt i32 %801, 0
  br i1 %802, label %803, label %825

803:                                              ; preds = %800
  %804 = trunc i64 %784 to i32
  br label %805

805:                                              ; preds = %803, %820
  %806 = phi i64 [ 0, %803 ], [ %821, %820 ]
  %807 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %806
  %808 = load i16, ptr %807, align 2, !tbaa !528
  %809 = sext i16 %808 to i32
  %810 = load ptr, ptr %782, align 8, !tbaa !1166
  %811 = getelementptr inbounds %struct.reload, ptr %810, i64 %784, i32 10
  %812 = load i32, ptr %811, align 8, !tbaa !1283
  %813 = icmp eq i32 %812, %809
  br i1 %813, label %814, label %820

814:                                              ; preds = %805
  %815 = trunc i64 %806 to i32
  %816 = tail call fastcc i32 @set_reload_reg(i32 noundef %815, i32 noundef %804) #23, !range !595
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %820

818:                                              ; preds = %814
  %819 = load ptr, ptr %3, align 8, !tbaa !811
  tail call fastcc void @failed_reload(ptr noundef %819, i32 noundef %804) #23
  br label %820

820:                                              ; preds = %805, %818, %814
  %821 = add nuw nsw i64 %806, 1
  %822 = load i32, ptr @n_spills, align 4, !tbaa !527
  %823 = sext i32 %822 to i64
  %824 = icmp slt i64 %821, %823
  br i1 %824, label %805, label %825, !llvm.loop !1525

825:                                              ; preds = %820, %800, %783, %789
  %826 = add nuw nsw i64 %784, 1
  %827 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %828 = sext i32 %827 to i64
  %829 = icmp slt i64 %826, %828
  br i1 %829, label %783, label %830, !llvm.loop !1526

830:                                              ; preds = %767, %825, %778
  %831 = phi i32 [ %779, %778 ], [ %827, %825 ], [ %768, %767 ]
  %832 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !527
  %833 = icmp sgt i32 %832, -1
  br i1 %833, label %834, label %838, !prof !1419

834:                                              ; preds = %830, %904
  %835 = phi i32 [ %905, %904 ], [ %831, %830 ]
  %836 = phi i32 [ %907, %904 ], [ %832, %830 ]
  %837 = icmp sgt i32 %835, 0
  br i1 %837, label %843, label %904, !prof !1527

838:                                              ; preds = %904, %830
  %839 = phi i32 [ %831, %830 ], [ %905, %904 ]
  %840 = icmp sgt i32 %839, 0
  br i1 %840, label %841, label %1059, !prof !1419

841:                                              ; preds = %838
  %842 = zext nneg i32 %839 to i64
  br label %910

843:                                              ; preds = %834, %898
  %844 = phi i64 [ %900, %898 ], [ 0, %834 ]
  %845 = phi i32 [ %899, %898 ], [ %836, %834 ]
  %846 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %844
  %847 = load i16, ptr %846, align 2, !tbaa !528
  %848 = sext i16 %847 to i32
  %849 = sext i16 %847 to i64
  %850 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %849
  %851 = load i8, ptr %850, align 1, !tbaa !493
  %852 = icmp eq i8 %851, 0
  br i1 %852, label %857, label %853, !prof !1528

853:                                              ; preds = %843
  %854 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %849, i32 11
  %855 = load ptr, ptr %854, align 8, !tbaa !1280
  %856 = icmp eq ptr %855, null
  br i1 %856, label %857, label %864, !prof !1529

857:                                              ; preds = %853, %843
  %858 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %849
  %859 = load ptr, ptr %858, align 8, !tbaa !513
  %860 = icmp eq ptr %859, null
  br i1 %860, label %898, label %861, !prof !1530

861:                                              ; preds = %857
  %862 = load i32, ptr %859, align 8
  %863 = trunc i32 %862 to i16
  switch i16 %863, label %898 [
    i16 37, label %864
    i16 39, label %864
  ], !prof !1531

864:                                              ; preds = %861, %861, %853
  %865 = phi ptr [ %855, %853 ], [ %859, %861 ], [ %859, %861 ]
  %866 = tail call i32 @true_regnum(ptr noundef nonnull %865) #22
  %867 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %849
  %868 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %849, i32 5
  %869 = load i32, ptr %868, align 4, !tbaa !1320
  %870 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %849, i32 12
  %871 = load i32, ptr %870, align 8, !tbaa !1364
  %872 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %849, i32 17
  %873 = load i32, ptr %872, align 4, !tbaa !1363
  %874 = load ptr, ptr %867, align 8, !tbaa !1289
  %875 = load i8, ptr %850, align 1, !tbaa !493
  %876 = icmp eq i8 %875, 0
  %877 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %849, i32 1
  %878 = select i1 %876, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr %877, !prof !1532
  %879 = load ptr, ptr %878, align 8, !tbaa !513
  %880 = tail call fastcc i32 @free_for_value_p(i32 noundef %866, i32 noundef %869, i32 noundef %871, i32 noundef %873, ptr noundef %874, ptr noundef %879, i32 noundef %848, i32 noundef 1) #23, !range !595
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %886, !prof !1533

882:                                              ; preds = %864
  %883 = icmp eq i32 %845, 0
  br i1 %883, label %884, label %898, !prof !1534

884:                                              ; preds = %882
  store i8 0, ptr %850, align 1, !tbaa !493
  %885 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %849
  store ptr null, ptr %885, align 8, !tbaa !513
  br label %898

886:                                              ; preds = %864
  %887 = load ptr, ptr %867, align 8, !tbaa !1289
  %888 = icmp eq ptr %887, null
  br i1 %888, label %898, label %889, !prof !1535

889:                                              ; preds = %886
  %890 = load ptr, ptr %877, align 8, !tbaa !1287
  %891 = icmp eq ptr %890, %887
  br i1 %891, label %898, label %892, !prof !1536

892:                                              ; preds = %889
  %893 = tail call i32 @remove_address_replacements(ptr noundef nonnull %887) #22
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %898, label %895, !prof !1537

895:                                              ; preds = %892
  %896 = icmp eq i32 %845, 0
  %897 = select i1 %896, i32 0, i32 2
  br label %898

898:                                              ; preds = %884, %892, %889, %886, %895, %882, %857, %861
  %899 = phi i32 [ %845, %861 ], [ %845, %857 ], [ %845, %882 ], [ %897, %895 ], [ %845, %892 ], [ %845, %889 ], [ %845, %886 ], [ 0, %884 ]
  %900 = add nuw nsw i64 %844, 1
  %901 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %902 = sext i32 %901 to i64
  %903 = icmp slt i64 %900, %902
  br i1 %903, label %843, label %904, !prof !1538, !llvm.loop !1539

904:                                              ; preds = %898, %834
  %905 = phi i32 [ %835, %834 ], [ %901, %898 ]
  %906 = phi i32 [ %836, %834 ], [ %899, %898 ]
  %907 = add nsw i32 %906, -1
  %908 = icmp sgt i32 %906, 0
  br i1 %908, label %834, label %838, !prof !1540, !llvm.loop !1541

909:                                              ; preds = %917
  br i1 %840, label %922, label %1059, !prof !880

910:                                              ; preds = %841, %917
  %911 = phi i64 [ 0, %841 ], [ %918, %917 ]
  %912 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %911
  %913 = load ptr, ptr %912, align 8, !tbaa !513
  %914 = icmp eq ptr %913, null
  br i1 %914, label %917, label %915, !prof !1542

915:                                              ; preds = %910
  %916 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %911
  store ptr %913, ptr %916, align 8, !tbaa !1289
  br label %917

917:                                              ; preds = %910, %915
  %918 = add nuw nsw i64 %911, 1
  %919 = icmp eq i64 %918, %842
  br i1 %919, label %909, label %910, !prof !1543, !llvm.loop !1544

920:                                              ; preds = %964
  %921 = icmp sgt i32 %965, 0
  br i1 %921, label %969, label %1059, !prof !880

922:                                              ; preds = %909, %964
  %923 = phi i32 [ %965, %964 ], [ %839, %909 ]
  %924 = phi i64 [ %966, %964 ], [ 0, %909 ]
  %925 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924
  %926 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924, i32 11
  %927 = load ptr, ptr %926, align 8, !tbaa !1280
  %928 = icmp eq ptr %927, null
  br i1 %928, label %964, label %929, !prof !1545

929:                                              ; preds = %922
  %930 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924, i32 18
  %931 = load i8, ptr %930, align 8
  %932 = and i8 %931, 1
  %933 = icmp eq i8 %932, 0
  br i1 %933, label %938, label %934, !prof !1546

934:                                              ; preds = %929
  %935 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %924
  %936 = load i8, ptr %935, align 1, !tbaa !493
  %937 = icmp eq i8 %936, 0
  br i1 %937, label %948, label %938, !prof !1547

938:                                              ; preds = %934, %929
  %939 = load ptr, ptr %925, align 8, !tbaa !1289
  %940 = icmp eq ptr %939, null
  br i1 %940, label %941, label %964, !prof !1548

941:                                              ; preds = %938
  %942 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924, i32 1
  %943 = load ptr, ptr %942, align 8, !tbaa !1287
  %944 = icmp eq ptr %943, null
  br i1 %944, label %945, label %964, !prof !1549

945:                                              ; preds = %941
  %946 = and i8 %931, 4
  %947 = icmp eq i8 %946, 0
  br i1 %947, label %948, label %964, !prof !1550

948:                                              ; preds = %945, %934
  %949 = tail call i32 @true_regnum(ptr noundef nonnull %927) #22
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %950
  %952 = load i16, ptr %951, align 2, !tbaa !528
  %953 = icmp sgt i16 %952, -1
  br i1 %953, label %954, label %961, !prof !1551

954:                                              ; preds = %948
  %955 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924, i32 12
  %956 = load i32, ptr %955, align 8, !tbaa !1364
  %957 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924, i32 17
  %958 = load i32, ptr %957, align 4, !tbaa !1363
  %959 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %924, i32 5
  %960 = load i32, ptr %959, align 4, !tbaa !1320
  tail call fastcc void @clear_reload_reg_in_use(i32 noundef %949, i32 noundef %956, i32 noundef %958, i32 noundef %960) #23
  br label %961

961:                                              ; preds = %954, %948
  store ptr null, ptr %926, align 8, !tbaa !1280
  %962 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %924
  store i32 -1, ptr %962, align 4, !tbaa !527
  %963 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %964

964:                                              ; preds = %922, %938, %941, %945, %961
  %965 = phi i32 [ %923, %922 ], [ %923, %938 ], [ %923, %941 ], [ %923, %945 ], [ %963, %961 ]
  %966 = add nuw nsw i64 %924, 1
  %967 = sext i32 %965 to i64
  %968 = icmp slt i64 %966, %967
  br i1 %968, label %922, label %920, !prof !1423, !llvm.loop !1552

969:                                              ; preds = %920, %1054
  %970 = phi i64 [ %1055, %1054 ], [ 0, %920 ]
  %971 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %970
  %972 = load i16, ptr %971, align 2, !tbaa !528
  %973 = sext i16 %972 to i64
  %974 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %973
  %975 = load i32, ptr %974, align 4, !tbaa !527
  %976 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %973, i32 9
  %977 = load ptr, ptr %976, align 8, !tbaa !1553
  %978 = icmp eq ptr %977, null
  br i1 %978, label %1054, label %979, !prof !1554

979:                                              ; preds = %969
  %980 = load i32, ptr %977, align 8
  %981 = and i32 %980, 65535
  %982 = icmp eq i32 %981, 37
  br i1 %982, label %983, label %1054, !prof !1555

983:                                              ; preds = %979
  %984 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %973, i32 11
  %985 = load ptr, ptr %984, align 8, !tbaa !1280
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1054, label %987, !prof !1556

987:                                              ; preds = %983
  %988 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %977) #23
  %989 = icmp slt i32 %988, 53
  br i1 %989, label %990, label %999, !prof !1557

990:                                              ; preds = %987
  %991 = sext i32 %988 to i64
  %992 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %973, i32 5
  %993 = load i32, ptr %992, align 4, !tbaa !1320
  %994 = zext i32 %993 to i64
  %995 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %991, i64 %994
  %996 = load i8, ptr %995, align 1, !tbaa !493
  %997 = zext i8 %996 to i32
  %998 = icmp eq i8 %996, 0
  br i1 %998, label %1007, label %999, !prof !1558

999:                                              ; preds = %987, %990
  %1000 = phi i32 [ 1, %987 ], [ %997, %990 ]
  br label %1001

1001:                                             ; preds = %999, %1001
  %1002 = phi i32 [ %1003, %1001 ], [ %1000, %999 ]
  %1003 = add nsw i32 %1002, -1
  %1004 = add nsw i32 %1003, %988
  %1005 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @reg_has_output_reload, i32 noundef %1004) #22
  %1006 = icmp ugt i32 %1002, 1
  br i1 %1006, label %1001, label %1007, !prof !1559, !llvm.loop !1560

1007:                                             ; preds = %1001, %990
  %1008 = icmp sgt i32 %975, -1
  br i1 %1008, label %1009, label %1050, !prof !1561

1009:                                             ; preds = %1007
  %1010 = zext nneg i32 %975 to i64
  %1011 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %973, i32 5
  %1012 = load i32, ptr %1011, align 4, !tbaa !1320
  %1013 = zext i32 %1012 to i64
  %1014 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1010, i64 %1013
  %1015 = load i8, ptr %1014, align 1, !tbaa !493
  %1016 = icmp eq i8 %1015, 0
  br i1 %1016, label %1050, label %1017, !prof !1562

1017:                                             ; preds = %1009
  %1018 = zext nneg i32 %975 to i64
  %1019 = zext i8 %1015 to i64
  %1020 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !545
  %1021 = add nuw nsw i64 %1019, 1
  %1022 = and i64 %1021, 510
  %1023 = add nsw i64 %1019, -1
  %1024 = insertelement <2 x i64> poison, i64 %1023, i64 0
  %1025 = shufflevector <2 x i64> %1024, <2 x i64> poison, <2 x i32> zeroinitializer
  %1026 = insertelement <2 x i64> poison, i64 %1019, i64 0
  %1027 = shufflevector <2 x i64> %1026, <2 x i64> poison, <2 x i32> zeroinitializer
  %1028 = add nsw <2 x i64> %1027, <i64 0, i64 -1>
  %1029 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %1020, i64 0
  %1030 = add nsw i64 %1018, -1
  %1031 = insertelement <2 x i64> poison, i64 %1030, i64 0
  %1032 = shufflevector <2 x i64> %1031, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %1033

1033:                                             ; preds = %1033, %1017
  %1034 = phi i64 [ 0, %1017 ], [ %1040, %1033 ]
  %1035 = phi <2 x i64> [ %1028, %1017 ], [ %1041, %1033 ]
  %1036 = phi <2 x i64> [ %1029, %1017 ], [ %1039, %1033 ]
  %1037 = add <2 x i64> %1032, %1035
  %1038 = shl nuw <2 x i64> <i64 1, i64 1>, %1037
  %1039 = or <2 x i64> %1036, %1038
  %1040 = add i64 %1034, 2
  %1041 = add <2 x i64> %1035, <i64 -2, i64 -2>
  %1042 = icmp eq i64 %1040, %1022
  br i1 %1042, label %1043, label %1033, !prof !1313, !llvm.loop !1563

1043:                                             ; preds = %1033
  %1044 = insertelement <2 x i64> poison, i64 %1034, i64 0
  %1045 = shufflevector <2 x i64> %1044, <2 x i64> poison, <2 x i32> zeroinitializer
  %1046 = or disjoint <2 x i64> %1045, <i64 0, i64 1>
  %1047 = icmp ugt <2 x i64> %1046, %1025
  %1048 = select <2 x i1> %1047, <2 x i64> %1036, <2 x i64> %1039
  %1049 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %1048)
  store i64 %1049, ptr @reg_is_output_reload, align 8, !tbaa !545
  br label %1050

1050:                                             ; preds = %1009, %1043, %1007
  %1051 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %973, i32 17
  %1052 = load i32, ptr %1051, align 4, !tbaa !1363
  switch i32 %1052, label %1053 [
    i32 9, label %1054
    i32 1, label %1054
    i32 2, label %1054
  ], !prof !1564

1053:                                             ; preds = %1050
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6661, ptr noundef nonnull @.str.2) #22
  br label %1054

1054:                                             ; preds = %1053, %1050, %1050, %1050, %983, %979, %969
  %1055 = add nuw nsw i64 %970, 1
  %1056 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %1057 = sext i32 %1056 to i64
  %1058 = icmp slt i64 %1055, %1057
  br i1 %1058, label %969, label %1059, !prof !1423, !llvm.loop !1565

1059:                                             ; preds = %1054, %838, %909, %920
  call void @llvm.lifetime.end.p0(i64 1440, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_assigned_reloads(ptr noundef %0) unnamed_addr #0 !prof !1417 !PGOFuncName !1566 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %215, !prof !1419

4:                                                ; preds = %1, %210
  %5 = phi i32 [ %211, %210 ], [ %2, %1 ]
  %6 = phi i64 [ %212, %210 ], [ 0, %1 ]
  %7 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !1289
  %9 = icmp eq ptr %8, null
  br i1 %9, label %210, label %10, !prof !1567

10:                                               ; preds = %4
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !1363
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %210, label %14, !prof !1568

14:                                               ; preds = %10
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1287
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %210, !prof !1569

18:                                               ; preds = %14
  %19 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !1280
  %21 = icmp eq ptr %20, null
  br i1 %21, label %210, label %22, !prof !1570

22:                                               ; preds = %18
  %23 = tail call i32 @reg_set_p(ptr noundef nonnull %20, ptr noundef %0) #22
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br i1 %24, label %26, label %210, !prof !1571

26:                                               ; preds = %22
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 12
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %29, label %100, !prof !1572

29:                                               ; preds = %26, %85
  %30 = phi i64 [ %89, %85 ], [ 0, %26 ]
  %31 = phi i32 [ %88, %85 ], [ 30, %26 ]
  %32 = phi i32 [ %87, %85 ], [ -1, %26 ]
  %33 = phi i32 [ %86, %85 ], [ 0, %26 ]
  %34 = icmp eq i64 %6, %30
  br i1 %34, label %85, label %35, !prof !1573

35:                                               ; preds = %29
  %36 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !1280
  %39 = icmp eq ptr %38, null
  br i1 %39, label %85, label %40, !prof !1574

40:                                               ; preds = %35
  %41 = load ptr, ptr %19, align 8, !tbaa !1280
  %42 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %38, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %85, label %44, !prof !1575

44:                                               ; preds = %40
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !1363
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %52, !prof !1576

48:                                               ; preds = %44
  %49 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %50 = load i32, ptr %49, align 8, !tbaa !1364
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 %32)
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %32, %44 ], [ %51, %48 ]
  %54 = load ptr, ptr %19, align 8, !tbaa !1280
  %55 = load ptr, ptr %37, align 8, !tbaa !1280
  %56 = tail call i32 @rtx_equal_p(ptr noundef %54, ptr noundef %55) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58, !prof !1577

58:                                               ; preds = %52
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !1287
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69, !prof !1578

62:                                               ; preds = %58
  %63 = load ptr, ptr %36, align 8, !tbaa !1289
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !1579

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 8, !tbaa !1289
  %67 = tail call i32 @rtx_equal_p(ptr noundef %66, ptr noundef nonnull %63) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85, !prof !1580

69:                                               ; preds = %65, %62, %58, %52
  %70 = load i32, ptr %45, align 4, !tbaa !1363
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %93, !prof !1581

72:                                               ; preds = %69
  %73 = load i32, ptr %11, align 4, !tbaa !1363
  switch i32 %73, label %93 [
    i32 3, label %77
    i32 10, label %74
  ], !prof !1582

74:                                               ; preds = %72
  %75 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %76 = load i32, ptr %75, align 8, !tbaa !1364
  br label %82

77:                                               ; preds = %72
  %78 = load i32, ptr %27, align 8, !tbaa !1364
  %79 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %80 = load i32, ptr %79, align 8, !tbaa !1364
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %93, label %82, !prof !1583

82:                                               ; preds = %74, %77
  %83 = phi i32 [ %76, %74 ], [ %80, %77 ]
  %84 = tail call i32 @llvm.smin.i32(i32 %31, i32 %83)
  br label %85

85:                                               ; preds = %82, %65, %29, %35, %40
  %86 = phi i32 [ %33, %29 ], [ %33, %35 ], [ %33, %65 ], [ %33, %40 ], [ 1, %82 ]
  %87 = phi i32 [ %32, %29 ], [ %32, %35 ], [ %53, %65 ], [ %32, %40 ], [ %53, %82 ]
  %88 = phi i32 [ %31, %29 ], [ %31, %35 ], [ %31, %65 ], [ %31, %40 ], [ %84, %82 ]
  %89 = add nuw nsw i64 %30, 1
  %90 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %29, label %93, !prof !1584, !llvm.loop !1585

93:                                               ; preds = %72, %77, %69, %85
  %94 = phi i64 [ %89, %85 ], [ %30, %69 ], [ %30, %77 ], [ %30, %72 ]
  %95 = phi i32 [ %86, %85 ], [ %33, %69 ], [ %33, %77 ], [ %33, %72 ]
  %96 = phi i32 [ %88, %85 ], [ %31, %69 ], [ %31, %77 ], [ %31, %72 ]
  %97 = phi i32 [ %87, %85 ], [ %53, %69 ], [ %53, %77 ], [ %53, %72 ]
  %98 = trunc i64 %94 to i32
  %99 = load i32, ptr @n_reloads, align 4, !tbaa !527
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
  br i1 %108, label %210, label %109, !prof !1586

109:                                              ; preds = %100
  %110 = load i32, ptr %11, align 4, !tbaa !1363
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114, !prof !1587

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6760, ptr noundef nonnull @.str.2) #22
  %113 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %114

114:                                              ; preds = %109, %112
  %115 = phi i32 [ %101, %109 ], [ %113, %112 ]
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %143, !prof !1572

117:                                              ; preds = %114, %138
  %118 = phi i64 [ %139, %138 ], [ 0, %114 ]
  %119 = icmp eq i64 %6, %118
  br i1 %119, label %138, label %120, !prof !1588

120:                                              ; preds = %117
  %121 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %118
  %122 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %118, i32 11
  %123 = load ptr, ptr %122, align 8, !tbaa !1280
  %124 = icmp eq ptr %123, null
  br i1 %124, label %138, label %125, !prof !1589

125:                                              ; preds = %120
  %126 = load ptr, ptr %19, align 8, !tbaa !1280
  %127 = tail call i32 @rtx_equal_p(ptr noundef %126, ptr noundef nonnull %123) #22
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129, !prof !1590

129:                                              ; preds = %125
  %130 = icmp eq i32 %103, 0
  br i1 %130, label %134, label %131, !prof !1591

131:                                              ; preds = %129
  %132 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %118, i32 17
  %133 = load i32, ptr %132, align 4, !tbaa !1363
  switch i32 %133, label %138 [
    i32 3, label %134
    i32 10, label %134
  ], !prof !1592

134:                                              ; preds = %131, %131, %129
  %135 = trunc i64 %6 to i32
  store i32 9, ptr %11, align 4, !tbaa !1363
  store ptr null, ptr %121, align 8, !tbaa !1289
  %136 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %118
  store i32 -1, ptr %136, align 4, !tbaa !527
  %137 = trunc i64 %118 to i32
  tail call void @transfer_replacements(i32 noundef %135, i32 noundef %137) #22
  br label %138

138:                                              ; preds = %131, %117, %120, %125, %134
  %139 = add nuw nsw i64 %118, 1
  %140 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %117, label %143, !prof !1593, !llvm.loop !1594

143:                                              ; preds = %138, %114
  %144 = phi i32 [ %115, %114 ], [ %140, %138 ]
  %145 = load i32, ptr %11, align 4, !tbaa !1363
  %146 = icmp eq i32 %145, 9
  br i1 %146, label %147, label %210, !prof !1595

147:                                              ; preds = %143
  %148 = icmp sgt i32 %144, 0
  br i1 %148, label %149, label %210, !prof !1596

149:                                              ; preds = %147
  %150 = icmp eq i32 %103, 0
  br label %151

151:                                              ; preds = %149, %205
  %152 = phi i64 [ 0, %149 ], [ %206, %205 ]
  %153 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !1289
  %155 = icmp eq ptr %154, null
  br i1 %155, label %205, label %156, !prof !1597

156:                                              ; preds = %151
  %157 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152, i32 17
  %158 = load i32, ptr %157, align 4, !tbaa !1363
  switch i32 %158, label %159 [
    i32 9, label %205
    i32 10, label %205
    i32 5, label %205
    i32 7, label %205
  ], !prof !1598

159:                                              ; preds = %156
  %160 = icmp eq i32 %158, 3
  %161 = or i1 %150, %160
  br i1 %161, label %164, label %162, !prof !1599

162:                                              ; preds = %159
  %163 = icmp eq i32 %158, 4
  br i1 %163, label %164, label %205

164:                                              ; preds = %162, %159
  %165 = load ptr, ptr %7, align 8, !tbaa !1289
  %166 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %154, ptr noundef %165) #22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %205, label %168, !prof !1600

168:                                              ; preds = %164
  %169 = load i32, ptr %157, align 4, !tbaa !1363
  %170 = add i32 %169, -3
  %171 = icmp ult i32 %170, 2
  %172 = select i1 %171, i32 10, i32 9
  store i32 %172, ptr %157, align 4, !tbaa !1363
  %173 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152, i32 11
  %174 = load ptr, ptr %173, align 8, !tbaa !1280
  %175 = icmp ne ptr %174, null
  %176 = icmp ne i64 %152, 0
  %177 = and i1 %175, %176
  br i1 %177, label %178, label %205, !prof !1601

178:                                              ; preds = %168, %202
  %179 = phi i64 [ %203, %202 ], [ 0, %168 ]
  %180 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !1289
  %182 = icmp eq ptr %181, null
  br i1 %182, label %202, label %183, !prof !1602

183:                                              ; preds = %178
  %184 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %179, i32 11
  %185 = load ptr, ptr %184, align 8, !tbaa !1280
  %186 = icmp eq ptr %185, null
  br i1 %186, label %202, label %187, !prof !1603

187:                                              ; preds = %183
  %188 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %179, i32 17
  %189 = load i32, ptr %188, align 4, !tbaa !1363
  %190 = load i32, ptr %157, align 4, !tbaa !1363
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %202, !prof !1604

192:                                              ; preds = %187
  %193 = load ptr, ptr %173, align 8, !tbaa !1280
  %194 = tail call i32 @rtx_equal_p(ptr noundef nonnull %185, ptr noundef %193) #22
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %202, label %196, !prof !1605

196:                                              ; preds = %192
  %197 = load ptr, ptr %180, align 8, !tbaa !1289
  %198 = load ptr, ptr %153, align 8, !tbaa !1289
  %199 = tail call i32 @rtx_equal_p(ptr noundef %197, ptr noundef %198) #22
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6824, ptr noundef nonnull @.str.2) #22
  br label %202

202:                                              ; preds = %201, %196, %192, %187, %183, %178
  %203 = add nuw nsw i64 %179, 1
  %204 = icmp eq i64 %203, %152
  br i1 %204, label %205, label %178, !prof !1606, !llvm.loop !1607

205:                                              ; preds = %202, %168, %156, %156, %156, %156, %151, %162, %164
  %206 = add nuw nsw i64 %152, 1
  %207 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %208 = sext i32 %207 to i64
  %209 = icmp slt i64 %206, %208
  br i1 %209, label %151, label %210, !prof !1608, !llvm.loop !1609

210:                                              ; preds = %205, %147, %100, %143, %4, %10, %14, %18, %22
  %211 = phi i32 [ %144, %147 ], [ %101, %100 ], [ %144, %143 ], [ %5, %4 ], [ %5, %10 ], [ %5, %14 ], [ %5, %18 ], [ %25, %22 ], [ %207, %205 ]
  %212 = add nuw nsw i64 %6, 1
  %213 = sext i32 %211 to i64
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %4, label %215, !prof !1423, !llvm.loop !1610

215:                                              ; preds = %210, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_reload_insns(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1417 !PGOFuncName !1611 {
  %2 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !811
  store i64 0, ptr @reg_reloaded_died, align 8, !tbaa !545
  %4 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %9, !prof !1419

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @other_output_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @outaddr_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @output_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @output_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @inpaddr_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @input_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @input_reload_insns, i8 0, i64 %8, i1 false), !tbaa !513
  br label %9

9:                                                ; preds = %6, %1
  store ptr null, ptr @other_input_address_reload_insns, align 8, !tbaa !513
  store ptr null, ptr @other_input_reload_insns, align 8, !tbaa !513
  store ptr null, ptr @operand_reload_insns, align 8, !tbaa !513
  store ptr null, ptr @other_operand_reload_insns, align 8, !tbaa !513
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !513
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !954

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !493
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.16, i32 noundef %14) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !513
  tail call void @debug_reload_to_stream(ptr noundef %16) #22
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %50, !prof !1419

20:                                               ; preds = %17, %43
  %21 = phi i64 [ %46, %43 ], [ 0, %17 ]
  %22 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !1280
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25, !prof !1612

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %23) #23
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %43, !prof !1613

28:                                               ; preds = %25
  %29 = load i32, ptr %23, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %26) #23
  %33 = icmp ult i32 %26, %32
  br i1 %33, label %34, label %43, !prof !1614

34:                                               ; preds = %28
  %35 = zext nneg i32 %26 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %38 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %37
  store ptr null, ptr %38, align 8, !tbaa !513
  %39 = add nuw nsw i64 %37, 1
  %40 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %26) #23
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %36, label %43, !prof !1615, !llvm.loop !1616

43:                                               ; preds = %36, %28, %25, %20
  %44 = getelementptr inbounds %struct.reload, ptr @rld, i64 %21
  %45 = trunc i64 %21 to i32
  tail call fastcc void @do_input_reload(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %45) #23
  tail call fastcc void @do_output_reload(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %45) #23
  %46 = add nuw nsw i64 %21, 1
  %47 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %20, label %50, !prof !1423, !llvm.loop !1617

50:                                               ; preds = %43, %17
  %51 = load ptr, ptr @other_input_address_reload_insns, align 8, !tbaa !513
  %52 = tail call ptr @emit_insn_before(ptr noundef %51, ptr noundef %3) #22
  %53 = load ptr, ptr @other_input_reload_insns, align 8, !tbaa !513
  %54 = tail call ptr @emit_insn_before(ptr noundef %53, ptr noundef %3) #22
  %55 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72, !prof !1419

57:                                               ; preds = %50, %57
  %58 = phi i64 [ %68, %57 ], [ 0, %50 ]
  %59 = getelementptr inbounds [30 x ptr], ptr @inpaddr_address_reload_insns, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !513
  %61 = tail call ptr @emit_insn_before(ptr noundef %60, ptr noundef %3) #22
  %62 = getelementptr inbounds [30 x ptr], ptr @input_address_reload_insns, i64 0, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !513
  %64 = tail call ptr @emit_insn_before(ptr noundef %63, ptr noundef %3) #22
  %65 = getelementptr inbounds [30 x ptr], ptr @input_reload_insns, i64 0, i64 %58
  %66 = load ptr, ptr %65, align 8, !tbaa !513
  %67 = tail call ptr @emit_insn_before(ptr noundef %66, ptr noundef %3) #22
  %68 = add nuw nsw i64 %58, 1
  %69 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %57, label %72, !prof !1618, !llvm.loop !1619

72:                                               ; preds = %57, %50
  %73 = load ptr, ptr @other_operand_reload_insns, align 8, !tbaa !513
  %74 = tail call ptr @emit_insn_before(ptr noundef %73, ptr noundef %3) #22
  %75 = load ptr, ptr @operand_reload_insns, align 8, !tbaa !513
  %76 = tail call ptr @emit_insn_before(ptr noundef %75, ptr noundef %3) #22
  %77 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %82, label %79, !prof !1419

79:                                               ; preds = %82, %72
  %80 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %100, label %618, !prof !1419

82:                                               ; preds = %72, %82
  %83 = phi i64 [ %96, %82 ], [ 0, %72 ]
  %84 = getelementptr inbounds [30 x ptr], ptr @outaddr_address_reload_insns, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !513
  %86 = tail call ptr @emit_insn_after(ptr noundef %85, ptr noundef %3) #22
  %87 = getelementptr inbounds [30 x ptr], ptr @output_address_reload_insns, i64 0, i64 %83
  %88 = load ptr, ptr %87, align 8, !tbaa !513
  %89 = tail call ptr @emit_insn_after(ptr noundef %88, ptr noundef %86) #22
  %90 = getelementptr inbounds [30 x ptr], ptr @output_reload_insns, i64 0, i64 %83
  %91 = load ptr, ptr %90, align 8, !tbaa !513
  %92 = tail call ptr @emit_insn_after(ptr noundef %91, ptr noundef %89) #22
  %93 = getelementptr inbounds [30 x ptr], ptr @other_output_reload_insns, i64 0, i64 %83
  %94 = load ptr, ptr %93, align 8, !tbaa !513
  %95 = tail call ptr @emit_insn_after(ptr noundef %94, ptr noundef %92) #22
  %96 = add nuw nsw i64 %83, 1
  %97 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %82, label %79, !prof !1618, !llvm.loop !1620

100:                                              ; preds = %79, %613
  %101 = phi i64 [ %614, %613 ], [ 0, %79 ]
  %102 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !528
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !527
  %107 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104
  %108 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !1441
  %110 = icmp eq ptr %109, null
  br i1 %110, label %153, label %111, !prof !1621

111:                                              ; preds = %100
  %112 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %104
  %113 = load i8, ptr %112, align 1, !tbaa !493
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %153, !prof !1622

115:                                              ; preds = %111
  %116 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %104
  %117 = load ptr, ptr %116, align 8, !tbaa !513
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %153, !prof !1623

119:                                              ; preds = %115
  %120 = load i32, ptr %109, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 39
  br i1 %122, label %123, label %127, !prof !1624

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !493
  %126 = load i32, ptr %125, align 8
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i32 [ %126, %123 ], [ %120, %119 ]
  %129 = phi ptr [ %125, %123 ], [ %109, %119 ]
  %130 = and i32 %128, 65535
  %131 = icmp eq i32 %130, 37
  br i1 %131, label %132, label %153, !prof !1625

132:                                              ; preds = %127
  %133 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %129) #23
  %134 = icmp ugt i32 %133, 52
  br i1 %134, label %135, label %153, !prof !1626

135:                                              ; preds = %132
  %136 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %133) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %153, !prof !1627

138:                                              ; preds = %135
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %129) #23
  %140 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds ptr, ptr %140, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !513
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145, !prof !1628

145:                                              ; preds = %138
  %146 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %143) #23
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !527
  %150 = icmp eq i32 %149, %139
  br i1 %150, label %151, label %153, !prof !1629

151:                                              ; preds = %145
  %152 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %147
  store ptr null, ptr %152, align 8, !tbaa !513
  br label %153

153:                                              ; preds = %127, %132, %135, %145, %151, %138, %115, %111, %100
  %154 = icmp sgt i32 %106, -1
  br i1 %154, label %155, label %439, !prof !1630

155:                                              ; preds = %153
  %156 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 11
  %157 = load ptr, ptr %156, align 8, !tbaa !1280
  %158 = icmp eq ptr %157, null
  br i1 %158, label %613, label %159, !prof !1631

159:                                              ; preds = %155
  %160 = zext nneg i32 %106 to i64
  %161 = load i32, ptr %157, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %160, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !493
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %188, label %168, !prof !1632

168:                                              ; preds = %159
  %169 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 12
  %170 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 17
  %171 = zext i8 %166 to i64
  br label %172

172:                                              ; preds = %168, %185
  %173 = phi i64 [ 0, %168 ], [ %186, %185 ]
  %174 = add nuw nsw i64 %173, %160
  %175 = load i32, ptr %169, align 8, !tbaa !1364
  %176 = load i32, ptr %170, align 4, !tbaa !1363
  %177 = trunc i64 %174 to i32
  %178 = tail call fastcc i32 @reload_reg_reaches_end_p(i32 noundef %177, i32 noundef %175, i32 noundef %176) #23, !range !595
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180, !prof !1633

180:                                              ; preds = %172
  %181 = shl nuw i64 1, %174
  %182 = xor i64 %181, -1
  %183 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %184 = and i64 %183, %182
  store i64 %184, ptr @reg_reloaded_valid, align 8, !tbaa !545
  br label %185

185:                                              ; preds = %172, %180
  %186 = add nuw nsw i64 %173, 1
  %187 = icmp eq i64 %186, %171
  br i1 %187, label %188, label %172, !prof !1634, !llvm.loop !1635

188:                                              ; preds = %185, %159
  %189 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !1287
  %191 = icmp eq ptr %190, null
  br i1 %191, label %300, label %192, !prof !1636

192:                                              ; preds = %188
  %193 = load i32, ptr %190, align 8
  %194 = and i32 %193, 65535
  %195 = icmp eq i32 %194, 37
  br i1 %195, label %202, label %196, !prof !1637

196:                                              ; preds = %192
  %197 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %198 = load ptr, ptr %197, align 8, !tbaa !1553
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 37
  br i1 %201, label %202, label %613, !prof !1638

202:                                              ; preds = %196, %192
  %203 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %104
  %204 = load ptr, ptr %203, align 8, !tbaa !513
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %204) #23
  %209 = sext i32 %208 to i64
  %210 = zext nneg i32 %207 to i64
  %211 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %209, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !493
  %213 = zext i8 %212 to i32
  %214 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 12
  %215 = load i32, ptr %214, align 8, !tbaa !1364
  %216 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 17
  %217 = load i32, ptr %216, align 4, !tbaa !1363
  %218 = tail call fastcc zeroext i8 @reload_regs_reach_end_p(i32 noundef %208, i32 noundef %213, i32 noundef %215, i32 noundef %217) #23, !range !525
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %613, label %220, !prof !1639

220:                                              ; preds = %202
  %221 = load ptr, ptr %189, align 8, !tbaa !1287
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 37
  br i1 %224, label %233, label %225, !prof !1640

225:                                              ; preds = %220
  %226 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %227 = load ptr, ptr %226, align 8, !tbaa !1553
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %233, !prof !1640

229:                                              ; preds = %225
  %230 = load ptr, ptr %108, align 8, !tbaa !1441
  %231 = getelementptr inbounds %struct.rtx_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !493
  br label %233

233:                                              ; preds = %225, %220, %229
  %234 = phi ptr [ %232, %229 ], [ %221, %220 ], [ %227, %225 ]
  %235 = tail call fastcc i32 @rhs_regno(ptr noundef %234) #23
  %236 = icmp slt i32 %235, 53
  br i1 %236, label %239, label %237, !prof !1641

237:                                              ; preds = %233
  %238 = zext nneg i32 %235 to i64
  br label %244

239:                                              ; preds = %233
  %240 = sext i32 %235 to i64
  %241 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %240, i64 %210
  %242 = load i8, ptr %241, align 1, !tbaa !493
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %237, %239
  %245 = phi i64 [ %238, %237 ], [ %240, %239 ]
  %246 = phi i32 [ 1, %237 ], [ %243, %239 ]
  %247 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %209
  %248 = load ptr, ptr %247, align 8, !tbaa !513
  %249 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %209
  store ptr %248, ptr %249, align 8, !tbaa !513
  %250 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %209
  store ptr %234, ptr %250, align 8, !tbaa !513
  %251 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %252 = getelementptr inbounds ptr, ptr %251, i64 %245
  store ptr %204, ptr %252, align 8, !tbaa !513
  %253 = icmp eq i32 %246, %213
  %254 = select i1 %236, i1 %253, i1 false
  br i1 %254, label %255, label %258, !prof !1642

255:                                              ; preds = %244
  %256 = tail call fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %235, i32 noundef %208, i32 noundef %207) #23, !range !525
  %257 = icmp ne i8 %256, 0
  br label %258

258:                                              ; preds = %255, %244
  %259 = phi i1 [ false, %244 ], [ %257, %255 ]
  %260 = icmp ugt i32 %246, 1
  %261 = select i1 %236, i1 %260, i1 false
  br i1 %261, label %262, label %278, !prof !1643

262:                                              ; preds = %258
  %263 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %264 = zext nneg i32 %246 to i64
  %265 = getelementptr ptr, ptr %263, i64 %245
  br label %266

266:                                              ; preds = %262, %273
  %267 = phi i64 [ 1, %262 ], [ %276, %273 ]
  br i1 %259, label %268, label %273, !prof !1644

268:                                              ; preds = %266
  %269 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %270 = getelementptr ptr, ptr %269, i64 %267
  %271 = getelementptr ptr, ptr %270, i64 %209
  %272 = load ptr, ptr %271, align 8, !tbaa !513
  br label %273

273:                                              ; preds = %266, %268
  %274 = phi ptr [ %272, %268 ], [ null, %266 ]
  %275 = getelementptr ptr, ptr %265, i64 %267
  store ptr %274, ptr %275, align 8, !tbaa !513
  %276 = add nuw nsw i64 %267, 1
  %277 = icmp eq i64 %276, %264
  br i1 %277, label %278, label %266, !prof !1645, !llvm.loop !1646

278:                                              ; preds = %273, %258
  %279 = icmp eq i8 %212, 0
  br i1 %279, label %613, label %280, !prof !1647

280:                                              ; preds = %278
  %281 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %282 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !545
  %283 = zext i8 %212 to i64
  br label %284

284:                                              ; preds = %280, %284
  %285 = phi i64 [ 0, %280 ], [ %298, %284 ]
  %286 = phi i64 [ %282, %280 ], [ %291, %284 ]
  %287 = phi i64 [ %281, %280 ], [ %297, %284 ]
  %288 = add nsw i64 %285, %209
  %289 = shl nuw i64 1, %288
  %290 = xor i64 %289, -1
  %291 = and i64 %286, %290
  %292 = trunc i64 %285 to i32
  %293 = select i1 %259, i32 %292, i32 0, !prof !1648
  %294 = add nsw i32 %293, %235
  %295 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %288
  store i32 %294, ptr %295, align 4, !tbaa !527
  %296 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %288
  store ptr %3, ptr %296, align 8, !tbaa !513
  %297 = or i64 %287, %289
  %298 = add nuw nsw i64 %285, 1
  %299 = icmp eq i64 %298, %283
  br i1 %299, label %612, label %284, !prof !1649, !llvm.loop !1650

300:                                              ; preds = %188
  %301 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %302 = load ptr, ptr %301, align 8, !tbaa !1553
  %303 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %304 = icmp eq ptr %302, null
  br i1 %304, label %305, label %613, !prof !1651

305:                                              ; preds = %300
  %306 = load ptr, ptr %107, align 8, !tbaa !1289
  %307 = icmp eq ptr %306, null
  br i1 %307, label %613, label %308, !prof !1652

308:                                              ; preds = %305
  %309 = load i32, ptr %306, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %318, !prof !1653

312:                                              ; preds = %308
  %313 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %306) #23
  %314 = icmp ult i32 %313, 53
  br i1 %314, label %318, label %315, !prof !1654

315:                                              ; preds = %312
  %316 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %313) #22
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %327, label %318, !prof !1655

318:                                              ; preds = %315, %312, %308
  %319 = load ptr, ptr %108, align 8, !tbaa !1441
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 37
  br i1 %322, label %323, label %613, !prof !1656

323:                                              ; preds = %318
  %324 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %319) #23
  %325 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %324) #22
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %613, !prof !1657

327:                                              ; preds = %323, %315
  %328 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %329 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %104
  %330 = load ptr, ptr %329, align 8, !tbaa !513
  %331 = load ptr, ptr %328, align 8, !tbaa !493
  %332 = tail call i32 @reg_set_p(ptr noundef %330, ptr noundef %331) #22
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %613, !prof !1658

334:                                              ; preds = %327
  %335 = load ptr, ptr %329, align 8, !tbaa !513
  %336 = load i32, ptr %335, align 8
  %337 = lshr i32 %336, 16
  %338 = and i32 %337, 255
  %339 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %335) #23
  %340 = sext i32 %339 to i64
  %341 = zext nneg i32 %338 to i64
  %342 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %340, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !493
  %344 = zext i8 %343 to i32
  %345 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 12
  %346 = load i32, ptr %345, align 8, !tbaa !1364
  %347 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 17
  %348 = load i32, ptr %347, align 4, !tbaa !1363
  %349 = tail call fastcc zeroext i8 @reload_regs_reach_end_p(i32 noundef %339, i32 noundef %344, i32 noundef %346, i32 noundef %348) #23, !range !525
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %613, label %351, !prof !1659

351:                                              ; preds = %334
  %352 = load ptr, ptr %107, align 8, !tbaa !1289
  %353 = load i32, ptr %352, align 8
  %354 = and i32 %353, 65535
  %355 = icmp eq i32 %354, 37
  br i1 %355, label %356, label %359, !prof !1660

356:                                              ; preds = %351
  %357 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %352) #23
  %358 = icmp ugt i32 %357, 52
  br i1 %358, label %367, label %359, !prof !1661

359:                                              ; preds = %356, %351
  %360 = load ptr, ptr %108, align 8, !tbaa !1441
  %361 = load i32, ptr %360, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 37
  br i1 %363, label %367, label %364, !prof !1662

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !493
  br label %367

367:                                              ; preds = %356, %359, %364
  %368 = phi ptr [ %366, %364 ], [ %360, %359 ], [ %352, %356 ]
  %369 = tail call fastcc i32 @rhs_regno(ptr noundef %368) #23
  %370 = icmp slt i32 %369, 53
  br i1 %370, label %375, label %371, !prof !1663

371:                                              ; preds = %367
  %372 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %373 = zext nneg i32 %369 to i64
  %374 = getelementptr inbounds ptr, ptr %372, i64 %373
  store ptr %335, ptr %374, align 8, !tbaa !513
  br label %404

375:                                              ; preds = %367
  %376 = sext i32 %369 to i64
  %377 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %376, i64 %341
  %378 = load i8, ptr %377, align 1, !tbaa !493
  %379 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %380 = getelementptr inbounds ptr, ptr %379, i64 %376
  store ptr %335, ptr %380, align 8, !tbaa !513
  %381 = icmp eq i8 %378, %343
  br i1 %381, label %382, label %385, !prof !1664

382:                                              ; preds = %375
  %383 = tail call fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %339, i32 noundef %369, i32 noundef %338) #23, !range !525
  %384 = icmp ne i8 %383, 0
  br label %385

385:                                              ; preds = %382, %375
  %386 = phi i1 [ false, %375 ], [ %384, %382 ]
  %387 = icmp ugt i8 %378, 1
  br i1 %387, label %388, label %404, !prof !1665

388:                                              ; preds = %385
  %389 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %390 = zext i8 %378 to i64
  %391 = getelementptr ptr, ptr %389, i64 %376
  br label %392

392:                                              ; preds = %388, %399
  %393 = phi i64 [ 1, %388 ], [ %402, %399 ]
  br i1 %386, label %394, label %399, !prof !510

394:                                              ; preds = %392
  %395 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %396 = getelementptr ptr, ptr %395, i64 %393
  %397 = getelementptr ptr, ptr %396, i64 %340
  %398 = load ptr, ptr %397, align 8, !tbaa !513
  br label %399

399:                                              ; preds = %392, %394
  %400 = phi ptr [ %398, %394 ], [ null, %392 ]
  %401 = getelementptr ptr, ptr %391, i64 %393
  store ptr %400, ptr %401, align 8, !tbaa !513
  %402 = add nuw nsw i64 %393, 1
  %403 = icmp eq i64 %402, %390
  br i1 %403, label %404, label %392, !prof !1666, !llvm.loop !1667

404:                                              ; preds = %399, %385, %371
  %405 = phi i1 [ false, %371 ], [ %386, %385 ], [ %386, %399 ]
  %406 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %104
  %407 = load i8, ptr %406, align 1, !tbaa !493
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %415, label %409, !prof !1668

409:                                              ; preds = %404
  %410 = load ptr, ptr %189, align 8, !tbaa !1287
  %411 = icmp eq ptr %410, null
  br i1 %411, label %417, label %412, !prof !1669

412:                                              ; preds = %409
  %413 = load ptr, ptr %303, align 8, !tbaa !1553
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %412, %404
  %416 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %340
  store ptr null, ptr %416, align 8, !tbaa !513
  br label %417

417:                                              ; preds = %415, %412, %409
  %418 = icmp eq i8 %343, 0
  br i1 %418, label %613, label %419, !prof !1670

419:                                              ; preds = %417
  %420 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %421 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !545
  %422 = zext i8 %343 to i64
  br label %423

423:                                              ; preds = %419, %423
  %424 = phi i64 [ 0, %419 ], [ %437, %423 ]
  %425 = phi i64 [ %421, %419 ], [ %430, %423 ]
  %426 = phi i64 [ %420, %419 ], [ %436, %423 ]
  %427 = add nsw i64 %424, %340
  %428 = shl nuw i64 1, %427
  %429 = xor i64 %428, -1
  %430 = and i64 %425, %429
  %431 = trunc i64 %424 to i32
  %432 = select i1 %405, i32 %431, i32 0, !prof !1671
  %433 = add nsw i32 %432, %369
  %434 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %427
  store i32 %433, ptr %434, align 4, !tbaa !527
  %435 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %427
  store ptr %3, ptr %435, align 8, !tbaa !513
  %436 = or i64 %426, %428
  %437 = add nuw nsw i64 %424, 1
  %438 = icmp eq i64 %437, %422
  br i1 %438, label %611, label %423, !prof !1672, !llvm.loop !1673

439:                                              ; preds = %153
  %440 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !1287
  %442 = icmp eq ptr %441, null
  br i1 %442, label %452, label %443, !prof !1674

443:                                              ; preds = %439
  %444 = load i32, ptr %441, align 8
  %445 = trunc i32 %444 to i16
  switch i16 %445, label %613 [
    i16 37, label %460
    i16 43, label %446
  ], !prof !1675

446:                                              ; preds = %443
  %447 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %448 = load ptr, ptr %447, align 8, !tbaa !1553
  %449 = load i32, ptr %448, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 37
  br i1 %451, label %460, label %613, !prof !1676

452:                                              ; preds = %439
  %453 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %454 = load ptr, ptr %453, align 8, !tbaa !1553
  %455 = icmp eq ptr %454, null
  br i1 %455, label %613, label %456, !prof !1677

456:                                              ; preds = %452
  %457 = load i32, ptr %454, align 8
  %458 = and i32 %457, 65535
  %459 = icmp eq i32 %458, 37
  br i1 %459, label %467, label %613, !prof !1255

460:                                              ; preds = %443, %446
  %461 = and i32 %444, 65535
  %462 = icmp eq i32 %461, 37
  br i1 %462, label %467, label %463, !prof !1678

463:                                              ; preds = %460
  %464 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %465 = load ptr, ptr %464, align 8, !tbaa !1553
  %466 = load i32, ptr %465, align 8
  br label %467

467:                                              ; preds = %456, %463, %460
  %468 = phi i32 [ %444, %460 ], [ %466, %463 ], [ %457, %456 ]
  %469 = phi ptr [ %441, %460 ], [ %465, %463 ], [ %454, %456 ]
  %470 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %469) #23
  %471 = lshr i32 %468, 16
  %472 = and i32 %471, 255
  %473 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 11
  %474 = load ptr, ptr %473, align 8, !tbaa !1280
  %475 = icmp eq ptr %474, null
  br i1 %475, label %479, label %476, !prof !1679

476:                                              ; preds = %467
  %477 = icmp eq ptr %474, %469
  br i1 %477, label %479, label %478

478:                                              ; preds = %476
  tail call void @forget_old_reloads_1(ptr noundef nonnull %474, ptr poison, ptr noundef null) #23
  br label %479

479:                                              ; preds = %478, %476, %467
  %480 = icmp slt i32 %470, 53
  br i1 %480, label %599, label %481, !prof !1680

481:                                              ; preds = %479
  %482 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %483 = zext nneg i32 %470 to i64
  %484 = getelementptr inbounds ptr, ptr %482, i64 %483
  store ptr null, ptr %484, align 8, !tbaa !513
  %485 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %104
  %486 = load ptr, ptr %485, align 8, !tbaa !513
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %526, !prof !1679

488:                                              ; preds = %481
  %489 = load i32, ptr %3, align 8
  %490 = and i32 %489, 65535
  %491 = add nsw i32 %490, -7
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %493, label %613, !prof !1681

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %495 = load ptr, ptr %494, align 8, !tbaa !493
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 65535
  %498 = icmp eq i32 %497, 23
  br i1 %498, label %502, label %499, !prof !1682

499:                                              ; preds = %493
  %500 = tail call ptr @single_set_2(ptr noundef nonnull %3, ptr noundef nonnull %495) #22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %613, label %502, !prof !880

502:                                              ; preds = %493, %499
  %503 = phi ptr [ %500, %499 ], [ %495, %493 ]
  %504 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !493
  %506 = load ptr, ptr %440, align 8, !tbaa !1287
  %507 = icmp eq ptr %505, %506
  br i1 %507, label %508, label %613, !prof !1683

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1, i32 0, i32 0, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !493
  %511 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %531, !prof !1684

513:                                              ; preds = %508
  %514 = zext nneg i32 %511 to i64
  br label %518

515:                                              ; preds = %518
  %516 = add nuw nsw i64 %519, 1
  %517 = icmp eq i64 %516, %514
  br i1 %517, label %531, label %518, !prof !1685, !llvm.loop !1686

518:                                              ; preds = %513, %515
  %519 = phi i64 [ 0, %513 ], [ %516, %515 ]
  %520 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !1289
  %522 = icmp eq ptr %521, %510
  br i1 %522, label %523, label %515, !prof !1687

523:                                              ; preds = %518
  %524 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %519
  %525 = load ptr, ptr %524, align 8, !tbaa !513
  br label %531

526:                                              ; preds = %481
  %527 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %486) #23
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !513
  br label %534

531:                                              ; preds = %515, %508, %523
  %532 = phi ptr [ %525, %523 ], [ %510, %508 ], [ %510, %515 ]
  %533 = icmp eq ptr %532, null
  br i1 %533, label %613, label %534, !prof !1688

534:                                              ; preds = %526, %531
  %535 = phi ptr [ %530, %526 ], [ %3, %531 ]
  %536 = phi ptr [ %486, %526 ], [ %532, %531 ]
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 37
  br i1 %539, label %540, label %613, !prof !1689

540:                                              ; preds = %534
  %541 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %536) #23
  %542 = icmp ult i32 %541, 53
  br i1 %542, label %543, label %613, !prof !1690

543:                                              ; preds = %540
  %544 = lshr i32 %537, 16
  %545 = and i32 %544, 255
  %546 = icmp eq i32 %545, %472
  br i1 %546, label %548, label %547, !prof !1690

547:                                              ; preds = %543
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8156, ptr noundef nonnull @.str.2) #22
  br label %548

548:                                              ; preds = %543, %547
  %549 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %536) #23
  %550 = sext i32 %549 to i64
  %551 = zext nneg i32 %472 to i64
  %552 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %550, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !493
  %554 = tail call ptr @find_regno_note(ptr noundef %3, i32 noundef 1, i32 noundef %549) #22
  %555 = icmp eq ptr %554, null
  %556 = icmp ne ptr %535, null
  %557 = select i1 %555, i1 %556, i1 false
  br i1 %557, label %558, label %560, !prof !1691

558:                                              ; preds = %548
  %559 = tail call ptr @find_regno_note(ptr noundef nonnull %535, i32 noundef 1, i32 noundef %549) #22
  br label %560

560:                                              ; preds = %558, %548
  %561 = phi ptr [ %559, %558 ], [ %554, %548 ]
  %562 = icmp eq i8 %553, 0
  br i1 %562, label %595, label %563, !prof !1692

563:                                              ; preds = %560
  %564 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !545
  %565 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !545
  %566 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %567 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !545
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
  store ptr %535, ptr %580, align 8, !tbaa !513
  %581 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %579
  store ptr %469, ptr %581, align 8, !tbaa !513
  %582 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %579
  store i32 %470, ptr %582, align 4, !tbaa !527
  %583 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %579
  store ptr %535, ptr %583, align 8, !tbaa !513
  %584 = shl nuw i64 1, %579
  %585 = xor i64 %584, -1
  %586 = and i64 %575, %585
  %587 = or i64 %576, %584
  %588 = or i64 %577, %584
  %589 = and i64 %578, %571
  %590 = or i64 %578, %570
  %591 = select i1 %568, i64 %589, i64 %590, !prof !1693
  %592 = add nuw nsw i64 %574, 1
  %593 = icmp eq i64 %592, %572
  br i1 %593, label %594, label %573, !prof !1694, !llvm.loop !1695

594:                                              ; preds = %573
  store i64 %586, ptr @reg_reloaded_dead, align 8, !tbaa !545
  store i64 %587, ptr @reg_reloaded_valid, align 8, !tbaa !545
  store i64 %588, ptr @reg_is_output_reload, align 8, !tbaa !545
  store i64 %591, ptr @reg_reloaded_died, align 8, !tbaa !545
  br label %595

595:                                              ; preds = %594, %560
  %596 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %597 = getelementptr inbounds ptr, ptr %596, i64 %483
  store ptr %536, ptr %597, align 8, !tbaa !513
  %598 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @reg_has_output_reload, i32 noundef %470) #22
  br label %613

599:                                              ; preds = %479
  %600 = sext i32 %470 to i64
  %601 = zext nneg i32 %472 to i64
  %602 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %600, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !493
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %613, label %605

605:                                              ; preds = %599
  %606 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %607 = shl nsw i64 %600, 3
  %608 = getelementptr i8, ptr %606, i64 %607
  %609 = zext i8 %603 to i64
  %610 = shl nuw nsw i64 %609, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %608, i8 0, i64 %610, i1 false), !tbaa !513
  br label %613

611:                                              ; preds = %423
  store i64 %430, ptr @reg_reloaded_dead, align 8, !tbaa !545
  store i64 %436, ptr @reg_reloaded_valid, align 8, !tbaa !545
  br label %613

612:                                              ; preds = %284
  store i64 %291, ptr @reg_reloaded_dead, align 8, !tbaa !545
  store i64 %297, ptr @reg_reloaded_valid, align 8, !tbaa !545
  br label %613

613:                                              ; preds = %196, %605, %599, %278, %612, %417, %611, %334, %202, %300, %305, %318, %323, %327, %488, %499, %502, %446, %443, %155, %595, %540, %534, %531, %456, %452
  %614 = add nuw nsw i64 %101, 1
  %615 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %616 = sext i32 %615 to i64
  %617 = icmp slt i64 %614, %616
  br i1 %617, label %100, label %618, !prof !1423, !llvm.loop !1696

618:                                              ; preds = %613, %79
  %619 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !545
  %620 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !545
  %621 = or i64 %620, %619
  store i64 %621, ptr @reg_reloaded_dead, align 8, !tbaa !545
  ret void
}

; Function Attrs: optsize
declare void @subst_reloads(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_eh_region_note(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !734 !PGOFuncName !1697 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !493
  tail call void @copy_reg_eh_region_note_forward(ptr noundef nonnull %4, ptr noundef %12, ptr noundef %2) #22
  br label %13

13:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forget_marked_reloads(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1698 !PGOFuncName !1699 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #23
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %45, label %6, !prof !1700

6:                                                ; preds = %1
  %7 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %8

8:                                                ; preds = %6, %41
  %9 = phi i32 [ %7, %6 ], [ %42, %41 ]
  %10 = load i32, ptr %2, align 4, !tbaa !527
  %11 = icmp ult i32 %10, 53
  br i1 %11, label %12, label %30, !prof !1701

12:                                               ; preds = %8
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %17, !prof !1702

14:                                               ; preds = %12
  %15 = zext nneg i32 %10 to i64
  %16 = shl nuw nsw i64 1, %15
  br label %23

17:                                               ; preds = %12
  %18 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !545
  %19 = zext nneg i32 %10 to i64
  %20 = shl nuw nsw i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32, !prof !1703

23:                                               ; preds = %14, %17
  %24 = phi i64 [ %16, %14 ], [ %20, %17 ]
  %25 = phi i64 [ %15, %14 ], [ %19, %17 ]
  %26 = xor i64 %24, -1
  %27 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %28 = and i64 %27, %26
  store i64 %28, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %29 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %25
  store ptr null, ptr %29, align 8, !tbaa !513
  br label %30

30:                                               ; preds = %23, %8
  %31 = icmp eq i32 %9, 0
  br i1 %31, label %36, label %32, !prof !1704

32:                                               ; preds = %17, %30
  %33 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %10) #22
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br i1 %34, label %36, label %41, !prof !1705

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %35, %32 ], [ 0, %30 ]
  %38 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %39 = zext i32 %10 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr null, ptr %40, align 8, !tbaa !513
  br label %41

41:                                               ; preds = %32, %36
  %42 = phi i32 [ %35, %32 ], [ %37, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !525
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %8, !prof !1706, !llvm.loop !1707

45:                                               ; preds = %41, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_reload_regs_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1708 !PGOFuncName !1709 {
  %3 = alloca i64, align 8
  %4 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15, !prof !1428

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %13, %8 ]
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !513
  %12 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  store ptr %11, ptr %12, align 8, !tbaa !1280
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %7
  br i1 %14, label %15, label %8, !prof !1710, !llvm.loop !1711

15:                                               ; preds = %8, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) @reload_inherited, i8 0, i64 180, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) @reload_override_in, i8 0, i64 1440, i1 false)
  store i64 0, ptr @reload_reg_used, align 8, !tbaa !545
  store i64 0, ptr @reload_reg_used_at_all, align 8, !tbaa !545
  store i64 0, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  store i64 0, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  store i64 0, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  store i64 0, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !545
  store i64 0, ptr @reg_used_in_insn, align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !545
  %16 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %16) #22
  %17 = load i64, ptr %3, align 8, !tbaa !545
  %18 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !545
  %19 = or i64 %18, %17
  store i64 %19, ptr @reg_used_in_insn, align 8, !tbaa !545
  store i64 0, ptr %3, align 8, !tbaa !545
  %20 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %20) #22
  %21 = load i64, ptr %3, align 8, !tbaa !545
  %22 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !545
  %23 = or i64 %22, %21
  store i64 %23, ptr @reg_used_in_insn, align 8, !tbaa !545
  call void @compute_use_by_pseudos(ptr noundef nonnull @reg_used_in_insn, ptr noundef nonnull %16) #23
  call void @compute_use_by_pseudos(ptr noundef nonnull @reg_used_in_insn, ptr noundef nonnull %20) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  %24 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29, !prof !1428

26:                                               ; preds = %15
  %27 = zext nneg i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_output, i8 0, i64 %28, i1 false), !tbaa !545
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_input, i8 0, i64 %28, i1 false), !tbaa !545
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_input_addr, i8 0, i64 %28, i1 false), !tbaa !545
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_inpaddr_addr, i8 0, i64 %28, i1 false), !tbaa !545
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_output_addr, i8 0, i64 %28, i1 false), !tbaa !545
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_outaddr_addr, i8 0, i64 %28, i1 false), !tbaa !545
  br label %29

29:                                               ; preds = %26, %15
  %30 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !840
  %32 = xor i64 %31, -1
  store i64 %32, ptr @reload_reg_unavailable, align 8, !tbaa !545
  store i64 0, ptr @reload_reg_used_for_inherit, align 8, !tbaa !545
  %33 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55, !prof !1428

35:                                               ; preds = %29, %50
  %36 = phi i32 [ %51, %50 ], [ %33, %29 ]
  %37 = phi i64 [ %52, %50 ], [ 0, %29 ]
  %38 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !1280
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41, !prof !1712

41:                                               ; preds = %35
  %42 = call fastcc i32 @rhs_regno(ptr noundef nonnull %39) #23
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !1364
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !1363
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !1320
  call fastcc void @mark_reload_reg_in_use(i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #23
  %49 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %50

50:                                               ; preds = %35, %41
  %51 = phi i32 [ %36, %35 ], [ %49, %41 ]
  %52 = add nuw nsw i64 %37, 1
  %53 = sext i32 %51 to i64
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %35, label %55, !prof !1516, !llvm.loop !1713

55:                                               ; preds = %50, %29
  ret void
}

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #2

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
define internal fastcc noundef i32 @free_for_value_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !1714 !PGOFuncName !1715 {
  %9 = sext i32 %0 to i64
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !493
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %17, %8
  %15 = phi i32 [ %13, %8 ], [ %18, %17 ]
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22, !prof !1716

17:                                               ; preds = %14
  %18 = add nsw i32 %15, -1
  %19 = add nsw i32 %18, %0
  %20 = tail call fastcc i32 @reload_reg_free_for_value_p(i32 noundef %0, i32 noundef %19, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %14, !prof !1717, !llvm.loop !1718

22:                                               ; preds = %14, %17
  %23 = phi i32 [ 0, %17 ], [ 1, %14 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_for_reload_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @mark_reload_reg_in_use(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #18 !prof !1719 !PGOFuncName !1720 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !493
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, %0
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %12, label %79, !prof !1721

12:                                               ; preds = %4
  %13 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !545
  %14 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %15 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  %16 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  %17 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !545
  %18 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %19 = zext i32 %10 to i64
  br label %20

20:                                               ; preds = %12, %69
  %21 = phi i64 [ %5, %12 ], [ %76, %69 ]
  %22 = phi i64 [ %18, %12 ], [ %74, %69 ]
  %23 = phi i64 [ %17, %12 ], [ %73, %69 ]
  %24 = phi i64 [ %16, %12 ], [ %72, %69 ]
  %25 = phi i64 [ %15, %12 ], [ %71, %69 ]
  %26 = phi i64 [ %14, %12 ], [ %70, %69 ]
  %27 = phi i64 [ %13, %12 ], [ %75, %69 ]
  %28 = shl nuw i64 1, %21
  switch i32 %2, label %69 [
    i32 9, label %29
    i32 3, label %31
    i32 4, label %36
    i32 5, label %41
    i32 6, label %46
    i32 7, label %51
    i32 8, label %53
    i32 10, label %55
    i32 0, label %57
    i32 1, label %62
    i32 2, label %67
  ], !prof !1722

29:                                               ; preds = %20
  %30 = or i64 %26, %28
  store i64 %30, ptr @reload_reg_used, align 8, !tbaa !545
  br label %69

31:                                               ; preds = %20
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !545
  %35 = or i64 %34, %28
  store i64 %35, ptr %33, align 8, !tbaa !545
  br label %69

36:                                               ; preds = %20
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !545
  %40 = or i64 %39, %28
  store i64 %40, ptr %38, align 8, !tbaa !545
  br label %69

41:                                               ; preds = %20
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !545
  %45 = or i64 %44, %28
  store i64 %45, ptr %43, align 8, !tbaa !545
  br label %69

46:                                               ; preds = %20
  %47 = sext i32 %1 to i64
  %48 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !545
  %50 = or i64 %49, %28
  store i64 %50, ptr %48, align 8, !tbaa !545
  br label %69

51:                                               ; preds = %20
  %52 = or i64 %25, %28
  store i64 %52, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  br label %69

53:                                               ; preds = %20
  %54 = or i64 %24, %28
  store i64 %54, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  br label %69

55:                                               ; preds = %20
  %56 = or i64 %23, %28
  store i64 %56, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !545
  br label %69

57:                                               ; preds = %20
  %58 = sext i32 %1 to i64
  %59 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !545
  %61 = or i64 %60, %28
  store i64 %61, ptr %59, align 8, !tbaa !545
  br label %69

62:                                               ; preds = %20
  %63 = sext i32 %1 to i64
  %64 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !545
  %66 = or i64 %65, %28
  store i64 %66, ptr %64, align 8, !tbaa !545
  br label %69

67:                                               ; preds = %20
  %68 = or i64 %22, %28
  store i64 %68, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  br label %69

69:                                               ; preds = %20, %67, %62, %57, %55, %53, %51, %46, %41, %36, %31, %29
  %70 = phi i64 [ %26, %67 ], [ %26, %62 ], [ %26, %57 ], [ %26, %55 ], [ %26, %53 ], [ %26, %51 ], [ %26, %46 ], [ %26, %41 ], [ %26, %36 ], [ %26, %31 ], [ %30, %29 ], [ %26, %20 ]
  %71 = phi i64 [ %25, %67 ], [ %25, %62 ], [ %25, %57 ], [ %25, %55 ], [ %25, %53 ], [ %52, %51 ], [ %25, %46 ], [ %25, %41 ], [ %25, %36 ], [ %25, %31 ], [ %25, %29 ], [ %25, %20 ]
  %72 = phi i64 [ %24, %67 ], [ %24, %62 ], [ %24, %57 ], [ %24, %55 ], [ %54, %53 ], [ %24, %51 ], [ %24, %46 ], [ %24, %41 ], [ %24, %36 ], [ %24, %31 ], [ %24, %29 ], [ %24, %20 ]
  %73 = phi i64 [ %23, %67 ], [ %23, %62 ], [ %23, %57 ], [ %56, %55 ], [ %23, %53 ], [ %23, %51 ], [ %23, %46 ], [ %23, %41 ], [ %23, %36 ], [ %23, %31 ], [ %23, %29 ], [ %23, %20 ]
  %74 = phi i64 [ %68, %67 ], [ %22, %62 ], [ %22, %57 ], [ %22, %55 ], [ %22, %53 ], [ %22, %51 ], [ %22, %46 ], [ %22, %41 ], [ %22, %36 ], [ %22, %31 ], [ %22, %29 ], [ %22, %20 ]
  %75 = or i64 %27, %28
  %76 = add nuw nsw i64 %21, 1
  %77 = icmp eq i64 %76, %19
  br i1 %77, label %78, label %20, !prof !1723, !llvm.loop !1724

78:                                               ; preds = %69
  store i64 %75, ptr @reload_reg_used_at_all, align 8, !tbaa !545
  br label %79

79:                                               ; preds = %78, %4
  ret void
}

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_equiv_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @regno_clobbered_p(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @allocate_reload_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1725 !PGOFuncName !1726 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3
  %5 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !1284
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %11, !prof !1727

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 7, i32 5
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i1 [ %9, %8 ], [ false, %2 ]
  %13 = phi i32 [ %10, %8 ], [ 5, %2 ]
  %14 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 2
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 17
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 5
  %18 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 1
  %19 = load i32, ptr @n_spills, align 4, !tbaa !527
  br label %21

20:                                               ; preds = %132
  br i1 %23, label %21, label %139, !prof !1728, !llvm.loop !1729

21:                                               ; preds = %11, %20
  %22 = phi i32 [ %19, %11 ], [ %133, %20 ]
  %23 = phi i1 [ true, %11 ], [ false, %20 ]
  %24 = load i32, ptr @last_spill_reg, align 4, !tbaa !527
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %26, label %132, !prof !1730

26:                                               ; preds = %21, %128
  %27 = phi i32 [ %130, %128 ], [ %22, %21 ]
  %28 = phi i32 [ %34, %128 ], [ %24, %21 ]
  %29 = phi i32 [ %129, %128 ], [ 0, %21 ]
  %30 = load i32, ptr %14, align 8, !tbaa !1295
  %31 = add nsw i32 %28, 1
  %32 = icmp slt i32 %31, %27
  %33 = select i1 %32, i32 0, i32 %27, !prof !1731
  %34 = sub nsw i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !528
  %38 = sext i16 %37 to i32
  %39 = load i32, ptr %15, align 8, !tbaa !1364
  %40 = load i32, ptr %16, align 4, !tbaa !1363
  %41 = tail call fastcc i32 @reload_reg_free_p(i32 noundef %38, i32 noundef %39, i32 noundef %40) #23, !range !595
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !1732

43:                                               ; preds = %26
  %44 = zext nneg i32 %38 to i64
  %45 = shl nuw i64 1, %44
  br label %62

46:                                               ; preds = %26
  %47 = load ptr, ptr %4, align 8, !tbaa !1289
  %48 = icmp eq ptr %47, null
  br i1 %48, label %128, label %49, !prof !1733

49:                                               ; preds = %46
  %50 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %51 = zext nneg i32 %38 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %50, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %128, !prof !1734

55:                                               ; preds = %49
  %56 = load i32, ptr %17, align 4, !tbaa !1320
  %57 = load i32, ptr %15, align 8, !tbaa !1364
  %58 = load i32, ptr %16, align 4, !tbaa !1363
  %59 = load ptr, ptr %18, align 8, !tbaa !1287
  %60 = tail call fastcc i32 @free_for_value_p(i32 noundef %38, i32 noundef %56, i32 noundef %57, i32 noundef %58, ptr noundef nonnull %47, ptr noundef %59, i32 noundef %0, i32 noundef 1) #23, !range !595
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %128, label %62, !prof !1735

62:                                               ; preds = %43, %55
  %63 = phi i64 [ %45, %43 ], [ %52, %55 ]
  %64 = sext i32 %30 to i64
  %65 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !545
  %67 = and i64 %66, %63
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %128, label %69, !prof !1736

69:                                               ; preds = %62
  %70 = load i32, ptr %17, align 4, !tbaa !1320
  %71 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %38, i32 noundef %70) #22
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %128, label %73, !prof !1737

73:                                               ; preds = %69
  br i1 %23, label %74, label %82, !prof !1738

74:                                               ; preds = %73
  %75 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !545
  %76 = and i64 %75, %63
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %128, label %78, !prof !1739

78:                                               ; preds = %74
  %79 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !545
  %80 = and i64 %79, %63
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %128, !prof !1740

82:                                               ; preds = %78, %73
  %83 = sext i16 %37 to i64
  %84 = load i32, ptr %17, align 4, !tbaa !1320
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %83, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !493
  %88 = zext i8 %87 to i32
  br i1 %12, label %89, label %91, !prof !1741

89:                                               ; preds = %82
  %90 = load i32, ptr %5, align 8, !tbaa !1284
  br label %91

91:                                               ; preds = %89, %82
  %92 = phi i32 [ %90, %89 ], [ %88, %82 ]
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %123, label %94, !prof !1742

94:                                               ; preds = %91
  %95 = sext i32 %92 to i64
  %96 = tail call i32 @llvm.smin.i32(i32 %92, i32 1)
  br label %97

97:                                               ; preds = %94, %114
  %98 = phi i64 [ %95, %94 ], [ %119, %114 ]
  %99 = icmp sgt i64 %98, 1
  %100 = trunc i64 %98 to i32
  br i1 %99, label %101, label %120, !prof !1743

101:                                              ; preds = %97
  %102 = add nsw i32 %38, -1
  %103 = add i32 %102, %100
  %104 = load i64, ptr %65, align 8, !tbaa !545
  %105 = zext nneg i32 %103 to i64
  %106 = shl nuw i64 1, %105
  %107 = and i64 %104, %106
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %128, label %109, !prof !1744

109:                                              ; preds = %101
  %110 = sext i32 %103 to i64
  %111 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !528
  %113 = icmp sgt i16 %112, -1
  br i1 %113, label %114, label %128, !prof !1745

114:                                              ; preds = %109
  %115 = load i32, ptr %15, align 8, !tbaa !1364
  %116 = load i32, ptr %16, align 4, !tbaa !1363
  %117 = tail call fastcc i32 @reload_reg_free_p(i32 noundef %103, i32 noundef %115, i32 noundef %116) #23, !range !595
  %118 = icmp eq i32 %117, 0
  %119 = add nsw i64 %98, -1
  br i1 %118, label %120, label %97, !prof !1746

120:                                              ; preds = %114, %97
  %121 = phi i32 [ %100, %114 ], [ %96, %97 ]
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %91, %120
  %124 = phi i32 [ 5, %120 ], [ %13, %91 ]
  %125 = icmp eq i32 %124, 5
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, ptr @n_spills, align 4, !tbaa !527
  br label %132

128:                                              ; preds = %109, %101, %120, %78, %74, %69, %62, %55, %49, %46, %123
  %129 = add nuw nsw i32 %29, 1
  %130 = load i32, ptr @n_spills, align 4, !tbaa !527
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %26, label %132, !prof !1747, !llvm.loop !1748

132:                                              ; preds = %128, %126, %21
  %133 = phi i32 [ %22, %21 ], [ %127, %126 ], [ %130, %128 ]
  %134 = phi i32 [ 0, %21 ], [ %29, %126 ], [ %129, %128 ]
  %135 = phi i32 [ %24, %21 ], [ %34, %126 ], [ %34, %128 ]
  %136 = icmp slt i32 %134, %133
  br i1 %136, label %137, label %20, !prof !1749

137:                                              ; preds = %132
  %138 = tail call fastcc i32 @set_reload_reg(i32 noundef %135, i32 noundef %0) #23, !range !595
  br label %139

139:                                              ; preds = %20, %137
  %140 = phi i32 [ %138, %137 ], [ 0, %20 ]
  ret i32 %140
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_reload_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1750 !PGOFuncName !1751 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [53 x ptr], ptr @spill_reg_rtx, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !513
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !1752

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !1320
  br label %19

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !1320
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %26, label %19, !prof !1753

19:                                               ; preds = %7, %11
  %20 = phi i64 [ %8, %7 ], [ %15, %11 ]
  %21 = phi i32 [ %10, %7 ], [ %17, %11 ]
  %22 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %3
  %23 = load i16, ptr %22, align 2, !tbaa !528
  %24 = sext i16 %23 to i32
  %25 = tail call ptr @gen_rtx_REG(i32 noundef %21, i32 noundef %24) #22
  store ptr %25, ptr %4, align 8, !tbaa !513
  br label %26

26:                                               ; preds = %19, %11
  %27 = phi i64 [ %20, %19 ], [ %15, %11 ]
  %28 = phi ptr [ %25, %19 ], [ %5, %11 ]
  %29 = tail call i32 @true_regnum(ptr noundef %28) #22
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !1320
  %32 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %31) #22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %69, label %34, !prof !1754

34:                                               ; preds = %26
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27
  %36 = load ptr, ptr %35, align 8, !tbaa !1289
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38, !prof !1755

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !1756

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %41) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %69, label %46, !prof !1757

46:                                               ; preds = %34, %43, %38
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !1287
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !1758

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %53) #22
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56, !prof !1759

56:                                               ; preds = %50, %46
  store i32 %0, ptr @last_spill_reg, align 4, !tbaa !527
  %57 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %3
  %58 = load i16, ptr %57, align 2, !tbaa !528
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !1364
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 17
  %63 = load i32, ptr %62, align 4, !tbaa !1363
  %64 = load i32, ptr %30, align 4, !tbaa !1320
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %64) #23
  %65 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 11
  store ptr %28, ptr %65, align 8, !tbaa !1280
  %66 = load i16, ptr %57, align 2, !tbaa !528
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %27
  store i32 %67, ptr %68, align 4, !tbaa !527
  br label %69

69:                                               ; preds = %26, %43, %50, %56
  %70 = phi i32 [ 1, %56 ], [ 0, %50 ], [ 0, %43 ], [ 0, %26 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @failed_reload(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !734 !PGOFuncName !1760 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !493
  %5 = tail call i32 @asm_noperands(ptr noundef %4) #22
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @_fatal_insn(ptr noundef nonnull @.str.19, ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 5706, ptr noundef nonnull @.str.2) #22
  br label %8

8:                                                ; preds = %7, %2
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #22
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  store ptr null, ptr %11, align 8, !tbaa !1280
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
define internal fastcc void @clear_reload_reg_in_use(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1761 !PGOFuncName !1762 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !493
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
  ], !prof !1763

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
  %36 = load i32, ptr @n_reloads, align 4, !tbaa !527
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
  %49 = load i32, ptr %48, align 4, !tbaa !1363
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  br i1 %33, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 12
  %54 = load i32, ptr %53, align 8, !tbaa !1364
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %56, label %71

56:                                               ; preds = %52, %51
  %57 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 11
  %58 = load ptr, ptr %57, align 8, !tbaa !1280
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @true_regnum(ptr noundef nonnull %58) #22
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !1320
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
  br i1 %74, label %43, label %75, !llvm.loop !1764

75:                                               ; preds = %71, %32, %40
  %76 = phi ptr [ %41, %40 ], [ %34, %32 ], [ %34, %71 ]
  %77 = phi i32 [ %42, %40 ], [ %35, %32 ], [ %72, %71 ]
  %78 = phi i32 [ %0, %40 ], [ %0, %32 ], [ %73, %71 ]
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %80, label %111, !prof !1765

80:                                               ; preds = %75
  %81 = zext i32 %77 to i64
  %82 = zext i32 %78 to i64
  %83 = sub nsw i64 %81, %82
  %84 = load i64, ptr %76, align 8, !tbaa !545
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
  br i1 %103, label %104, label %94, !prof !1313, !llvm.loop !1766

104:                                              ; preds = %94
  %105 = insertelement <2 x i64> poison, i64 %95, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = or disjoint <2 x i64> %106, <i64 0, i64 1>
  %108 = icmp ugt <2 x i64> %107, %89
  %109 = select <2 x i1> %108, <2 x i64> %97, <2 x i64> %100
  %110 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %109)
  store i64 %110, ptr %76, align 8, !tbaa !545
  br label %111

111:                                              ; preds = %104, %75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @reload_reg_free_for_value_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !1767 !PGOFuncName !1768 {
  %9 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !545
  %10 = zext nneg i32 %1 to i64
  %11 = shl nuw i64 1, %10
  %12 = and i64 %9, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %225, !prof !1769

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !513
  %16 = icmp ne ptr %15, %5
  %17 = select i1 %16, ptr %5, ptr null, !prof !1770
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
  ], !prof !1771

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
  %31 = select i1 %16, i32 123, i32 %30, !prof !1772
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
  %41 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %224, !prof !1773

43:                                               ; preds = %39, %211
  %44 = phi i64 [ %213, %211 ], [ 0, %39 ]
  %45 = phi i32 [ %212, %211 ], [ 0, %39 ]
  %46 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !1280
  %49 = icmp eq ptr %48, null
  br i1 %49, label %211, label %50, !prof !1774

50:                                               ; preds = %43
  %51 = load i32, ptr %48, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 37
  br i1 %53, label %54, label %211, !prof !1775

54:                                               ; preds = %50
  %55 = zext i32 %6 to i64
  %56 = tail call i32 @true_regnum(ptr noundef nonnull %48) #22
  %57 = sub i32 %1, %56
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %48) #23
  %59 = zext i32 %58 to i64
  %60 = load i32, ptr %48, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %59, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !493
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %66, -1
  %68 = icmp ugt i32 %57, %67
  %69 = icmp eq i64 %44, %55
  %70 = or i1 %69, %68
  br i1 %70, label %211, label %71, !prof !1776

71:                                               ; preds = %54
  %72 = load ptr, ptr %46, align 8, !tbaa !1289
  %73 = tail call i32 @true_regnum(ptr noundef nonnull %48) #22
  %74 = icmp ne i32 %73, %0
  %75 = icmp eq ptr %72, null
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %86, label %77, !prof !1777

77:                                               ; preds = %71
  %78 = tail call i32 @rtx_equal_p(ptr noundef nonnull %72, ptr noundef %4) #22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80, !prof !1778

80:                                               ; preds = %77
  %81 = icmp ne ptr %17, null
  %82 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !1287
  %84 = icmp ne ptr %83, null
  %85 = or i1 %81, %84
  br i1 %85, label %86, label %211, !prof !1779

86:                                               ; preds = %71, %80, %77
  %87 = phi ptr [ %72, %80 ], [ %72, %77 ], [ null, %71 ]
  %88 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 17
  %89 = load i32, ptr %88, align 4, !tbaa !1363
  switch i32 %89, label %225 [
    i32 10, label %188
    i32 4, label %90
    i32 3, label %117
    i32 0, label %134
    i32 8, label %139
    i32 7, label %151
    i32 2, label %152
    i32 1, label %153
    i32 6, label %154
    i32 5, label %170
    i32 9, label %174
  ], !prof !1780

90:                                               ; preds = %86
  switch i32 %3, label %112 [
    i32 3, label %91
    i32 0, label %101
  ]

91:                                               ; preds = %90
  %92 = icmp ne i32 %7, 0
  %93 = add nuw nsw i64 %44, 1
  %94 = icmp eq i64 %93, %55
  %95 = and i1 %92, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = sext i32 %6 to i64
  %98 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %97, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !1287
  %100 = icmp eq ptr %99, null
  br i1 %100, label %211, label %112

101:                                              ; preds = %90
  %102 = icmp ne i32 %7, 0
  %103 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 12
  %104 = load i32, ptr %103, align 8, !tbaa !1364
  %105 = icmp eq i32 %104, %2
  %106 = and i1 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = sext i32 %6 to i64
  %109 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %108, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !1287
  %111 = icmp eq ptr %110, null
  br i1 %111, label %211, label %112

112:                                              ; preds = %91, %96, %90, %107, %101
  %113 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 12
  %114 = load i32, ptr %113, align 8, !tbaa !1364
  %115 = shl nsw i32 %114, 2
  %116 = or disjoint i32 %115, 2
  br label %188

117:                                              ; preds = %86
  %118 = icmp ne i32 %7, 0
  %119 = icmp eq i32 %3, 0
  %120 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 12
  %121 = load i32, ptr %120, align 8, !tbaa !1364
  %122 = icmp eq i32 %121, %2
  %123 = and i1 %118, %122
  %124 = select i1 %119, i1 %123, i1 false
  br i1 %124, label %125, label %130, !prof !1781

125:                                              ; preds = %117
  %126 = sext i32 %6 to i64
  %127 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %126, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !1287
  %129 = icmp eq ptr %128, null
  br i1 %129, label %211, label %130

130:                                              ; preds = %117, %125
  %131 = phi i32 [ %2, %125 ], [ %121, %117 ]
  %132 = shl nsw i32 %131, 2
  %133 = or disjoint i32 %132, 3
  br label %188

134:                                              ; preds = %86
  %135 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 12
  %136 = load i32, ptr %135, align 8, !tbaa !1364
  %137 = shl nsw i32 %136, 2
  %138 = add nsw i32 %137, 4
  br label %188

139:                                              ; preds = %86
  %140 = icmp eq i32 %3, 7
  br i1 %140, label %141, label %188

141:                                              ; preds = %139
  %142 = icmp ne i32 %7, 0
  %143 = add nuw nsw i64 %44, 1
  %144 = icmp eq i64 %143, %55
  %145 = and i1 %142, %144
  br i1 %145, label %146, label %188

146:                                              ; preds = %141
  %147 = sext i32 %6 to i64
  %148 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %147, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !1287
  %150 = icmp eq ptr %149, null
  br i1 %150, label %211, label %188

151:                                              ; preds = %86
  br label %188

152:                                              ; preds = %86
  br label %188

153:                                              ; preds = %86
  br label %188

154:                                              ; preds = %86
  %155 = icmp eq i32 %3, 5
  br i1 %155, label %156, label %166

156:                                              ; preds = %154
  %157 = icmp ne i32 %7, 0
  %158 = add nuw nsw i64 %44, 1
  %159 = icmp eq i64 %158, %55
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = sext i32 %6 to i64
  %163 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %162, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !1287
  %165 = icmp eq ptr %164, null
  br i1 %165, label %211, label %166

166:                                              ; preds = %161, %156, %154
  %167 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 12
  %168 = load i32, ptr %167, align 8, !tbaa !1364
  %169 = add nsw i32 %168, 124
  br label %188

170:                                              ; preds = %86
  %171 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 12
  %172 = load i32, ptr %171, align 8, !tbaa !1364
  %173 = add nsw i32 %172, 125
  br label %188

174:                                              ; preds = %86
  %175 = load ptr, ptr %46, align 8, !tbaa !1289
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177, !prof !1782

177:                                              ; preds = %174
  %178 = tail call i32 @rtx_equal_p(ptr noundef %87, ptr noundef %4) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180, !prof !1783

180:                                              ; preds = %177, %174
  %181 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !1287
  %183 = tail call i32 @earlyclobber_operand_p(ptr noundef %182) #22
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 124, i32 123, !prof !1550
  br label %188

186:                                              ; preds = %177
  %187 = icmp eq ptr %17, null
  br i1 %187, label %188, label %225, !prof !1783

188:                                              ; preds = %180, %139, %141, %146, %86, %186, %170, %166, %153, %152, %151, %134, %130, %112
  %189 = phi i32 [ %45, %186 ], [ %45, %170 ], [ %45, %166 ], [ %45, %153 ], [ %45, %152 ], [ 1, %151 ], [ 1, %134 ], [ %45, %130 ], [ %45, %112 ], [ %45, %86 ], [ %45, %146 ], [ %45, %141 ], [ %45, %139 ], [ %45, %180 ]
  %190 = phi i32 [ 1, %186 ], [ %173, %170 ], [ %169, %166 ], [ 124, %153 ], [ 123, %152 ], [ 122, %151 ], [ %138, %134 ], [ %133, %130 ], [ %116, %112 ], [ 0, %86 ], [ 121, %146 ], [ 121, %141 ], [ 121, %139 ], [ %185, %180 ]
  %191 = icmp slt i32 %40, %190
  br i1 %191, label %202, label %192, !prof !1784

192:                                              ; preds = %188
  %193 = load ptr, ptr %46, align 8, !tbaa !1289
  %194 = icmp eq ptr %193, null
  br i1 %194, label %225, label %195, !prof !1785

195:                                              ; preds = %192
  %196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %44, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !1287
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %225, !prof !1786

199:                                              ; preds = %195
  %200 = tail call i32 @rtx_equal_p(ptr noundef %87, ptr noundef %4) #22
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %225, label %202, !prof !1787

202:                                              ; preds = %199, %188
  %203 = icmp eq ptr %17, null
  br i1 %203, label %211, label %204, !prof !1788

204:                                              ; preds = %202
  %205 = sext i32 %6 to i64
  %206 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %205, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !1553
  %208 = icmp ne ptr %207, null
  %209 = icmp sgt i32 %190, 122
  %210 = and i1 %209, %208
  br i1 %210, label %225, label %211

211:                                              ; preds = %161, %146, %125, %107, %96, %202, %204, %80, %43, %50, %54
  %212 = phi i32 [ %45, %54 ], [ %45, %50 ], [ %45, %43 ], [ %189, %202 ], [ %189, %204 ], [ %45, %80 ], [ %45, %96 ], [ %45, %107 ], [ %45, %125 ], [ %45, %146 ], [ %45, %161 ]
  %213 = add nuw nsw i64 %44, 1
  %214 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %213, %215
  br i1 %216, label %43, label %217, !prof !1789, !llvm.loop !1790

217:                                              ; preds = %211
  %218 = icmp eq i32 %212, 0
  br i1 %218, label %224, label %219, !prof !1791

219:                                              ; preds = %217
  %220 = icmp eq ptr %17, null
  br i1 %220, label %224, label %221, !prof !1792

221:                                              ; preds = %219
  %222 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %17) #22
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %39, %221, %219, %217
  br label %225

225:                                              ; preds = %186, %86, %204, %199, %195, %192, %221, %8, %224
  %226 = phi i32 [ 1, %224 ], [ 0, %8 ], [ 0, %221 ], [ 0, %192 ], [ 0, %195 ], [ 0, %199 ], [ 0, %204 ], [ 0, %86 ], [ 0, %186 ]
  ret i32 %226
}

; Function Attrs: optsize
declare i32 @earlyclobber_operand_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_reg_free_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1793 !PGOFuncName !1794 {
  %4 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %5 = zext nneg i32 %0 to i64
  %6 = shl nuw i64 1, %5
  %7 = and i64 %4, %6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %304, !prof !1795

9:                                                ; preds = %3
  %10 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !545
  %11 = and i64 %10, %6
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %304, !prof !1796

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
  ], !prof !1797

14:                                               ; preds = %13
  %15 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %291, !prof !1798

17:                                               ; preds = %14
  %18 = zext nneg i32 %15 to i64
  br label %280

19:                                               ; preds = %13
  %20 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %236

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %230

24:                                               ; preds = %13
  %25 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %219, !prof !1799

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  br label %213

29:                                               ; preds = %13
  %30 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !545
  %31 = and i64 %30, %6
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %304, !prof !1800

33:                                               ; preds = %29
  %34 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  %35 = and i64 %34, %6
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %304, !prof !1801

37:                                               ; preds = %33
  %38 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  %39 = and i64 %38, %6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %304, !prof !1802

41:                                               ; preds = %37
  %42 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %43 = and i64 %42, %6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %304, !prof !1802

45:                                               ; preds = %41
  %46 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %304, !prof !1803

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  br label %53

50:                                               ; preds = %79
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, %49
  br i1 %52, label %304, label %53, !prof !1804, !llvm.loop !1805

53:                                               ; preds = %48, %50
  %54 = phi i64 [ 0, %48 ], [ %51, %50 ]
  %55 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !545
  %57 = and i64 %56, %6
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %304, !prof !1806

59:                                               ; preds = %53
  %60 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %54
  %61 = load i64, ptr %60, align 8, !tbaa !545
  %62 = and i64 %61, %6
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %304, !prof !1806

64:                                               ; preds = %59
  %65 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %54
  %66 = load i64, ptr %65, align 8, !tbaa !545
  %67 = and i64 %66, %6
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %304, !prof !1806

69:                                               ; preds = %64
  %70 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %54
  %71 = load i64, ptr %70, align 8, !tbaa !545
  %72 = and i64 %71, %6
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %304, !prof !1806

74:                                               ; preds = %69
  %75 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %54
  %76 = load i64, ptr %75, align 8, !tbaa !545
  %77 = and i64 %76, %6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %304, !prof !1807

79:                                               ; preds = %74
  %80 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %54
  %81 = load i64, ptr %80, align 8, !tbaa !545
  %82 = and i64 %81, %6
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %50, label %304, !prof !1808

84:                                               ; preds = %13
  %85 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %86 = and i64 %85, %6
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %304, !prof !1809

88:                                               ; preds = %84
  %89 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  %90 = and i64 %89, %6
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %304, !prof !1810

92:                                               ; preds = %88
  %93 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  %94 = and i64 %93, %6
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %304, !prof !1811

96:                                               ; preds = %92
  %97 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %104, !prof !1812

99:                                               ; preds = %96
  %100 = zext nneg i32 %97 to i64
  br label %107

101:                                              ; preds = %107
  %102 = add nuw nsw i64 %108, 1
  %103 = icmp eq i64 %102, %100
  br i1 %103, label %104, label %107, !prof !1813, !llvm.loop !1814

104:                                              ; preds = %101, %96
  %105 = sext i32 %1 to i64
  %106 = sext i32 %97 to i64
  br label %113

107:                                              ; preds = %99, %101
  %108 = phi i64 [ 0, %99 ], [ %102, %101 ]
  %109 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !545
  %111 = and i64 %110, %6
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %101, label %304, !prof !1815

113:                                              ; preds = %104, %122
  %114 = phi i64 [ %105, %104 ], [ %115, %122 ]
  %115 = add nsw i64 %114, 1
  %116 = icmp sge i64 %115, %106
  br i1 %116, label %304, label %117, !prof !1816

117:                                              ; preds = %113
  %118 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %115
  %119 = load i64, ptr %118, align 8, !tbaa !545
  %120 = and i64 %119, %6
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %304, !prof !1817

122:                                              ; preds = %117
  %123 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %115
  %124 = load i64, ptr %123, align 8, !tbaa !545
  %125 = and i64 %124, %6
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %113, label %304, !prof !1817, !llvm.loop !1818

127:                                              ; preds = %13
  %128 = sext i32 %1 to i64
  %129 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !545
  %131 = and i64 %130, %6
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %304, !prof !1819

133:                                              ; preds = %127
  %134 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %128
  %135 = load i64, ptr %134, align 8, !tbaa !545
  %136 = and i64 %135, %6
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %304, !prof !1820

138:                                              ; preds = %133
  %139 = icmp sgt i32 %1, 0
  br i1 %139, label %140, label %304, !prof !1821

140:                                              ; preds = %138
  %141 = zext nneg i32 %1 to i64
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %148, %142 ]
  %144 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !545
  %146 = and i64 %145, %6
  %147 = icmp eq i64 %146, 0
  %148 = add nuw nsw i64 %143, 1
  %149 = icmp ne i64 %148, %141
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %142, label %304, !prof !1822, !llvm.loop !1823

151:                                              ; preds = %13
  %152 = sext i32 %1 to i64
  %153 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !545
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
  %164 = load i64, ptr %163, align 8, !tbaa !545
  %165 = and i64 %164, %6
  %166 = icmp eq i64 %165, 0
  %167 = add nuw nsw i64 %162, 1
  %168 = icmp ne i64 %167, %160
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %161, label %304, !llvm.loop !1824

170:                                              ; preds = %13
  %171 = sext i32 %1 to i64
  %172 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !545
  %174 = and i64 %173, %6
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %304, !prof !1825

176:                                              ; preds = %170
  %177 = icmp slt i32 %1, 0
  br i1 %177, label %304, label %178, !prof !1826

178:                                              ; preds = %176
  %179 = add nuw i32 %1, 1
  %180 = zext i32 %179 to i64
  br label %181

181:                                              ; preds = %181, %178
  %182 = phi i64 [ 0, %178 ], [ %187, %181 ]
  %183 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !545
  %185 = and i64 %184, %6
  %186 = icmp eq i64 %185, 0
  %187 = add nuw nsw i64 %182, 1
  %188 = icmp ne i64 %187, %180
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %181, label %304, !prof !1827, !llvm.loop !1828

190:                                              ; preds = %13
  %191 = sext i32 %1 to i64
  %192 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !545
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
  %204 = load i64, ptr %203, align 8, !tbaa !545
  %205 = and i64 %204, %6
  %206 = icmp eq i64 %205, 0
  %207 = add nuw nsw i64 %202, 1
  %208 = icmp ne i64 %207, %200
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %201, label %304, !llvm.loop !1829

210:                                              ; preds = %213
  %211 = add nuw nsw i64 %214, 1
  %212 = icmp eq i64 %211, %28
  br i1 %212, label %219, label %213, !prof !1830, !llvm.loop !1831

213:                                              ; preds = %27, %210
  %214 = phi i64 [ 0, %27 ], [ %211, %210 ]
  %215 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !545
  %217 = and i64 %216, %6
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %210, label %304, !prof !1832

219:                                              ; preds = %210, %24
  %220 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %221 = and i64 %220, %6
  %222 = icmp eq i64 %221, 0
  %223 = load i64, ptr @reload_reg_used_in_op_addr, align 8
  %224 = and i64 %223, %6
  %225 = icmp eq i64 %224, 0
  %226 = select i1 %222, i1 %225, i1 false, !prof !1833
  br label %304

227:                                              ; preds = %230
  %228 = add nuw nsw i64 %231, 1
  %229 = icmp eq i64 %228, %23
  br i1 %229, label %236, label %230, !llvm.loop !1834

230:                                              ; preds = %22, %227
  %231 = phi i64 [ 0, %22 ], [ %228, %227 ]
  %232 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !545
  %234 = and i64 %233, %6
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %227, label %304

236:                                              ; preds = %227, %19
  %237 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  %238 = and i64 %237, %6
  %239 = icmp eq i64 %238, 0
  br label %304

240:                                              ; preds = %13
  %241 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %242 = and i64 %241, %6
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %304, !prof !1835

244:                                              ; preds = %240
  %245 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %252, !prof !1836

247:                                              ; preds = %244
  %248 = zext nneg i32 %245 to i64
  br label %257

249:                                              ; preds = %257
  %250 = add nuw nsw i64 %258, 1
  %251 = icmp eq i64 %250, %248
  br i1 %251, label %252, label %257, !prof !1837, !llvm.loop !1838

252:                                              ; preds = %249, %244
  %253 = icmp sgt i32 %245, %1
  br i1 %253, label %254, label %304, !prof !1839

254:                                              ; preds = %252
  %255 = sext i32 %1 to i64
  %256 = sext i32 %245 to i64
  br label %266

257:                                              ; preds = %247, %249
  %258 = phi i64 [ 0, %247 ], [ %250, %249 ]
  %259 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !545
  %261 = and i64 %260, %6
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %249, label %304, !prof !1840

263:                                              ; preds = %272
  %264 = add nsw i64 %267, 1
  %265 = icmp eq i64 %264, %256
  br i1 %265, label %304, label %266, !prof !1841, !llvm.loop !1842

266:                                              ; preds = %254, %263
  %267 = phi i64 [ %255, %254 ], [ %264, %263 ]
  %268 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !545
  %270 = and i64 %269, %6
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %304, !prof !1843

272:                                              ; preds = %266
  %273 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %267
  %274 = load i64, ptr %273, align 8, !tbaa !545
  %275 = and i64 %274, %6
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %263, label %304, !prof !1844

277:                                              ; preds = %286
  %278 = add nuw nsw i64 %281, 1
  %279 = icmp eq i64 %278, %18
  br i1 %279, label %291, label %280, !prof !1845, !llvm.loop !1846

280:                                              ; preds = %17, %277
  %281 = phi i64 [ 0, %17 ], [ %278, %277 ]
  %282 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %281
  %283 = load i64, ptr %282, align 8, !tbaa !545
  %284 = and i64 %283, %6
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %304, !prof !1847

286:                                              ; preds = %280
  %287 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %281
  %288 = load i64, ptr %287, align 8, !tbaa !545
  %289 = and i64 %288, %6
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %277, label %304, !prof !1848

291:                                              ; preds = %277, %14
  %292 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %293 = and i64 %292, %6
  %294 = icmp eq i64 %293, 0
  %295 = load i64, ptr @reload_reg_used_in_op_addr, align 8
  %296 = and i64 %295, %6
  %297 = icmp eq i64 %296, 0
  %298 = select i1 %294, i1 %297, i1 false, !prof !1849
  br label %304

299:                                              ; preds = %13
  %300 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !545
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
define internal fastcc void @do_input_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1850 !PGOFuncName !1851 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !811
  %6 = load ptr, ptr %1, align 8, !tbaa !513
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !1567

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !1280
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %11
  store ptr %10, ptr %12, align 8, !tbaa !513
  br label %69

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  %17 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %18 = select i1 %16, ptr %17, ptr %1, !prof !1852
  %19 = load ptr, ptr %18, align 8, !tbaa !513
  %20 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !1280
  %22 = icmp ne ptr %19, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %45, !prof !1853

25:                                               ; preds = %13
  %26 = load i32, ptr %19, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33, !prof !1854

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !1855
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ %28, %25 ]
  %35 = load i32, ptr %21, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, %34
  br i1 %38, label %41, label %39, !prof !1856

39:                                               ; preds = %33
  %40 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %21, i32 noundef %34) #22
  br label %41

41:                                               ; preds = %33, %39
  %42 = phi ptr [ %21, %33 ], [ %40, %39 ]
  %43 = sext i32 %2 to i64
  %44 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %43
  store ptr %42, ptr %44, align 8, !tbaa !513
  br label %48

45:                                               ; preds = %13
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %46
  store ptr %21, ptr %47, align 8, !tbaa !513
  br i1 %22, label %48, label %69, !prof !880

48:                                               ; preds = %41, %45
  %49 = phi i64 [ %43, %41 ], [ %46, %45 ]
  %50 = phi ptr [ %42, %41 ], [ %21, %45 ]
  %51 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %49
  %52 = load i8, ptr %51, align 1, !tbaa !493
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54, !prof !1857

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !1287
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58, !prof !1858

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !1553
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69, !prof !1859

62:                                               ; preds = %58, %48
  %63 = tail call i32 @rtx_equal_p(ptr noundef %50, ptr noundef nonnull %19) #22
  %64 = icmp eq i32 %63, 0
  %65 = icmp ne ptr %50, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %69, !prof !1860

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.reload, ptr @rld, i64 %49
  tail call fastcc void @emit_input_reload_insns(ptr noundef nonnull %0, ptr noundef nonnull %68, ptr noundef nonnull %19, i32 noundef %2) #23
  br label %69

69:                                               ; preds = %8, %67, %62, %58, %54, %45
  %70 = phi i64 [ %49, %67 ], [ %49, %62 ], [ %49, %58 ], [ %49, %54 ], [ %46, %45 ], [ %11, %8 ]
  %71 = phi ptr [ %50, %67 ], [ %50, %62 ], [ %50, %58 ], [ %50, %54 ], [ %21, %45 ], [ %10, %8 ]
  %72 = load i32, ptr @optimize, align 4, !tbaa !527
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %140, label %74, !prof !1861

74:                                               ; preds = %69
  %75 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %70
  %76 = load i8, ptr %75, align 1, !tbaa !493
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %108, label %78, !prof !1862

78:                                               ; preds = %74
  %79 = load ptr, ptr %1, align 8, !tbaa !1289
  %80 = icmp eq ptr %79, null
  br i1 %80, label %112, label %81, !prof !1863

81:                                               ; preds = %78
  %82 = load i32, ptr %79, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 43
  br i1 %84, label %85, label %112, !prof !1864

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !1441
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %112

91:                                               ; preds = %85
  %92 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %70
  %93 = load i32, ptr %92, align 4, !tbaa !527
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %97 = zext nneg i32 %93 to i64
  %98 = shl nuw i64 1, %97
  %99 = and i64 %96, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !513
  %103 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !527
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !513
  store ptr %107, ptr %1, align 8, !tbaa !1289
  br label %112

108:                                              ; preds = %74
  %109 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %70
  %110 = load ptr, ptr %109, align 8, !tbaa !513
  %111 = icmp eq ptr %110, null
  br i1 %111, label %140, label %112, !prof !1865

112:                                              ; preds = %78, %81, %85, %91, %95, %101, %108
  %113 = icmp eq ptr %71, null
  br i1 %113, label %140, label %114, !prof !1866

114:                                              ; preds = %112
  %115 = load i32, ptr %71, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 37
  br i1 %117, label %118, label %140, !prof !1867

118:                                              ; preds = %114
  %119 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !513
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %124, !prof !1868

124:                                              ; preds = %118
  %125 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %120
  %126 = load ptr, ptr %125, align 8, !tbaa !513
  %127 = tail call i32 @dead_or_set_p(ptr noundef %5, ptr noundef %126) #22
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138, !prof !1869

129:                                              ; preds = %124
  %130 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !513
  %134 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !1553
  %136 = tail call i32 @rtx_equal_p(ptr noundef %133, ptr noundef %135) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138, !prof !1870

138:                                              ; preds = %129, %124
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  tail call fastcc void @delete_output_reload(ptr noundef %5, i32 noundef %2, i32 noundef %139, ptr noundef nonnull %71) #23
  br label %140

140:                                              ; preds = %69, %138, %129, %118, %114, %112, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_output_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1850 !PGOFuncName !1871 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !811
  %6 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !1553
  %8 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !1280
  %10 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1287
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %38, !prof !1872

15:                                               ; preds = %3
  %16 = load i32, ptr %11, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30, !prof !1873

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !493
  %23 = tail call i32 @asm_noperands(ptr noundef %22) #22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @_fatal_insn(ptr noundef nonnull @.str.22, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef 7695, ptr noundef nonnull @.str.2) #22
  br label %26

26:                                               ; preds = %25, %20
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %5, ptr noundef nonnull @.str.23) #22
  %27 = load i32, ptr @word_mode, align 4, !tbaa !527
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #23
  %29 = tail call ptr @gen_rtx_REG(i32 noundef %27, i32 noundef %28) #22
  store ptr %29, ptr %10, align 8, !tbaa !1287
  br label %30

30:                                               ; preds = %26, %15
  %31 = phi i32 [ %27, %26 ], [ %18, %15 ]
  %32 = load i32, ptr %9, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %38, label %36, !prof !1874

36:                                               ; preds = %30
  %37 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %9, i32 noundef %31) #22
  br label %38

38:                                               ; preds = %30, %36, %3
  %39 = phi ptr [ %9, %3 ], [ %37, %36 ], [ %9, %30 ]
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %40
  store ptr %39, ptr %41, align 8, !tbaa !513
  %42 = icmp ne ptr %7, null
  %43 = load i32, ptr @optimize, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %89, !prof !1875

46:                                               ; preds = %38
  %47 = load i32, ptr %7, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %89, !prof !1555

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !1441
  %53 = tail call i32 @rtx_equal_p(ptr noundef %52, ptr noundef nonnull %7) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %89, !prof !1876

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %57 = icmp ugt i32 %56, 52
  br i1 %57, label %58, label %89, !prof !1877

58:                                               ; preds = %55
  %59 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %60 = zext i32 %56 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !513
  %63 = icmp eq ptr %62, null
  br i1 %63, label %89, label %64, !prof !1878

64:                                               ; preds = %58
  %65 = sext i32 %56 to i64
  %66 = getelementptr inbounds ptr, ptr %59, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !513
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef %67) #23
  %69 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !545
  %70 = zext nneg i32 %68 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %69
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %89, label %74, !prof !1879

74:                                               ; preds = %64
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !527
  %78 = icmp eq i32 %77, %56
  br i1 %78, label %79, label %89, !prof !1880

79:                                               ; preds = %74
  %80 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %75
  %81 = load ptr, ptr %80, align 8, !tbaa !513
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83, !prof !1881

83:                                               ; preds = %79
  %84 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %75
  %85 = load ptr, ptr %84, align 8, !tbaa !513
  %86 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef %85) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !1882

88:                                               ; preds = %83
  tail call fastcc void @delete_output_reload(ptr noundef %5, i32 noundef %2, i32 noundef %68, ptr noundef %39) #23
  br label %89

89:                                               ; preds = %64, %74, %79, %83, %88, %58, %55, %50, %46, %38
  %90 = load ptr, ptr %6, align 8, !tbaa !1553
  %91 = icmp eq ptr %90, null
  %92 = icmp eq ptr %39, null
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %140, label %94, !prof !1883

94:                                               ; preds = %89
  %95 = tail call i32 @rtx_equal_p(ptr noundef nonnull %90, ptr noundef nonnull %39) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %140, !prof !1884

97:                                               ; preds = %94
  %98 = load i32, ptr %90, align 8
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -37
  %101 = icmp ult i32 %100, 2
  br i1 %101, label %102, label %109, !prof !1885

102:                                              ; preds = %97
  %103 = tail call ptr @find_reg_note(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %90) #22
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107, !prof !1886

105:                                              ; preds = %102
  %106 = load i32, ptr %90, align 8
  br label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  store ptr %39, ptr %108, align 8, !tbaa !493
  br label %140

109:                                              ; preds = %105, %97
  %110 = phi i32 [ %106, %105 ], [ %98, %97 ]
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 39
  br i1 %112, label %113, label %130, !prof !1887

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !493
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 37
  br i1 %118, label %119, label %133, !prof !1888

119:                                              ; preds = %113
  %120 = tail call ptr @find_reg_note(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %115) #22
  %121 = icmp eq ptr %120, null
  %122 = load i32, ptr %90, align 8
  br i1 %121, label %123, label %125, !prof !1888

123:                                              ; preds = %119
  %124 = and i32 %122, 65535
  br label %130

125:                                              ; preds = %119
  %126 = lshr i32 %122, 16
  %127 = and i32 %126, 255
  %128 = tail call ptr @gen_lowpart_common(i32 noundef %127, ptr noundef nonnull %39) #22
  %129 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  store ptr %128, ptr %129, align 8, !tbaa !493
  br label %140

130:                                              ; preds = %123, %109
  %131 = phi i32 [ %124, %123 ], [ %111, %109 ]
  %132 = icmp eq i32 %131, 38
  br i1 %132, label %140, label %133, !prof !1889

133:                                              ; preds = %113, %130
  %134 = load i32, ptr %5, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 8
  br i1 %136, label %138, label %137, !prof !1890

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
define internal fastcc i32 @reload_reg_reaches_end_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1891 !PGOFuncName !1892 {
  switch i32 %2, label %249 [
    i32 9, label %250
    i32 10, label %17
    i32 3, label %74
    i32 4, label %74
    i32 0, label %13
    i32 7, label %4
    i32 8, label %6
    i32 2, label %226
    i32 1, label %228
    i32 5, label %228
    i32 6, label %228
  ], !prof !1893

4:                                                ; preds = %3
  %5 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  br label %165

6:                                                ; preds = %3
  %7 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %8 = icmp sgt i32 %7, 0
  %9 = zext nneg i32 %0 to i64
  %10 = shl nuw i64 1, %9
  br i1 %8, label %11, label %214

11:                                               ; preds = %6
  %12 = zext nneg i32 %7 to i64
  br label %198

13:                                               ; preds = %3
  %14 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %15 = sext i32 %1 to i64
  %16 = sext i32 %14 to i64
  br label %144

17:                                               ; preds = %3
  %18 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %19 = icmp sgt i32 %18, 0
  %20 = zext nneg i32 %0 to i64
  %21 = shl nuw i64 1, %20
  br i1 %19, label %22, label %58, !prof !1894

22:                                               ; preds = %17
  %23 = zext nneg i32 %18 to i64
  br label %27

24:                                               ; preds = %53
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %58, label %27, !prof !1895, !llvm.loop !1896

27:                                               ; preds = %22, %24
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !545
  %31 = and i64 %30, %21
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %250, !prof !1897

33:                                               ; preds = %27
  %34 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %28
  %35 = load i64, ptr %34, align 8, !tbaa !545
  %36 = and i64 %35, %21
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %250, !prof !1897

38:                                               ; preds = %33
  %39 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %28
  %40 = load i64, ptr %39, align 8, !tbaa !545
  %41 = and i64 %40, %21
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %250, !prof !1897

43:                                               ; preds = %38
  %44 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %28
  %45 = load i64, ptr %44, align 8, !tbaa !545
  %46 = and i64 %45, %21
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %250, !prof !1898

48:                                               ; preds = %43
  %49 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %28
  %50 = load i64, ptr %49, align 8, !tbaa !545
  %51 = and i64 %50, %21
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %250, !prof !1899

53:                                               ; preds = %48
  %54 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %28
  %55 = load i64, ptr %54, align 8, !tbaa !545
  %56 = and i64 %55, %21
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %24, label %250, !prof !1899

58:                                               ; preds = %24, %17
  %59 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  %60 = and i64 %59, %21
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %250, !prof !1900

62:                                               ; preds = %58
  %63 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  %64 = and i64 %63, %21
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %250, !prof !1900

66:                                               ; preds = %62
  %67 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %68 = and i64 %67, %21
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %250, !prof !1900

70:                                               ; preds = %66
  %71 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %72 = and i64 %71, %21
  %73 = icmp eq i64 %72, 0
  br label %250

74:                                               ; preds = %3, %3
  %75 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  %76 = icmp sgt i32 %75, %1
  %77 = zext nneg i32 %0 to i64
  %78 = shl nuw i64 1, %77
  %79 = sext i32 %1 to i64
  %80 = sext i32 %75 to i64
  br i1 %76, label %85, label %81, !prof !1901

81:                                               ; preds = %82, %74
  br label %91

82:                                               ; preds = %85
  %83 = add nsw i64 %86, 1
  %84 = icmp eq i64 %83, %80
  br i1 %84, label %81, label %85, !prof !1902, !llvm.loop !1903

85:                                               ; preds = %74, %82
  %86 = phi i64 [ %83, %82 ], [ %79, %74 ]
  %87 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !545
  %89 = and i64 %88, %78
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %82, label %250, !prof !1904

91:                                               ; preds = %81, %104
  %92 = phi i64 [ %93, %104 ], [ %79, %81 ]
  %93 = add nsw i64 %92, 1
  %94 = icmp slt i64 %93, %80
  br i1 %94, label %99, label %95, !prof !1905

95:                                               ; preds = %91
  %96 = icmp sgt i32 %75, 0
  br i1 %96, label %97, label %128, !prof !1901

97:                                               ; preds = %95
  %98 = zext nneg i32 %75 to i64
  br label %112

99:                                               ; preds = %91
  %100 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %93
  %101 = load i64, ptr %100, align 8, !tbaa !545
  %102 = and i64 %101, %78
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %250

104:                                              ; preds = %99
  %105 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %93
  %106 = load i64, ptr %105, align 8, !tbaa !545
  %107 = and i64 %106, %78
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %91, label %250, !llvm.loop !1906

109:                                              ; preds = %123
  %110 = add nuw nsw i64 %113, 1
  %111 = icmp eq i64 %110, %98
  br i1 %111, label %128, label %112, !prof !1907, !llvm.loop !1908

112:                                              ; preds = %97, %109
  %113 = phi i64 [ 0, %97 ], [ %110, %109 ]
  %114 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !545
  %116 = and i64 %115, %78
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %250, !prof !1909

118:                                              ; preds = %112
  %119 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %113
  %120 = load i64, ptr %119, align 8, !tbaa !545
  %121 = and i64 %120, %78
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %250, !prof !1909

123:                                              ; preds = %118
  %124 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %113
  %125 = load i64, ptr %124, align 8, !tbaa !545
  %126 = and i64 %125, %78
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %109, label %250, !prof !1909

128:                                              ; preds = %109, %95
  %129 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !545
  %130 = and i64 %129, %78
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %250, !prof !1910

132:                                              ; preds = %128
  %133 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  %134 = and i64 %133, %78
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %250, !prof !1911

136:                                              ; preds = %132
  %137 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %138 = and i64 %137, %78
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %250, !prof !1912

140:                                              ; preds = %136
  %141 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %142 = and i64 %141, %78
  %143 = icmp eq i64 %142, 0
  br label %250

144:                                              ; preds = %13, %160
  %145 = phi i64 [ %15, %13 ], [ %146, %160 ]
  %146 = add nsw i64 %145, 1
  %147 = icmp slt i64 %146, %16
  br i1 %147, label %148, label %165, !prof !1913

148:                                              ; preds = %144
  %149 = zext nneg i32 %0 to i64
  %150 = shl nuw i64 1, %149
  %151 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %146
  %152 = load i64, ptr %151, align 8, !tbaa !545
  %153 = and i64 %152, %150
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %250, !prof !1914

155:                                              ; preds = %148
  %156 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %146
  %157 = load i64, ptr %156, align 8, !tbaa !545
  %158 = and i64 %157, %150
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %250, !prof !1914

160:                                              ; preds = %155
  %161 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %146
  %162 = load i64, ptr %161, align 8, !tbaa !545
  %163 = and i64 %162, %150
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %144, label %250, !prof !1914, !llvm.loop !1915

165:                                              ; preds = %144, %4
  %166 = phi i32 [ %5, %4 ], [ %14, %144 ]
  %167 = icmp sgt i32 %166, 0
  %168 = zext nneg i32 %0 to i64
  %169 = shl nuw i64 1, %168
  br i1 %167, label %170, label %191, !prof !1916

170:                                              ; preds = %165
  %171 = zext nneg i32 %166 to i64
  br label %175

172:                                              ; preds = %186
  %173 = add nuw nsw i64 %176, 1
  %174 = icmp eq i64 %173, %171
  br i1 %174, label %191, label %175, !prof !1917, !llvm.loop !1918

175:                                              ; preds = %170, %172
  %176 = phi i64 [ 0, %170 ], [ %173, %172 ]
  %177 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !545
  %179 = and i64 %178, %169
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %250, !prof !1919

181:                                              ; preds = %175
  %182 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %176
  %183 = load i64, ptr %182, align 8, !tbaa !545
  %184 = and i64 %183, %169
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %250, !prof !1919

186:                                              ; preds = %181
  %187 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %176
  %188 = load i64, ptr %187, align 8, !tbaa !545
  %189 = and i64 %188, %169
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %172, label %250, !prof !1920

191:                                              ; preds = %172, %165
  %192 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %193 = and i64 %192, %169
  %194 = icmp eq i64 %193, 0
  br label %250

195:                                              ; preds = %209
  %196 = add nuw nsw i64 %199, 1
  %197 = icmp eq i64 %196, %12
  br i1 %197, label %214, label %198, !llvm.loop !1921

198:                                              ; preds = %11, %195
  %199 = phi i64 [ 0, %11 ], [ %196, %195 ]
  %200 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !545
  %202 = and i64 %201, %10
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %198
  %205 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %199
  %206 = load i64, ptr %205, align 8, !tbaa !545
  %207 = and i64 %206, %10
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %250

209:                                              ; preds = %204
  %210 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %199
  %211 = load i64, ptr %210, align 8, !tbaa !545
  %212 = and i64 %211, %10
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %195, label %250

214:                                              ; preds = %195, %6
  %215 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !545
  %216 = and i64 %215, %10
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !545
  %220 = and i64 %219, %10
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %250

222:                                              ; preds = %218
  %223 = load i64, ptr @reload_reg_used, align 8, !tbaa !545
  %224 = and i64 %223, %10
  %225 = icmp eq i64 %224, 0
  br label %250

226:                                              ; preds = %3
  %227 = load i32, ptr @reload_n_operands, align 4, !tbaa !527
  br label %228

228:                                              ; preds = %3, %3, %3, %226
  %229 = phi i32 [ %1, %3 ], [ %1, %3 ], [ %1, %3 ], [ %227, %226 ]
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %250, !prof !1922

231:                                              ; preds = %228
  %232 = zext nneg i32 %0 to i64
  %233 = shl nuw i64 1, %232
  br label %238

234:                                              ; preds = %244
  %235 = zext nneg i32 %229 to i64
  %236 = add nuw nsw i64 %239, 1
  %237 = icmp eq i64 %236, %235
  br i1 %237, label %250, label %238, !prof !1923, !llvm.loop !1924

238:                                              ; preds = %231, %234
  %239 = phi i64 [ 0, %231 ], [ %236, %234 ]
  %240 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !545
  %242 = and i64 %241, %233
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %250, !prof !1925

244:                                              ; preds = %238
  %245 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %239
  %246 = load i64, ptr %245, align 8, !tbaa !545
  %247 = and i64 %246, %233
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %234, label %250, !prof !1925

249:                                              ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5110, ptr noundef nonnull @.str.2) #22
  br label %250

250:                                              ; preds = %244, %238, %234, %198, %204, %209, %148, %155, %160, %175, %181, %186, %85, %99, %104, %112, %118, %123, %27, %33, %38, %43, %48, %53, %228, %214, %218, %222, %132, %136, %140, %128, %58, %62, %66, %70, %3, %249, %191
  %251 = phi i1 [ false, %249 ], [ %194, %191 ], [ true, %3 ], [ false, %66 ], [ false, %62 ], [ false, %58 ], [ %73, %70 ], [ false, %128 ], [ false, %136 ], [ false, %132 ], [ %143, %140 ], [ false, %218 ], [ false, %214 ], [ %225, %222 ], [ true, %228 ], [ false, %53 ], [ false, %48 ], [ false, %43 ], [ false, %38 ], [ false, %33 ], [ false, %27 ], [ false, %123 ], [ false, %118 ], [ false, %112 ], [ false, %104 ], [ false, %99 ], [ false, %85 ], [ false, %186 ], [ false, %181 ], [ false, %175 ], [ false, %160 ], [ false, %155 ], [ false, %148 ], [ false, %209 ], [ false, %204 ], [ false, %198 ], [ false, %244 ], [ false, %238 ], [ true, %234 ]
  %252 = zext i1 %251 to i32
  ret i32 %252
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_regs_reach_end_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1926 !PGOFuncName !1927 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %9, label %14, !prof !1928

6:                                                ; preds = %9
  %7 = add nuw nsw i32 %10, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %14, label %9, !prof !1929, !llvm.loop !1930

9:                                                ; preds = %4, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %11 = add i32 %10, %0
  %12 = tail call fastcc i32 @reload_reg_reaches_end_p(i32 noundef %11, i32 noundef %2, i32 noundef %3) #23, !range !595
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6, !prof !1931

14:                                               ; preds = %9, %6, %4
  %15 = phi i8 [ 1, %4 ], [ 1, %6 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1932 !PGOFuncName !1933 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !527
  %7 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %4
  %8 = load i32, ptr %7, align 4, !tbaa !527
  %9 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %2, i32 noundef %6, i32 noundef %8) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20, !prof !1934

11:                                               ; preds = %3
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !527
  %15 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !527
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
define internal fastcc void @emit_input_reload_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1935 !PGOFuncName !1936 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.secondary_reload_info, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !811
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15, !prof !1937

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !1441
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %30, !prof !1938

21:                                               ; preds = %15
  %22 = icmp eq ptr %2, null
  br i1 %22, label %30, label %23, !prof !1481

23:                                               ; preds = %21
  %24 = load i32, ptr %2, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %29 [
    i16 37, label %30
    i16 39, label %26
  ], !prof !1939

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !493
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %15, %4, %23, %29, %21, %26
  %31 = phi ptr [ %17, %26 ], [ %17, %21 ], [ %17, %23 ], [ %17, %29 ], [ %2, %15 ], [ %2, %4 ]
  %32 = phi ptr [ %2, %26 ], [ %17, %21 ], [ %2, %23 ], [ %2, %29 ], [ %2, %15 ], [ %2, %4 ]
  %33 = phi ptr [ %28, %26 ], [ null, %21 ], [ %2, %23 ], [ null, %29 ], [ null, %15 ], [ null, %4 ]
  %34 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %11
  %35 = load ptr, ptr %34, align 8, !tbaa !513
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = load i32, ptr @optimize, align 4, !tbaa !527
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %73, label %41, !prof !1940

41:                                               ; preds = %30
  %42 = load i32, ptr %32, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 37
  br i1 %44, label %45, label %73, !prof !1941

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  %47 = icmp ult i32 %46, 53
  br i1 %47, label %48, label %73, !prof !1942

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !513
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53, !prof !1943

53:                                               ; preds = %48
  %54 = load i32, ptr %31, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %73, !prof !1925

57:                                               ; preds = %53
  %58 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !513
  %60 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef %59) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71, !prof !1944

62:                                               ; preds = %57
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !513
  %67 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !1553
  %69 = tail call i32 @rtx_equal_p(ptr noundef %66, ptr noundef %68) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !1945

71:                                               ; preds = %62, %57
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  tail call fastcc void @delete_output_reload(ptr noundef %10, i32 noundef %3, i32 noundef %72, ptr noundef nonnull %35) #23
  br label %73

73:                                               ; preds = %71, %62, %53, %48, %45, %41, %30
  %74 = load i32, ptr %32, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %89, !prof !1946

77:                                               ; preds = %73, %83
  %78 = phi i32 [ %86, %83 ], [ %74, %73 ]
  %79 = phi ptr [ %85, %83 ], [ %32, %73 ]
  %80 = lshr i32 %78, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, %38
  br i1 %82, label %89, label %83, !prof !1947

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !493
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 39
  br i1 %88, label %77, label %89, !prof !1948, !llvm.loop !1949

89:                                               ; preds = %77, %83, %73
  %90 = phi ptr [ %32, %73 ], [ %85, %83 ], [ %79, %77 ]
  %91 = phi i32 [ %74, %73 ], [ %86, %83 ], [ %78, %77 ]
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i32 %38, %93
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %99, label %97, !prof !1950

97:                                               ; preds = %89
  %98 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %38, ptr noundef nonnull %90) #22
  br label %99

99:                                               ; preds = %97, %89
  %100 = phi ptr [ %98, %97 ], [ %90, %89 ]
  %101 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 17
  %102 = load i32, ptr %101, align 4, !tbaa !1363
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
  ], !prof !1951

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %105 = load i32, ptr %104, align 8, !tbaa !1364
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [30 x ptr], ptr @input_reload_insns, i64 0, i64 %106
  br label %132

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %110 = load i32, ptr %109, align 8, !tbaa !1364
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [30 x ptr], ptr @input_address_reload_insns, i64 0, i64 %111
  br label %132

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %115 = load i32, ptr %114, align 8, !tbaa !1364
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x ptr], ptr @inpaddr_address_reload_insns, i64 0, i64 %116
  br label %132

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %120 = load i32, ptr %119, align 8, !tbaa !1364
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [30 x ptr], ptr @output_address_reload_insns, i64 0, i64 %121
  br label %132

123:                                              ; preds = %99
  %124 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %125 = load i32, ptr %124, align 8, !tbaa !1364
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
  %134 = load ptr, ptr %133, align 8, !tbaa !513
  tail call void @push_to_sequence(ptr noundef %134) #22
  %135 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !1287
  %137 = icmp eq ptr %136, null
  br i1 %137, label %196, label %138, !prof !1952

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !1553
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %196, !prof !1953

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !1954
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6995, ptr noundef nonnull @.str.2) #22
  br label %147

147:                                              ; preds = %142, %146
  %148 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %11
  %149 = load i8, ptr %148, align 1, !tbaa !493
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, ptr %100, ptr %35
  %152 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !1441
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !493
  %156 = load i32, ptr @optimize, align 4, !tbaa !527
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
  %168 = load ptr, ptr %167, align 8, !tbaa !513
  %169 = icmp eq ptr %168, null
  br i1 %169, label %188, label %170

170:                                              ; preds = %165
  %171 = load i32, ptr %155, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 37
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %166
  %176 = load ptr, ptr %175, align 8, !tbaa !513
  %177 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef %176) #22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !513
  %184 = tail call i32 @rtx_equal_p(ptr noundef %183, ptr noundef nonnull %155) #22
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179, %174
  %187 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  tail call fastcc void @delete_output_reload(ptr noundef %10, i32 noundef %3, i32 noundef %187, ptr noundef nonnull %35) #23
  br label %188

188:                                              ; preds = %186, %179, %170, %165, %162, %158, %147
  %189 = load ptr, ptr %135, align 8, !tbaa !1287
  %190 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 7
  %191 = load i32, ptr %190, align 4, !tbaa !1955
  %192 = tail call fastcc ptr @inc_for_reload(ptr noundef nonnull %35, ptr noundef %151, ptr noundef %189, i32 noundef %191) #23
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %194
  store ptr %192, ptr %195, align 8, !tbaa !513
  br label %584

196:                                              ; preds = %138, %132
  %197 = load i32, ptr @optimize, align 4, !tbaa !527
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %317, label %199, !prof !1940

199:                                              ; preds = %196
  %200 = load i32, ptr %31, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 37
  br i1 %202, label %203, label %317, !prof !1941

203:                                              ; preds = %199
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #23
  %205 = icmp ugt i32 %204, 52
  br i1 %205, label %206, label %317, !prof !1956

206:                                              ; preds = %203
  %207 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef nonnull %31) #22
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %317, label %209, !prof !1957

209:                                              ; preds = %206
  %210 = tail call fastcc i32 @conflicts_with_override(ptr noundef nonnull %35) #23, !range !595
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %317, !prof !1958

212:                                              ; preds = %209
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %214 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 5
  %215 = load i32, ptr %214, align 4, !tbaa !1320
  %216 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !1364
  %218 = load i32, ptr %101, align 4, !tbaa !1363
  %219 = load ptr, ptr %135, align 8, !tbaa !1287
  %220 = tail call fastcc i32 @free_for_value_p(i32 noundef %213, i32 noundef %215, i32 noundef %217, i32 noundef %218, ptr noundef nonnull %31, ptr noundef %219, i32 noundef %3, i32 noundef 0) #23, !range !595
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %317, label %222, !prof !1959

222:                                              ; preds = %212
  %223 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !493
  %225 = icmp eq ptr %224, null
  br i1 %225, label %317, label %226, !prof !967

226:                                              ; preds = %222, %230
  %227 = phi ptr [ %232, %230 ], [ %224, %222 ]
  %228 = load i32, ptr %227, align 8
  %229 = trunc i32 %228 to i16
  switch i16 %229, label %317 [
    i16 13, label %230
    i16 7, label %230
    i16 8, label %234
  ], !prof !1960

230:                                              ; preds = %226, %226
  %231 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !493
  %233 = icmp eq ptr %232, null
  br i1 %233, label %317, label %226, !prof !1961, !llvm.loop !1962

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !493
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 23
  br i1 %239, label %240, label %317, !prof !1963

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !493
  %243 = icmp eq ptr %242, %31
  br i1 %243, label %244, label %317, !prof !1964

244:                                              ; preds = %240
  %245 = tail call i32 @asm_noperands(ptr noundef nonnull %236) #22
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %317, !prof !1965

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !493
  %250 = tail call i32 @count_occurrences(ptr noundef %249, ptr noundef nonnull %31, i32 noundef 0) #22
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %317, !prof !1966

252:                                              ; preds = %247
  %253 = load ptr, ptr %235, align 8, !tbaa !493
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !493
  store ptr %35, ptr %254, align 8, !tbaa !493
  tail call void @extract_insn(ptr noundef nonnull %227) #22
  %256 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %257 = icmp eq i32 %256, 0
  %258 = load ptr, ptr %235, align 8, !tbaa !493
  br i1 %257, label %315, label %259, !prof !1967

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !493
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %265, label %277, !prof !1968

265:                                              ; preds = %259
  %266 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %261) #23
  %267 = icmp ult i32 %266, 53
  br i1 %267, label %268, label %277, !prof !1968

268:                                              ; preds = %265
  %269 = zext nneg i32 %266 to i64
  %270 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %269
  store ptr null, ptr %270, align 8, !tbaa !513
  %271 = load ptr, ptr %235, align 8, !tbaa !493
  %272 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !493
  %274 = tail call fastcc i32 @rhs_regno(ptr noundef %273) #23
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %275
  store ptr null, ptr %276, align 8, !tbaa !513
  br label %277

277:                                              ; preds = %268, %265, %259
  %278 = load ptr, ptr @reg_info_p, align 8, !tbaa !513
  %279 = tail call fastcc i32 @rhs_regno(ptr noundef %255) #23
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.reg_info_t, ptr %278, i64 %280, i32 1
  %282 = load i32, ptr %281, align 4, !tbaa !1969
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %298, !prof !1970

284:                                              ; preds = %277
  %285 = tail call fastcc i32 @REG_N_SETS(i32 noundef %279) #23
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %298, !prof !1971

287:                                              ; preds = %284
  %288 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %289 = trunc i32 %288 to i16
  %290 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %291 = getelementptr inbounds i16, ptr %290, i64 %280
  store i16 %289, ptr %291, align 2, !tbaa !528
  %292 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %296, label %294, !prof !1506

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
  %300 = load ptr, ptr %299, align 8, !tbaa !493
  %301 = icmp eq ptr %300, %10
  br i1 %301, label %584, label %302, !prof !1972

302:                                              ; preds = %298, %311
  %303 = phi ptr [ %313, %311 ], [ %300, %298 ]
  %304 = load i32, ptr %303, align 8
  %305 = trunc i32 %304 to i16
  switch i16 %305, label %310 [
    i16 7, label %306
    i16 13, label %311
  ], !prof !1973

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !493
  %309 = tail call ptr @replace_rtx(ptr noundef %308, ptr noundef %255, ptr noundef nonnull %35) #22
  br label %311

310:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7083, ptr noundef nonnull @.str.2) #22
  br label %311

311:                                              ; preds = %302, %310, %306
  %312 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 2
  %313 = load ptr, ptr %312, align 8, !tbaa !493
  %314 = icmp eq ptr %313, %10
  br i1 %314, label %584, label %302, !prof !1666, !llvm.loop !1974

315:                                              ; preds = %252
  %316 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1
  store ptr %255, ptr %316, align 8, !tbaa !493
  br label %317

317:                                              ; preds = %230, %226, %222, %209, %212, %206, %203, %199, %196, %247, %244, %240, %234, %315
  %318 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 13
  %319 = load i32, ptr %318, align 4, !tbaa !1954
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %522, !prof !1975

321:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !513
  %322 = load i32, ptr %100, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 39
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !493
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
  %338 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %339 = zext i32 %335 to i64
  %340 = getelementptr inbounds ptr, ptr %338, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !513
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %345 = getelementptr inbounds ptr, ptr %344, i64 %339
  %346 = load ptr, ptr %345, align 8, !tbaa !513
  %347 = icmp eq ptr %346, null
  br i1 %347, label %359, label %348

348:                                              ; preds = %343, %337
  %349 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %350 = getelementptr inbounds ptr, ptr %349, i64 %339
  %351 = load ptr, ptr %350, align 8, !tbaa !513
  %352 = icmp eq ptr %351, null
  %353 = load i32, ptr @num_not_at_initial_offset, align 4
  %354 = icmp ne i32 %353, 0
  %355 = select i1 %352, i1 true, i1 %354
  %356 = or i1 %324, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %348
  %358 = load ptr, ptr %1, align 8, !tbaa !1289
  br label %359

359:                                              ; preds = %348, %357, %343, %334, %329
  %360 = phi ptr [ %358, %357 ], [ %100, %343 ], [ %100, %334 ], [ %100, %329 ], [ %351, %348 ]
  %361 = load i32, ptr %31, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 39
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !493
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
  %377 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %378 = zext i32 %374 to i64
  %379 = getelementptr inbounds ptr, ptr %377, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !513
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %387

382:                                              ; preds = %376
  %383 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %384 = getelementptr inbounds ptr, ptr %383, i64 %378
  %385 = load ptr, ptr %384, align 8, !tbaa !513
  %386 = icmp eq ptr %385, null
  br i1 %386, label %398, label %387

387:                                              ; preds = %382, %376
  %388 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %389 = getelementptr inbounds ptr, ptr %388, i64 %378
  %390 = load ptr, ptr %389, align 8, !tbaa !513
  %391 = icmp eq ptr %390, null
  %392 = load i32, ptr @num_not_at_initial_offset, align 4
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %391, i1 true, i1 %393
  %395 = or i1 %363, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = load ptr, ptr %1, align 8, !tbaa !1289
  br label %398

398:                                              ; preds = %387, %396, %382, %373, %368
  %399 = phi ptr [ %397, %396 ], [ %31, %382 ], [ %31, %373 ], [ %31, %368 ], [ %390, %387 ]
  %400 = zext nneg i32 %319 to i64
  %401 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 11
  %402 = load ptr, ptr %401, align 8, !tbaa !1280
  store ptr %402, ptr %5, align 8, !tbaa !513
  %403 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 13
  %404 = load i32, ptr %403, align 4, !tbaa !1954
  %405 = icmp sgt i32 %404, -1
  br i1 %405, label %406, label %416

406:                                              ; preds = %398
  %407 = zext nneg i32 %404 to i64
  %408 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %407, i32 11
  %409 = load ptr, ptr %408, align 8, !tbaa !1280
  store ptr %409, ptr %6, align 8, !tbaa !513
  %410 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 15
  %411 = load i32, ptr %410, align 4, !tbaa !1976
  %412 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %407, i32 13
  %413 = load i32, ptr %412, align 4, !tbaa !1954
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7169, ptr noundef nonnull @.str.2) #22
  br label %416

416:                                              ; preds = %415, %406, %398
  %417 = phi i32 [ 2956, %398 ], [ %411, %406 ], [ %411, %415 ]
  %418 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 15
  %419 = load i32, ptr %418, align 4, !tbaa !1976
  %420 = icmp eq ptr %31, %100
  br i1 %420, label %424, label %421

421:                                              ; preds = %416
  %422 = tail call i32 @rtx_equal_p(ptr noundef nonnull %31, ptr noundef nonnull %100) #22
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %430, label %424

424:                                              ; preds = %421, %416
  %425 = load ptr, ptr %1, align 8, !tbaa !1289
  %426 = icmp eq ptr %425, null
  br i1 %426, label %478, label %427

427:                                              ; preds = %424
  %428 = load ptr, ptr %135, align 8, !tbaa !1287
  %429 = icmp eq ptr %428, null
  br i1 %429, label %478, label %430

430:                                              ; preds = %427, %421
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  store i32 2956, ptr %7, align 8, !tbaa !1977
  %431 = getelementptr inbounds %struct.secondary_reload_info, ptr %7, i64 0, i32 2
  store ptr null, ptr %431, align 8, !tbaa !1979
  %432 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !1980
  %433 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 2
  %434 = load i32, ptr %433, align 8, !tbaa !1295
  %435 = call i32 %432(i8 noundef zeroext 1, ptr noundef %360, i32 noundef %434, i32 noundef %38, ptr noundef nonnull %7) #22
  %436 = icmp eq i32 %435, 0
  %437 = load i32, ptr %7, align 8
  %438 = icmp eq i32 %437, 2956
  %439 = select i1 %436, i1 %438, i1 false
  br i1 %439, label %440, label %441

440:                                              ; preds = %430
  store ptr null, ptr %5, align 8, !tbaa !513
  br label %472

441:                                              ; preds = %430
  br i1 %436, label %442, label %448

442:                                              ; preds = %441
  %443 = load ptr, ptr %6, align 8, !tbaa !513
  %444 = call fastcc zeroext i8 @reload_adjust_reg_for_icode(ptr noundef nonnull %5, ptr noundef %443, i32 noundef %437) #23
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %472, label %446

446:                                              ; preds = %442
  %447 = load i32, ptr %7, align 8, !tbaa !1977
  store ptr null, ptr %6, align 8, !tbaa !513
  br label %472

448:                                              ; preds = %441
  br i1 %438, label %450, label %449

449:                                              ; preds = %448
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7203, ptr noundef nonnull @.str.2) #22
  br label %472

450:                                              ; preds = %448
  %451 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !1980
  %452 = call i32 %451(i8 noundef zeroext 1, ptr noundef %360, i32 noundef %435, i32 noundef %38, ptr noundef nonnull %7) #22
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %450
  %455 = load ptr, ptr %6, align 8, !tbaa !513
  %456 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %5, ptr noundef %455, i32 noundef %435, i32 noundef %38) #23
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %472, label %458

458:                                              ; preds = %454
  store ptr null, ptr %6, align 8, !tbaa !513
  br label %472

459:                                              ; preds = %450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %460 = load ptr, ptr %5, align 8, !tbaa !513
  store ptr %460, ptr %8, align 8, !tbaa !513
  %461 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %8, ptr noundef null, i32 noundef %435, i32 noundef %38) #23
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %459
  %464 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %6, ptr noundef null, i32 noundef %452, i32 noundef %38) #23
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %463
  %467 = load ptr, ptr %8, align 8, !tbaa !513
  store ptr %467, ptr %5, align 8, !tbaa !513
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
  %477 = load ptr, ptr %5, align 8, !tbaa !513
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
  %488 = load ptr, ptr %6, align 8, !tbaa !513
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
  %496 = load ptr, ptr %495, align 8, !tbaa !1981
  %497 = load ptr, ptr %6, align 8, !tbaa !513
  %498 = call ptr (ptr, ...) %496(ptr noundef nonnull %479, ptr noundef %482, ptr noundef %497) #22
  %499 = call ptr @emit_insn(ptr noundef %498) #22
  br label %512

500:                                              ; preds = %491
  %501 = load ptr, ptr %6, align 8, !tbaa !513
  %502 = icmp eq ptr %501, null
  %503 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %504 = load i32, ptr %503, align 8, !tbaa !1364
  %505 = load i32, ptr %101, align 4, !tbaa !1363
  br i1 %502, label %511, label %506

506:                                              ; preds = %500
  call fastcc void @gen_reload(ptr noundef nonnull %501, ptr noundef %482, i32 noundef %504, i32 noundef %505) #23
  %507 = load ptr, ptr %5, align 8, !tbaa !513
  %508 = load ptr, ptr %6, align 8, !tbaa !513
  %509 = load i32, ptr %503, align 8, !tbaa !1364
  %510 = load i32, ptr %101, align 4, !tbaa !1363
  call fastcc void @gen_reload(ptr noundef %507, ptr noundef %508, i32 noundef %509, i32 noundef %510) #23
  br label %512

511:                                              ; preds = %500
  call fastcc void @gen_reload(ptr noundef nonnull %479, ptr noundef %482, i32 noundef %504, i32 noundef %505) #23
  br label %512

512:                                              ; preds = %506, %511, %493
  %513 = load ptr, ptr %5, align 8, !tbaa !513
  br label %514

514:                                              ; preds = %512, %478
  %515 = phi ptr [ %483, %478 ], [ %513, %512 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %522

516:                                              ; preds = %490, %487
  %517 = zext i32 %480 to i64
  %518 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %517, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !1981
  %520 = call ptr (ptr, ...) %519(ptr noundef nonnull %35, ptr noundef %482, ptr noundef nonnull %479) #22
  %521 = call ptr @emit_insn(ptr noundef %520) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %584

522:                                              ; preds = %317, %514
  %523 = phi ptr [ %515, %514 ], [ %100, %317 ]
  %524 = call i32 @rtx_equal_p(ptr noundef nonnull %35, ptr noundef %523) #22
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %584, !prof !1982

526:                                              ; preds = %522
  %527 = load i32, ptr %523, align 8
  %528 = and i32 %527, 65535
  %529 = trunc i32 %527 to i16
  switch i16 %529, label %565 [
    i16 37, label %530
    i16 39, label %544
  ], !prof !1983

530:                                              ; preds = %526
  %531 = call fastcc i32 @rhs_regno(ptr noundef nonnull %523) #23
  %532 = icmp ugt i32 %531, 52
  br i1 %532, label %533, label %565, !prof !1984

533:                                              ; preds = %530
  %534 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %535 = zext i32 %531 to i64
  %536 = getelementptr inbounds ptr, ptr %534, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !513
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %577, !prof !1985

539:                                              ; preds = %533
  %540 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %541 = getelementptr inbounds ptr, ptr %540, i64 %535
  %542 = load ptr, ptr %541, align 8, !tbaa !513
  %543 = icmp eq ptr %542, null
  br i1 %543, label %565, label %577, !prof !1986

544:                                              ; preds = %526
  %545 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !493
  %547 = load i32, ptr %546, align 8
  %548 = and i32 %547, 65535
  %549 = icmp eq i32 %548, 37
  br i1 %549, label %550, label %565, !prof !1987

550:                                              ; preds = %544
  %551 = call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #23
  %552 = icmp ugt i32 %551, 52
  br i1 %552, label %553, label %565, !prof !1987

553:                                              ; preds = %550
  %554 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %555 = call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #23
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %554, i64 %556
  %558 = load ptr, ptr %557, align 8, !tbaa !513
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %577, !prof !1988

560:                                              ; preds = %553
  %561 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !513
  %562 = getelementptr inbounds ptr, ptr %561, i64 %556
  %563 = load ptr, ptr %562, align 8, !tbaa !513
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %577

565:                                              ; preds = %526, %530, %539, %560, %550, %544
  %566 = zext nneg i32 %528 to i64
  %567 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !527
  %569 = icmp eq i32 %568, 9
  br i1 %569, label %570, label %579, !prof !1989

570:                                              ; preds = %565
  %571 = call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !527
  %575 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %523, i32 noundef %574) #22
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579, !prof !1990

577:                                              ; preds = %570, %560, %553, %539, %533
  %578 = load ptr, ptr %1, align 8, !tbaa !1289
  br label %579

579:                                              ; preds = %577, %570, %565
  %580 = phi ptr [ %578, %577 ], [ %523, %570 ], [ %523, %565 ]
  %581 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %582 = load i32, ptr %581, align 8, !tbaa !1364
  %583 = load i32, ptr %101, align 4, !tbaa !1363
  call fastcc void @gen_reload(ptr noundef nonnull %35, ptr noundef %580, i32 noundef %582, i32 noundef %583) #23
  br label %584

584:                                              ; preds = %311, %298, %188, %516, %579, %522
  %585 = phi ptr [ %523, %579 ], [ %523, %522 ], [ %483, %516 ], [ %151, %188 ], [ %100, %298 ], [ %100, %311 ]
  %586 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !527
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %590, label %588, !prof !1947

588:                                              ; preds = %584
  %589 = call ptr @get_insns() #22
  call void @copy_reg_eh_region_note_forward(ptr noundef %10, ptr noundef %589, ptr noundef null) #22
  br label %590

590:                                              ; preds = %588, %584
  %591 = call ptr @get_insns() #22
  store ptr %591, ptr %133, align 8, !tbaa !513
  call void @end_sequence() #22
  %592 = icmp eq ptr %33, null
  br i1 %592, label %594, label %593, !prof !1991

593:                                              ; preds = %590
  store ptr %585, ptr %12, align 8, !tbaa !513
  br label %594

594:                                              ; preds = %593, %590
  ret void
}

; Function Attrs: optsize
declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_output_reload(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !1992 !PGOFuncName !1993 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %312, !prof !1994

11:                                               ; preds = %4
  %12 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %5
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %19, %13 ], [ %12, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !493
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 39
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br i1 %18, label %13, label %20, !prof !1995, !llvm.loop !1996

20:                                               ; preds = %13
  %21 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !513
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %81, !prof !1997

28:                                               ; preds = %20
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %78
  %31 = phi i64 [ %29, %28 ], [ %33, %78 ]
  %32 = phi i32 [ 0, %28 ], [ %79, %78 ]
  %33 = add nsw i64 %31, -1
  %34 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !1289
  %36 = icmp eq ptr %35, null
  br i1 %36, label %78, label %37, !prof !1998

37:                                               ; preds = %30
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %45, label %41, !prof !1999

41:                                               ; preds = %37
  %42 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %33
  %43 = load ptr, ptr %42, align 8, !tbaa !513
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !2000

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %33, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !1441
  %48 = load i32, ptr %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %48, %45 ], [ %38, %41 ]
  %51 = phi ptr [ %47, %45 ], [ %35, %41 ]
  %52 = and i32 %50, 65535
  %53 = icmp eq i32 %52, 39
  br i1 %53, label %54, label %61, !prof !2001

54:                                               ; preds = %49, %54
  %55 = phi ptr [ %57, %54 ], [ %51, %49 ]
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !493
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 39
  br i1 %60, label %54, label %61, !prof !2002, !llvm.loop !2003

61:                                               ; preds = %54, %49
  %62 = phi ptr [ %51, %49 ], [ %57, %54 ]
  %63 = tail call i32 @rtx_equal_p(ptr noundef nonnull %62, ptr noundef nonnull %15) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65, !prof !2004

65:                                               ; preds = %61
  %66 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %33
  %67 = load i8, ptr %66, align 1, !tbaa !493
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %76, !prof !2005

69:                                               ; preds = %65
  %70 = zext i32 %1 to i64
  %71 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %33
  %72 = load ptr, ptr %71, align 8, !tbaa !513
  %73 = icmp ne ptr %72, null
  %74 = icmp eq i64 %33, %70
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %312, !prof !2006

76:                                               ; preds = %69, %65
  %77 = add nsw i32 %32, 1
  br label %78

78:                                               ; preds = %30, %76, %61
  %79 = phi i32 [ %32, %61 ], [ %77, %76 ], [ %32, %30 ]
  %80 = icmp sgt i64 %31, 1
  br i1 %80, label %30, label %81, !prof !2007, !llvm.loop !2008

81:                                               ; preds = %78, %20
  %82 = phi i32 [ 0, %20 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !493
  %85 = tail call i32 @count_occurrences(ptr noundef %84, ptr noundef nonnull %15, i32 noundef 0) #22
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %96, !prof !2009

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !493
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !2010

93:                                               ; preds = %89
  %94 = tail call i32 @count_occurrences(ptr noundef nonnull %91, ptr noundef nonnull %15, i32 noundef 0) #22
  %95 = add nsw i32 %94, %85
  br label %96

96:                                               ; preds = %93, %89, %81
  %97 = phi i32 [ %95, %93 ], [ %85, %89 ], [ %85, %81 ]
  %98 = icmp eq ptr %25, null
  br i1 %98, label %104, label %99, !prof !2011

99:                                               ; preds = %96
  %100 = load ptr, ptr %83, align 8, !tbaa !493
  %101 = tail call ptr @eliminate_regs(ptr noundef nonnull %25, i32 noundef 0, ptr noundef null) #23
  %102 = tail call i32 @count_occurrences(ptr noundef %100, ptr noundef %101, i32 noundef 0) #22
  %103 = add nsw i32 %102, %97
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i32 [ %103, %99 ], [ %97, %96 ]
  %106 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !513
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !493
  %111 = icmp eq ptr %110, null
  br i1 %111, label %128, label %112, !prof !1997

112:                                              ; preds = %104, %120
  %113 = phi ptr [ %126, %120 ], [ %110, %104 ]
  %114 = phi i32 [ %124, %120 ], [ %105, %104 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !493
  %117 = tail call i32 @rtx_equal_p(ptr noundef %116, ptr noundef %25) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8543, ptr noundef nonnull @.str.2) #22
  br label %120

120:                                              ; preds = %112, %119
  %121 = load ptr, ptr %83, align 8, !tbaa !493
  %122 = load ptr, ptr %115, align 8, !tbaa !493
  %123 = tail call i32 @count_occurrences(ptr noundef %121, ptr noundef %122, i32 noundef 0) #22
  %124 = add nsw i32 %123, %114
  %125 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !493
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %112, !prof !497, !llvm.loop !2012

128:                                              ; preds = %120, %104
  %129 = phi i32 [ %105, %104 ], [ %124, %120 ]
  %130 = icmp sgt i32 %129, %82
  br i1 %130, label %312, label %131, !prof !2013

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %133 = load ptr, ptr %132, align 8, !tbaa !493
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %182, label %135, !prof !2014

135:                                              ; preds = %131, %178
  %136 = phi ptr [ %180, %178 ], [ %133, %131 ]
  %137 = load i32, ptr %136, align 8
  %138 = trunc i32 %137 to i16
  switch i16 %138, label %178 [
    i16 13, label %139
    i16 8, label %143
    i16 10, label %143
  ], !prof !2015

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 1
  %141 = load i32, ptr %140, align 8, !tbaa !493
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %312, label %178, !prof !2016

143:                                              ; preds = %135, %135
  %144 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !493
  %146 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %15, ptr noundef %145) #22
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %178, label %148, !prof !2017

148:                                              ; preds = %143
  %149 = load i32, ptr %136, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %152, label %172

152:                                              ; preds = %148, %160
  %153 = phi i32 [ %166, %160 ], [ %129, %148 ]
  %154 = phi ptr [ %168, %160 ], [ %136, %148 ]
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !493
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 24
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !493
  %163 = tail call i32 @rtx_equal_p(ptr noundef nonnull %15, ptr noundef %162) #22
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = add nsw i32 %153, %165
  %167 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 2
  %168 = load ptr, ptr %167, align 8, !tbaa !493
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %152, label %172, !llvm.loop !2018

172:                                              ; preds = %152, %160, %148
  %173 = phi ptr [ %136, %148 ], [ %168, %160 ], [ %154, %152 ]
  %174 = phi i32 [ %129, %148 ], [ %166, %160 ], [ %153, %152 ]
  %175 = icmp sle i32 %174, %82
  %176 = icmp eq ptr %173, %0
  %177 = and i1 %176, %175
  br i1 %177, label %182, label %312

178:                                              ; preds = %135, %139, %143
  %179 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 2
  %180 = load ptr, ptr %179, align 8, !tbaa !493
  %181 = icmp eq ptr %180, %0
  br i1 %181, label %182, label %135, !prof !2019, !llvm.loop !2020

182:                                              ; preds = %178, %131, %172
  %183 = load i32, ptr %15, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !493
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %203, label %190, !prof !2014

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
  tail call void @llvm.memset.p0.i64(ptr align 8 %199, i8 0, i64 %201, i1 false), !tbaa !513
  %202 = getelementptr i8, ptr @spill_reg_stored_to, i64 %198
  tail call void @llvm.memset.p0.i64(ptr align 8 %202, i8 0, i64 %201, i1 false), !tbaa !513
  br label %203

203:                                              ; preds = %190, %182
  %204 = sext i32 %1 to i64
  %205 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %204
  %206 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %204, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !1287
  %208 = load ptr, ptr %205, align 8, !tbaa !1289
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %310, label %210, !prof !2021

210:                                              ; preds = %203
  %211 = load ptr, ptr @reg_info_p, align 8, !tbaa !513
  %212 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %213, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !1969
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %310, !prof !2022

217:                                              ; preds = %210
  %218 = tail call fastcc i32 @REG_N_SETS(i32 noundef %212) #23
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %310, !prof !2023

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %213, i32 6
  %222 = load i32, ptr %221, align 4, !tbaa !2024
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %310, !prof !2025

224:                                              ; preds = %220
  %225 = tail call ptr @find_regno_note(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %212) #22
  %226 = icmp eq ptr %225, null
  br i1 %226, label %310, label %227, !prof !2026

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !493
  %230 = icmp eq ptr %229, null
  br i1 %230, label %297, label %231, !prof !2027

231:                                              ; preds = %227, %261
  %232 = phi ptr [ %263, %261 ], [ %229, %227 ]
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 65535
  %235 = add nsw i32 %234, -7
  %236 = icmp ult i32 %235, 4
  br i1 %236, label %237, label %251, !prof !2028

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !493
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 23
  br i1 %242, label %246, label %243, !prof !2029

243:                                              ; preds = %237
  %244 = tail call ptr @single_set_2(ptr noundef nonnull %232, ptr noundef nonnull %239) #22
  %245 = icmp eq ptr %244, null
  br i1 %245, label %251, label %246, !prof !880

246:                                              ; preds = %237, %243
  %247 = phi ptr [ %244, %243 ], [ %239, %237 ]
  %248 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !493
  %250 = icmp eq ptr %249, %15
  br i1 %250, label %261, label %251, !prof !2030

251:                                              ; preds = %231, %246, %243
  %252 = load i32, ptr %232, align 8
  %253 = trunc i32 %252 to i16
  switch i16 %253, label %261 [
    i16 12, label %265
    i16 9, label %265
    i16 8, label %254
    i16 10, label %254
  ], !prof !2031

254:                                              ; preds = %251, %251
  %255 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !493
  %257 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %15, ptr noundef %256) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259, !prof !2032

259:                                              ; preds = %254
  tail call fastcc void @delete_address_reloads(ptr noundef nonnull %7, ptr noundef nonnull %0) #23
  %260 = tail call ptr @delete_insn(ptr noundef nonnull %7) #22
  br label %312

261:                                              ; preds = %254, %251, %246
  %262 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !493
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %231, !prof !2033, !llvm.loop !2034

265:                                              ; preds = %261, %251, %251
  %266 = load ptr, ptr %228, align 8, !tbaa !493
  %267 = icmp eq ptr %266, null
  br i1 %267, label %297, label %268, !prof !1481

268:                                              ; preds = %265, %293
  %269 = phi ptr [ %295, %293 ], [ %266, %265 ]
  %270 = load i32, ptr %269, align 8
  %271 = and i32 %270, 65535
  %272 = add nsw i32 %271, -7
  %273 = icmp ult i32 %272, 4
  br i1 %273, label %274, label %290, !prof !2028

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 1
  %276 = load ptr, ptr %275, align 8, !tbaa !493
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 23
  br i1 %279, label %283, label %280, !prof !2029

280:                                              ; preds = %274
  %281 = tail call ptr @single_set_2(ptr noundef nonnull %269, ptr noundef nonnull %276) #22
  %282 = icmp eq ptr %281, null
  br i1 %282, label %290, label %283, !prof !880

283:                                              ; preds = %274, %280
  %284 = phi ptr [ %281, %280 ], [ %276, %274 ]
  %285 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !493
  %287 = icmp eq ptr %286, %15
  br i1 %287, label %288, label %290, !prof !2030

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
  %295 = load ptr, ptr %294, align 8, !tbaa !493
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %268, !prof !2033, !llvm.loop !2035

297:                                              ; preds = %293, %290, %290, %227, %265
  %298 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #23
  %299 = trunc i32 %298 to i16
  %300 = load ptr, ptr @reg_renumber, align 8, !tbaa !513
  %301 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i16, ptr %300, i64 %302
  store i16 %299, ptr %303, align 2, !tbaa !528
  %304 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !493
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %308, label %306, !prof !2026

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

312:                                              ; preds = %69, %139, %259, %308, %310, %172, %128, %4
  ret void
}

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_to_sequence(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @inc_for_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !734 !PGOFuncName !2036 {
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
  %22 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !513
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr null, ptr %25, align 8, !tbaa !513
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
  %32 = load ptr, ptr %31, align 8, !tbaa !493
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8835, ptr noundef nonnull @.str.2) #22
  %37 = load ptr, ptr %31, align 8, !tbaa !493
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
  %95 = load i64, ptr %94, align 8, !tbaa !493
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
define internal fastcc noundef i32 @conflicts_with_override(ptr noundef %0) unnamed_addr #0 !prof !2037 !PGOFuncName !2038 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !527
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %20, !prof !2039

4:                                                ; preds = %1, %15
  %5 = phi i32 [ %16, %15 ], [ %2, %1 ]
  %6 = phi i64 [ %17, %15 ], [ 0, %1 ]
  %7 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !513
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !2040

10:                                               ; preds = %4
  %11 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %8) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !prof !2041

13:                                               ; preds = %10
  %14 = load i32, ptr @n_reloads, align 4, !tbaa !527
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ %5, %4 ]
  %17 = add nuw nsw i64 %6, 1
  %18 = sext i32 %16 to i64
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %4, label %20, !prof !2042, !llvm.loop !2043

20:                                               ; preds = %10, %15, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 1, %10 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @count_occurrences(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #12 !prof !2044 !PGOFuncName !2045 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !513
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !2046
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_adjust_reg_for_icode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !734 !PGOFuncName !2047 {
  %4 = tail call i32 @scratch_reload_class(i32 noundef %2) #22
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1112
  %8 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 2, i32 2
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = tail call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %10) #23
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_adjust_reg_for_temp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !734 !PGOFuncName !2048 {
  %5 = load ptr, ptr %0, align 8, !tbaa !513
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
  %15 = load i64, ptr %9, align 8, !tbaa !545
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
  %30 = load i8, ptr %29, align 1, !tbaa !493
  %31 = load i32, ptr %12, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !493
  %37 = icmp ugt i8 %30, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %12, i32 noundef %3) #22
  br label %40

40:                                               ; preds = %20, %38
  %41 = phi ptr [ %39, %38 ], [ %12, %20 ]
  store ptr %41, ptr %0, align 8, !tbaa !513
  br label %44

42:                                               ; preds = %11, %25, %28
  %43 = icmp eq ptr %13, null
  br i1 %43, label %44, label %11, !llvm.loop !2049

44:                                               ; preds = %42, %4, %40
  %45 = phi i8 [ 1, %40 ], [ 0, %4 ], [ 0, %42 ]
  ret i8 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_reload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !2050 !PGOFuncName !2051 {
  %5 = tail call ptr @get_last_insn() #22
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %29, !prof !2052

9:                                                ; preds = %4
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !493
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !493
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !493
  %23 = icmp ugt i8 %14, %22
  br i1 %23, label %24, label %29, !prof !1988

24:                                               ; preds = %9
  %25 = tail call ptr @gen_lowpart_common(i32 noundef %19, ptr noundef %0) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %15, align 8, !tbaa !493
  br label %53

29:                                               ; preds = %24, %9, %4
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 39
  br i1 %32, label %33, label %53, !prof !2053

33:                                               ; preds = %29
  %34 = lshr i32 %30, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !493
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !493
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !493
  %47 = icmp ugt i8 %38, %46
  br i1 %47, label %48, label %53, !prof !2054

48:                                               ; preds = %33
  %49 = tail call ptr @gen_lowpart_common(i32 noundef %43, ptr noundef nonnull %1) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %39, align 8, !tbaa !493
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
  ], !prof !2055

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !493
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i16
  switch i16 %62, label %223 [
    i16 37, label %63
    i16 39, label %63
    i16 43, label %63
  ], !prof !2056

63:                                               ; preds = %58, %58, %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !493
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = trunc i32 %66 to i16
  switch i16 %68, label %69 [
    i16 37, label %76
    i16 39, label %76
  ], !prof !2057

69:                                               ; preds = %63
  %70 = zext nneg i32 %67 to i64
  %71 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !527
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %76, label %74, !prof !2058

74:                                               ; preds = %69
  %75 = icmp eq i32 %67, 43
  br i1 %75, label %76, label %223

76:                                               ; preds = %63, %63, %74, %69
  %77 = tail call ptr @find_replacement(ptr noundef nonnull %59) #22
  %78 = tail call ptr @find_replacement(ptr noundef nonnull %64) #22
  %79 = load ptr, ptr %64, align 8, !tbaa !493
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %89, !prof !2059

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
  %92 = load ptr, ptr %59, align 8, !tbaa !493
  %93 = icmp eq ptr %90, %92
  %94 = icmp eq ptr %91, %79
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %101, label %96, !prof !2060

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
  br i1 %105, label %106, label %291, !prof !2059

106:                                              ; preds = %101
  %107 = load i32, ptr %55, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !2061
  %113 = load i32, ptr %91, align 8
  %114 = and i32 %113, 65535
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !527
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
  %130 = load ptr, ptr %129, align 8, !tbaa !1112
  %131 = getelementptr inbounds %struct.insn_operand_data, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !2063
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
  %160 = load ptr, ptr %159, align 8, !tbaa !493
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 37
  br i1 %163, label %164, label %223, !prof !1987

164:                                              ; preds = %53, %158
  %165 = tail call i32 @reg_or_subregno(ptr noundef nonnull %54) #22
  %166 = icmp ult i32 %165, 53
  br i1 %166, label %167, label %223, !prof !2064

167:                                              ; preds = %164
  %168 = load i32, ptr %55, align 8
  %169 = trunc i32 %168 to i16
  switch i16 %169, label %223 [
    i16 37, label %176
    i16 39, label %170
  ], !prof !2065

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !493
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 37
  br i1 %175, label %176, label %223, !prof !2066

176:                                              ; preds = %167, %170
  %177 = tail call i32 @reg_or_subregno(ptr noundef nonnull %55) #22
  %178 = icmp ult i32 %177, 53
  br i1 %178, label %179, label %223, !prof !2067

179:                                              ; preds = %176
  %180 = tail call i32 @reg_or_subregno(ptr noundef nonnull %54) #22
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !527
  %184 = tail call i32 @reg_or_subregno(ptr noundef nonnull %55) #22
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !527
  %188 = load i32, ptr %55, align 8
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  %191 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %183, i32 noundef %187, i32 noundef %190, i32 noundef 1) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %223, label %193, !prof !2068

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

223:                                              ; preds = %53, %74, %58, %167, %179, %176, %170, %164, %158
  %224 = load i32, ptr %55, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 37
  %227 = load i32, ptr %54, align 8
  %228 = and i32 %227, 65535
  %229 = zext nneg i32 %228 to i64
  br i1 %226, label %230, label %274, !prof !2069

230:                                              ; preds = %223
  %231 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %229
  %232 = load i32, ptr %231, align 4, !tbaa !527
  %233 = icmp eq i32 %232, 4
  br i1 %233, label %234, label %274, !prof !2070

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %236 = tail call ptr @find_replacement(ptr noundef nonnull %235) #22
  %237 = load ptr, ptr %235, align 8, !tbaa !493
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
  tail call void @_fatal_insn(ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 8450, ptr noundef nonnull @.str.2) #22
  br label %287

274:                                              ; preds = %223, %230
  %275 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %229
  %276 = load i32, ptr %275, align 4, !tbaa !527
  %277 = and i32 %276, -2
  %278 = icmp eq i32 %277, 8
  br i1 %278, label %281, label %279, !prof !2071

279:                                              ; preds = %274
  %280 = icmp eq i32 %228, 39
  br i1 %280, label %281, label %284, !prof !1987

281:                                              ; preds = %279, %274
  %282 = tail call ptr @gen_move_insn(ptr noundef nonnull %55, ptr noundef nonnull %54) #22
  %283 = tail call ptr @emit_insn(ptr noundef %282) #22
  tail call void @mark_jump_label(ptr noundef nonnull %54, ptr noundef %283, i32 noundef 0) #22
  br label %287

284:                                              ; preds = %279
  %285 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %55, ptr noundef nonnull %54) #22
  %286 = tail call ptr @emit_insn(ptr noundef %285) #22
  br label %287

287:                                              ; preds = %273, %154, %221, %281, %284
  %288 = icmp eq ptr %5, null
  br i1 %288, label %289, label %291, !prof !2072

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
define internal fastcc noundef ptr @emit_insn_if_valid_for_reload(ptr noundef %0) unnamed_addr #0 !prof !2073 !PGOFuncName !2074 {
  %2 = tail call ptr @get_last_insn() #22
  %3 = tail call ptr @emit_insn(ptr noundef %0) #22
  %4 = tail call fastcc i32 @recog_memoized(ptr noundef %3) #23
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %9, !prof !2058

6:                                                ; preds = %1
  tail call void @extract_insn(ptr noundef %3) #22
  %7 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !2059

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
define internal fastcc void @delete_address_reloads(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2075 !PGOFuncName !2076 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %26, !prof !2077

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %16, label %13, !prof !2078

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %9) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !2079

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !493
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %26, !prof !2080

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !493
  tail call fastcc void @delete_address_reloads_1(ptr noundef nonnull %0, ptr noundef %25, ptr noundef %1) #23
  br label %26

26:                                               ; preds = %2, %16, %23, %13
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !493
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !493
  %31 = icmp ne ptr %28, null
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %125, !prof !2081

34:                                               ; preds = %26
  %35 = load i32, ptr %30, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %47, !prof !2082

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !493
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 23
  br i1 %44, label %47, label %45, !prof !2083

45:                                               ; preds = %39
  %46 = tail call ptr @single_set_2(ptr noundef nonnull %30, ptr noundef nonnull %41) #22
  br label %47

47:                                               ; preds = %34, %39, %45
  %48 = phi ptr [ %46, %45 ], [ null, %34 ], [ %41, %39 ]
  %49 = load i32, ptr %28, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %125, !prof !2084

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !493
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %61, label %59, !prof !2085

59:                                               ; preds = %53
  %60 = tail call ptr @single_set_2(ptr noundef nonnull %28, ptr noundef nonnull %55) #22
  br label %61

61:                                               ; preds = %53, %59
  %62 = phi ptr [ %60, %59 ], [ %55, %53 ]
  %63 = icmp ne ptr %48, null
  %64 = icmp ne ptr %62, null
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %125, !prof !2086

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %68 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !493
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 49
  br i1 %72, label %73, label %125, !prof !2087

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %75 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !493
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 49
  br i1 %79, label %80, label %125, !prof !2088

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !493
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 30
  br i1 %85, label %86, label %125, !prof !2010

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !493
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 30
  br i1 %91, label %92, label %125, !prof !634

92:                                               ; preds = %86
  %93 = load ptr, ptr %67, align 8, !tbaa !493
  %94 = load ptr, ptr %74, align 8, !tbaa !493
  %95 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %94) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %68, align 8, !tbaa !493
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !493
  %101 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %75, align 8, !tbaa !493
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !493
  %107 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %106) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %68, align 8, !tbaa !493
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !493
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !493
  %115 = load ptr, ptr %75, align 8, !tbaa !493
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !493
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !493
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
define internal fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !734 !PGOFuncName !2089 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !493
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
  %21 = load i8, ptr %20, align 1, !tbaa !493
  switch i8 %21, label %39 [
    i8 101, label %22
    i8 69, label %25
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !493
  tail call fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %24, ptr noundef %2) #23
  br label %39

25:                                               ; preds = %17
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %27 = load ptr, ptr %26, align 8, !tbaa !493
  %28 = load i32, ptr %27, align 8, !tbaa !755
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !493
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !513
  tail call fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %37, ptr noundef %2) #23
  %38 = icmp ugt i64 %33, 1
  br i1 %38, label %32, label %39, !llvm.loop !2090

39:                                               ; preds = %32, %25, %17, %22
  %40 = icmp sgt i64 %18, 1
  br i1 %40, label %17, label %184, !llvm.loop !2091

41:                                               ; preds = %3
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #23
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !528
  %46 = icmp slt i16 %45, 0
  br i1 %46, label %184, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !493
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
  %57 = load ptr, ptr %56, align 8, !tbaa !493
  %58 = tail call i32 @reg_set_p(ptr noundef nonnull %1, ptr noundef %57) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !493
  %62 = tail call i32 @reg_referenced_p(ptr noundef nonnull %1, ptr noundef %61) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %184

64:                                               ; preds = %51, %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !493
  %67 = icmp eq ptr %66, null
  br i1 %67, label %184, label %51, !llvm.loop !2092

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !493
  %71 = load i32, ptr @reload_first_uid, align 4, !tbaa !527
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %184, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %52, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %184

78:                                               ; preds = %73
  %79 = load ptr, ptr %56, align 8, !tbaa !493
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
  %89 = load ptr, ptr %88, align 8, !tbaa !493
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
  %98 = load ptr, ptr %97, align 8, !tbaa !493
  %99 = tail call i32 @reg_set_p(ptr noundef nonnull %89, ptr noundef %98) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %185

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !493
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
  %111 = load ptr, ptr %110, align 8, !tbaa !493
  %112 = tail call i32 @reg_referenced_p(ptr noundef nonnull %89, ptr noundef %111) #22
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %109
  %115 = icmp eq ptr %106, %2
  br i1 %115, label %116, label %184

116:                                              ; preds = %114
  %117 = load i32, ptr @n_reloads, align 4, !tbaa !527
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
  %128 = load ptr, ptr %127, align 8, !tbaa !1280
  %129 = icmp eq ptr %128, %89
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %121
  %132 = load i8, ptr %131, align 1, !tbaa !493
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %184

134:                                              ; preds = %130, %126
  %135 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %121
  %136 = load ptr, ptr %135, align 8, !tbaa !513
  %137 = icmp eq ptr %136, %89
  br i1 %137, label %184, label %119, !llvm.loop !2093

138:                                              ; preds = %124, %148
  %139 = phi i64 [ %140, %148 ], [ %118, %124 ]
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !1289
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %140, i32 11
  %146 = load ptr, ptr %145, align 8, !tbaa !1280
  %147 = icmp eq ptr %146, %89
  br i1 %147, label %185, label %148

148:                                              ; preds = %138, %144
  %149 = icmp sgt i64 %139, 1
  br i1 %149, label %138, label %184, !llvm.loop !2094

150:                                              ; preds = %109
  %151 = load i32, ptr %106, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 9
  br i1 %153, label %185, label %154

154:                                              ; preds = %150
  %155 = icmp eq ptr %106, %2
  br i1 %155, label %156, label %176

156:                                              ; preds = %154
  %157 = load i32, ptr @n_reloads, align 4, !tbaa !527
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
  %166 = load ptr, ptr %165, align 8, !tbaa !1280
  %167 = icmp eq ptr %166, %89
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %161
  %170 = load i8, ptr %169, align 1, !tbaa !493
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %168, %164
  %173 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %161
  %174 = load ptr, ptr %173, align 8, !tbaa !513
  %175 = icmp eq ptr %174, %89
  br i1 %175, label %184, label %159, !llvm.loop !2095

176:                                              ; preds = %159, %154
  %177 = load ptr, ptr %110, align 8, !tbaa !493
  %178 = tail call i32 @reg_set_p(ptr noundef nonnull %89, ptr noundef %177) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %105, %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 2
  %182 = load ptr, ptr %181, align 8, !tbaa !493
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %105, !llvm.loop !2096

184:                                              ; preds = %73, %114, %86, %93, %83, %68, %41, %124, %47, %7, %148, %130, %134, %168, %172, %51, %51, %60, %64, %39, %185
  ret void

185:                                              ; preds = %176, %150, %180, %105, %144, %101, %96
  %186 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !493
  tail call fastcc void @delete_address_reloads_1(ptr noundef nonnull %52, ptr noundef %187, ptr noundef %2) #23
  %188 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #23
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %189
  store i32 -1, ptr %190, align 4, !tbaa !527
  %191 = tail call ptr @delete_insn(ptr noundef nonnull %52) #22
  br label %184
}

; Function Attrs: optsize
declare ptr @delete_related_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_output_reload_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !2097 !PGOFuncName !2098 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !811
  %6 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1287
  %8 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !1363
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %12, !prof !2099

11:                                               ; preds = %3
  tail call void @start_sequence() #22
  br label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !1364
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [30 x ptr], ptr @output_reload_insns, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !513
  tail call void @push_to_sequence(ptr noundef %17) #22
  br label %18

18:                                               ; preds = %12, %11
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !513
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !2100
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %137, !prof !2101

28:                                               ; preds = %18
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 14
  %31 = load i32, ptr %30, align 8, !tbaa !2100
  %32 = load i32, ptr %7, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %45, !prof !2102

35:                                               ; preds = %28
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %37 = icmp ugt i32 %36, 52
  br i1 %37, label %38, label %45, !prof !2102

38:                                               ; preds = %35
  %39 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !513
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !513
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr %7, ptr %42, !prof !1550
  br label %45

45:                                               ; preds = %38, %35, %28
  %46 = phi ptr [ %7, %35 ], [ %7, %28 ], [ %44, %38 ]
  %47 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1295
  %49 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %48, i32 noundef %24, ptr noundef nonnull %46) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %137, label %51, !prof !1550

51:                                               ; preds = %45
  %52 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !1280
  %54 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !2103
  %56 = icmp eq i32 %55, 2956
  br i1 %56, label %68, label %57, !prof !2102

57:                                               ; preds = %51
  %58 = icmp slt i32 %31, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7404, ptr noundef nonnull @.str.2) #22
  %60 = load i32, ptr %54, align 8, !tbaa !2103
  br label %61

61:                                               ; preds = %57, %59
  %62 = phi i32 [ %55, %57 ], [ %60, %59 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %63, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !1981
  %66 = tail call ptr (ptr, ...) %65(ptr noundef nonnull %46, ptr noundef nonnull %21, ptr noundef %53) #22
  %67 = tail call ptr @emit_insn(ptr noundef %66) #22
  br label %182

68:                                               ; preds = %51
  %69 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 16
  %70 = load i32, ptr %69, align 8, !tbaa !2103
  %71 = icmp slt i32 %31, 0
  br i1 %71, label %78, label %72, !prof !2102

72:                                               ; preds = %68
  %73 = zext nneg i32 %31 to i64
  %74 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %73, i32 14
  %75 = load i32, ptr %74, align 8, !tbaa !2100
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
  br i1 %82, label %85, label %83, !prof !2102

83:                                               ; preds = %78
  %84 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %53, i32 noundef %24) #22
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %53, %78 ]
  %87 = icmp eq i32 %70, 2956
  br i1 %87, label %126, label %88, !prof !2102

88:                                               ; preds = %85
  %89 = sext i32 %31 to i64
  %90 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %89, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !1280
  %92 = load i32, ptr %46, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = lshr i32 %92, 16
  %97 = and i32 %96, 255
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !493
  %101 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !493
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !493
  %109 = icmp ugt i8 %100, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %95
  %111 = tail call ptr @gen_lowpart_common(i32 noundef %105, ptr noundef %86) #22
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %101, align 8, !tbaa !493
  br label %115

115:                                              ; preds = %113, %110, %95, %88
  %116 = phi ptr [ %114, %113 ], [ %46, %110 ], [ %46, %95 ], [ %46, %88 ]
  %117 = phi ptr [ %111, %113 ], [ %86, %110 ], [ %86, %95 ], [ %86, %88 ]
  %118 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %119 = load i32, ptr %118, align 8, !tbaa !1364
  %120 = load i32, ptr %8, align 4, !tbaa !1363
  tail call fastcc void @gen_reload(ptr noundef %117, ptr noundef nonnull %21, i32 noundef %119, i32 noundef %120) #23
  %121 = zext i32 %70 to i64
  %122 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %121, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !1981
  %124 = tail call ptr (ptr, ...) %123(ptr noundef %116, ptr noundef %117, ptr noundef %91) #22
  %125 = tail call ptr @emit_insn(ptr noundef %124) #22
  br label %182

126:                                              ; preds = %85
  %127 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %128 = load i32, ptr %127, align 8, !tbaa !1364
  %129 = load i32, ptr %8, align 4, !tbaa !1363
  tail call fastcc void @gen_reload(ptr noundef %86, ptr noundef nonnull %21, i32 noundef %128, i32 noundef %129) #23
  %130 = icmp sgt i32 %31, -1
  br i1 %130, label %131, label %137, !prof !1550

131:                                              ; preds = %126
  %132 = zext nneg i32 %31 to i64
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %132, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !1280
  %135 = load i32, ptr %127, align 8, !tbaa !1364
  %136 = load i32, ptr %8, align 4, !tbaa !1363
  tail call fastcc void @gen_reload(ptr noundef %134, ptr noundef %86, i32 noundef %135, i32 noundef %136) #23
  br label %137

137:                                              ; preds = %18, %45, %131, %126
  %138 = phi ptr [ %86, %126 ], [ %134, %131 ], [ %21, %45 ], [ %21, %18 ]
  %139 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !527
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %178, label %141, !prof !2104

141:                                              ; preds = %137
  %142 = load i32, ptr %7, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %145, label %178, !prof !2105

145:                                              ; preds = %141
  %146 = load i32, ptr %5, align 8
  %147 = and i32 %146, 65535
  %148 = add nsw i32 %147, -7
  %149 = icmp ult i32 %148, 4
  br i1 %149, label %150, label %178, !prof !2106

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !493
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 23
  br i1 %155, label %159, label %156, !prof !2107

156:                                              ; preds = %150
  %157 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %152) #22
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159, !prof !2108

159:                                              ; preds = %150, %156
  %160 = phi ptr [ %157, %156 ], [ %152, %150 ]
  %161 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !493
  %163 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef %162) #22
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %178, !prof !2109

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !493
  %168 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %7, ptr noundef %167) #22
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %178, label %170, !prof !2110

170:                                              ; preds = %165
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %172 = icmp ult i32 %171, 53
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !1320
  %176 = tail call i32 @regno_clobbered_p(i32 noundef %171, ptr noundef nonnull %5, i32 noundef %175, i32 noundef 0) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %145, %173, %170, %165, %159, %156, %141, %137
  %179 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %180 = load i32, ptr %179, align 8, !tbaa !1364
  %181 = load i32, ptr %8, align 4, !tbaa !1363
  tail call fastcc void @gen_reload(ptr noundef %7, ptr noundef %138, i32 noundef %180, i32 noundef %181) #23
  br label %182

182:                                              ; preds = %61, %115, %173, %178
  %183 = tail call ptr @get_insns() #22
  %184 = icmp eq ptr %183, null
  br i1 %184, label %309, label %185, !prof !2111

185:                                              ; preds = %182, %305
  %186 = phi ptr [ %307, %305 ], [ %183, %182 ]
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, 65535
  %189 = add nsw i32 %188, -7
  %190 = icmp ult i32 %189, 4
  br i1 %190, label %191, label %305, !prof !2112

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !493
  tail call void @note_stores(ptr noundef %193, ptr noundef nonnull @forget_old_reloads_1, ptr noundef null) #22
  %194 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %21, ptr noundef %193) #22
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %305, label %196, !prof !2113

196:                                              ; preds = %191
  %197 = load i32, ptr %5, align 8
  %198 = and i32 %197, 65535
  %199 = add nsw i32 %198, -7
  %200 = icmp ult i32 %199, 4
  br i1 %200, label %201, label %231, !prof !2114

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %203 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %19
  %204 = load ptr, ptr %202, align 8, !tbaa !493
  %205 = load i32, ptr %204, align 8
  %206 = and i32 %205, 65535
  %207 = icmp eq i32 %206, 23
  br i1 %207, label %210, label %208, !prof !2107

208:                                              ; preds = %201
  %209 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %204) #22
  br label %210

210:                                              ; preds = %201, %208
  %211 = phi ptr [ %209, %208 ], [ %204, %201 ]
  %212 = load i32, ptr %203, align 4, !tbaa !527
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %231, !prof !2104

214:                                              ; preds = %210
  %215 = icmp eq ptr %211, null
  br i1 %215, label %231, label %216

216:                                              ; preds = %214
  %217 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !493
  %219 = icmp eq ptr %218, %21
  br i1 %219, label %220, label %231

220:                                              ; preds = %216
  %221 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  store i32 %221, ptr %203, align 4, !tbaa !527
  %222 = zext nneg i32 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !545
  %225 = or i64 %224, %223
  store i64 %225, ptr @reg_is_output_reload, align 8, !tbaa !545
  %226 = tail call ptr @find_regno_note(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %221) #22
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %220
  %229 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !545
  %230 = or i64 %229, %223
  store i64 %230, ptr @reg_reloaded_died, align 8, !tbaa !545
  br label %231

231:                                              ; preds = %196, %220, %228, %216, %214, %210
  %232 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  %233 = icmp ult i32 %232, 53
  br i1 %233, label %234, label %305, !prof !1890

234:                                              ; preds = %231
  %235 = load i32, ptr %25, align 8, !tbaa !2100
  %236 = load i32, ptr %186, align 8
  %237 = and i32 %236, 65535
  %238 = add nsw i32 %237, -7
  %239 = icmp ult i32 %238, 4
  br i1 %239, label %240, label %250, !prof !2114

240:                                              ; preds = %234
  %241 = load ptr, ptr %192, align 8, !tbaa !493
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 23
  br i1 %244, label %247, label %245, !prof !1890

245:                                              ; preds = %240
  %246 = tail call ptr @single_set_2(ptr noundef nonnull %186, ptr noundef nonnull %241) #22
  br label %247

247:                                              ; preds = %240, %245
  %248 = phi ptr [ %246, %245 ], [ %241, %240 ]
  %249 = icmp sgt i32 %235, -1
  br i1 %249, label %252, label %301, !prof !2101

250:                                              ; preds = %234
  %251 = icmp sgt i32 %235, -1
  br i1 %251, label %305, label %301, !prof !2101

252:                                              ; preds = %247
  %253 = icmp eq ptr %248, null
  br i1 %253, label %305, label %254, !prof !2115

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1, i32 0, i32 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !493
  %257 = icmp eq ptr %256, %21
  br i1 %257, label %258, label %301, !prof !2102

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !493
  %261 = zext nneg i32 %235 to i64
  %262 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %261, i32 11
  %263 = load ptr, ptr %262, align 8, !tbaa !1280
  %264 = icmp eq ptr %260, %263
  br i1 %264, label %265, label %301, !prof !2102

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %267 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %268 = load ptr, ptr %267, align 8, !tbaa !493
  %269 = load ptr, ptr %6, align 8, !tbaa !1287
  %270 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %261, i32 1
  store ptr %269, ptr %270, align 8, !tbaa !1287
  %271 = load ptr, ptr %266, align 8, !tbaa !1553
  %272 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %261, i32 9
  store ptr %271, ptr %272, align 8, !tbaa !1553
  %273 = load i32, ptr %268, align 8
  %274 = and i32 %273, 65535
  %275 = add nsw i32 %274, -7
  %276 = icmp ult i32 %275, 4
  br i1 %276, label %277, label %305, !prof !2116

277:                                              ; preds = %265
  %278 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !493
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 65535
  %282 = icmp eq i32 %281, 23
  br i1 %282, label %286, label %283, !prof !2102

283:                                              ; preds = %277
  %284 = tail call ptr @single_set_2(ptr noundef nonnull %268, ptr noundef nonnull %279) #22
  %285 = icmp eq ptr %284, null
  br i1 %285, label %305, label %286, !prof !2117

286:                                              ; preds = %277, %283
  %287 = phi ptr [ %284, %283 ], [ %279, %277 ]
  %288 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1, i32 0, i32 0, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !493
  %290 = icmp eq ptr %289, %260
  br i1 %290, label %291, label %305, !prof !2102

291:                                              ; preds = %286
  %292 = tail call fastcc i32 @rhs_regno(ptr noundef %260) #23
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !513
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %305, !prof !2102

297:                                              ; preds = %291
  %298 = shl nuw i64 1, %293
  %299 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !545
  %300 = or i64 %299, %298
  store i64 %300, ptr @reg_is_output_reload, align 8, !tbaa !545
  store ptr %268, ptr %294, align 8, !tbaa !513
  br label %305

301:                                              ; preds = %250, %247, %258, %254
  %302 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %303
  store ptr %186, ptr %304, align 8, !tbaa !513
  br label %305

305:                                              ; preds = %265, %250, %185, %191, %252, %301, %297, %291, %286, %283, %231
  %306 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %307 = load ptr, ptr %306, align 8, !tbaa !493
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %185, !prof !2118, !llvm.loop !2119

309:                                              ; preds = %305, %182
  %310 = load i32, ptr %8, align 4, !tbaa !1363
  %311 = icmp eq i32 %310, 9
  br i1 %311, label %312, label %320, !prof !2099

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %314 = load i32, ptr %313, align 8, !tbaa !1364
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [30 x ptr], ptr @other_output_reload_insns, i64 0, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !513
  %318 = tail call ptr @emit_insn(ptr noundef %317) #22
  %319 = tail call ptr @get_insns() #22
  br label %323

320:                                              ; preds = %309
  %321 = tail call ptr @get_insns() #22
  %322 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  br label %323

323:                                              ; preds = %320, %312
  %324 = phi ptr [ %322, %320 ], [ %313, %312 ]
  %325 = phi ptr [ @output_reload_insns, %320 ], [ @other_output_reload_insns, %312 ]
  %326 = phi ptr [ %321, %320 ], [ %319, %312 ]
  %327 = load i32, ptr %324, align 8, !tbaa !1364
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [30 x ptr], ptr %325, i64 0, i64 %328
  store ptr %326, ptr %329, align 8, !tbaa !513
  %330 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !527
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332, !prof !1890

332:                                              ; preds = %323
  %333 = tail call ptr @get_insns() #22
  tail call void @copy_reg_eh_region_note_forward(ptr noundef %5, ptr noundef %333, ptr noundef null) #22
  br label %334

334:                                              ; preds = %332, %323
  tail call void @end_sequence() #22
  ret void
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @elimination_target_reg_p(ptr noundef readnone %0) local_unnamed_addr #19 !prof !2120 {
  %2 = load ptr, ptr @reg_eliminate, align 8, !tbaa !513
  br label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %2, %1 ], [ %15, %13 ]
  %5 = phi i64 [ 0, %1 ], [ %14, %13 ]
  %6 = getelementptr inbounds %struct.elim_table, ptr %4, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !782
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %13, !prof !2121

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.elim_table, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !614
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3, %9
  %14 = add nuw nsw i64 %5, 64
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = icmp ult i64 %5, 192
  br i1 %16, label %3, label %17, !prof !2122, !llvm.loop !2123

17:                                               ; preds = %13, %9
  %18 = phi i8 [ 1, %9 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deallocate_reload_reg(i32 noundef %0) local_unnamed_addr #0 !prof !734 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !1280
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @true_regnum(ptr noundef nonnull %4) #22
  store ptr null, ptr %3, align 8, !tbaa !1280
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !528
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !1364
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !1363
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !1320
  tail call fastcc void @clear_reload_reg_in_use(i32 noundef %7, i32 noundef %14, i32 noundef %16, i32 noundef %18) #23
  br label %19

19:                                               ; preds = %12, %6
  %20 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %2
  store i32 -1, ptr %20, align 4, !tbaa !527
  br label %21

21:                                               ; preds = %1, %19
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
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!491}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!36 = !{ptr @init_reload, ptr @gen_rtx_REG, i64 3}
!37 = !{ptr @init_reload, ptr @gen_rtx_CONST_INT, i64 1}
!38 = !{ptr @init_reload, ptr @gen_rtx_fmt_ee_stat, i64 2}
!39 = !{ptr @init_reload, ptr @gen_rtx_MEM, i64 3}
!40 = !{ptr @init_reload, ptr @memory_address_addr_space_p, i64 4}
!41 = !{ptr @init_reload, ptr @gen_rtx_fmt_s00_stat, i64 1}
!42 = !{ptr @init_reload, ptr @plus_constant, i64 1}
!43 = !{ptr @init_reload, ptr @_obstack_begin, i64 1}
!44 = !{ptr @init_reload, ptr @bitmap_initialize_stat, i64 3}
!45 = !{ptr @new_insn_chain, ptr @_obstack_newchunk, i64 38561}
!46 = !{ptr @new_insn_chain, ptr @bitmap_initialize_stat, i64 2592956}
!47 = !{ptr @compute_use_by_pseudos, ptr @bmp_iter_set_init, i64 3150798}
!48 = !{ptr @compute_use_by_pseudos, ptr @bmp_iter_set, i64 17487476}
!49 = !{ptr @compute_use_by_pseudos, ptr @add_to_hard_reg_set, i64 4592049}
!50 = !{ptr @compute_use_by_pseudos, ptr @bmp_iter_next, i64 14336678}
!51 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 4592050}
!52 = !{ptr @reload, ptr @init_recog, i64 6652}
!53 = !{ptr @reload, ptr @_obstack_newchunk, i64 2}
!54 = !{ptr @reload, ptr @emit_note, i64 6652}
!55 = !{ptr @reload, ptr @get_max_uid, i64 6652}
!56 = !{ptr @reload, ptr @clear_secondary_mem, i64 6652}
!57 = !{ptr @reload, ptr @init_save_areas, i64 6652}
!58 = !{ptr @reload, ptr @mark_home_live, i64 1002074}
!59 = !{ptr @reload, ptr @has_nonexceptional_receiver, i64 1}
!60 = !{ptr @reload, ptr @df_set_regs_ever_live, i64 4}
!61 = !{ptr @reload, ptr @xcalloc, i64 53216}
!62 = !{ptr @reload, ptr @xmalloc, i64 26608}
!63 = !{ptr @reload, ptr @single_set_2, i64 1}
!64 = !{ptr @reload, ptr @scan_paradoxical_subregs, i64 1142723}
!65 = !{ptr @reload, ptr @find_reg_note, i64 668761}
!66 = !{ptr @reload, ptr @rhs_regno, i64 352504}
!67 = !{ptr @reload, ptr @function_invariant_p, i64 85908}
!68 = !{ptr @reload, ptr @memory_operand, i64 81476}
!69 = !{ptr @reload, ptr @copy_rtx, i64 79213}
!70 = !{ptr @reload, ptr @legitimate_constant_p, i64 2261}
!71 = !{ptr @reload, ptr @force_const_mem, i64 1}
!72 = !{ptr @reload, ptr @fprintf, i64 10}
!73 = !{ptr @reload, ptr @print_inline_rtx, i64 10}
!74 = !{ptr @reload, ptr @fputc, i64 10}
!75 = !{ptr @reload, ptr @init_elim_table, i64 6652}
!76 = !{ptr @reload, ptr @get_first_label_num, i64 6652}
!77 = !{ptr @reload, ptr @max_label_num, i64 6652}
!78 = !{ptr @reload, ptr @ira_sort_regnos_for_alter_reg, i64 6651}
!79 = !{ptr @reload, ptr @alter_reg, i64 969134}
!80 = !{ptr @reload, ptr @note_stores, i64 1142724}
!81 = !{ptr @reload, ptr @maybe_fix_stack_asms, i64 6652}
!82 = !{ptr @reload, ptr @spill_hard_reg, i64 6653}
!83 = !{ptr @reload, ptr @finish_spills, i64 14549}
!84 = !{ptr @reload, ptr @get_frame_size, i64 53535}
!85 = !{ptr @reload, ptr @set_initial_elim_offsets, i64 12641}
!86 = !{ptr @reload, ptr @set_initial_label_offsets, i64 12641}
!87 = !{ptr @reload, ptr @eliminate_regs, i64 110839}
!88 = !{ptr @reload, ptr @strict_memory_address_addr_space_p, i64 110839}
!89 = !{ptr @reload, ptr @setup_save_areas, i64 6210}
!90 = !{ptr @reload, ptr @assign_stack_local, i64 6896}
!91 = !{ptr @reload, ptr @save_call_clobbered_regs, i64 2534}
!92 = !{ptr @reload, ptr @calculate_needs_all_insns, i64 8056}
!93 = !{ptr @reload, ptr @bitmap_clear, i64 13305}
!94 = !{ptr @reload, ptr @verify_initial_elim_offsets, i64 14688}
!95 = !{ptr @reload, ptr @update_eliminables, i64 8056}
!96 = !{ptr @reload, ptr @select_reload_regs, i64 8056}
!97 = !{ptr @reload, ptr @delete_caller_save_insns, i64 851}
!98 = !{ptr @reload, ptr @obstack_free, i64 5973}
!99 = !{ptr @reload, ptr @mark_elimination, i64 13301}
!100 = !{ptr @reload, ptr @can_throw_internal, i64 2985}
!101 = !{ptr @reload, ptr @reg_set_p, i64 2984}
!102 = !{ptr @reload, ptr @delete_dead_insn, i64 2873}
!103 = !{ptr @reload, ptr @set_insn_deleted, i64 111}
!104 = !{ptr @reload, ptr @reload_as_needed, i64 6650}
!105 = !{ptr @reload, ptr @fancy_abort, i64 2}
!106 = !{ptr @reload, ptr @df_get_live_in, i64 20}
!107 = !{ptr @reload, ptr @bitmap_clear_bit, i64 20}
!108 = !{ptr @reload, ptr @gen_rtx_fmt_e_stat, i64 1}
!109 = !{ptr @reload, ptr @df_insn_rescan_debug_internal, i64 1}
!110 = !{ptr @reload, ptr @simplify_replace_rtx, i64 1}
!111 = !{ptr @reload, ptr @replace_pseudos_in, i64 92848}
!112 = !{ptr @reload, ptr @cleanup_subreg_operands, i64 1145905}
!113 = !{ptr @reload, ptr @asm_noperands, i64 1145905}
!114 = !{ptr @reload, ptr @extract_insn, i64 1}
!115 = !{ptr @reload, ptr @constrain_operands, i64 1}
!116 = !{ptr @reload, ptr @delete_insn, i64 98272}
!117 = !{ptr @reload, ptr @df_regs_ever_live_p, i64 32}
!118 = !{ptr @reload, ptr @free, i64 79820}
!119 = !{ptr @reload, ptr @VEC_rtx_gc_free, i64 6652}
!120 = !{ptr @reload, ptr @free_EXPR_LIST_list, i64 1}
!121 = !{ptr @reload, ptr @fixup_abnormal_edges, i64 6652}
!122 = !{ptr @reload, ptr @unshare_all_rtl_again, i64 6652}
!123 = !{ptr @reload, ptr @VEC_rtx_p_heap_free, i64 6652}
!124 = !{ptr @mark_home_live, ptr @mark_home_live_1, i64 263657}
!125 = !{ptr @scan_paradoxical_subregs, ptr @rhs_regno, i64 12548}
!126 = !{ptr @scan_paradoxical_subregs, ptr @mark_home_live_1, i64 3981}
!127 = !{ptr @scan_paradoxical_subregs, ptr @scan_paradoxical_subregs, i64 5068152}
!128 = !{ptr @init_elim_table, ptr @xcalloc, i64 2}
!129 = !{ptr @init_elim_table, ptr @gen_rtx_REG, i64 53218}
!130 = !{ptr @alter_reg, ptr @rhs_regno, i64 974514}
!131 = !{ptr @alter_reg, ptr @df_ref_change_reg_with_loc, i64 974514}
!132 = !{ptr @alter_reg, ptr @REG_N_REFS, i64 709804}
!133 = !{ptr @alter_reg, ptr @get_mode_alignment, i64 24933}
!134 = !{ptr @alter_reg, ptr @bitmap_set_bit, i64 24932}
!135 = !{ptr @alter_reg, ptr @ira_reuse_stack_slot, i64 24590}
!136 = !{ptr @alter_reg, ptr @assign_stack_local, i64 12155}
!137 = !{ptr @alter_reg, ptr @ira_mark_new_stack_slot, i64 11810}
!138 = !{ptr @alter_reg, ptr @adjust_address_1, i64 24933}
!139 = !{ptr @alter_reg, ptr @set_mem_attrs_for_spill, i64 24933}
!140 = !{ptr @maybe_fix_stack_asms, ptr @asm_noperands, i64 1142722}
!141 = !{ptr @maybe_fix_stack_asms, ptr @rhs_regno, i64 2}
!142 = !{ptr @maybe_fix_stack_asms, ptr @lookup_constraint, i64 3306}
!143 = !{ptr @maybe_fix_stack_asms, ptr @regclass_for_constraint, i64 3306}
!144 = !{ptr @maybe_fix_stack_asms, ptr @insn_constraint_len, i64 115717}
!145 = !{ptr @maybe_fix_stack_asms, ptr @bitmap_clear_bit, i64 20}
!146 = !{ptr @spill_hard_reg, ptr @df_set_regs_ever_live, i64 6652}
!147 = !{ptr @spill_hard_reg, ptr @end_hard_regno, i64 262663}
!148 = !{ptr @spill_hard_reg, ptr @bitmap_set_bit, i64 1}
!149 = !{ptr @finish_spills, ptr @df_regs_ever_live_p, i64 10770}
!150 = !{ptr @finish_spills, ptr @df_set_regs_ever_live, i64 10771}
!151 = !{ptr @finish_spills, ptr @bmp_iter_set_init, i64 2069167}
!152 = !{ptr @finish_spills, ptr @bmp_iter_set, i64 11910352}
!153 = !{ptr @finish_spills, ptr @fancy_abort, i64 1}
!154 = !{ptr @finish_spills, ptr @ira_mark_allocation_change, i64 3904}
!155 = !{ptr @finish_spills, ptr @bmp_iter_next, i64 9841185}
!156 = !{ptr @finish_spills, ptr @bitmap_clear_bit, i64 1}
!157 = !{ptr @finish_spills, ptr @ira_reassign_pseudos, i64 14547}
!158 = !{ptr @finish_spills, ptr @bitmap_and_compl_into, i64 2}
!159 = !{ptr @finish_spills, ptr @reg_set_to_hard_reg_set, i64 2054900}
!160 = !{ptr @finish_spills, ptr @compute_use_by_pseudos, i64 2054900}
!161 = !{ptr @finish_spills, ptr @bitmap_clear, i64 14549}
!162 = !{ptr @finish_spills, ptr @bitmap_set_bit, i64 4228}
!163 = !{ptr @finish_spills, ptr @alter_reg, i64 4228}
!164 = !{ptr @finish_spills, ptr @fprintf, i64 1}
!165 = !{ptr @set_initial_elim_offsets, ptr @ix86_initial_elimination_offset, i64 77169}
!166 = !{ptr @set_initial_label_offsets, ptr @set_label_offsets, i64 1}
!167 = !{ptr @set_initial_label_offsets, ptr @for_each_eh_label, i64 12640}
!168 = !{ptr @eliminate_regs, ptr @eliminate_regs_1, i64 113475}
!169 = !{ptr @calculate_needs_all_insns, ptr @_obstack_newchunk, i64 1}
!170 = !{ptr @calculate_needs_all_insns, ptr @set_label_offsets, i64 1697657}
!171 = !{ptr @calculate_needs_all_insns, ptr @single_set_2, i64 2}
!172 = !{ptr @calculate_needs_all_insns, ptr @rhs_regno, i64 2604420}
!173 = !{ptr @calculate_needs_all_insns, ptr @eliminate_regs_in_insn, i64 2141536}
!174 = !{ptr @calculate_needs_all_insns, ptr @find_reloads, i64 2141537}
!175 = !{ptr @calculate_needs_all_insns, ptr @rtx_equal_p, i64 2713}
!176 = !{ptr @calculate_needs_all_insns, ptr @ira_mark_memory_move_deletion, i64 90}
!177 = !{ptr @calculate_needs_all_insns, ptr @delete_insn, i64 91}
!178 = !{ptr @calculate_needs_all_insns, ptr @update_eliminable_offsets, i64 2141444}
!179 = !{ptr @calculate_needs_all_insns, ptr @obstack_free, i64 282}
!180 = !{ptr @calculate_needs_all_insns, ptr @copy_reloads, i64 1027360}
!181 = !{ptr @verify_initial_elim_offsets, ptr @ix86_initial_elimination_offset, i64 58754}
!182 = !{ptr @select_reload_regs, ptr @find_reload_regs, i64 1027393}
!183 = !{ptr @delete_caller_save_insns, ptr @delete_insn, i64 24021}
!184 = !{ptr @delete_dead_insn, ptr @prev_real_insn, i64 2876}
!185 = !{ptr @delete_dead_insn, ptr @reg_mentioned_p, i64 1474}
!186 = !{ptr @delete_dead_insn, ptr @rhs_regno, i64 58}
!187 = !{ptr @delete_dead_insn, ptr @find_regno_note, i64 58}
!188 = !{ptr @delete_dead_insn, ptr @side_effects_p, i64 1}
!189 = !{ptr @delete_dead_insn, ptr @set_insn_deleted, i64 2876}
!190 = !{ptr @reload_as_needed, ptr @xcalloc, i64 6652}
!191 = !{ptr @reload_as_needed, ptr @bitmap_initialize_stat, i64 1168985}
!192 = !{ptr @reload_as_needed, ptr @set_initial_elim_offsets, i64 6652}
!193 = !{ptr @reload_as_needed, ptr @set_offsets_for_label, i64 129923}
!194 = !{ptr @reload_as_needed, ptr @note_stores, i64 1162334}
!195 = !{ptr @reload_as_needed, ptr @eliminate_regs, i64 1}
!196 = !{ptr @reload_as_needed, ptr @eliminate_regs_in_insn, i64 52377}
!197 = !{ptr @reload_as_needed, ptr @update_eliminable_offsets, i64 52378}
!198 = !{ptr @reload_as_needed, ptr @bitmap_clear, i64 1719044}
!199 = !{ptr @reload_as_needed, ptr @find_reloads, i64 550059}
!200 = !{ptr @reload_as_needed, ptr @choose_reload_regs, i64 547686}
!201 = !{ptr @reload_as_needed, ptr @merge_assigned_reloads, i64 547686}
!202 = !{ptr @reload_as_needed, ptr @emit_reload_insns, i64 547686}
!203 = !{ptr @reload_as_needed, ptr @subst_reloads, i64 547686}
!204 = !{ptr @reload_as_needed, ptr @asm_noperands, i64 547686}
!205 = !{ptr @reload_as_needed, ptr @recog_memoized, i64 3}
!206 = !{ptr @reload_as_needed, ptr @extract_insn, i64 2}
!207 = !{ptr @reload_as_needed, ptr @constrain_operands, i64 2}
!208 = !{ptr @reload_as_needed, ptr @error_for_asm, i64 2}
!209 = !{ptr @reload_as_needed, ptr @delete_insn, i64 2}
!210 = !{ptr @reload_as_needed, ptr @forget_marked_reloads, i64 1162332}
!211 = !{ptr @reload_as_needed, ptr @free, i64 6652}
!212 = !{ptr @replace_pseudos_in, ptr @rhs_regno, i64 61507}
!213 = !{ptr @replace_pseudos_in, ptr @eliminate_regs, i64 2}
!214 = !{ptr @replace_pseudos_in, ptr @replace_pseudos_in, i64 197777}
!215 = !{ptr @VEC_rtx_gc_free, ptr @ggc_free, i64 6651}
!216 = !{ptr @fixup_abnormal_edges, ptr @ei_start_1, i64 271701}
!217 = !{ptr @fixup_abnormal_edges, ptr @ei_cond, i64 703876}
!218 = !{ptr @fixup_abnormal_edges, ptr @ei_next, i64 432175}
!219 = !{ptr @fixup_abnormal_edges, ptr @can_throw_internal, i64 2}
!220 = !{ptr @fixup_abnormal_edges, ptr @delete_insn, i64 2}
!221 = !{ptr @fixup_abnormal_edges, ptr @insert_insn_on_edge, i64 1}
!222 = !{ptr @fixup_abnormal_edges, ptr @sbitmap_alloc, i64 1}
!223 = !{ptr @fixup_abnormal_edges, ptr @sbitmap_ones, i64 1}
!224 = !{ptr @fixup_abnormal_edges, ptr @find_many_sub_basic_blocks, i64 1}
!225 = !{ptr @fixup_abnormal_edges, ptr @free, i64 2}
!226 = !{ptr @fixup_abnormal_edges, ptr @commit_edge_insertions, i64 1}
!227 = !{ptr @VEC_rtx_p_heap_free, ptr @free, i64 1}
!228 = !{ptr @ei_cond, ptr @ei_end_p, i64 703982}
!229 = !{ptr @ei_cond, ptr @ei_edge, i64 432241}
!230 = !{ptr @ei_next, ptr @ei_container, i64 864481}
!231 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 432241}
!232 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!233 = !{ptr @ei_end_p, ptr @ei_container, i64 1407963}
!234 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 703982}
!235 = !{ptr @ei_edge, ptr @ei_container, i64 864481}
!236 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 432241}
!237 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!238 = !{ptr @mark_home_live_1, ptr @end_hard_regno, i64 267286}
!239 = !{ptr @mark_home_live_1, ptr @df_set_regs_ever_live, i64 267708}
!240 = !{ptr @set_label_offsets, ptr @prev_nonnote_insn, i64 219045}
!241 = !{ptr @set_label_offsets, ptr @set_offsets_for_label, i64 110689}
!242 = !{ptr @set_label_offsets, ptr @set_label_offsets, i64 797557}
!243 = !{ptr @eliminate_regs_in_insn, ptr @recog_memoized, i64 2194253}
!244 = !{ptr @eliminate_regs_in_insn, ptr @asm_noperands, i64 2194253}
!245 = !{ptr @eliminate_regs_in_insn, ptr @single_set_2, i64 15}
!246 = !{ptr @eliminate_regs_in_insn, ptr @eliminate_regs, i64 1}
!247 = !{ptr @eliminate_regs_in_insn, ptr @rhs_regno, i64 1346730}
!248 = !{ptr @eliminate_regs_in_insn, ptr @subreg_lowpart_p, i64 15}
!249 = !{ptr @eliminate_regs_in_insn, ptr @trunc_int_for_mode, i64 8875}
!250 = !{ptr @eliminate_regs_in_insn, ptr @plus_constant, i64 6093}
!251 = !{ptr @eliminate_regs_in_insn, ptr @copy_insn, i64 98111}
!252 = !{ptr @eliminate_regs_in_insn, ptr @copy_insn_1, i64 31805}
!253 = !{ptr @eliminate_regs_in_insn, ptr @validate_change, i64 6094}
!254 = !{ptr @eliminate_regs_in_insn, ptr @gen_rtx_fmt_ee_stat, i64 1}
!255 = !{ptr @eliminate_regs_in_insn, ptr @elimination_effects, i64 2182251}
!256 = !{ptr @eliminate_regs_in_insn, ptr @extract_insn, i64 2182251}
!257 = !{ptr @eliminate_regs_in_insn, ptr @eliminate_regs_1, i64 4245539}
!258 = !{ptr @eliminate_regs_in_insn, ptr @gen_clobber, i64 1}
!259 = !{ptr @eliminate_regs_in_insn, ptr @emit_insn_after, i64 1}
!260 = !{ptr @eliminate_regs_in_insn, ptr @check_eliminable_occurrences, i64 2182251}
!261 = !{ptr @eliminate_regs_in_insn, ptr @recog, i64 140987}
!262 = !{ptr @copy_reloads, ptr @_obstack_newchunk, i64 32819}
!263 = !{ptr @recog_memoized, ptr @recog, i64 6965}
!264 = !{ptr @elimination_effects, ptr @rhs_regno, i64 5062783}
!265 = !{ptr @elimination_effects, ptr @function_invariant_p, i64 3236}
!266 = !{ptr @elimination_effects, ptr @elimination_effects, i64 9015476}
!267 = !{ptr @eliminate_regs_1, ptr @rhs_regno, i64 3138503}
!268 = !{ptr @eliminate_regs_1, ptr @plus_constant, i64 303519}
!269 = !{ptr @eliminate_regs_1, ptr @copy_rtx, i64 5835}
!270 = !{ptr @eliminate_regs_1, ptr @alter_reg, i64 105}
!271 = !{ptr @eliminate_regs_1, ptr @gen_rtx_fmt_ee_stat, i64 282744}
!272 = !{ptr @eliminate_regs_1, ptr @eliminate_regs_1, i64 1449764}
!273 = !{ptr @eliminate_regs_1, ptr @form_sum, i64 6854}
!274 = !{ptr @eliminate_regs_1, ptr @alloc_reg_note, i64 32725}
!275 = !{ptr @eliminate_regs_1, ptr @gen_rtx_fmt_e_stat, i64 3}
!276 = !{ptr @eliminate_regs_1, ptr @gen_rtx_SUBREG, i64 1}
!277 = !{ptr @eliminate_regs_1, ptr @replace_equiv_address_nv, i64 1081453}
!278 = !{ptr @eliminate_regs_1, ptr @fancy_abort, i64 3}
!279 = !{ptr @eliminate_regs_1, ptr @gen_rtvec_v, i64 10}
!280 = !{ptr @eliminate_regs_1, ptr @shallow_copy_rtx_stat, i64 4}
!281 = !{ptr @check_eliminable_occurrences, ptr @rhs_regno, i64 727825}
!282 = !{ptr @check_eliminable_occurrences, ptr @check_eliminable_occurrences, i64 7548553}
!283 = !{ptr @find_reload_regs, ptr @rhs_regno, i64 365150}
!284 = !{ptr @find_reload_regs, ptr @fprintf, i64 2}
!285 = !{ptr @find_reload_regs, ptr @spec_qsort, i64 1027520}
!286 = !{ptr @find_reload_regs, ptr @order_regs_for_reload, i64 1027520}
!287 = !{ptr @find_reload_regs, ptr @find_reg, i64 176236}
!288 = !{ptr @find_reload_regs, ptr @spill_failure, i64 1}
!289 = !{ptr @order_regs_for_reload, ptr @reg_set_to_hard_reg_set, i64 2055040}
!290 = !{ptr @order_regs_for_reload, ptr @bitmap_clear, i64 2055040}
!291 = !{ptr @order_regs_for_reload, ptr @bmp_iter_set_init, i64 2055040}
!292 = !{ptr @order_regs_for_reload, ptr @bmp_iter_set, i64 11821469}
!293 = !{ptr @order_regs_for_reload, ptr @count_pseudo, i64 9766429}
!294 = !{ptr @order_regs_for_reload, ptr @bmp_iter_next, i64 9766429}
!295 = !{ptr @find_reg, ptr @reloads_conflict, i64 19605}
!296 = !{ptr @find_reg, ptr @ix86_hard_regno_mode_ok, i64 1023388}
!297 = !{ptr @find_reg, ptr @ira_better_spill_reload_regno_p, i64 846765}
!298 = !{ptr @find_reg, ptr @fprintf, i64 1}
!299 = !{ptr @find_reg, ptr @bmp_iter_set_init, i64 352470}
!300 = !{ptr @find_reg, ptr @bmp_iter_set, i64 2502765}
!301 = !{ptr @find_reg, ptr @count_spilled_pseudo, i64 2150295}
!302 = !{ptr @find_reg, ptr @bmp_iter_next, i64 2150295}
!303 = !{ptr @find_reg, ptr @fancy_abort, i64 3}
!304 = !{ptr @count_pseudo, ptr @bitmap_bit_p, i64 19532869}
!305 = !{ptr @count_pseudo, ptr @bitmap_set_bit, i64 3057153}
!306 = !{ptr @count_pseudo, ptr @fancy_abort, i64 1}
!307 = !{ptr @reloads_conflict, ptr @reloads_unique_chain_p, i64 2739}
!308 = !{ptr @reloads_conflict, ptr @gen_reload_chain_without_interm_reg_p, i64 1}
!309 = !{ptr @reloads_conflict, ptr @fancy_abort, i64 1}
!310 = !{ptr @count_spilled_pseudo, ptr @bitmap_bit_p, i64 465815}
!311 = !{ptr @count_spilled_pseudo, ptr @bitmap_set_bit, i64 3904}
!312 = !{ptr @reloads_unique_chain_p, ptr @rtx_equal_p, i64 2735}
!313 = !{ptr @reloads_unique_chain_p, ptr @reg_mentioned_p, i64 5473}
!314 = !{ptr @forget_old_reloads_1, ptr @rhs_regno, i64 771567}
!315 = !{ptr @forget_old_reloads_1, ptr @bitmap_set_bit, i64 750154}
!316 = !{ptr @forget_old_reloads_1, ptr @bitmap_bit_p, i64 21965}
!317 = !{ptr @choose_reload_regs, ptr @rhs_regno, i64 684527}
!318 = !{ptr @choose_reload_regs, ptr @fancy_abort, i64 4}
!319 = !{ptr @choose_reload_regs, ptr @spec_qsort, i64 69672}
!320 = !{ptr @choose_reload_regs, ptr @choose_reload_regs_init, i64 547880}
!321 = !{ptr @choose_reload_regs, ptr @rtx_equal_p, i64 644058}
!322 = !{ptr @choose_reload_regs, ptr @true_regnum, i64 222231}
!323 = !{ptr @choose_reload_regs, ptr @subreg_regno, i64 5}
!324 = !{ptr @choose_reload_regs, ptr @ix86_cannot_change_mode_class, i64 89032}
!325 = !{ptr @choose_reload_regs, ptr @subreg_regno_offset, i64 89031}
!326 = !{ptr @choose_reload_regs, ptr @smallest_mode_for_size, i64 46}
!327 = !{ptr @choose_reload_regs, ptr @ix86_hard_regno_mode_ok, i64 22348}
!328 = !{ptr @choose_reload_regs, ptr @ix86_register_move_cost, i64 118}
!329 = !{ptr @choose_reload_regs, ptr @ix86_memory_move_cost, i64 118}
!330 = !{ptr @choose_reload_regs, ptr @secondary_reload_class, i64 117}
!331 = !{ptr @choose_reload_regs, ptr @ix86_secondary_memory_needed, i64 116}
!332 = !{ptr @choose_reload_regs, ptr @free_for_value_p, i64 81739}
!333 = !{ptr @choose_reload_regs, ptr @gen_rtx_REG, i64 229}
!334 = !{ptr @choose_reload_regs, ptr @reg_overlap_mentioned_for_reload_p, i64 35}
!335 = !{ptr @choose_reload_regs, ptr @mark_reload_reg_in_use, i64 19147}
!336 = !{ptr @choose_reload_regs, ptr @reg_classes_intersect_p, i64 45}
!337 = !{ptr @choose_reload_regs, ptr @single_set_2, i64 1}
!338 = !{ptr @choose_reload_regs, ptr @find_equiv_reg, i64 362192}
!339 = !{ptr @choose_reload_regs, ptr @regno_clobbered_p, i64 1493}
!340 = !{ptr @choose_reload_regs, ptr @allocate_reload_reg, i64 69436}
!341 = !{ptr @choose_reload_regs, ptr @remove_address_replacements, i64 37038}
!342 = !{ptr @choose_reload_regs, ptr @clear_reload_reg_in_use, i64 121922}
!343 = !{ptr @choose_reload_regs, ptr @bitmap_set_bit, i64 28520}
!344 = !{ptr @merge_assigned_reloads, ptr @reg_set_p, i64 70107}
!345 = !{ptr @merge_assigned_reloads, ptr @reg_overlap_mentioned_p, i64 14615}
!346 = !{ptr @merge_assigned_reloads, ptr @rtx_equal_p, i64 14489}
!347 = !{ptr @merge_assigned_reloads, ptr @fancy_abort, i64 1}
!348 = !{ptr @merge_assigned_reloads, ptr @transfer_replacements, i64 46}
!349 = !{ptr @merge_assigned_reloads, ptr @reg_overlap_mentioned_for_reload_p, i64 76}
!350 = !{ptr @emit_reload_insns, ptr @fprintf, i64 1}
!351 = !{ptr @emit_reload_insns, ptr @debug_reload_to_stream, i64 1}
!352 = !{ptr @emit_reload_insns, ptr @rhs_regno, i64 691095}
!353 = !{ptr @emit_reload_insns, ptr @end_hard_regno, i64 198457}
!354 = !{ptr @emit_reload_insns, ptr @do_input_reload, i64 626653}
!355 = !{ptr @emit_reload_insns, ptr @do_output_reload, i64 626653}
!356 = !{ptr @emit_reload_insns, ptr @emit_insn_before, i64 5551589}
!357 = !{ptr @emit_reload_insns, ptr @emit_insn_after, i64 4480684}
!358 = !{ptr @emit_reload_insns, ptr @bitmap_bit_p, i64 148757}
!359 = !{ptr @emit_reload_insns, ptr @reload_reg_reaches_end_p, i64 99270}
!360 = !{ptr @emit_reload_insns, ptr @reload_regs_reach_end_p, i64 93309}
!361 = !{ptr @emit_reload_insns, ptr @inherit_piecemeal_p, i64 9759}
!362 = !{ptr @emit_reload_insns, ptr @reg_set_p, i64 64855}
!363 = !{ptr @emit_reload_insns, ptr @forget_old_reloads_1, i64 1}
!364 = !{ptr @emit_reload_insns, ptr @single_set_2, i64 1}
!365 = !{ptr @emit_reload_insns, ptr @fancy_abort, i64 1}
!366 = !{ptr @emit_reload_insns, ptr @find_regno_note, i64 12358}
!367 = !{ptr @emit_reload_insns, ptr @bitmap_set_bit, i64 10357}
!368 = !{ptr @forget_marked_reloads, ptr @bmp_iter_set_init, i64 1162509}
!369 = !{ptr @forget_marked_reloads, ptr @bmp_iter_set, i64 1912664}
!370 = !{ptr @forget_marked_reloads, ptr @bitmap_bit_p, i64 332079}
!371 = !{ptr @forget_marked_reloads, ptr @bmp_iter_next, i64 750155}
!372 = !{ptr @choose_reload_regs_init, ptr @reg_set_to_hard_reg_set, i64 1095758}
!373 = !{ptr @choose_reload_regs_init, ptr @compute_use_by_pseudos, i64 1095758}
!374 = !{ptr @choose_reload_regs_init, ptr @rhs_regno, i64 187159}
!375 = !{ptr @choose_reload_regs_init, ptr @mark_reload_reg_in_use, i64 187159}
!376 = !{ptr @free_for_value_p, ptr @reload_reg_free_for_value_p, i64 211876}
!377 = !{ptr @allocate_reload_reg, ptr @reload_reg_free_p, i64 774793}
!378 = !{ptr @allocate_reload_reg, ptr @free_for_value_p, i64 230310}
!379 = !{ptr @allocate_reload_reg, ptr @ix86_hard_regno_mode_ok, i64 485825}
!380 = !{ptr @allocate_reload_reg, ptr @set_reload_reg, i64 69402}
!381 = !{ptr @set_reload_reg, ptr @gen_rtx_REG, i64 9964}
!382 = !{ptr @set_reload_reg, ptr @true_regnum, i64 69346}
!383 = !{ptr @set_reload_reg, ptr @ix86_hard_regno_mode_ok, i64 140833}
!384 = !{ptr @set_reload_reg, ptr @mark_reload_reg_in_use, i64 69343}
!385 = !{ptr @clear_reload_reg_in_use, ptr @fancy_abort, i64 1}
!386 = !{ptr @clear_reload_reg_in_use, ptr @true_regnum, i64 19}
!387 = !{ptr @clear_reload_reg_in_use, ptr @end_hard_regno, i64 19}
!388 = !{ptr @reload_reg_free_for_value_p, ptr @true_regnum, i64 89442}
!389 = !{ptr @reload_reg_free_for_value_p, ptr @rhs_regno, i64 82913}
!390 = !{ptr @reload_reg_free_for_value_p, ptr @rtx_equal_p, i64 7804}
!391 = !{ptr @reload_reg_free_for_value_p, ptr @earlyclobber_operand_p, i64 7}
!392 = !{ptr @reload_reg_free_p, ptr @fancy_abort, i64 1}
!393 = !{ptr @do_input_reload, ptr @reload_adjust_reg_for_mode, i64 142}
!394 = !{ptr @do_input_reload, ptr @rtx_equal_p, i64 339661}
!395 = !{ptr @do_input_reload, ptr @emit_input_reload_insns, i64 61803}
!396 = !{ptr @do_input_reload, ptr @rhs_regno, i64 30841}
!397 = !{ptr @do_input_reload, ptr @dead_or_set_p, i64 11554}
!398 = !{ptr @do_input_reload, ptr @delete_output_reload, i64 2372}
!399 = !{ptr @do_output_reload, ptr @asm_noperands, i64 1}
!400 = !{ptr @do_output_reload, ptr @error_for_asm, i64 1}
!401 = !{ptr @do_output_reload, ptr @rhs_regno, i64 54407}
!402 = !{ptr @do_output_reload, ptr @gen_rtx_REG, i64 1}
!403 = !{ptr @do_output_reload, ptr @reload_adjust_reg_for_mode, i64 9}
!404 = !{ptr @do_output_reload, ptr @rtx_equal_p, i64 78947}
!405 = !{ptr @do_output_reload, ptr @delete_output_reload, i64 278}
!406 = !{ptr @do_output_reload, ptr @find_reg_note, i64 22392}
!407 = !{ptr @do_output_reload, ptr @gen_lowpart_common, i64 1}
!408 = !{ptr @do_output_reload, ptr @fancy_abort, i64 1}
!409 = !{ptr @do_output_reload, ptr @emit_output_reload_insns, i64 21957}
!410 = !{ptr @reload_reg_reaches_end_p, ptr @fancy_abort, i64 1}
!411 = !{ptr @reload_regs_reach_end_p, ptr @reload_reg_reaches_end_p, i64 97010}
!412 = !{ptr @inherit_piecemeal_p, ptr @ix86_cannot_change_mode_class, i64 19500}
!413 = !{ptr @emit_input_reload_insns, ptr @rhs_regno, i64 189311}
!414 = !{ptr @emit_input_reload_insns, ptr @dead_or_set_p, i64 52301}
!415 = !{ptr @emit_input_reload_insns, ptr @rtx_equal_p, i64 62135}
!416 = !{ptr @emit_input_reload_insns, ptr @delete_output_reload, i64 22}
!417 = !{ptr @emit_input_reload_insns, ptr @gen_lowpart_SUBREG, i64 1}
!418 = !{ptr @emit_input_reload_insns, ptr @fancy_abort, i64 2}
!419 = !{ptr @emit_input_reload_insns, ptr @push_to_sequence, i64 61803}
!420 = !{ptr @emit_input_reload_insns, ptr @inc_for_reload, i64 1}
!421 = !{ptr @emit_input_reload_insns, ptr @conflicts_with_override, i64 15212}
!422 = !{ptr @emit_input_reload_insns, ptr @free_for_value_p, i64 15211}
!423 = !{ptr @emit_input_reload_insns, ptr @asm_noperands, i64 15}
!424 = !{ptr @emit_input_reload_insns, ptr @count_occurrences, i64 14}
!425 = !{ptr @emit_input_reload_insns, ptr @extract_insn, i64 11}
!426 = !{ptr @emit_input_reload_insns, ptr @constrain_operands, i64 11}
!427 = !{ptr @emit_input_reload_insns, ptr @REG_N_SETS, i64 9}
!428 = !{ptr @emit_input_reload_insns, ptr @ira_mark_allocation_change, i64 8}
!429 = !{ptr @emit_input_reload_insns, ptr @alter_reg, i64 8}
!430 = !{ptr @emit_input_reload_insns, ptr @replace_rtx, i64 1}
!431 = !{ptr @emit_input_reload_insns, ptr @ix86_preferred_reload_class, i64 856}
!432 = !{ptr @emit_input_reload_insns, ptr @gen_reload, i64 61790}
!433 = !{ptr @emit_input_reload_insns, ptr @get_insns, i64 61804}
!434 = !{ptr @emit_input_reload_insns, ptr @copy_reg_eh_region_note_forward, i64 1}
!435 = !{ptr @emit_input_reload_insns, ptr @end_sequence, i64 61803}
!436 = !{ptr @delete_output_reload, ptr @rhs_regno, i64 10394}
!437 = !{ptr @delete_output_reload, ptr @rtx_equal_p, i64 3933}
!438 = !{ptr @delete_output_reload, ptr @count_occurrences, i64 5303}
!439 = !{ptr @delete_output_reload, ptr @eliminate_regs, i64 2637}
!440 = !{ptr @delete_output_reload, ptr @fancy_abort, i64 1}
!441 = !{ptr @delete_output_reload, ptr @reg_mentioned_p, i64 8982}
!442 = !{ptr @delete_output_reload, ptr @REG_N_SETS, i64 1137}
!443 = !{ptr @delete_output_reload, ptr @find_regno_note, i64 972}
!444 = !{ptr @delete_output_reload, ptr @single_set_2, i64 3}
!445 = !{ptr @delete_output_reload, ptr @delete_address_reloads, i64 2202}
!446 = !{ptr @delete_output_reload, ptr @delete_insn, i64 2202}
!447 = !{ptr @delete_output_reload, ptr @ira_mark_allocation_change, i64 969}
!448 = !{ptr @delete_output_reload, ptr @alter_reg, i64 970}
!449 = !{ptr @conflicts_with_override, ptr @reg_overlap_mentioned_p, i64 43}
!450 = !{ptr @gen_reload, ptr @get_last_insn, i64 83755}
!451 = !{ptr @gen_reload, ptr @gen_lowpart_common, i64 2}
!452 = !{ptr @gen_reload, ptr @find_replacement, i64 2113}
!453 = !{ptr @gen_reload, ptr @rhs_regno, i64 2}
!454 = !{ptr @gen_reload, ptr @gen_rtx_fmt_ee_stat, i64 1060}
!455 = !{ptr @gen_reload, ptr @emit_insn_if_valid_for_reload, i64 1058}
!456 = !{ptr @gen_reload, ptr @gen_reload, i64 3}
!457 = !{ptr @gen_reload, ptr @rtx_equal_p, i64 1}
!458 = !{ptr @gen_reload, ptr @gen_add2_insn, i64 1}
!459 = !{ptr @gen_reload, ptr @set_unique_reg_note, i64 1}
!460 = !{ptr @gen_reload, ptr @reg_or_subregno, i64 121710}
!461 = !{ptr @gen_reload, ptr @ix86_secondary_memory_needed, i64 7114}
!462 = !{ptr @gen_reload, ptr @get_secondary_mem, i64 1}
!463 = !{ptr @gen_reload, ptr @gen_rtx_fmt_e_stat, i64 1}
!464 = !{ptr @gen_reload, ptr @gen_move_insn, i64 82696}
!465 = !{ptr @gen_reload, ptr @emit_insn, i64 82697}
!466 = !{ptr @gen_reload, ptr @mark_jump_label, i64 82696}
!467 = !{ptr @gen_reload, ptr @get_insns, i64 81491}
!468 = !{ptr @emit_insn_if_valid_for_reload, ptr @get_last_insn, i64 1056}
!469 = !{ptr @emit_insn_if_valid_for_reload, ptr @emit_insn, i64 1056}
!470 = !{ptr @emit_insn_if_valid_for_reload, ptr @recog_memoized, i64 1056}
!471 = !{ptr @emit_insn_if_valid_for_reload, ptr @extract_insn, i64 1055}
!472 = !{ptr @emit_insn_if_valid_for_reload, ptr @constrain_operands, i64 1055}
!473 = !{ptr @emit_insn_if_valid_for_reload, ptr @delete_insns_since, i64 2}
!474 = !{ptr @delete_address_reloads, ptr @single_set_2, i64 6}
!475 = !{ptr @delete_address_reloads, ptr @delete_address_reloads_1, i64 1}
!476 = !{ptr @delete_address_reloads, ptr @rtx_equal_p, i64 1}
!477 = !{ptr @emit_output_reload_insns, ptr @start_sequence, i64 4400}
!478 = !{ptr @emit_output_reload_insns, ptr @push_to_sequence, i64 17560}
!479 = !{ptr @emit_output_reload_insns, ptr @rhs_regno, i64 43920}
!480 = !{ptr @emit_output_reload_insns, ptr @secondary_reload_class, i64 5}
!481 = !{ptr @emit_output_reload_insns, ptr @emit_insn, i64 4402}
!482 = !{ptr @emit_output_reload_insns, ptr @reload_adjust_reg_for_mode, i64 1}
!483 = !{ptr @emit_output_reload_insns, ptr @gen_reload, i64 21962}
!484 = !{ptr @emit_output_reload_insns, ptr @single_set_2, i64 3}
!485 = !{ptr @emit_output_reload_insns, ptr @rtx_equal_p, i64 21927}
!486 = !{ptr @emit_output_reload_insns, ptr @reg_mentioned_p, i64 22042}
!487 = !{ptr @emit_output_reload_insns, ptr @get_insns, i64 43921}
!488 = !{ptr @emit_output_reload_insns, ptr @note_stores, i64 21964}
!489 = !{ptr @emit_output_reload_insns, ptr @copy_reg_eh_region_note_forward, i64 1}
!490 = !{ptr @emit_output_reload_insns, ptr @end_sequence, i64 21960}
!491 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!492 = !{!"function_entry_count", i64 1}
!493 = !{!494, !494, i64 0}
!494 = !{!"omnipotent char", !495, i64 0}
!495 = !{!"Simple C/C++ TBAA"}
!496 = !{!"branch_weights", i32 1, i32 1}
!497 = !{!"branch_weights", i32 1, i32 0}
!498 = distinct !{!498, !499}
!499 = !{!"llvm.loop.mustprogress"}
!500 = distinct !{!500, !499}
!501 = !{!"branch_weights", i32 1, i32 2}
!502 = !{!503, !504, i64 40}
!503 = !{!"obstack", !504, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !504, i64 40, !506, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !506, i64 80, !506, i64 80, !506, i64 80}
!504 = !{!"long", !494, i64 0}
!505 = !{!"any pointer", !494, i64 0}
!506 = !{!"int", !494, i64 0}
!507 = !{!503, !505, i64 32}
!508 = !{!503, !505, i64 24}
!509 = !{!503, !505, i64 16}
!510 = !{!"branch_weights", i32 2, i32 1}
!511 = !{!503, !506, i64 48}
!512 = !{!503, !505, i64 8}
!513 = !{!505, !505, i64 0}
!514 = !{!"function_entry_count", i64 3762122}
!515 = !{!"reload1.c:bitmap_initialize_stat"}
!516 = !{!517, !505, i64 24}
!517 = !{!"bitmap_head_def", !505, i64 0, !505, i64 8, !506, i64 16, !505, i64 24}
!518 = !{!"function_entry_count", i64 1319575}
!519 = !{!"branch_weights", i32 1296480, i32 23097}
!520 = !{!"branch_weights", i32 38561, i32 1257920}
!521 = !{!"branch_weights", i32 1, i32 1296480}
!522 = !{!523, !505, i64 0}
!523 = !{!"insn_chain", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !506, i64 32, !506, i64 36, !506, i64 36, !506, i64 36, !506, i64 36, !517, i64 40, !517, i64 72, !505, i64 104, !506, i64 112, !504, i64 120}
!524 = !{!"function_entry_count", i64 3150798}
!525 = !{i8 0, i8 2}
!526 = !{!"branch_weights", i32 1, i32 3150798}
!527 = !{!506, !506, i64 0}
!528 = !{!529, !529, i64 0}
!529 = !{!"short", !494, i64 0}
!530 = !{!"branch_weights", i32 9744633, i32 4592051}
!531 = !{!"branch_weights", i32 1, i32 9744633}
!532 = !{!"branch_weights", i32 3150798, i32 11185885}
!533 = distinct !{!533, !499}
!534 = !{!"function_entry_count", i64 8790408}
!535 = !{!"reload1.c:bmp_iter_set_init"}
!536 = !{!517, !505, i64 0}
!537 = !{!538, !505, i64 0}
!538 = !{!"", !505, i64 0, !505, i64 8, !506, i64 16, !504, i64 24}
!539 = !{!538, !505, i64 8}
!540 = !{!"branch_weights", i32 1666410, i32 7124000}
!541 = !{!542, !506, i64 16}
!542 = !{!"bitmap_element_def", !505, i64 0, !505, i64 8, !506, i64 16, !494, i64 24}
!543 = !{!"branch_weights", i32 6907424, i32 1882986}
!544 = !{!538, !506, i64 16}
!545 = !{!504, !504, i64 0}
!546 = !{!538, !504, i64 24}
!547 = !{!"function_entry_count", i64 45637200}
!548 = !{!"reload1.c:bmp_iter_set"}
!549 = !{!"branch_weights", i32 23881452, i32 21755750}
!550 = !{!"branch_weights", i32 36846792, i32 1}
!551 = !{!"branch_weights", i32 486869781, i32 36846792}
!552 = distinct !{!552, !499}
!553 = !{!"branch_weights", i32 1, i32 19235361}
!554 = !{!"branch_weights", i32 14589272, i32 15091044}
!555 = !{!"branch_weights", i32 19235361, i32 10444954}
!556 = distinct !{!556, !499}
!557 = !{!542, !505, i64 0}
!558 = !{!"branch_weights", i32 8790409, i32 10444954}
!559 = !{!"function_entry_count", i64 4592050}
!560 = !{!"reload1.c:add_to_hard_reg_set"}
!561 = !{!"branch_weights", i32 2712, i32 4592051}
!562 = distinct !{!562, !499}
!563 = !{!"function_entry_count", i64 36846792}
!564 = !{!"reload1.c:bmp_iter_next"}
!565 = !{!"function_entry_count", i64 5320497}
!566 = !{!"reload1.c:end_hard_regno"}
!567 = !{!"function_entry_count", i64 6652}
!568 = !{!"branch_weights", i32 1, i32 6653}
!569 = !{!"branch_weights", i32 6653, i32 1}
!570 = !{!"branch_weights", i32 6652, i32 1}
!571 = !{!"branch_weights", i32 995573, i32 6652}
!572 = distinct !{!572, !499}
!573 = !{!574, !494, i64 466}
!574 = !{!"rtl_data", !575, i64 0, !576, i64 40, !577, i64 96, !578, i64 112, !580, i64 208, !581, i64 248, !506, i64 312, !505, i64 320, !505, i64 328, !505, i64 336, !505, i64 344, !505, i64 352, !505, i64 360, !505, i64 368, !505, i64 376, !505, i64 384, !505, i64 392, !504, i64 400, !505, i64 408, !505, i64 416, !505, i64 424, !506, i64 432, !506, i64 436, !506, i64 440, !506, i64 444, !506, i64 448, !506, i64 452, !505, i64 456, !494, i64 464, !494, i64 465, !494, i64 466, !494, i64 467, !494, i64 468, !494, i64 469, !494, i64 470, !494, i64 471, !494, i64 472, !494, i64 473, !494, i64 474, !494, i64 475, !494, i64 476, !494, i64 477, !494, i64 478, !494, i64 479, !494, i64 480, !494, i64 481, !494, i64 482, !494, i64 483, !494, i64 484, !494, i64 485}
!575 = !{!"expr_status", !506, i64 0, !506, i64 4, !506, i64 8, !505, i64 16, !505, i64 24, !505, i64 32}
!576 = !{!"emit_status", !506, i64 0, !506, i64 4, !505, i64 8, !505, i64 16, !505, i64 24, !506, i64 32, !506, i64 36, !506, i64 40, !506, i64 44, !505, i64 48}
!577 = !{!"varasm_status", !505, i64 0, !506, i64 8}
!578 = !{!"incoming_args", !506, i64 0, !506, i64 4, !506, i64 8, !505, i64 16, !579, i64 24, !505, i64 88}
!579 = !{!"ix86_args", !506, i64 0, !506, i64 4, !506, i64 8, !506, i64 12, !506, i64 16, !506, i64 20, !506, i64 24, !506, i64 28, !506, i64 32, !506, i64 36, !506, i64 40, !506, i64 44, !506, i64 48, !506, i64 52, !506, i64 56, !506, i64 60}
!580 = !{!"function_subsections", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32}
!581 = !{!"rtl_eh", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !494, i64 48}
!582 = !{!"branch_weights", i32 2147362611, i32 121037}
!583 = distinct !{!583, !499}
!584 = !{!"branch_weights", i32 1, i32 6652}
!585 = !{!"branch_weights", i32 -543375892, i32 1795950729}
!586 = !{!"branch_weights", i32 1034426, i32 1}
!587 = !{!"branch_weights", i32 4336, i32 2147479312}
!588 = !{!"branch_weights", i32 3824, i32 1139071}
!589 = !{!"branch_weights", i32 3824, i32 1}
!590 = !{!"branch_weights", i32 1957499370, i32 -205925295}
!591 = !{!"branch_weights", i32 582316, i32 1107704}
!592 = !{!"branch_weights", i32 665040, i32 442665}
!593 = !{!"branch_weights", i32 583551, i32 81490}
!594 = !{!"branch_weights", i32 1, i32 81490}
!595 = !{i32 0, i32 2}
!596 = !{!"branch_weights", i32 4432, i32 361245171}
!597 = !{!"branch_weights", i32 4432, i32 77059}
!598 = !{!"branch_weights", i32 1, i32 4432}
!599 = !{!"branch_weights", i32 2169, i32 2264}
!600 = !{!"branch_weights", i32 4529, i32 5125696}
!601 = !{!"branch_weights", i32 1, i32 2264}
!602 = !{!"branch_weights", i32 6652, i32 1683367}
!603 = distinct !{!603, !499}
!604 = distinct !{!604, !499}
!605 = !{!"branch_weights", i32 962313, i32 6652}
!606 = distinct !{!606, !499}
!607 = !{!"branch_weights", i32 1690019, i32 6653}
!608 = !{!"branch_weights", i32 6652, i32 962313}
!609 = distinct !{!609, !499}
!610 = !{!"branch_weights", i32 1683367, i32 6652}
!611 = distinct !{!611, !499}
!612 = !{!613, !506, i64 0}
!613 = !{!"elim_table", !506, i64 0, !506, i64 4, !504, i64 8, !506, i64 16, !506, i64 20, !504, i64 24, !504, i64 32, !506, i64 40, !505, i64 48, !505, i64 56}
!614 = !{!613, !506, i64 16}
!615 = !{!"branch_weights", i32 19957, i32 6653}
!616 = !{!"branch_weights", i32 13305, i32 13305}
!617 = distinct !{!617, !499}
!618 = !{!"branch_weights", i32 1, i32 13305}
!619 = !{!"branch_weights", i32 6653, i32 6652}
!620 = distinct !{!620, !499}
!621 = !{!574, !494, i64 477}
!622 = !{!"branch_weights", i32 12640, i32 1}
!623 = !{!"branch_weights", i32 2982731, i32 979334}
!624 = !{!"branch_weights", i32 2871895, i32 110837}
!625 = !{!"branch_weights", i32 78, i32 110760}
!626 = !{!627, !494, i64 32}
!627 = !{!"mem_attrs", !505, i64 0, !505, i64 8, !505, i64 16, !506, i64 24, !506, i64 28, !494, i64 32}
!628 = !{!"branch_weights", i32 318, i32 110520}
!629 = !{!"branch_weights", i32 1, i32 318}
!630 = !{!"branch_weights", i32 7092902, i32 360710144, i32 -1986804391}
!631 = !{!"branch_weights", i32 1, i32 43}
!632 = !{!"branch_weights", i32 224, i32 53}
!633 = !{!"branch_weights", i32 3, i32 222}
!634 = !{!"branch_weights", i32 1, i32 3}
!635 = !{!"branch_weights", i32 3949424, i32 12640}
!636 = distinct !{!636, !499}
!637 = !{!"branch_weights", i32 6432, i32 6210}
!638 = !{!"branch_weights", i32 10799, i32 1843}
!639 = !{!"branch_weights", i32 47582404, i32 26926796}
!640 = !{!"branch_weights", i32 4155, i32 2744}
!641 = !{!"branch_weights", i32 5523, i32 2534}
!642 = !{!"branch_weights", i32 1, i32 2534}
!643 = !{!"branch_weights", i32 2534, i32 1}
!644 = !{!"branch_weights", i32 1, i32 8056}
!645 = !{!"branch_weights", i32 8039, i32 18}
!646 = !{!"branch_weights", i32 1, i32 8039}
!647 = !{!"branch_weights", i32 426916, i32 1}
!648 = !{!"branch_weights", i32 8056, i32 418860}
!649 = distinct !{!649, !499}
!650 = !{!"branch_weights", i32 1263839, i32 25281}
!651 = !{!"branch_weights", i32 6653, i32 1404}
!652 = !{!"branch_weights", i32 553, i32 852}
!653 = !{!"branch_weights", i32 681, i32 724}
!654 = !{!"branch_weights", i32 116, i32 566}
!655 = !{!613, !506, i64 4}
!656 = !{!"branch_weights", i32 19957, i32 6652}
!657 = distinct !{!657, !499}
!658 = !{!"branch_weights", i32 742471, i32 259755}
!659 = !{!"branch_weights", i32 739485, i32 2987}
!660 = !{!"branch_weights", i32 1, i32 2987}
!661 = !{!"branch_weights", i32 2987, i32 1}
!662 = !{!"branch_weights", i32 111, i32 2877}
!663 = !{!"branch_weights", i32 2987, i32 0}
!664 = distinct !{!664, !499}
!665 = distinct !{!665, !499}
!666 = !{!"branch_weights", i32 170317119, i32 25281}
!667 = !{!668, !505, i64 8}
!668 = !{!"function", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !505, i64 80, !505, i64 88, !505, i64 96, !506, i64 104, !506, i64 108, !506, i64 112, !506, i64 116, !506, i64 120, !506, i64 124, !505, i64 128, !506, i64 136, !506, i64 137, !506, i64 138, !506, i64 138, !506, i64 138, !506, i64 138, !506, i64 138, !506, i64 138, !506, i64 138, !506, i64 139, !506, i64 139, !506, i64 139, !506, i64 139, !506, i64 139, !506, i64 139, !506, i64 139}
!669 = !{!670, !505, i64 0}
!670 = !{!"control_flow_graph", !505, i64 0, !505, i64 8, !505, i64 16, !506, i64 24, !506, i64 28, !506, i64 32, !505, i64 40, !506, i64 48, !494, i64 52, !494, i64 60, !506, i64 68, !506, i64 72}
!671 = !{!672, !505, i64 56}
!672 = !{!"basic_block_def", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !494, i64 32, !505, i64 48, !505, i64 56, !494, i64 64, !504, i64 72, !506, i64 80, !506, i64 84, !506, i64 88, !506, i64 92, !506, i64 96}
!673 = !{!670, !505, i64 8}
!674 = distinct !{!674, !499}
!675 = !{!"branch_weights", i32 975356, i32 26870}
!676 = !{!"branch_weights", i32 1002225, i32 1}
!677 = !{!"branch_weights", i32 77805, i32 2147405843}
!678 = !{!"branch_weights", i32 25504, i32 1367}
!679 = !{!"branch_weights", i32 1, i32 25504}
!680 = !{!"branch_weights", i32 1492063, i32 2145991585}
!681 = !{!682, !505, i64 1040}
!682 = !{!"gcc_target", !683, i64 0, !685, i64 368, !686, i64 664, !506, i64 744, !505, i64 752, !505, i64 760, !505, i64 768, !505, i64 776, !505, i64 784, !505, i64 792, !505, i64 800, !505, i64 808, !505, i64 816, !505, i64 824, !505, i64 832, !505, i64 840, !505, i64 848, !505, i64 856, !505, i64 864, !505, i64 872, !505, i64 880, !505, i64 888, !505, i64 896, !505, i64 904, !505, i64 912, !505, i64 920, !505, i64 928, !505, i64 936, !505, i64 944, !505, i64 952, !505, i64 960, !505, i64 968, !505, i64 976, !505, i64 984, !505, i64 992, !505, i64 1000, !505, i64 1008, !505, i64 1016, !505, i64 1024, !505, i64 1032, !505, i64 1040, !505, i64 1048, !505, i64 1056, !504, i64 1064, !504, i64 1072, !505, i64 1080, !505, i64 1088, !505, i64 1096, !505, i64 1104, !505, i64 1112, !505, i64 1120, !505, i64 1128, !505, i64 1136, !505, i64 1144, !505, i64 1152, !505, i64 1160, !505, i64 1168, !687, i64 1176, !505, i64 1232, !505, i64 1240, !505, i64 1248, !505, i64 1256, !505, i64 1264, !505, i64 1272, !505, i64 1280, !505, i64 1288, !505, i64 1296, !505, i64 1304, !505, i64 1312, !505, i64 1320, !505, i64 1328, !505, i64 1336, !505, i64 1344, !505, i64 1352, !505, i64 1360, !505, i64 1368, !505, i64 1376, !505, i64 1384, !505, i64 1392, !505, i64 1400, !505, i64 1408, !505, i64 1416, !505, i64 1424, !505, i64 1432, !505, i64 1440, !505, i64 1448, !505, i64 1456, !504, i64 1464, !688, i64 1472, !505, i64 1664, !505, i64 1672, !505, i64 1680, !505, i64 1688, !505, i64 1696, !505, i64 1704, !505, i64 1712, !505, i64 1720, !505, i64 1728, !505, i64 1736, !505, i64 1744, !505, i64 1752, !505, i64 1760, !505, i64 1768, !505, i64 1776, !689, i64 1784, !690, i64 1792, !691, i64 1896, !692, i64 1968, !505, i64 2016, !494, i64 2024, !494, i64 2025, !494, i64 2026, !494, i64 2027, !494, i64 2028, !494, i64 2029, !494, i64 2030, !494, i64 2031, !494, i64 2032, !494, i64 2033, !494, i64 2034, !494, i64 2035}
!683 = !{!"asm_out", !505, i64 0, !505, i64 8, !505, i64 16, !684, i64 24, !684, i64 56, !505, i64 88, !505, i64 96, !505, i64 104, !505, i64 112, !505, i64 120, !505, i64 128, !505, i64 136, !505, i64 144, !505, i64 152, !505, i64 160, !505, i64 168, !505, i64 176, !505, i64 184, !505, i64 192, !505, i64 200, !505, i64 208, !505, i64 216, !505, i64 224, !505, i64 232, !505, i64 240, !505, i64 248, !505, i64 256, !505, i64 264, !505, i64 272, !505, i64 280, !505, i64 288, !505, i64 296, !505, i64 304, !505, i64 312, !505, i64 320, !505, i64 328, !505, i64 336, !505, i64 344, !505, i64 352, !505, i64 360}
!684 = !{!"asm_int_op", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24}
!685 = !{!"sched", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !505, i64 80, !505, i64 88, !505, i64 96, !505, i64 104, !505, i64 112, !505, i64 120, !505, i64 128, !505, i64 136, !505, i64 144, !505, i64 152, !505, i64 160, !505, i64 168, !505, i64 176, !505, i64 184, !505, i64 192, !505, i64 200, !505, i64 208, !505, i64 216, !505, i64 224, !505, i64 232, !505, i64 240, !505, i64 248, !505, i64 256, !505, i64 264, !505, i64 272, !505, i64 280, !505, i64 288}
!686 = !{!"vectorize", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72}
!687 = !{!"addr_space", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48}
!688 = !{!"calls", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !505, i64 80, !505, i64 88, !505, i64 96, !505, i64 104, !505, i64 112, !505, i64 120, !505, i64 128, !505, i64 136, !505, i64 144, !505, i64 152, !505, i64 160, !505, i64 168, !505, i64 176, !505, i64 184}
!689 = !{!"c", !505, i64 0}
!690 = !{!"cxx", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !505, i64 80, !505, i64 88, !505, i64 96}
!691 = !{!"emutls", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 48, !505, i64 56, !494, i64 64, !494, i64 65}
!692 = !{!"target_option_hooks", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !505, i64 40}
!693 = !{!694, !505, i64 224}
!694 = !{!"df", !494, i64 0, !494, i64 64, !505, i64 128, !695, i64 136, !695, i64 176, !505, i64 216, !505, i64 224, !505, i64 232, !506, i64 240, !506, i64 244, !505, i64 248, !506, i64 256, !506, i64 260, !505, i64 264, !505, i64 272, !505, i64 280, !505, i64 288, !505, i64 296, !505, i64 304, !505, i64 312, !505, i64 320, !505, i64 328, !505, i64 336, !506, i64 344, !506, i64 348, !505, i64 352, !506, i64 360, !506, i64 364, !494, i64 365, !494, i64 366}
!695 = !{!"df_ref_info", !505, i64 0, !505, i64 8, !505, i64 16, !506, i64 24, !506, i64 28, !506, i64 32, !506, i64 36}
!696 = !{!697, !505, i64 0}
!697 = !{!"df_reg_info", !505, i64 0, !506, i64 8}
!698 = !{!699, !505, i64 0}
!699 = !{!"df_insn_info", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32, !506, i64 40}
!700 = distinct !{!700, !499}
!701 = distinct !{!701, !499}
!702 = distinct !{!702, !499}
!703 = !{!"branch_weights", i32 -162350274, i32 1826951826}
!704 = !{!"branch_weights", i32 92861, i32 1151502}
!705 = !{!"branch_weights", i32 3829, i32 1240534}
!706 = !{!"branch_weights", i32 6, i32 3824}
!707 = !{!"branch_weights", i32 10, i32 1244348}
!708 = !{!"branch_weights", i32 5, i32 61}
!709 = !{!"branch_weights", i32 174194436, i32 1973289212}
!710 = !{!"branch_weights", i32 941857, i32 302492}
!711 = !{!"branch_weights", i32 864351, i32 77507}
!712 = !{!"branch_weights", i32 325468, i32 538884}
!713 = !{!"branch_weights", i32 135402, i32 190067}
!714 = !{!"branch_weights", i32 98272, i32 37131}
!715 = !{!"branch_weights", i32 261206, i32 884871}
!716 = !{!"branch_weights", i32 -1126072184, i32 -211966422, i32 758038627, i32 9052}
!717 = !{!"branch_weights", i32 884871, i32 0}
!718 = distinct !{!718, !499}
!719 = !{!"branch_weights", i32 1, i32 1146077}
!720 = !{!"branch_weights", i32 6652, i32 1787821}
!721 = distinct !{!721, !499}
!722 = distinct !{!722, !499}
!723 = !{!"branch_weights", i32 352557, i32 1}
!724 = !{!"branch_weights", i32 6653, i32 345904}
!725 = distinct !{!725, !499}
!726 = !{!"branch_weights", i32 6152, i32 501}
!727 = !{!"branch_weights", i32 6152, i32 0}
!728 = distinct !{!728, !499}
!729 = !{!"branch_weights", i32 1969, i32 4685}
!730 = !{!"branch_weights", i32 1969, i32 1}
!731 = !{!574, !505, i64 88}
!732 = !{!"function_entry_count", i64 1002888}
!733 = !{!"branch_weights", i32 263658, i32 739232}
!734 = !{!"function_entry_count", i64 0}
!735 = !{!"reload1.c:has_nonexceptional_receiver"}
!736 = !{!670, !506, i64 24}
!737 = !{!672, !506, i64 96}
!738 = distinct !{!738, !499}
!739 = distinct !{!739, !499}
!740 = !{i64 0, i64 4, !527, i64 8, i64 8, !513}
!741 = !{i64 0, i64 8, !513}
!742 = !{!743, !506, i64 48}
!743 = !{!"edge_def", !505, i64 0, !505, i64 8, !494, i64 16, !505, i64 24, !505, i64 32, !506, i64 40, !506, i64 44, !506, i64 48, !506, i64 52, !504, i64 56}
!744 = !{!743, !505, i64 0}
!745 = distinct !{!745, !499}
!746 = distinct !{!746, !499}
!747 = distinct !{!747, !499}
!748 = !{!"function_entry_count", i64 6211056}
!749 = !{!"reload1.c:scan_paradoxical_subregs"}
!750 = !{!"branch_weights", i32 2715946, i32 1768239, i32 841265, i32 20971, i32 156453, i32 264117, i32 3, i32 1, i32 1, i32 1, i32 361986, i32 4888, i32 72612, i32 4587}
!751 = !{!"branch_weights", i32 4587, i32 1}
!752 = !{!"branch_weights", i32 3983, i32 605}
!753 = !{!"branch_weights", i32 1, i32 2715945}
!754 = !{!"branch_weights", i32 348423317, i32 -1273071751, i32 47247832}
!755 = !{!756, !506, i64 0}
!756 = !{!"rtvec_def", !506, i64 0, !494, i64 8}
!757 = !{!"branch_weights", i32 76008, i32 1}
!758 = !{!"branch_weights", i32 130751, i32 76008}
!759 = distinct !{!759, !499}
!760 = !{!"branch_weights", i32 2781987, i32 2715945}
!761 = distinct !{!761, !499}
!762 = !{!"function_entry_count", i64 17907249}
!763 = !{!"reload1.c:rhs_regno"}
!764 = !{!"function_entry_count", i64 151645}
!765 = !{!"branch_weights", i32 11517, i32 140130}
!766 = !{!"branch_weights", i32 1, i32 140130}
!767 = !{!"branch_weights", i32 8677, i32 131454}
!768 = !{!"branch_weights", i32 8617, i32 61}
!769 = !{!"branch_weights", i32 57, i32 5}
!770 = !{!"branch_weights", i32 8673, i32 1}
!771 = !{!"reload1.c:init_elim_table"}
!772 = !{!"branch_weights", i32 2, i32 6652}
!773 = !{!774, !506, i64 0}
!774 = !{!"elim_table_1", !506, i64 0, !506, i64 4}
!775 = !{!774, !506, i64 4}
!776 = !{!682, !505, i64 1776}
!777 = !{!"branch_weights", i32 2, i32 13304}
!778 = !{!574, !494, i64 479}
!779 = !{!613, !506, i64 20}
!780 = distinct !{!780, !499}
!781 = !{!613, !505, i64 48}
!782 = !{!613, !505, i64 56}
!783 = distinct !{!783, !499}
!784 = !{!"function_entry_count", i64 974667}
!785 = !{!"reload1.c:alter_reg"}
!786 = !{!"branch_weights", i32 152, i32 974517}
!787 = !{!"branch_weights", i32 974517, i32 1}
!788 = !{!"branch_weights", i32 709807, i32 264711}
!789 = !{!"branch_weights", i32 28386, i32 681422}
!790 = !{!"branch_weights", i32 27891, i32 496}
!791 = !{!"branch_weights", i32 27174, i32 718}
!792 = !{!"branch_weights", i32 107, i32 612}
!793 = !{!"branch_weights", i32 24935, i32 2346}
!794 = !{!"branch_weights", i32 1, i32 24935}
!795 = !{!"branch_weights", i32 24594, i32 342}
!796 = !{!"branch_weights", i32 1031522776, i32 1115960872}
!797 = !{!"branch_weights", i32 11487, i32 670}
!798 = !{!"branch_weights", i32 448900, i32 1341}
!799 = !{!"branch_weights", i32 36, i32 12121}
!800 = !{!"branch_weights", i32 139594225, i32 4052887}
!801 = !{!627, !506, i64 28}
!802 = !{!"function_entry_count", i64 1184733}
!803 = !{!"reload1.c:mark_not_eliminable"}
!804 = !{!"branch_weights", i32 171, i32 1184564}
!805 = !{!"branch_weights", i32 1, i32 1184734}
!806 = !{!"branch_weights", i32 2369467, i32 2369467}
!807 = !{!"branch_weights", i32 1, i32 2369467}
!808 = !{!"branch_weights", i32 1184734, i32 3554199}
!809 = distinct !{!809, !499}
!810 = !{!"reload1.c:maybe_fix_stack_asms"}
!811 = !{!523, !505, i64 24}
!812 = !{!"branch_weights", i32 -1588197941, i32 307746965}
!813 = !{!"branch_weights", i32 1142894, i32 1}
!814 = distinct !{!814, !499}
!815 = distinct !{!815, !499}
!816 = distinct !{!816, !499}
!817 = !{!"branch_weights", i32 6652, i32 1266184}
!818 = distinct !{!818, !499}
!819 = !{!"reload1.c:spill_hard_reg"}
!820 = !{!"branch_weights", i32 -1256047748, i32 1079524621}
!821 = !{!"branch_weights", i32 1, i32 262704}
!822 = distinct !{!822, !499}
!823 = !{!"function_entry_count", i64 14549}
!824 = !{!"reload1.c:finish_spills"}
!825 = !{!"branch_weights", i32 760327, i32 10772}
!826 = !{!"branch_weights", i32 1, i32 10772}
!827 = !{!"branch_weights", i32 192, i32 10581}
!828 = !{!"branch_weights", i32 14550, i32 756548}
!829 = distinct !{!829, !499}
!830 = !{!"branch_weights", i32 1, i32 14549}
!831 = !{!"branch_weights", i32 1, i32 76764}
!832 = !{!"branch_weights", i32 3904, i32 72861}
!833 = !{!"branch_weights", i32 44376, i32 2147439272}
!834 = !{!"branch_weights", i32 1, i32 3904}
!835 = !{!"branch_weights", i32 14549, i32 62215}
!836 = distinct !{!836, !499}
!837 = !{!"branch_weights", i32 211702500, i32 29101}
!838 = !{!"branch_weights", i32 14549, i32 1}
!839 = !{!"branch_weights", i32 1, i32 1027520}
!840 = !{!523, !504, i64 120}
!841 = !{!"branch_weights", i32 1027520, i32 7942958}
!842 = distinct !{!842, !499}
!843 = !{!"branch_weights", i32 231560, i32 795961}
!844 = !{!"branch_weights", i32 795961, i32 0}
!845 = distinct !{!845, !499}
!846 = !{!"branch_weights", i32 14549, i32 1012972}
!847 = distinct !{!847, !499}
!848 = !{!"branch_weights", i32 2966954, i32 3904}
!849 = !{!"branch_weights", i32 3904, i32 1}
!850 = !{!"branch_weights", i32 2956308, i32 14549}
!851 = distinct !{!851, !499}
!852 = !{!"branch_weights", i32 14246, i32 305}
!853 = !{!"branch_weights", i32 1, i32 3664520}
!854 = !{!"branch_weights", i32 2637000, i32 1027521}
!855 = !{!"branch_weights", i32 14549, i32 3649971}
!856 = distinct !{!856, !499}
!857 = !{!"branch_weights", i32 2966630, i32 4228}
!858 = !{!"branch_weights", i32 4228, i32 1}
!859 = distinct !{!859, !499}
!860 = !{!"function_entry_count", i64 19292}
!861 = !{!"reload1.c:set_initial_elim_offsets"}
!862 = !{!613, !504, i64 8}
!863 = !{!613, !504, i64 24}
!864 = !{!613, !504, i64 32}
!865 = !{!"branch_weights", i32 57877, i32 19292}
!866 = distinct !{!866, !499}
!867 = !{!"function_entry_count", i64 12640}
!868 = !{!"reload1.c:set_initial_label_offsets"}
!869 = distinct !{!869, !499}
!870 = !{!"function_entry_count", i64 113475}
!871 = !{!"function_entry_count", i64 8055}
!872 = !{!"reload1.c:calculate_needs_all_insns"}
!873 = !{!"branch_weights", i32 8056, i32 1}
!874 = !{!"branch_weights", i32 1, i32 8055}
!875 = !{!523, !506, i64 112}
!876 = !{!"branch_weights", i32 2437, i32 604518250, i32 968071790, i32 -412906184, i32 2437, i32 377720511}
!877 = !{!"branch_weights", i32 694463, i32 1052823}
!878 = !{!"branch_weights", i32 -366297610, i32 454285329}
!879 = !{!"branch_weights", i32 1943831, i32 1}
!880 = !{!"branch_weights", i32 -2147483648, i32 0}
!881 = !{!"branch_weights", i32 1264394, i32 824131}
!882 = !{!"branch_weights", i32 1264394, i32 1}
!883 = !{!"branch_weights", i32 1263183, i32 1212}
!884 = !{!"branch_weights", i32 1261851, i32 1333}
!885 = !{!"branch_weights", i32 45, i32 2500}
!886 = !{!"branch_weights", i32 1, i32 2141870}
!887 = !{!"branch_weights", i32 315536774, i32 -130414832}
!888 = !{!"branch_weights", i32 -1100923189, i32 20886}
!889 = !{!"branch_weights", i32 139273, i32 1}
!890 = !{!"branch_weights", i32 1, i32 150675}
!891 = !{!"branch_weights", i32 1443805895, i32 1443805895}
!892 = !{!"branch_weights", i32 703677753, i32 1443805895}
!893 = !{!"branch_weights", i32 2718, i32 46656}
!894 = !{!"branch_weights", i32 2718, i32 1}
!895 = !{!"branch_weights", i32 5, i32 2714}
!896 = !{!"branch_weights", i32 1, i32 2714}
!897 = !{!"branch_weights", i32 2624, i32 91}
!898 = !{!"branch_weights", i32 1, i32 91}
!899 = !{!523, !505, i64 8}
!900 = !{!"branch_weights", i32 1, i32 2141780}
!901 = !{!"branch_weights", i32 2044006, i32 97775}
!902 = !{!"branch_weights", i32 97775, i32 1}
!903 = !{!"branch_weights", i32 97495, i32 281}
!904 = !{!"branch_weights", i32 1114260, i32 1027521}
!905 = !{!"branch_weights", i32 8055, i32 2384275}
!906 = distinct !{!906, !499}
!907 = !{!"function_entry_count", i64 14690}
!908 = !{!"reload1.c:verify_initial_elim_offsets"}
!909 = !{!"branch_weights", i32 1, i32 14691}
!910 = !{!"branch_weights", i32 -1705311265, i32 863257851}
!911 = distinct !{!911, !499}
!912 = !{!"reload1.c:update_eliminables"}
!913 = !{!"branch_weights", i32 1, i32 32221}
!914 = !{!682, !505, i64 1768}
!915 = !{!"branch_weights", i32 16111, i32 16111}
!916 = !{!"branch_weights", i32 24166, i32 8055}
!917 = distinct !{!917, !499}
!918 = !{!"branch_weights", i32 16111, i32 1}
!919 = distinct !{!919, !499}
!920 = distinct !{!920, !499}
!921 = !{!"branch_weights", i32 24165, i32 8056}
!922 = distinct !{!922, !499}
!923 = !{!"branch_weights", i32 8056, i32 8056}
!924 = !{!"branch_weights", i32 8055, i32 2}
!925 = distinct !{!925, !499}
!926 = !{!"branch_weights", i32 64907193, i32 8056}
!927 = !{!"reload1.c:select_reload_regs"}
!928 = !{!"branch_weights", i32 8055, i32 1019466}
!929 = distinct !{!929, !499}
!930 = !{!"function_entry_count", i64 851}
!931 = !{!"reload1.c:delete_caller_save_insns"}
!932 = !{!"branch_weights", i32 1, i32 851}
!933 = !{!"branch_weights", i32 955530, i32 24049}
!934 = !{!"branch_weights", i32 1, i32 24049}
!935 = !{!"branch_weights", i32 1, i32 979577}
!936 = distinct !{!936, !499}
!937 = !{!"branch_weights", i32 1912504, i32 2145571144}
!938 = !{!"function_entry_count", i64 2876}
!939 = !{!"reload1.c:delete_dead_insn"}
!940 = !{!"branch_weights", i32 551, i32 2327}
!941 = !{!"branch_weights", i32 2005, i32 323}
!942 = !{!"branch_weights", i32 1476, i32 530}
!943 = !{!"branch_weights", i32 1419, i32 58}
!944 = !{!"branch_weights", i32 58, i32 1}
!945 = !{!"reload1.c:reload_as_needed"}
!946 = !{!"branch_weights", i32 13503758, i32 587462417, i32 -406890152, i32 4519, i32 947723306, i32 419810027}
!947 = !{!"branch_weights", i32 8676581, i32 -1672808828}
!948 = !{!"branch_weights", i32 1, i32 3833}
!949 = !{!"branch_weights", i32 1, i32 1162510}
!950 = !{!"branch_weights", i32 1110126, i32 52385}
!951 = !{!"branch_weights", i32 1, i32 52385}
!952 = !{!"branch_weights", i32 -1193300302, i32 -1508466968}
!953 = !{!"branch_weights", i32 2138218497, i32 9265151}
!954 = !{!"branch_weights", i32 547770, i32 1}
!955 = !{!"branch_weights", i32 1, i32 547770}
!956 = distinct !{!956, !499}
!957 = !{!"branch_weights", i32 1140545, i32 21965}
!958 = !{!"branch_weights", i32 21965, i32 1}
!959 = !{!"branch_weights", i32 1, i32 21965}
!960 = !{!"branch_weights", i32 21965, i32 0}
!961 = distinct !{!961, !499}
!962 = !{!"branch_weights", i32 -1853262282, i32 295797220, i32 211385007}
!963 = !{!"branch_weights", i32 6652, i32 1288786}
!964 = distinct !{!964, !499}
!965 = !{!"function_entry_count", i64 199299}
!966 = !{!"reload1.c:replace_pseudos_in"}
!967 = !{!"branch_weights", i32 1, i32 127}
!968 = !{!"branch_weights", i32 -1725123284, i32 1160224228, i32 306653464}
!969 = !{!"branch_weights", i32 30593, i32 1}
!970 = !{!"branch_weights", i32 92860, i32 13580}
!971 = !{!"branch_weights", i32 127, i32 11885953}
!972 = !{!"branch_weights", i32 1, i32 67762}
!973 = !{!"branch_weights", i32 10824100, i32 323686305, i32 3290}
!974 = distinct !{!974, !499}
!975 = !{!"branch_weights", i32 67762, i32 33882}
!976 = distinct !{!976, !499}
!977 = !{!"reload1.c:VEC_rtx_gc_free"}
!978 = !{!"function_entry_count", i64 6695}
!979 = !{!"branch_weights", i32 1, i32 6695}
!980 = !{!"branch_weights", i32 1, i32 271741}
!981 = !{!"branch_weights", i32 13507, i32 -1375699381}
!982 = !{!"branch_weights", i32 271741, i32 160501}
!983 = distinct !{!983, !499}
!984 = !{!"branch_weights", i32 271742, i32 1}
!985 = !{!986, !505, i64 8}
!986 = !{!"rtl_bb_info", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !506, i64 32}
!987 = !{!986, !505, i64 0}
!988 = distinct !{!988, !499}
!989 = distinct !{!989, !499}
!990 = distinct !{!990, !499}
!991 = !{!"branch_weights", i32 6695, i32 265047}
!992 = distinct !{!992, !499}
!993 = !{!"branch_weights", i32 6696, i32 1}
!994 = !{!670, !506, i64 32}
!995 = !{!996, !505, i64 0}
!996 = !{!"simple_bitmap_def", !505, i64 0, !506, i64 8, !506, i64 12, !494, i64 16}
!997 = !{!"reload1.c:VEC_rtx_p_heap_free"}
!998 = !{!"function_entry_count", i64 271741}
!999 = !{!"reload1.c:ei_start_1"}
!1000 = !{!"function_entry_count", i64 703982}
!1001 = !{!"reload1.c:ei_cond"}
!1002 = !{!"branch_weights", i32 432242, i32 271742}
!1003 = !{!"function_entry_count", i64 432241}
!1004 = !{!"reload1.c:ei_next"}
!1005 = !{!"branch_weights", i32 1, i32 432242}
!1006 = !{!"branch_weights", i32 432242, i32 1}
!1007 = !{!1008, !506, i64 0}
!1008 = !{!"", !506, i64 0, !505, i64 8}
!1009 = !{!"reload1.c:ei_end_p"}
!1010 = !{!"branch_weights", i32 1, i32 703983}
!1011 = !{!"reload1.c:ei_edge"}
!1012 = !{!"function_entry_count", i64 1136223}
!1013 = !{!"reload1.c:VEC_edge_base_length"}
!1014 = !{!"branch_weights", i32 1, i32 1136224}
!1015 = !{!1016, !506, i64 0}
!1016 = !{!"VEC_edge_base", !506, i64 0, !506, i64 4, !494, i64 8}
!1017 = !{!"function_entry_count", i64 3136928}
!1018 = !{!"reload1.c:ei_container"}
!1019 = !{!"branch_weights", i32 1, i32 3136929}
!1020 = !{!"reload1.c:VEC_edge_base_index"}
!1021 = !{!"function_entry_count", i64 267639}
!1022 = !{!"reload1.c:mark_home_live_1"}
!1023 = !{!"branch_weights", i32 353, i32 267288}
!1024 = !{!"branch_weights", i32 267287, i32 1}
!1025 = !{!"branch_weights", i32 267287, i32 423}
!1026 = distinct !{!1026, !499}
!1027 = !{!"function_entry_count", i64 709806}
!1028 = !{!"reload1.c:REG_N_REFS"}
!1029 = !{!1030, !506, i64 4}
!1030 = !{!"regstat_n_sets_and_refs_t", !506, i64 0, !506, i64 4}
!1031 = !{!"reload1.c:insn_constraint_len"}
!1032 = !{!"function_entry_count", i64 2570598}
!1033 = !{!"reload1.c:set_label_offsets"}
!1034 = !{!"branch_weights", i32 1609, i32 185958, i32 534592, i32 397085, i32 901458, i32 151366, i32 1453, i32 1375, i32 1, i32 395711}
!1035 = !{!"branch_weights", i32 185958, i32 1}
!1036 = !{!"branch_weights", i32 247962, i32 472588}
!1037 = !{!"branch_weights", i32 986653, i32 5193}
!1038 = !{!"branch_weights", i32 247962, i32 743883}
!1039 = distinct !{!1039, !499}
!1040 = !{!"branch_weights", i32 209753, i32 262836}
!1041 = !{!"branch_weights", i32 1, i32 209753}
!1042 = !{!"branch_weights", i32 105994, i32 103760}
!1043 = !{!"branch_weights", i32 1466377, i32 1}
!1044 = !{!"branch_weights", i32 366595, i32 1099782}
!1045 = distinct !{!1045, !499}
!1046 = !{!"branch_weights", i32 1, i32 1449906}
!1047 = !{!"branch_weights", i32 1299, i32 1841956}
!1048 = !{!"branch_weights", i32 1449906, i32 393348}
!1049 = distinct !{!1049, !499}
!1050 = !{!"branch_weights", i32 1, i32 2826}
!1051 = !{!"branch_weights", i32 77188, i32 2826}
!1052 = distinct !{!1052, !499}
!1053 = !{!"branch_weights", i32 395711, i32 1}
!1054 = !{!"branch_weights", i32 1375, i32 1, i32 1, i32 109005, i32 285333}
!1055 = !{!"branch_weights", i32 64, i32 37085100, i32 8192, i32 64}
!1056 = !{!"branch_weights", i32 4457, i32 570542, i32 -1751874393, i32 4457}
!1057 = !{!"branch_weights", i32 5497, i32 1}
!1058 = !{!"branch_weights", i32 4122, i32 1375}
!1059 = distinct !{!1059, !499}
!1060 = !{!"reload1.c:set_initial_eh_label_offset"}
!1061 = !{!"function_entry_count", i64 235935}
!1062 = !{!"reload1.c:set_offsets_for_label"}
!1063 = !{!"branch_weights", i32 471871, i32 471871}
!1064 = !{!"branch_weights", i32 471871, i32 1}
!1065 = !{!"branch_weights", i32 235936, i32 707805}
!1066 = distinct !{!1066, !499}
!1067 = !{!"function_entry_count", i64 2194253}
!1068 = !{!"reload1.c:eliminate_regs_in_insn"}
!1069 = !{!"branch_weights", i32 -1349899227, i32 1342}
!1070 = !{!"branch_weights", i32 1992318, i32 1}
!1071 = !{!"branch_weights", i32 6330979, i32 -1950343684}
!1072 = !{!"branch_weights", i32 120226, i32 -2122469696, i32 12031400, i32 661246093, i32 240453, i32 120226}
!1073 = !{!"branch_weights", i32 1, i32 5909}
!1074 = !{!"branch_weights", i32 49027113, i32 2098456535}
!1075 = !{!"branch_weights", i32 1291299, i32 847088}
!1076 = !{!"branch_weights", i32 1199797, i32 91503}
!1077 = !{!"branch_weights", i32 1, i32 4799185}
!1078 = !{!"branch_weights", i32 3599388, i32 1199797}
!1079 = distinct !{!1079, !499}
!1080 = !{!"branch_weights", i32 67012, i32 1224288}
!1081 = !{!"branch_weights", i32 51133, i32 15880}
!1082 = !{!"branch_weights", i32 1, i32 295248}
!1083 = !{!"branch_weights", i32 216404051, i32 -1669347490}
!1084 = !{!"branch_weights", i32 2643, i32 20477}
!1085 = !{!"branch_weights", i32 2627, i32 17}
!1086 = !{!"branch_weights", i32 295248, i32 8384}
!1087 = distinct !{!1087, !499}
!1088 = !{!"branch_weights", i32 14, i32 53746}
!1089 = !{!"branch_weights", i32 1, i32 14}
!1090 = !{!"branch_weights", i32 50915, i32 2845}
!1091 = !{!"branch_weights", i32 7587, i32 43329}
!1092 = !{!"branch_weights", i32 10, i32 43320}
!1093 = !{!"branch_weights", i32 15699, i32 157503}
!1094 = !{!"branch_weights", i32 7850, i32 7850}
!1095 = !{!"branch_weights", i32 1, i32 7850}
!1096 = !{!1097, !505, i64 0}
!1097 = !{!"rtl_hooks", !505, i64 0, !505, i64 8, !505, i64 16, !505, i64 24, !505, i64 32}
!1098 = !{!"branch_weights", i32 19318850, i32 42319351}
!1099 = !{!"branch_weights", i32 3361, i32 2030}
!1100 = !{!"branch_weights", i32 1, i32 3361}
!1101 = !{!"branch_weights", i32 43127, i32 1}
!1102 = !{!"branch_weights", i32 440, i32 1}
!1103 = !{!"branch_weights", i32 1, i32 5390}
!1104 = !{!"branch_weights", i32 137721, i32 35480}
!1105 = distinct !{!1105, !499}
!1106 = !{!1107, !494, i64 1086}
!1107 = !{!"recog_data", !494, i64 0, !494, i64 240, !494, i64 480, !494, i64 720, !494, i64 840, !494, i64 960, !494, i64 1072, !494, i64 1086, !494, i64 1087, !494, i64 1088, !494, i64 1089, !505, i64 1120}
!1108 = !{!"branch_weights", i32 2182956, i32 1}
!1109 = !{!1107, !494, i64 1087}
!1110 = !{!"branch_weights", i32 9651, i32 2173306}
!1111 = !{!"branch_weights", i32 4492840, i32 1}
!1112 = !{!1113, !505, i64 24}
!1113 = !{!"insn_data", !505, i64 0, !494, i64 8, !505, i64 16, !505, i64 24, !494, i64 32, !494, i64 33, !494, i64 34, !494, i64 35}
!1114 = !{!1115, !494, i64 19}
!1115 = !{!"insn_operand_data", !505, i64 0, !505, i64 8, !506, i64 16, !494, i64 18, !494, i64 19}
!1116 = !{!"branch_weights", i32 296427, i32 4196414}
!1117 = !{!"branch_weights", i32 2852608, i32 1343807}
!1118 = !{!"branch_weights", i32 892367, i32 451441}
!1119 = !{!"branch_weights", i32 1, i32 3569465}
!1120 = !{!"branch_weights", i32 2677098, i32 892367}
!1121 = distinct !{!1121, !499}
!1122 = !{!"branch_weights", i32 103313, i32 4093102}
!1123 = !{!"branch_weights", i32 4019277, i32 177138}
!1124 = !{!"branch_weights", i32 4050811, i32 145604}
!1125 = !{!"branch_weights", i32 1, i32 892367}
!1126 = !{!"branch_weights", i32 2309884, i32 2182956}
!1127 = distinct !{!1127, !499}
!1128 = !{!"branch_weights", i32 9651, i32 0}
!1129 = distinct !{!1129, !499}
!1130 = !{!"branch_weights", i32 2182956, i32 2309884}
!1131 = distinct !{!1131, !499}
!1132 = distinct !{!1132, !499}
!1133 = !{!"branch_weights", i32 2038288, i32 144670}
!1134 = !{!"branch_weights", i32 94343, i32 50328}
!1135 = !{!"branch_weights", i32 66327, i32 28017}
!1136 = !{!"branch_weights", i32 -1679170943, i32 415926}
!1137 = !{!"branch_weights", i32 55325, i32 89325}
!1138 = !{!"branch_weights", i32 55325, i32 1}
!1139 = !{!"branch_weights", i32 402546585, i32 1744937063}
!1140 = !{!"branch_weights", i32 -1875280205, i32 127745617}
!1141 = !{!"branch_weights", i32 137768, i32 3269}
!1142 = !{!"branch_weights", i32 2132602, i32 50356}
!1143 = !{!"branch_weights", i32 2132601, i32 1}
!1144 = !{!"branch_weights", i32 9643, i32 2122959}
!1145 = !{!"branch_weights", i32 2132601, i32 2258863}
!1146 = distinct !{!1146, !499}
!1147 = !{!"branch_weights", i32 9643, i32 0}
!1148 = distinct !{!1148, !499}
!1149 = !{!"branch_weights", i32 8731625, i32 201}
!1150 = !{!613, !506, i64 40}
!1151 = !{!"branch_weights", i32 201, i32 1}
!1152 = !{!"branch_weights", i32 6548868, i32 2182957}
!1153 = distinct !{!1153, !499}
!1154 = !{!"branch_weights", i32 2005145482, i32 142338166}
!1155 = !{!"branch_weights", i32 99885, i32 50275}
!1156 = !{!"function_entry_count", i64 2194163}
!1157 = !{!"reload1.c:update_eliminable_offsets"}
!1158 = !{!"branch_weights", i32 4388327, i32 4388327}
!1159 = !{!"branch_weights", i32 4388327, i32 1}
!1160 = !{!"branch_weights", i32 6582489, i32 2194164}
!1161 = distinct !{!1161, !499}
!1162 = !{!"function_entry_count", i64 1027520}
!1163 = !{!"reload1.c:copy_reloads"}
!1164 = !{!"branch_weights", i32 32818, i32 994704}
!1165 = !{!"branch_weights", i32 1, i32 1027521}
!1166 = !{!523, !505, i64 104}
!1167 = !{!"branch_weights", i32 1027521, i32 1}
!1168 = !{!"function_entry_count", i64 2195309}
!1169 = !{!"reload1.c:recog_memoized"}
!1170 = !{!"branch_weights", i32 6965, i32 2188346}
!1171 = !{!"function_entry_count", i64 12064510}
!1172 = !{!"reload1.c:elimination_effects"}
!1173 = !{!"branch_weights", i32 2407967, i32 1624331, i32 9, i32 1, i32 1, i32 39103, i32 266375, i32 1, i32 681043, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3617124, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 762, i32 2875, i32 1804, i32 21584, i32 210, i32 217, i32 6, i32 430, i32 121, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9582, i32 1933, i32 140000, i32 2141449, i32 1107606}
!1174 = !{!"branch_weights", i32 3305181, i32 311944}
!1175 = !{!"branch_weights", i32 280311, i32 12882405}
!1176 = !{!"branch_weights", i32 140156, i32 140156}
!1177 = !{!"branch_weights", i32 144, i32 140013}
!1178 = !{!"branch_weights", i32 9997689, i32 3165026}
!1179 = distinct !{!1179, !499}
!1180 = !{!"branch_weights", i32 -1254059198, i32 19496}
!1181 = !{!"branch_weights", i32 309628, i32 2317}
!1182 = !{!"branch_weights", i32 1, i32 2317}
!1183 = distinct !{!1183, !499}
!1184 = distinct !{!1184, !499}
!1185 = !{!"branch_weights", i32 9582, i32 1}
!1186 = !{!"branch_weights", i32 57760000, i32 15080383}
!1187 = !{!"branch_weights", i32 5921, i32 1680}
!1188 = !{!"branch_weights", i32 1, i32 7729}
!1189 = !{!"branch_weights", i32 5796, i32 1933}
!1190 = distinct !{!1190, !499}
!1191 = !{!"branch_weights", i32 1, i32 559997}
!1192 = !{!"branch_weights", i32 419997, i32 140000}
!1193 = distinct !{!1193, !499}
!1194 = !{!"branch_weights", i32 1294362, i32 847088}
!1195 = !{!"branch_weights", i32 201, i32 5177245}
!1196 = !{!"branch_weights", i32 1, i32 201}
!1197 = !{!"branch_weights", i32 3883083, i32 1294362}
!1198 = distinct !{!1198, !499}
!1199 = !{!"branch_weights", i32 1, i32 2407966}
!1200 = !{!"branch_weights", i32 421851794, i32 -32894046, i32 153222604}
!1201 = !{!"branch_weights", i32 144575, i32 1}
!1202 = !{!"branch_weights", i32 147097, i32 144575}
!1203 = distinct !{!1203, !499}
!1204 = !{!"branch_weights", i32 2407966, i32 2156204}
!1205 = distinct !{!1205, !499}
!1206 = !{!"function_entry_count", i64 5825858}
!1207 = !{!"reload1.c:eliminate_regs_1"}
!1208 = !{!"branch_weights", i32 1375, i32 766395, i32 9, i32 1, i32 1, i32 38503, i32 259439, i32 395711, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2378422, i32 791265, i32 38438, i32 1, i32 1, i32 75, i32 1, i32 1, i32 1, i32 1, i32 79, i32 265, i32 30, i32 1, i32 1, i32 1, i32 13, i32 39, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 57374, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 27, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9584, i32 1088834, i32 1, i32 1, i32 1, i32 1}
!1209 = !{!"branch_weights", i32 2065701, i32 312722}
!1210 = !{!"branch_weights", i32 51971, i32 8164759}
!1211 = !{!"branch_weights", i32 25986, i32 25986}
!1212 = !{!"branch_weights", i32 6177013, i32 2039716}
!1213 = distinct !{!1213, !499}
!1214 = !{!"branch_weights", i32 1, i32 312722}
!1215 = !{!"branch_weights", i32 -1238872006, i32 19545}
!1216 = !{!"branch_weights", i32 306742, i32 5981}
!1217 = !{!"branch_weights", i32 107, i32 5875}
!1218 = !{!"branch_weights", i32 107, i32 1}
!1219 = !{!"branch_weights", i32 127, i32 745709825}
!1220 = !{!"branch_weights", i32 734551, i32 56715}
!1221 = !{!"branch_weights", i32 685540, i32 49012}
!1222 = !{!"branch_weights", i32 680904, i32 4637}
!1223 = !{!"branch_weights", i32 525273, i32 2144737}
!1224 = !{!"branch_weights", i32 262637, i32 262637}
!1225 = !{!"branch_weights", i32 -450409276, i32 226642862}
!1226 = !{!"branch_weights", i32 1, i32 248018}
!1227 = !{!"branch_weights", i32 2251741, i32 418268}
!1228 = distinct !{!1228, !499}
!1229 = !{!"branch_weights", i32 1, i32 110362}
!1230 = !{!"branch_weights", i32 106451, i32 3912}
!1231 = !{!"branch_weights", i32 103463, i32 2989}
!1232 = !{!"branch_weights", i32 3885, i32 3016}
!1233 = !{!"branch_weights", i32 910, i32 2976}
!1234 = !{!"branch_weights", i32 189, i32 722}
!1235 = !{!"branch_weights", i32 35721, i32 379}
!1236 = !{!"branch_weights", i32 189, i32 1}
!1237 = !{!"branch_weights", i32 711690, i32 2146771958}
!1238 = !{!"branch_weights", i32 147, i32 6754}
!1239 = !{!"branch_weights", i32 147, i32 1}
!1240 = !{!"branch_weights", i32 38438, i32 1}
!1241 = !{!"branch_weights", i32 32167, i32 6272}
!1242 = !{!"branch_weights", i32 32167, i32 1}
!1243 = !{!"branch_weights", i32 1, i32 128665}
!1244 = !{!"branch_weights", i32 96498, i32 32167}
!1245 = distinct !{!1245, !499}
!1246 = !{!"branch_weights", i32 1, i32 38933}
!1247 = !{!"branch_weights", i32 38827, i32 107}
!1248 = !{!"branch_weights", i32 38823, i32 5}
!1249 = !{!"branch_weights", i32 1, i32 57374}
!1250 = !{!"branch_weights", i32 24141, i32 33234}
!1251 = !{!"branch_weights", i32 285, i32 32950}
!1252 = !{!"branch_weights", i32 19, i32 267}
!1253 = !{!"branch_weights", i32 50257, i32 6834}
!1254 = !{!"branch_weights", i32 1797, i32 5038}
!1255 = !{!"branch_weights", i32 27, i32 1}
!1256 = !{!"branch_weights", i32 9584, i32 1}
!1257 = !{!"branch_weights", i32 57836025, i32 15067485}
!1258 = !{!"branch_weights", i32 5927, i32 1679}
!1259 = !{!"branch_weights", i32 2147212042, i32 271606}
!1260 = !{!"branch_weights", i32 1, i32 1374}
!1261 = !{!"branch_weights", i32 1890625, i32 1376, i32 1375}
!1262 = distinct !{!1262, !499}
!1263 = !{!"branch_weights", i32 1374, i32 1}
!1264 = distinct !{!1264, !499}
!1265 = !{!"function_entry_count", i64 9731509}
!1266 = !{!"reload1.c:check_eliminable_occurrences"}
!1267 = !{!"branch_weights", i32 3810354, i32 5921157}
!1268 = !{!"branch_weights", i32 727825, i32 5193333}
!1269 = !{!"branch_weights", i32 727825, i32 1}
!1270 = !{!"branch_weights", i32 1, i32 2911297}
!1271 = !{!"branch_weights", i32 2183472, i32 727825}
!1272 = distinct !{!1272, !499}
!1273 = !{!"branch_weights", i32 1, i32 5193332}
!1274 = !{!"branch_weights", i32 437956737, i32 -673222822, i32 72154507}
!1275 = distinct !{!1275, !499}
!1276 = !{!"branch_weights", i32 5193332, i32 3085659}
!1277 = distinct !{!1277, !499}
!1278 = !{!"reload1.c:find_reload_regs"}
!1279 = !{!"branch_weights", i32 1027520, i32 1}
!1280 = !{!1281, !505, i64 64}
!1281 = !{!"reload", !505, i64 0, !505, i64 8, !506, i64 16, !506, i64 20, !506, i64 24, !506, i64 28, !506, i64 32, !506, i64 36, !505, i64 40, !505, i64 48, !506, i64 56, !505, i64 64, !506, i64 72, !506, i64 76, !506, i64 80, !506, i64 84, !506, i64 88, !506, i64 92, !506, i64 96, !506, i64 96, !506, i64 96, !506, i64 96}
!1282 = !{!"branch_weights", i32 831387, i32 365151}
!1283 = !{!1281, !506, i64 56}
!1284 = !{!1281, !506, i64 32}
!1285 = !{!"branch_weights", i32 1027520, i32 169017}
!1286 = distinct !{!1286, !499}
!1287 = !{!1281, !505, i64 8}
!1288 = !{!"branch_weights", i32 661647, i32 534891}
!1289 = !{!1281, !505, i64 0}
!1290 = !{!"branch_weights", i32 1236, i32 660412}
!1291 = !{!"branch_weights", i32 1223, i32 14}
!1292 = !{!"branch_weights", i32 199317, i32 995999}
!1293 = !{!"branch_weights", i32 176237, i32 23081}
!1294 = !{!"branch_weights", i32 1, i32 176237}
!1295 = !{!1281, !506, i64 16}
!1296 = !{!"branch_weights", i32 169017, i32 1027520}
!1297 = distinct !{!1297, !499}
!1298 = !{!"function_entry_count", i64 252512}
!1299 = !{!"reload1.c:reload_reg_class_lower"}
!1300 = !{!"branch_weights", i32 31623, i32 220891}
!1301 = !{!"branch_weights", i32 29947, i32 1677}
!1302 = !{!"branch_weights", i32 29905, i32 43}
!1303 = !{!"branch_weights", i32 21774, i32 8132}
!1304 = !{!"reload1.c:order_regs_for_reload"}
!1305 = distinct !{!1305, !499}
!1306 = distinct !{!1306, !499}
!1307 = !{!"function_entry_count", i64 176236}
!1308 = !{!"reload1.c:find_reg"}
!1309 = !{!"branch_weights", i32 19871, i32 156366}
!1310 = !{!"branch_weights", i32 19606, i32 266}
!1311 = !{!"branch_weights", i32 12097, i32 7510}
!1312 = !{!"branch_weights", i32 1, i32 7509}
!1313 = !{!"branch_weights", i32 0, i32 0}
!1314 = distinct !{!1314, !499, !1315, !1316}
!1315 = !{!"llvm.loop.isvectorized", i32 1}
!1316 = !{!"llvm.loop.unroll.runtime.disable"}
!1317 = !{!"branch_weights", i32 19871, i32 0}
!1318 = distinct !{!1318, !499}
!1319 = !{!"branch_weights", i32 515051517, i32 -109147191}
!1320 = !{!1281, !506, i64 28}
!1321 = !{!"branch_weights", i32 1, i32 1023395}
!1322 = !{!"branch_weights", i32 2061, i32 1021334}
!1323 = !{!"branch_weights", i32 2812328, i32 649770}
!1324 = !{!"branch_weights", i32 2061, i32 0}
!1325 = distinct !{!1325, !499}
!1326 = !{!"branch_weights", i32 402196758, i32 1745286890}
!1327 = !{!"branch_weights", i32 1, i32 1023010}
!1328 = !{!"branch_weights", i32 1, i32 1023009}
!1329 = !{!"branch_weights", i32 586602, i32 438084}
!1330 = !{!"branch_weights", i32 437417, i32 668}
!1331 = !{!"branch_weights", i32 69, i32 600}
!1332 = !{!"branch_weights", i32 1023009, i32 1676}
!1333 = distinct !{!1333, !499}
!1334 = !{!"branch_weights", i32 176237, i32 846774}
!1335 = !{!"branch_weights", i32 755038, i32 91737}
!1336 = !{!"branch_weights", i32 267973, i32 95406}
!1337 = !{!"branch_weights", i32 176237, i32 9164272}
!1338 = distinct !{!1338, !499}
!1339 = !{!"branch_weights", i32 176237, i32 1}
!1340 = !{!"branch_weights", i32 1, i32 176236}
!1341 = !{!"branch_weights", i32 176236, i32 1817724}
!1342 = distinct !{!1342, !499}
!1343 = !{!"branch_weights", i32 19877, i32 156360}
!1344 = !{!"branch_weights", i32 156360, i32 0}
!1345 = distinct !{!1345, !499}
!1346 = !{!"branch_weights", i32 176620, i32 1}
!1347 = !{!"branch_weights", i32 384, i32 176236}
!1348 = distinct !{!1348, !499}
!1349 = !{!"reload1.c:spill_failure"}
!1350 = !{!"function_entry_count", i64 9766437}
!1351 = !{!"reload1.c:count_pseudo"}
!1352 = !{!1353, !506, i64 0}
!1353 = !{!"reg_info_t", !506, i64 0, !506, i64 4, !506, i64 8, !506, i64 12, !506, i64 16, !506, i64 20, !506, i64 24}
!1354 = !{!"branch_weights", i32 9766434, i32 5}
!1355 = !{!"branch_weights", i32 4232183, i32 5534252}
!1356 = !{!"branch_weights", i32 1214097165, i32 -1136168610}
!1357 = !{!"branch_weights", i32 3057154, i32 1}
!1358 = !{!"branch_weights", i32 1, i32 3057153}
!1359 = !{!"branch_weights", i32 1812, i32 3057153}
!1360 = distinct !{!1360, !499}
!1361 = !{!"function_entry_count", i64 19605}
!1362 = !{!"reload1.c:reloads_conflict"}
!1363 = !{!1281, !506, i64 92}
!1364 = !{!1281, !506, i64 72}
!1365 = !{!"branch_weights", i32 822, i32 18785}
!1366 = !{!"branch_weights", i32 1, i32 1333, i32 525, i32 1, i32 14, i32 1, i32 16160, i32 1, i32 554, i32 40, i32 1, i32 165}
!1367 = !{!"branch_weights", i32 93851, i32 351649}
!1368 = !{!"branch_weights", i32 484, i32 11614}
!1369 = !{!"branch_weights", i32 1, i32 29}
!1370 = !{!"branch_weights", i32 40783385, i32 169859089}
!1371 = !{!"branch_weights", i32 2741, i32 10293}
!1372 = !{!"branch_weights", i32 2741, i32 1}
!1373 = !{!"branch_weights", i32 1109, i32 306916}
!1374 = !{!"function_entry_count", i64 2150318}
!1375 = !{!"reload1.c:count_spilled_pseudo"}
!1376 = !{!"branch_weights", i32 -757640043, i32 978176753}
!1377 = !{!"branch_weights", i32 26623554, i32 -1144899164}
!1378 = !{!"branch_weights", i32 1, i32 3903}
!1379 = !{!"branch_weights", i32 49, i32 3903}
!1380 = distinct !{!1380, !499}
!1381 = !{!"function_entry_count", i64 2740}
!1382 = !{!"reload1.c:reloads_unique_chain_p"}
!1383 = !{!"branch_weights", i32 1, i32 2741}
!1384 = distinct !{!1384, !499}
!1385 = !{!"reload1.c:gen_reload_chain_without_interm_reg_p"}
!1386 = distinct !{!1386, !499}
!1387 = !{!"reload1.c:substitute"}
!1388 = distinct !{!1388, !499}
!1389 = distinct !{!1389, !499}
!1390 = !{!"reload1.c:VEC_rtx_p_base_length"}
!1391 = !{!1392, !506, i64 0}
!1392 = !{!"VEC_rtx_p_base", !506, i64 0, !506, i64 4, !494, i64 8}
!1393 = !{!"reload1.c:VEC_rtx_p_base_pop"}
!1394 = !{!"reload1.c:VEC_rtx_p_heap_safe_push"}
!1395 = !{!"reload1.c:VEC_rtx_p_heap_reserve"}
!1396 = !{!"reload1.c:VEC_rtx_p_base_quick_push"}
!1397 = !{!"reload1.c:VEC_rtx_p_base_space"}
!1398 = !{!1392, !506, i64 4}
!1399 = !{!"function_entry_count", i64 1225808}
!1400 = !{!"reload1.c:forget_old_reloads_1"}
!1401 = !{!"branch_weights", i32 -2119912875, i32 723036, i32 -600455584}
!1402 = distinct !{!1402, !499}
!1403 = !{!"branch_weights", i32 62654, i32 708915}
!1404 = !{!"branch_weights", i32 1305, i32 707611}
!1405 = !{!"branch_weights", i32 1, i32 1304}
!1406 = !{!"branch_weights", i32 1712173, i32 1308}
!1407 = !{!"branch_weights", i32 1304, i32 4}
!1408 = distinct !{!1408, !499}
!1409 = !{!"branch_weights", i32 737406370, i32 1410077278}
!1410 = !{!"branch_weights", i32 1, i32 749605}
!1411 = !{!"branch_weights", i32 749605, i32 551}
!1412 = distinct !{!1412, !499}
!1413 = !{!"branch_weights", i32 1, i32 21966}
!1414 = !{!"branch_weights", i32 90, i32 21877}
!1415 = !{!"branch_weights", i32 21962, i32 4}
!1416 = distinct !{!1416, !499}
!1417 = !{!"function_entry_count", i64 547769}
!1418 = !{!"reload1.c:choose_reload_regs"}
!1419 = !{!"branch_weights", i32 547769, i32 1}
!1420 = !{!"branch_weights", i32 439501, i32 187154}
!1421 = !{!"branch_weights", i32 187154, i32 1}
!1422 = !{!"branch_weights", i32 464, i32 626191}
!1423 = !{!"branch_weights", i32 78885, i32 547769}
!1424 = distinct !{!1424, !499}
!1425 = !{!"branch_weights", i32 273142890, i32 1874340758}
!1426 = !{!"branch_weights", i32 1, i32 547879}
!1427 = distinct !{!1427, !499}
!1428 = !{!"branch_weights", i32 547879, i32 1}
!1429 = !{!"branch_weights", i32 332956, i32 293944}
!1430 = !{!"branch_weights", i32 554, i32 332403}
!1431 = !{!"branch_weights", i32 550, i32 5}
!1432 = !{!"branch_weights", i32 2022431036, i32 125052612}
!1433 = !{!"branch_weights", i32 165734, i32 183786}
!1434 = !{!"branch_weights", i32 183034, i32 753}
!1435 = !{!"branch_weights", i32 176408, i32 6627}
!1436 = !{!"branch_weights", i32 93, i32 6535}
!1437 = !{!"branch_weights", i32 -2076063432, i32 1846710360}
!1438 = !{!"branch_weights", i32 246, i32 621788}
!1439 = !{!"branch_weights", i32 276820, i32 344969}
!1440 = !{!"branch_weights", i32 100664, i32 244306}
!1441 = !{!1281, !505, i64 40}
!1442 = !{!"branch_weights", i32 -591096038, i32 7968722, i32 10558894}
!1443 = !{!"branch_weights", i32 693, i32 1}
!1444 = !{!"branch_weights", i32 1, i32 693}
!1445 = !{!"branch_weights", i32 2147468828, i32 14820}
!1446 = !{!"branch_weights", i32 12846, i32 89033}
!1447 = !{!"branch_weights", i32 89033, i32 1}
!1448 = !{!"branch_weights", i32 88988, i32 46}
!1449 = !{!"branch_weights", i32 1, i32 46}
!1450 = !{!"branch_weights", i32 6, i32 89028}
!1451 = !{!"branch_weights", i32 57745, i32 31284}
!1452 = !{!"branch_weights", i32 36155, i32 21591}
!1453 = !{!"branch_weights", i32 1, i32 21591}
!1454 = !{!"branch_weights", i32 118, i32 21474}
!1455 = !{!"branch_weights", i32 118, i32 1}
!1456 = !{!"branch_weights", i32 21577, i32 15}
!1457 = !{!"branch_weights", i32 2, i32 14}
!1458 = !{!"branch_weights", i32 2332, i32 19247}
!1459 = !{!"branch_weights", i32 14, i32 19227}
!1460 = !{!"branch_weights", i32 8, i32 7}
!1461 = !{!"branch_weights", i32 1, i32 8}
!1462 = !{!"branch_weights", i32 14, i32 0}
!1463 = distinct !{!1463, !499}
!1464 = !{!"branch_weights", i32 2146702664, i32 780984}
!1465 = !{!"branch_weights", i32 19017, i32 225}
!1466 = !{!"branch_weights", i32 1, i32 19240}
!1467 = distinct !{!1467, !499, !1315, !1316}
!1468 = !{!"branch_weights", i32 24, i32 19217}
!1469 = !{!"branch_weights", i32 24, i32 1}
!1470 = !{!"branch_weights", i32 0, i32 24}
!1471 = distinct !{!1471, !499}
!1472 = !{!"branch_weights", i32 19241, i32 1}
!1473 = !{!"branch_weights", i32 1, i32 19241}
!1474 = !{!"branch_weights", i32 2800052, i32 366242266}
!1475 = !{!"branch_weights", i32 17418, i32 1680}
!1476 = !{!"branch_weights", i32 1251, i32 430}
!1477 = !{!"branch_weights", i32 1, i32 430}
!1478 = !{!"branch_weights", i32 572, i32 3}
!1479 = !{!"branch_weights", i32 1, i32 18667}
!1480 = distinct !{!1480, !499, !1315, !1316}
!1481 = !{!"branch_weights", i32 0, i32 -2147483648}
!1482 = !{!"branch_weights", i32 326302, i32 18668}
!1483 = !{!"branch_weights", i32 314838, i32 11465}
!1484 = !{!"branch_weights", i32 314274, i32 51}
!1485 = !{!"branch_weights", i32 1, i32 51}
!1486 = !{!"branch_weights", i32 5, i32 276816}
!1487 = !{!"branch_weights", i32 1927196590, i32 3364}
!1488 = !{!"branch_weights", i32 274085, i32 1}
!1489 = !{!"branch_weights", i32 291, i32 276518}
!1490 = !{!"branch_weights", i32 86756, i32 189763}
!1491 = !{!"branch_weights", i32 399056, i32 1974}
!1492 = !{!"branch_weights", i32 4, i32 9855, i32 16}
!1493 = !{!"branch_weights", i32 127, i32 1}
!1494 = !{!"branch_weights", i32 2, i32 3}
!1495 = distinct !{!1495, !499}
!1496 = !{!"branch_weights", i32 1074201505, i32 1073282143}
!1497 = !{!"branch_weights", i32 1971, i32 1}
!1498 = distinct !{!1498, !499, !1315, !1316}
!1499 = !{!"branch_weights", i32 913660322, i32 1233823326}
!1500 = !{!"branch_weights", i32 1133, i32 1}
!1501 = !{!"branch_weights", i32 2144927119, i32 2556529}
!1502 = !{!"branch_weights", i32 1, i32 840}
!1503 = !{!"branch_weights", i32 12, i32 817}
!1504 = !{!"branch_weights", i32 0, i32 12}
!1505 = distinct !{!1505, !499}
!1506 = !{!"branch_weights", i32 1, i32 12}
!1507 = !{!"branch_weights", i32 829, i32 1}
!1508 = !{!"branch_weights", i32 727, i32 103}
!1509 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 32, i32 72, i32 1}
!1510 = !{!"branch_weights", i32 1, i32 829}
!1511 = !{!"branch_weights", i32 217, i32 613}
!1512 = !{!"branch_weights", i32 1, i32 828}
!1513 = !{!"branch_weights", i32 546, i32 284}
!1514 = !{!"branch_weights", i32 828, i32 1}
!1515 = distinct !{!1515, !499}
!1516 = !{!"branch_weights", i32 79020, i32 547879}
!1517 = distinct !{!1517, !499}
!1518 = !{!"branch_weights", i32 332878, i32 293896}
!1519 = !{!"branch_weights", i32 554, i32 332325}
!1520 = !{!"branch_weights", i32 420630, i32 205595}
!1521 = !{!"branch_weights", i32 69457, i32 351174}
!1522 = !{!"branch_weights", i32 79004, i32 547769}
!1523 = distinct !{!1523, !499}
!1524 = !{!"branch_weights", i32 547770, i32 111}
!1525 = distinct !{!1525, !499}
!1526 = distinct !{!1526, !499}
!1527 = !{!"branch_weights", i32 1095538, i32 1}
!1528 = !{!"branch_weights", i32 1214537, i32 38771}
!1529 = !{!"branch_weights", i32 1, i32 38771}
!1530 = !{!"branch_weights", i32 1213397, i32 1141}
!1531 = !{!"branch_weights", i32 1, i32 2282, i32 1}
!1532 = !{!"branch_weights", i32 1141, i32 38771}
!1533 = !{!"branch_weights", i32 1339, i32 38573}
!1534 = !{!"branch_weights", i32 670, i32 670}
!1535 = !{!"branch_weights", i32 1, i32 38573}
!1536 = !{!"branch_weights", i32 1533, i32 37041}
!1537 = !{!"branch_weights", i32 37041, i32 1}
!1538 = !{!"branch_weights", i32 157769, i32 1095538}
!1539 = distinct !{!1539, !499}
!1540 = !{!"branch_weights", i32 547770, i32 547769}
!1541 = distinct !{!1541, !499}
!1542 = !{!"branch_weights", i32 626140, i32 515}
!1543 = !{!"branch_weights", i32 547769, i32 78885}
!1544 = distinct !{!1544, !499}
!1545 = !{!"branch_weights", i32 351723, i32 274932}
!1546 = !{!"branch_weights", i32 93049, i32 181884}
!1547 = !{!"branch_weights", i32 175788, i32 6097}
!1548 = !{!"branch_weights", i32 17721, i32 81425}
!1549 = !{!"branch_weights", i32 5, i32 17717}
!1550 = !{!"branch_weights", i32 1, i32 5}
!1551 = !{!"branch_weights", i32 121924, i32 53865}
!1552 = distinct !{!1552, !499}
!1553 = !{!1281, !505, i64 48}
!1554 = !{!"branch_weights", i32 332782, i32 293873}
!1555 = !{!"branch_weights", i32 49710, i32 244164}
!1556 = !{!"branch_weights", i32 21208, i32 28503}
!1557 = !{!"branch_weights", i32 7855, i32 20649}
!1558 = !{!"branch_weights", i32 273398, i32 2147210250}
!1559 = !{!"branch_weights", i32 19, i32 28502}
!1560 = distinct !{!1560, !499}
!1561 = !{!"branch_weights", i32 28503, i32 1}
!1562 = !{!"branch_weights", i32 1, i32 28502}
!1563 = distinct !{!1563, !499, !1315, !1316}
!1564 = !{!"branch_weights", i32 158211, i32 1824584250, i32 -1362104515, i32 2847798}
!1565 = distinct !{!1565, !499}
!1566 = !{!"reload1.c:merge_assigned_reloads"}
!1567 = !{!"branch_weights", i32 277412, i32 349243}
!1568 = !{!"branch_weights", i32 17103, i32 332141}
!1569 = !{!"branch_weights", i32 332141, i32 1}
!1570 = !{!"branch_weights", i32 262034, i32 70108}
!1571 = !{!"branch_weights", i32 69625, i32 484}
!1572 = !{!"branch_weights", i32 64837, i32 1}
!1573 = !{!"branch_weights", i32 69369, i32 70946}
!1574 = !{!"branch_weights", i32 56796, i32 14151}
!1575 = !{!"branch_weights", i32 9130, i32 5022}
!1576 = !{!"branch_weights", i32 251, i32 4772}
!1577 = !{!"branch_weights", i32 382, i32 4641}
!1578 = !{!"branch_weights", i32 352, i32 4290}
!1579 = !{!"branch_weights", i32 1, i32 352}
!1580 = !{!"branch_weights", i32 309, i32 44}
!1581 = !{!"branch_weights", i32 192, i32 4788}
!1582 = !{!"branch_weights", i32 1, i32 384, i32 1}
!1583 = !{!"branch_weights", i32 1, i32 192}
!1584 = !{!"branch_weights", i32 75477, i32 64837}
!1585 = distinct !{!1585, !499}
!1586 = !{!"branch_weights", i32 310513970, i32 -91001052}
!1587 = !{!"branch_weights", i32 1, i32 64838}
!1588 = !{!"branch_weights", i32 64838, i32 65699}
!1589 = !{!"branch_weights", i32 56790, i32 8910}
!1590 = !{!"branch_weights", i32 8742, i32 169}
!1591 = !{!"branch_weights", i32 44, i32 126}
!1592 = !{!"branch_weights", i32 15876, i32 127, i32 126}
!1593 = !{!"branch_weights", i32 65699, i32 64837}
!1594 = distinct !{!1594, !499}
!1595 = !{!"branch_weights", i32 44, i32 64795}
!1596 = !{!"branch_weights", i32 175, i32 1}
!1597 = !{!"branch_weights", i32 49, i32 133}
!1598 = !{!"branch_weights", i32 58320000, i32 33157124, i32 745290, i32 737100, i32 8019000}
!1599 = !{!"branch_weights", i32 161, i32 1}
!1600 = !{!"branch_weights", i32 1, i32 80}
!1601 = !{!"branch_weights", i32 7014, i32 6594}
!1602 = !{!"branch_weights", i32 36, i32 99}
!1603 = !{!"branch_weights", i32 34, i32 66}
!1604 = !{!"branch_weights", i32 34, i32 33}
!1605 = !{!"branch_weights", i32 34, i32 1}
!1606 = !{!"branch_weights", i32 167, i32 369}
!1607 = distinct !{!1607, !499}
!1608 = !{!"branch_weights", i32 549, i32 175}
!1609 = distinct !{!1609, !499}
!1610 = distinct !{!1610, !499}
!1611 = !{!"reload1.c:emit_reload_insns"}
!1612 = !{!"branch_weights", i32 527510, i32 99145}
!1613 = !{!"branch_weights", i32 99145, i32 1}
!1614 = !{!"branch_weights", i32 99144, i32 1}
!1615 = !{!"branch_weights", i32 170, i32 99144}
!1616 = distinct !{!1616, !499}
!1617 = distinct !{!1617, !499}
!1618 = !{!"branch_weights", i32 572404, i32 547769}
!1619 = distinct !{!1619, !499}
!1620 = distinct !{!1620, !499}
!1621 = !{!"branch_weights", i32 276846, i32 349809}
!1622 = !{!"branch_weights", i32 331037, i32 18773}
!1623 = !{!"branch_weights", i32 330523, i32 515}
!1624 = !{!"branch_weights", i32 1147, i32 329377}
!1625 = !{!"branch_weights", i32 87403, i32 243121}
!1626 = !{!"branch_weights", i32 81282, i32 6122}
!1627 = !{!"branch_weights", i32 80010, i32 1273}
!1628 = !{!"branch_weights", i32 11401, i32 68610}
!1629 = !{!"branch_weights", i32 37950, i32 30661}
!1630 = !{!"branch_weights", i32 99207, i32 527448}
!1631 = !{!"branch_weights", i32 106, i32 99102}
!1632 = !{!"branch_weights", i32 1, i32 99101}
!1633 = !{!"branch_weights", i32 4762, i32 94510}
!1634 = !{!"branch_weights", i32 99101, i32 170}
!1635 = distinct !{!1635, !499}
!1636 = !{!"branch_weights", i32 70141, i32 28962}
!1637 = !{!"branch_weights", i32 28565, i32 398}
!1638 = !{!"branch_weights", i32 1, i32 398}
!1639 = !{!"branch_weights", i32 1, i32 28565}
!1640 = !{!"branch_weights", i32 28565, i32 1}
!1641 = !{!"branch_weights", i32 7913, i32 20653}
!1642 = !{!"branch_weights", i32 62615569, i32 163455755}
!1643 = !{!"branch_weights", i32 150347, i32 225892411}
!1644 = !{!"branch_weights", i32 19, i32 1}
!1645 = !{!"branch_weights", i32 19, i32 0}
!1646 = distinct !{!1646, !499}
!1647 = !{!"branch_weights", i32 1, i32 28564}
!1648 = !{!"branch_weights", i32 62750072, i32 164620708}
!1649 = !{!"branch_weights", i32 28564, i32 100}
!1650 = distinct !{!1650, !499}
!1651 = !{!"branch_weights", i32 2147452863, i32 30785}
!1652 = !{!"branch_weights", i32 1, i32 70141}
!1653 = !{!"branch_weights", i32 66535, i32 3607}
!1654 = !{!"branch_weights", i32 2343, i32 64193}
!1655 = !{!"branch_weights", i32 62883, i32 1311}
!1656 = !{!"branch_weights", i32 3289, i32 3971}
!1657 = !{!"branch_weights", i32 1979, i32 1311}
!1658 = !{!"branch_weights", i32 64752, i32 110}
!1659 = !{!"branch_weights", i32 3539, i32 61214}
!1660 = !{!"branch_weights", i32 61165, i32 50}
!1661 = !{!"branch_weights", i32 59317, i32 1849}
!1662 = !{!"branch_weights", i32 1898, i32 1}
!1663 = !{!"branch_weights", i32 1849, i32 59366}
!1664 = !{!"branch_weights", i32 2146322848, i32 1160800}
!1665 = !{!"branch_weights", i32 2, i32 1847}
!1666 = !{!"branch_weights", i32 2, i32 0}
!1667 = distinct !{!1667, !499}
!1668 = !{!"branch_weights", i32 44375, i32 16840}
!1669 = !{!"branch_weights", i32 16840, i32 1}
!1670 = !{!"branch_weights", i32 1, i32 61213}
!1671 = !{!"branch_weights", i32 3422500, i32 110004929}
!1672 = !{!"branch_weights", i32 61213, i32 65}
!1673 = distinct !{!1673, !499}
!1674 = !{!"branch_weights", i32 262606, i32 264843}
!1675 = !{!"branch_weights", i32 106622, i32 321925678, i32 -582928895}
!1676 = !{!"branch_weights", i32 1, i32 243703}
!1677 = !{!"branch_weights", i32 262580, i32 27}
!1678 = !{!"branch_weights", i32 21135, i32 1}
!1679 = !{!"branch_weights", i32 21161, i32 1}
!1680 = !{!"branch_weights", i32 1, i32 21161}
!1681 = !{!"branch_weights", i32 169295, i32 1}
!1682 = !{!"branch_weights", i32 18280, i32 1}
!1683 = !{!"branch_weights", i32 20804, i32 27}
!1684 = !{!"branch_weights", i32 19563, i32 1}
!1685 = !{!"branch_weights", i32 19563, i32 2692}
!1686 = distinct !{!1686, !499}
!1687 = !{!"branch_weights", i32 1241, i32 21015}
!1688 = !{!"branch_weights", i32 33505785, i32 2113977863}
!1689 = !{!"branch_weights", i32 10359, i32 10446}
!1690 = !{!"branch_weights", i32 10359, i32 1}
!1691 = !{!"branch_weights", i32 4012009, i32 16749431}
!1692 = !{!"branch_weights", i32 1, i32 10358}
!1693 = !{!"branch_weights", i32 2010, i32 8366}
!1694 = !{!"branch_weights", i32 10358, i32 17}
!1695 = distinct !{!1695, !499}
!1696 = distinct !{!1696, !499}
!1697 = !{!"reload1.c:fixup_eh_region_note"}
!1698 = !{!"function_entry_count", i64 1162509}
!1699 = !{!"reload1.c:forget_marked_reloads"}
!1700 = !{!"branch_weights", i32 412354, i32 750156}
!1701 = !{!"branch_weights", i32 708161, i32 41996}
!1702 = !{!"branch_weights", i32 418013, i32 290149}
!1703 = !{!"branch_weights", i32 283572, i32 6578}
!1704 = !{!"branch_weights", i32 1207421784, i32 940061864}
!1705 = !{!"branch_weights", i32 293202, i32 38879}
!1706 = !{!"branch_weights", i32 750156, i32 0}
!1707 = distinct !{!1707, !499}
!1708 = !{!"function_entry_count", i64 547879}
!1709 = !{!"reload1.c:choose_reload_regs_init"}
!1710 = !{!"branch_weights", i32 547879, i32 79020}
!1711 = distinct !{!1711, !499}
!1712 = !{!"branch_weights", i32 439740, i32 187160}
!1713 = distinct !{!1713, !499}
!1714 = !{!"function_entry_count", i64 211737}
!1715 = !{!"reload1.c:free_for_value_p"}
!1716 = !{!"branch_weights", i32 211877, i32 91284}
!1717 = !{!"branch_weights", i32 120455, i32 91423}
!1718 = distinct !{!1718, !499}
!1719 = !{!"function_entry_count", i64 275717}
!1720 = !{!"reload1.c:mark_reload_reg_in_use"}
!1721 = !{!"branch_weights", i32 275717, i32 1}
!1722 = !{!"branch_weights", i32 1, i32 11449, i32 298, i32 1, i32 5, i32 1, i32 34119, i32 1, i32 15, i32 212561, i32 17650, i32 18}
!1723 = !{!"branch_weights", i32 275717, i32 391}
!1724 = distinct !{!1724, !499}
!1725 = !{!"function_entry_count", i64 69456}
!1726 = !{!"reload1.c:allocate_reload_reg"}
!1727 = !{!"branch_weights", i32 148, i32 69310}
!1728 = !{!"branch_weights", i32 134517, i32 111}
!1729 = distinct !{!1729, !499}
!1730 = !{!"branch_weights", i32 65281, i32 1}
!1731 = !{!"branch_weights", i32 290149, i32 95425}
!1732 = !{!"branch_weights", i32 141289, i32 244285}
!1733 = !{!"branch_weights", i32 25970, i32 115320}
!1734 = !{!"branch_weights", i32 114666, i32 655}
!1735 = !{!"branch_weights", i32 114661, i32 6}
!1736 = !{!"branch_weights", i32 2414, i32 241877}
!1737 = !{!"branch_weights", i32 1, i32 241877}
!1738 = !{!"branch_weights", i32 176748, i32 65130}
!1739 = !{!"branch_weights", i32 170682, i32 6067}
!1740 = !{!"branch_weights", i32 4286, i32 1782}
!1741 = !{!"branch_weights", i32 143, i32 69273}
!1742 = !{!"branch_weights", i32 69200, i32 216}
!1743 = !{!"branch_weights", i32 216, i32 148}
!1744 = !{!"branch_weights", i32 9, i32 208}
!1745 = !{!"branch_weights", i32 174, i32 35}
!1746 = !{!"branch_weights", i32 27, i32 148}
!1747 = !{!"branch_weights", i32 320292, i32 65281}
!1748 = distinct !{!1748, !499}
!1749 = !{!"branch_weights", i32 69347, i32 65282}
!1750 = !{!"function_entry_count", i64 69346}
!1751 = !{!"reload1.c:set_reload_reg"}
!1752 = !{!"branch_weights", i32 6025, i32 63323}
!1753 = !{!"branch_weights", i32 59385, i32 3939}
!1754 = !{!"branch_weights", i32 1, i32 69347}
!1755 = !{!"branch_weights", i32 14347, i32 55001}
!1756 = !{!"branch_weights", i32 20224656, i32 2127258992}
!1757 = !{!"branch_weights", i32 1, i32 54484}
!1758 = !{!"branch_weights", i32 52341, i32 17007}
!1759 = !{!"branch_weights", i32 1, i32 17007}
!1760 = !{!"reload1.c:failed_reload"}
!1761 = !{!"function_entry_count", i64 121923}
!1762 = !{!"reload1.c:clear_reload_reg_in_use"}
!1763 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 121924, i32 1, i32 1}
!1764 = distinct !{!1764, !499}
!1765 = !{!"branch_weights", i32 121923, i32 1}
!1766 = distinct !{!1766, !499, !1315, !1316}
!1767 = !{!"function_entry_count", i64 211876}
!1768 = !{!"reload1.c:reload_reg_free_for_value_p"}
!1769 = !{!"branch_weights", i32 95166, i32 116712}
!1770 = !{!"branch_weights", i32 74766, i32 20401}
!1771 = !{!"branch_weights", i32 1, i32 29, i32 7819, i32 1, i32 432, i32 49638, i32 1, i32 37252, i32 1, i32 1}
!1772 = !{!"branch_weights", i32 39666, i32 9973}
!1773 = !{!"branch_weights", i32 91422, i32 1}
!1774 = !{!"branch_weights", i32 95322, i32 81227}
!1775 = !{!"branch_weights", i32 81227, i32 1}
!1776 = !{!"branch_weights", i32 -2110655434, i32 186692844}
!1777 = !{!"branch_weights", i32 -1701838849, i32 -180355072}
!1778 = !{!"branch_weights", i32 3871, i32 54}
!1779 = !{!"branch_weights", i32 109, i32 2916}
!1780 = !{!"branch_weights", i32 1, i32 11, i32 1, i32 29, i32 1298, i32 1, i32 2433, i32 18, i32 2443, i32 1, i32 1, i32 117}
!1781 = !{!"branch_weights", i32 1, i32 59}
!1782 = !{!"branch_weights", i32 5, i32 113}
!1783 = !{!"branch_weights", i32 113, i32 1}
!1784 = !{!"branch_weights", i32 2600, i32 3744}
!1785 = !{!"branch_weights", i32 19, i32 3726}
!1786 = !{!"branch_weights", i32 3614, i32 113}
!1787 = !{!"branch_weights", i32 3614, i32 1}
!1788 = !{!"branch_weights", i32 2600, i32 1}
!1789 = !{!"branch_weights", i32 85126, i32 91422}
!1790 = distinct !{!1790, !499}
!1791 = !{!"branch_weights", i32 2143913238, i32 3570410}
!1792 = !{!"branch_weights", i32 152, i32 1}
!1793 = !{!"function_entry_count", i64 385745}
!1794 = !{!"reload1.c:reload_reg_free_p"}
!1795 = !{!"branch_weights", i32 384986, i32 761}
!1796 = !{!"branch_weights", i32 248079, i32 136908}
!1797 = !{!"branch_weights", i32 1, i32 8479, i32 96552, i32 573, i32 1, i32 18, i32 1, i32 95696, i32 1, i32 46687, i32 62, i32 19}
!1798 = !{!"branch_weights", i32 235, i32 1}
!1799 = !{!"branch_weights", i32 95208, i32 1}
!1800 = !{!"branch_weights", i32 8471, i32 9}
!1801 = !{!"branch_weights", i32 8442, i32 30}
!1802 = !{!"branch_weights", i32 8442, i32 1}
!1803 = !{!"branch_weights", i32 8039, i32 1}
!1804 = !{!"branch_weights", i32 8039, i32 17942}
!1805 = distinct !{!1805, !499}
!1806 = !{!"branch_weights", i32 25981, i32 1}
!1807 = !{!"branch_weights", i32 25579, i32 403}
!1808 = !{!"branch_weights", i32 25579, i32 1}
!1809 = !{!"branch_weights", i32 96540, i32 13}
!1810 = !{!"branch_weights", i32 95510, i32 1031}
!1811 = !{!"branch_weights", i32 95510, i32 1}
!1812 = !{!"branch_weights", i32 95205, i32 1}
!1813 = !{!"branch_weights", i32 95205, i32 100229}
!1814 = distinct !{!1814, !499}
!1815 = !{!"branch_weights", i32 195130, i32 305}
!1816 = !{!"branch_weights", i32 95206, i32 5071}
!1817 = !{!"branch_weights", i32 5071, i32 1}
!1818 = distinct !{!1818, !499}
!1819 = !{!"branch_weights", i32 565, i32 9}
!1820 = !{!"branch_weights", i32 565, i32 1}
!1821 = !{!"branch_weights", i32 564, i32 1}
!1822 = !{!"branch_weights", i32 80476, i32 385330}
!1823 = distinct !{!1823, !499}
!1824 = distinct !{!1824, !499}
!1825 = !{!"branch_weights", i32 18, i32 1}
!1826 = !{!"branch_weights", i32 1, i32 143}
!1827 = !{!"branch_weights", i32 18, i32 2718}
!1828 = distinct !{!1828, !499}
!1829 = distinct !{!1829, !499}
!1830 = !{!"branch_weights", i32 95208, i32 99216}
!1831 = distinct !{!1831, !499}
!1832 = !{!"branch_weights", i32 193937, i32 488}
!1833 = !{!"branch_weights", i32 95206, i32 4}
!1834 = distinct !{!1834, !499}
!1835 = !{!"branch_weights", i32 46687, i32 1}
!1836 = !{!"branch_weights", i32 46686, i32 1}
!1837 = !{!"branch_weights", i32 46686, i32 49697}
!1838 = distinct !{!1838, !499}
!1839 = !{!"branch_weights", i32 46682, i32 1}
!1840 = !{!"branch_weights", i32 96383, i32 1}
!1841 = !{!"branch_weights", i32 46682, i32 49000}
!1842 = distinct !{!1842, !499}
!1843 = !{!"branch_weights", i32 95678, i32 5}
!1844 = !{!"branch_weights", i32 95678, i32 1}
!1845 = !{!"branch_weights", i32 235, i32 745}
!1846 = distinct !{!1846, !499}
!1847 = !{!"branch_weights", i32 242, i32 4}
!1848 = !{!"branch_weights", i32 242, i32 1}
!1849 = !{!"branch_weights", i32 59, i32 1}
!1850 = !{!"function_entry_count", i64 626653}
!1851 = !{!"reload1.c:do_input_reload"}
!1852 = !{!"branch_weights", i32 242044, i32 107200}
!1853 = !{!"branch_weights", i32 500413792, i32 1647069856}
!1854 = !{!"branch_weights", i32 854, i32 80529}
!1855 = !{!1281, !506, i64 20}
!1856 = !{!"branch_weights", i32 81241, i32 142}
!1857 = !{!"branch_weights", i32 330479, i32 18765}
!1858 = !{!"branch_weights", i32 17562, i32 1204}
!1859 = !{!"branch_weights", i32 1, i32 1204}
!1860 = !{!"branch_weights", i32 636706739, i32 -1527048421}
!1861 = !{!"branch_weights", i32 1, i32 626654}
!1862 = !{!"branch_weights", i32 607882, i32 18773}
!1863 = !{!"branch_weights", i32 9, i32 18765}
!1864 = !{!"branch_weights", i32 1, i32 18765}
!1865 = !{!"branch_weights", i32 607368, i32 515}
!1866 = !{!"branch_weights", i32 1, i32 19287}
!1867 = !{!"branch_weights", i32 19287, i32 1}
!1868 = !{!"branch_weights", i32 7733, i32 11555}
!1869 = !{!"branch_weights", i32 9185, i32 2371}
!1870 = !{!"branch_weights", i32 9185, i32 1}
!1871 = !{!"reload1.c:do_output_reload"}
!1872 = !{!"branch_weights", i32 132956584, i32 -1550715781}
!1873 = !{!"branch_weights", i32 1, i32 28958}
!1874 = !{!"branch_weights", i32 28950, i32 9}
!1875 = !{!"branch_weights", i32 -1596175417, i32 -1238833817}
!1876 = !{!"branch_weights", i32 45934, i32 3777}
!1877 = !{!"branch_weights", i32 38154, i32 7781}
!1878 = !{!"branch_weights", i32 29681, i32 8474}
!1879 = !{!"branch_weights", i32 7269, i32 1206}
!1880 = !{!"branch_weights", i32 555, i32 652}
!1881 = !{!"branch_weights", i32 276, i32 280}
!1882 = !{!"branch_weights", i32 1, i32 280}
!1883 = !{!"branch_weights", i32 -1550472966, i32 132968348}
!1884 = !{!"branch_weights", i32 22396, i32 6563}
!1885 = !{!"branch_weights", i32 10195301, i32 40128}
!1886 = !{!"branch_weights", i32 22242, i32 68}
!1887 = !{!"branch_weights", i32 86, i32 22244}
!1888 = !{!"branch_weights", i32 86, i32 1}
!1889 = !{!"branch_weights", i32 35488425, i32 2111995223}
!1890 = !{!"branch_weights", i32 21961, i32 1}
!1891 = !{!"function_entry_count", i64 192748}
!1892 = !{!"reload1.c:reload_reg_reaches_end_p"}
!1893 = !{!"branch_weights", i32 1, i32 22562, i32 45, i32 513, i32 1, i32 67442, i32 66908, i32 1, i32 35, i32 35242, i32 9, i32 1}
!1894 = !{!"branch_weights", i32 231, i32 1}
!1895 = !{!"branch_weights", i32 231, i32 705}
!1896 = distinct !{!1896, !499}
!1897 = !{!"branch_weights", i32 117, i32 1}
!1898 = !{!"branch_weights", i32 101, i32 17}
!1899 = !{!"branch_weights", i32 101, i32 1}
!1900 = !{!"branch_weights", i32 29, i32 1}
!1901 = !{!"branch_weights", i32 130, i32 1}
!1902 = !{!"branch_weights", i32 130, i32 383}
!1903 = distinct !{!1903, !499}
!1904 = !{!"branch_weights", i32 131, i32 383}
!1905 = !{!"branch_weights", i32 1, i32 131}
!1906 = distinct !{!1906, !499}
!1907 = !{!"branch_weights", i32 130, i32 145}
!1908 = distinct !{!1908, !499}
!1909 = !{!"branch_weights", i32 275, i32 1}
!1910 = !{!"branch_weights", i32 131, i32 1}
!1911 = !{!"branch_weights", i32 83, i32 49}
!1912 = !{!"branch_weights", i32 83, i32 1}
!1913 = !{!"branch_weights", i32 11814, i32 67442}
!1914 = !{!"branch_weights", i32 11814, i32 1}
!1915 = distinct !{!1915, !499}
!1916 = !{!"branch_weights", i32 126495, i32 1}
!1917 = !{!"branch_weights", i32 126495, i32 139919}
!1918 = distinct !{!1918, !499}
!1919 = !{!"branch_weights", i32 266414, i32 1}
!1920 = !{!"branch_weights", i32 258561, i32 7854}
!1921 = distinct !{!1921, !499}
!1922 = !{!"branch_weights", i32 365, i32 34919}
!1923 = !{!"branch_weights", i32 365, i32 0}
!1924 = distinct !{!1924, !499}
!1925 = !{!"branch_weights", i32 365, i32 1}
!1926 = !{!"function_entry_count", i64 93315}
!1927 = !{!"reload1.c:reload_regs_reach_end_p"}
!1928 = !{!"branch_weights", i32 89777, i32 1}
!1929 = !{!"branch_weights", i32 89777, i32 3702}
!1930 = distinct !{!1930, !499}
!1931 = !{!"branch_weights", i32 3539, i32 89941}
!1932 = !{!"function_entry_count", i64 9760}
!1933 = !{!"reload1.c:inherit_piecemeal_p"}
!1934 = !{!"branch_weights", i32 9742, i32 20}
!1935 = !{!"function_entry_count", i64 61803}
!1936 = !{!"reload1.c:emit_input_reload_insns"}
!1937 = !{!"branch_weights", i32 61352, i32 453}
!1938 = !{!"branch_weights", i32 439, i32 15}
!1939 = !{!"branch_weights", i32 1, i32 878, i32 1}
!1940 = !{!"branch_weights", i32 1, i32 61804}
!1941 = !{!"branch_weights", i32 57317, i32 4488}
!1942 = !{!"branch_weights", i32 5811, i32 51507}
!1943 = !{!"branch_weights", i32 5447, i32 365}
!1944 = !{!"branch_weights", i32 345, i32 21}
!1945 = !{!"branch_weights", i32 345, i32 1}
!1946 = !{!"branch_weights", i32 449, i32 60907}
!1947 = !{!"branch_weights", i32 61804, i32 1}
!1948 = !{!"branch_weights", i32 0, i32 449}
!1949 = distinct !{!1949, !499}
!1950 = !{!"branch_weights", i32 -527766279, i32 60953}
!1951 = !{!"branch_weights", i32 1, i32 9293, i32 25805, i32 172, i32 1, i32 1, i32 1, i32 26530, i32 1, i32 8}
!1952 = !{!"branch_weights", i32 52580, i32 9225}
!1953 = !{!"branch_weights", i32 1, i32 9225}
!1954 = !{!1281, !506, i64 76}
!1955 = !{!1281, !506, i64 36}
!1956 = !{!"branch_weights", i32 51941, i32 5377}
!1957 = !{!"branch_weights", i32 36728, i32 15214}
!1958 = !{!"branch_weights", i32 15214, i32 1}
!1959 = !{!"branch_weights", i32 994, i32 14221}
!1960 = !{!"branch_weights", i32 -1908019581, i32 -342155560, i32 -1617905876, i32 -1064312760}
!1961 = !{!"branch_weights", i32 127, i32 2687489}
!1962 = distinct !{!1962, !499}
!1963 = !{!"branch_weights", i32 7423, i32 757}
!1964 = !{!"branch_weights", i32 15, i32 7409}
!1965 = !{!"branch_weights", i32 15, i32 1}
!1966 = !{!"branch_weights", i32 13, i32 3}
!1967 = !{!"branch_weights", i32 1, i32 13}
!1968 = !{!"branch_weights", i32 13, i32 1}
!1969 = !{!1353, !506, i64 4}
!1970 = !{!"branch_weights", i32 12, i32 2}
!1971 = !{!"branch_weights", i32 12, i32 1}
!1972 = !{!"branch_weights", i32 11, i32 2}
!1973 = !{!"branch_weights", i32 2, i32 3, i32 4}
!1974 = distinct !{!1974, !499}
!1975 = !{!"branch_weights", i32 1, i32 61792}
!1976 = !{!1281, !506, i64 84}
!1977 = !{!1978, !506, i64 0}
!1978 = !{!"secondary_reload_info", !506, i64 0, !506, i64 4, !505, i64 8, !506, i64 16}
!1979 = !{!1978, !505, i64 8}
!1980 = !{!682, !505, i64 1728}
!1981 = !{!1113, !505, i64 16}
!1982 = !{!"branch_weights", i32 61792, i32 1}
!1983 = !{!"branch_weights", i32 264697908, i32 -539426816, i32 29427659}
!1984 = !{!"branch_weights", i32 51495, i32 5811}
!1985 = !{!"branch_weights", i32 4, i32 51492}
!1986 = !{!"branch_weights", i32 1, i32 4}
!1987 = !{!"branch_weights", i32 449, i32 1}
!1988 = !{!"branch_weights", i32 1, i32 449}
!1989 = !{!"branch_weights", i32 856, i32 8995}
!1990 = !{!"branch_weights", i32 1, i32 856}
!1991 = !{!"branch_weights", i32 61366, i32 439}
!1992 = !{!"function_entry_count", i64 2669}
!1993 = !{!"reload1.c:delete_output_reload"}
!1994 = !{!"branch_weights", i32 2670, i32 1}
!1995 = !{!"branch_weights", i32 1, i32 2670}
!1996 = distinct !{!1996, !499}
!1997 = !{!"branch_weights", i32 2665, i32 1}
!1998 = !{!"branch_weights", i32 923, i32 3922}
!1999 = !{!"branch_weights", i32 625, i32 3298}
!2000 = !{!"branch_weights", i32 3221, i32 78}
!2001 = !{!"branch_weights", i32 117, i32 3805}
!2002 = !{!"branch_weights", i32 0, i32 117}
!2003 = distinct !{!2003, !499}
!2004 = !{!"branch_weights", i32 1541, i32 2382}
!2005 = !{!"branch_weights", i32 80, i32 2303}
!2006 = !{!"branch_weights", i32 461, i32 25}
!2007 = !{!"branch_weights", i32 2179, i32 2665}
!2008 = distinct !{!2008, !499}
!2009 = !{!"branch_weights", i32 3, i32 2664}
!2010 = !{!"branch_weights", i32 3, i32 1}
!2011 = !{!"branch_weights", i32 27, i32 2640}
!2012 = distinct !{!2012, !499}
!2013 = !{!"branch_weights", i32 48, i32 2619}
!2014 = !{!"branch_weights", i32 1, i32 1908}
!2015 = !{!"branch_weights", i32 901654281, i32 -1411383298, i32 1816194170, i32 1816194170}
!2016 = !{!"branch_weights", i32 711, i32 665}
!2017 = !{!"branch_weights", i32 1444, i32 1}
!2018 = distinct !{!2018, !499}
!2019 = !{!"branch_weights", i32 1908, i32 1628}
!2020 = distinct !{!2020, !499}
!2021 = !{!"branch_weights", i32 644, i32 1266}
!2022 = !{!"branch_weights", i32 1218, i32 49}
!2023 = !{!"branch_weights", i32 1043, i32 176}
!2024 = !{!1353, !506, i64 24}
!2025 = !{!"branch_weights", i32 1043, i32 1}
!2026 = !{!"branch_weights", i32 1, i32 1043}
!2027 = !{!"branch_weights", i32 1, i32 159}
!2028 = !{!"branch_weights", i32 -2047633134, i32 690904794}
!2029 = !{!"branch_weights", i32 6679, i32 1}
!2030 = !{!"branch_weights", i32 1043, i32 7980}
!2031 = !{!"branch_weights", i32 959611577, i32 256583725, i32 196578108, i32 -1051105278, i32 55135001}
!2032 = !{!"branch_weights", i32 7535, i32 1}
!2033 = !{!"branch_weights", i32 159, i32 188673}
!2034 = distinct !{!2034, !499}
!2035 = distinct !{!2035, !499}
!2036 = !{!"reload1.c:inc_for_reload"}
!2037 = !{!"function_entry_count", i64 15213}
!2038 = !{!"reload1.c:conflicts_with_override"}
!2039 = !{!"branch_weights", i32 15213, i32 1}
!2040 = !{!"branch_weights", i32 31641, i32 43}
!2041 = !{!"branch_weights", i32 43, i32 1}
!2042 = !{!"branch_weights", i32 16470, i32 15213}
!2043 = distinct !{!2043, !499}
!2044 = !{!"function_entry_count", i64 1228}
!2045 = !{!"reload1.c:REG_N_SETS"}
!2046 = !{!1030, !506, i64 0}
!2047 = !{!"reload1.c:reload_adjust_reg_for_icode"}
!2048 = !{!"reload1.c:reload_adjust_reg_for_temp"}
!2049 = distinct !{!2049, !499}
!2050 = !{!"function_entry_count", i64 83755}
!2051 = !{!"reload1.c:gen_reload"}
!2052 = !{!"branch_weights", i32 449, i32 83308}
!2053 = !{!"branch_weights", i32 28, i32 83729}
!2054 = !{!"branch_weights", i32 1, i32 28}
!2055 = !{!"branch_weights", i32 97824713, i32 34635776, i32 -1697586915, i32 14708504}
!2056 = !{!"branch_weights", i32 1, i32 4228, i32 2, i32 1}
!2057 = !{!"branch_weights", i32 1117249, i32 1058, i32 1057}
!2058 = !{!"branch_weights", i32 1057, i32 1}
!2059 = !{!"branch_weights", i32 1, i32 1057}
!2060 = !{!"branch_weights", i32 1117249, i32 2115}
!2061 = !{!2062, !506, i64 0}
!2062 = !{!"optab_handlers", !506, i64 0}
!2063 = !{!1115, !505, i64 0}
!2064 = !{!"branch_weights", i32 27775, i32 51940}
!2065 = !{!"branch_weights", i32 90, i32 860126, i32 840}
!2066 = !{!"branch_weights", i32 28, i32 1}
!2067 = !{!"branch_weights", i32 7115, i32 20659}
!2068 = !{!"branch_weights", i32 7115, i32 1}
!2069 = !{!"branch_weights", i32 82671, i32 30}
!2070 = !{!"branch_weights", i32 1, i32 82671}
!2071 = !{!"branch_weights", i32 82252, i32 449}
!2072 = !{!"branch_weights", i32 81494, i32 1207}
!2073 = !{!"function_entry_count", i64 1056}
!2074 = !{!"reload1.c:emit_insn_if_valid_for_reload"}
!2075 = !{!"function_entry_count", i64 1908}
!2076 = !{!"reload1.c:delete_address_reloads"}
!2077 = !{!"branch_weights", i32 15279, i32 1}
!2078 = !{!"branch_weights", i32 1909, i32 1}
!2079 = !{!"branch_weights", i32 1879170671, i32 268312977}
!2080 = !{!"branch_weights", i32 1, i32 1909}
!2081 = !{!"branch_weights", i32 3644281, i32 3819}
!2082 = !{!"branch_weights", i32 -491484562, i32 806119860}
!2083 = !{!"branch_weights", i32 726, i32 1}
!2084 = !{!"branch_weights", i32 986380310, i32 28672000}
!2085 = !{!"branch_weights", i32 715, i32 1}
!2086 = !{!"branch_weights", i32 1752926569, i32 394557079}
!2087 = !{!"branch_weights", i32 152, i32 1365}
!2088 = !{!"branch_weights", i32 3, i32 150}
!2089 = !{!"reload1.c:delete_address_reloads_1"}
!2090 = distinct !{!2090, !499}
!2091 = distinct !{!2091, !499}
!2092 = distinct !{!2092, !499}
!2093 = distinct !{!2093, !499}
!2094 = distinct !{!2094, !499}
!2095 = distinct !{!2095, !499}
!2096 = distinct !{!2096, !499}
!2097 = !{!"function_entry_count", i64 21960}
!2098 = !{!"reload1.c:emit_output_reload_insns"}
!2099 = !{!"branch_weights", i32 4400, i32 17562}
!2100 = !{!1281, !506, i64 80}
!2101 = !{!"branch_weights", i32 5, i32 21957}
!2102 = !{!"branch_weights", i32 5, i32 1}
!2103 = !{!1281, !506, i64 88}
!2104 = !{!"branch_weights", i32 1, i32 21961}
!2105 = !{!"branch_weights", i32 21932, i32 30}
!2106 = !{!"branch_weights", i32 175463, i32 1}
!2107 = !{!"branch_weights", i32 15350, i32 1}
!2108 = !{!"branch_weights", i32 1335016033, i32 812467615}
!2109 = !{!"branch_weights", i32 77, i32 21570}
!2110 = !{!"branch_weights", i32 77, i32 1}
!2111 = !{!"branch_weights", i32 1, i32 21960}
!2112 = !{!"branch_weights", i32 175727, i32 1}
!2113 = !{!"branch_weights", i32 5, i32 21961}
!2114 = !{!"branch_weights", i32 175695, i32 1}
!2115 = !{!"branch_weights", i32 357903755, i32 1789579893}
!2116 = !{!"branch_weights", i32 47, i32 1}
!2117 = !{!"branch_weights", i32 1919027990, i32 228455658}
!2118 = !{!"branch_weights", i32 21960, i32 5}
!2119 = distinct !{!2119, !499}
!2120 = !{!"function_entry_count", i64 567698}
!2121 = !{!"branch_weights", i32 1, i32 2270793}
!2122 = !{!"branch_weights", i32 1703094, i32 567699}
!2123 = distinct !{!2123, !499}
