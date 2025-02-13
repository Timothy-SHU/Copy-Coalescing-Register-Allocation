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
define dso_local void @init_reload() local_unnamed_addr #0 !prof !396 {
  %1 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 58) #22
  %2 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4) #22
  %3 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %1, ptr noundef %2) #22
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #22
  store i8 0, ptr @spill_indirect_levels, align 1, !tbaa !397
  %5 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %4, i8 noundef zeroext 0) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !400

7:                                                ; preds = %0, %7
  %8 = phi ptr [ %11, %7 ], [ %4, %0 ]
  %9 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !397
  %10 = add i8 %9, 1
  store i8 %10, ptr @spill_indirect_levels, align 1, !tbaa !397
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %8) #22
  %12 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %11, i8 noundef zeroext 0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7, !prof !401, !llvm.loop !402

14:                                               ; preds = %7, %0
  %15 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef nonnull @.str) #22
  %16 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %15) #22
  %17 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %16, i8 noundef zeroext 0) #22
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr @indirect_symref_ok, align 1, !tbaa !397
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 53
  br i1 %21, label %31, label %22, !prof !400, !llvm.loop !404

22:                                               ; preds = %14, %19
  %23 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %24 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 6) #22
  %25 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %23) #22
  %26 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %24, ptr noundef %25) #22
  %27 = tail call ptr @plus_constant(ptr noundef %26, i64 noundef 4) #22
  %28 = tail call i32 @memory_address_addr_space_p(i32 noundef 14, ptr noundef %27, i8 noundef zeroext 0) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30, !prof !405

30:                                               ; preds = %22
  store i8 1, ptr @double_reg_address_ok, align 1, !tbaa !397
  br label %31

31:                                               ; preds = %19, %30
  %32 = tail call i32 @_obstack_begin(ptr noundef nonnull @reload_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42, !prof !405

39:                                               ; preds = %31
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %40 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %42

42:                                               ; preds = %31, %39
  %43 = phi ptr [ %34, %31 ], [ %41, %39 ]
  %44 = phi i64 [ 0, %31 ], [ %40, %39 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %51, !prof !414

48:                                               ; preds = %42
  %49 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %50 = or i8 %49, 2
  store i8 %50, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %51

51:                                               ; preds = %42, %48
  %52 = ptrtoint ptr %46 to i64
  store i64 %52, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %53 = ptrtoint ptr %45 to i64
  %54 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = xor i32 %54, -1
  %58 = sext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = inttoptr i64 %59 to ptr
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %59, %62
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %65, %62
  %67 = icmp sgt i64 %63, %66
  %68 = select i1 %67, ptr %64, ptr %60, !prof !405
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %46, ptr @reload_startobj, align 8, !tbaa !417
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
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !418 !PGOFuncName !419 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !420
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @new_insn_chain() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !417
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %44, !prof !423

3:                                                ; preds = %0
  store i64 128, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 128
  br i1 %9, label %10, label %13, !prof !424

10:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 128) #22
  %11 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %5, %3 ], [ %12, %10 ]
  %15 = phi i64 [ 128, %3 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22, !prof !425

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  store ptr %31, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %40, !prof !425

39:                                               ; preds = %22
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %40

40:                                               ; preds = %22, %39
  %41 = phi ptr [ %31, %22 ], [ %35, %39 ]
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %42 = getelementptr inbounds %struct.insn_chain, ptr %17, i64 0, i32 6
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %42) #23
  %43 = getelementptr inbounds %struct.insn_chain, ptr %17, i64 0, i32 7
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %43) #23
  br label %46

44:                                               ; preds = %0
  %45 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %45, ptr @unused_insn_chains, align 8, !tbaa !417
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
define dso_local void @compute_use_by_pseudos(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 53, ptr noundef nonnull %3) #23
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !429
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7, !prof !430

7:                                                ; preds = %2, %29
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %9 = load i32, ptr %3, align 4, !tbaa !431
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %8, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !432
  %13 = icmp slt i16 %12, 0
  br i1 %13, label %14, label %21, !prof !434

14:                                               ; preds = %7
  %15 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %29, !prof !435

17:                                               ; preds = %14
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !431
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2) #22
  br label %29

21:                                               ; preds = %7
  %22 = zext nneg i16 %12 to i32
  %23 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %24 = getelementptr inbounds ptr, ptr %23, i64 %10
  %25 = load ptr, ptr %24, align 8, !tbaa !417
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  tail call fastcc void @add_to_hard_reg_set(ptr noundef %0, i32 noundef %28, i32 noundef %22) #23
  br label %29

29:                                               ; preds = %20, %17, %14, %21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !429
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %7, !prof !436, !llvm.loop !437

32:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !prof !438 !PGOFuncName !439 {
  %5 = load ptr, ptr %1, align 8, !tbaa !440
  store ptr %5, ptr %0, align 8, !tbaa !441
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !443
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !444

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !441
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !445
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14, !prof !447
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !448
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !449
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !450
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !431
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !451 !PGOFuncName !452 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !450
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !453

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !454

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !431
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !455, !llvm.loop !456

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !431
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !431
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !448
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !441
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !448
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !457

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !449
  store i64 %35, ptr %3, align 8, !tbaa !450
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !458

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !431
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !431
  %40 = load i32, ptr %23, align 8, !tbaa !448
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !448
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !459, !llvm.loop !460

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !461
  store ptr %44, ptr %0, align 8, !tbaa !441
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !462

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !445
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !431
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !450
  store i32 %16, ptr %1, align 4, !tbaa !431
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !463 !PGOFuncName !464 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #23
  %5 = load i64, ptr %0, align 8, !tbaa !449
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !prof !465, !llvm.loop !466

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !449
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !467 !PGOFuncName !468 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !450
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !450
  %6 = load i32, ptr %1, align 4, !tbaa !431
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !431
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reload(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !469 {
  %3 = alloca i64, align 8
  tail call void @init_recog() #22
  store i1 false, ptr @failure, align 4
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13, !prof !470

10:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %11 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %5, %2 ], [ %12, %10 ]
  %15 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22, !prof !471

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  %39 = select i1 %38, ptr %35, ptr %31, !prof !470
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %17, ptr @reload_firstobj, align 8, !tbaa !417
  %40 = tail call ptr @emit_note(i32 noundef 0) #22
  %41 = tail call i32 @get_max_uid() #22
  store i32 %41, ptr @reload_first_uid, align 4, !tbaa !431
  tail call void @clear_secondary_mem() #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_stack_slot, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_stack_slot_width, i8 0, i64 212, i1 false)
  tail call void @init_save_areas() #22
  %42 = load i32, ptr @max_regno, align 4, !tbaa !431
  %43 = icmp sgt i32 %42, 53
  br i1 %43, label %44, label %49, !prof !472

44:                                               ; preds = %22, %44
  %45 = phi i32 [ %46, %44 ], [ 53, %22 ]
  tail call void @mark_home_live(i32 noundef %45) #23
  %46 = add nuw nsw i32 %45, 1
  %47 = load i32, ptr @max_regno, align 4, !tbaa !431
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %44, label %49, !prof !473, !llvm.loop !474

49:                                               ; preds = %44, %22
  %50 = load ptr, ptr @cfun, align 8, !tbaa !417
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 20
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !471

55:                                               ; preds = %49
  %56 = tail call fastcc zeroext i8 @has_nonexceptional_receiver() #23, !range !429
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !475
  br label %62

59:                                               ; preds = %55, %49
  %60 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !475
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62, !prof !484

62:                                               ; preds = %58, %59
  br label %63

63:                                               ; preds = %62, %74
  %64 = phi i64 [ %75, %74 ], [ 0, %62 ]
  %65 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !397
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %64
  %70 = load i8, ptr %69, align 1, !tbaa !397
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = trunc i64 %64 to i32
  tail call void @df_set_regs_ever_live(i32 noundef %73, i8 noundef zeroext 1) #22
  br label %74

74:                                               ; preds = %63, %68, %72
  %75 = add nuw nsw i64 %64, 1
  %76 = icmp eq i64 %75, 53
  br i1 %76, label %77, label %63, !llvm.loop !485

77:                                               ; preds = %74, %59
  %78 = load i32, ptr @max_regno, align 4, !tbaa !431
  %79 = sext i32 %78 to i64
  %80 = tail call ptr @xcalloc(i64 noundef %79, i64 noundef 8) #22
  store ptr %80, ptr @reg_equiv_constant, align 8, !tbaa !417
  %81 = load i32, ptr @max_regno, align 4, !tbaa !431
  %82 = sext i32 %81 to i64
  %83 = tail call ptr @xcalloc(i64 noundef %82, i64 noundef 8) #22
  store ptr %83, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %84 = load i32, ptr @max_regno, align 4, !tbaa !431
  %85 = sext i32 %84 to i64
  %86 = tail call ptr @xcalloc(i64 noundef %85, i64 noundef 8) #22
  store ptr %86, ptr @reg_equiv_mem, align 8, !tbaa !417
  %87 = load i32, ptr @max_regno, align 4, !tbaa !431
  %88 = sext i32 %87 to i64
  %89 = tail call ptr @xcalloc(i64 noundef %88, i64 noundef 8) #22
  store ptr %89, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !417
  %90 = load i32, ptr @max_regno, align 4, !tbaa !431
  %91 = sext i32 %90 to i64
  %92 = tail call ptr @xcalloc(i64 noundef %91, i64 noundef 8) #22
  store ptr %92, ptr @reg_equiv_address, align 8, !tbaa !417
  %93 = load i32, ptr @max_regno, align 4, !tbaa !431
  %94 = sext i32 %93 to i64
  %95 = tail call ptr @xcalloc(i64 noundef %94, i64 noundef 4) #22
  store ptr %95, ptr @reg_max_ref_width, align 8, !tbaa !417
  %96 = load i32, ptr @max_regno, align 4, !tbaa !431
  %97 = sext i32 %96 to i64
  %98 = tail call ptr @xcalloc(i64 noundef %97, i64 noundef 2) #22
  store ptr %98, ptr @reg_old_renumber, align 8, !tbaa !417
  %99 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %100 = load i32, ptr @max_regno, align 4, !tbaa !431
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %98, ptr align 2 %99, i64 %102, i1 false)
  %103 = load i32, ptr @max_regno, align 4, !tbaa !431
  %104 = sext i32 %103 to i64
  %105 = shl nsw i64 %104, 3
  %106 = tail call ptr @xmalloc(i64 noundef %105) #22
  store ptr %106, ptr @pseudo_forbidden_regs, align 8, !tbaa !417
  %107 = load i32, ptr @max_regno, align 4, !tbaa !431
  %108 = sext i32 %107 to i64
  %109 = tail call ptr @xcalloc(i64 noundef %108, i64 noundef 8) #22
  store ptr %109, ptr @pseudo_previous_regs, align 8, !tbaa !417
  store i64 0, ptr @bad_spill_regs_global, align 8, !tbaa !449
  store i32 0, ptr @num_eliminable_invariants, align 4, !tbaa !431
  %110 = icmp eq ptr %0, null
  br i1 %110, label %259, label %111, !prof !486

111:                                              ; preds = %77, %255
  %112 = phi ptr [ %257, %255 ], [ %0, %77 ]
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = add nsw i32 %114, -7
  %116 = icmp ult i32 %115, 4
  br i1 %116, label %117, label %128, !prof !487

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !397
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 23
  br i1 %122, label %134, label %123, !prof !488

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
  br i1 %133, label %134, label %149, !prof !489

134:                                              ; preds = %117, %128
  %135 = phi ptr [ %132, %128 ], [ %119, %117 ]
  %136 = phi i32 [ %131, %128 ], [ %113, %117 ]
  %137 = phi i32 [ %130, %128 ], [ %114, %117 ]
  %138 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !397
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 24
  br i1 %142, label %143, label %149, !prof !490

143:                                              ; preds = %134
  %144 = and i32 %136, 16711680
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146, !prof !471

146:                                              ; preds = %143
  %147 = and i32 %136, -16711681
  store i32 %147, ptr %112, align 8
  %148 = and i32 %136, 65535
  br label %149

149:                                              ; preds = %128, %146, %143, %134
  %150 = phi ptr [ %132, %128 ], [ %135, %146 ], [ %135, %143 ], [ %135, %134 ]
  %151 = phi i32 [ %130, %128 ], [ %148, %146 ], [ %137, %143 ], [ %137, %134 ]
  %152 = add nsw i32 %151, -11
  %153 = icmp ult i32 %152, -3
  br i1 %153, label %157, label %154, !prof !491

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !397
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %156) #23
  br label %157

157:                                              ; preds = %149, %154
  %158 = icmp eq ptr %150, null
  br i1 %158, label %255, label %159, !prof !492

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !397
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 37
  br i1 %164, label %165, label %255, !prof !493

165:                                              ; preds = %159
  %166 = tail call ptr @find_reg_note(ptr noundef nonnull %112, i32 noundef 3, ptr noundef null) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %255, label %168, !prof !494

168:                                              ; preds = %165
  %169 = load ptr, ptr %160, align 8, !tbaa !397
  %170 = tail call fastcc i32 @rhs_regno(ptr noundef %169) #23
  %171 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !397
  %173 = icmp slt i32 %170, 58
  br i1 %173, label %255, label %174, !prof !495

174:                                              ; preds = %168
  %175 = tail call i32 @function_invariant_p(ptr noundef %172) #23, !range !496
  %176 = icmp ne i32 %175, 0
  %177 = load i32, ptr @flag_pic, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %190, !prof !497

180:                                              ; preds = %174
  %181 = load i32, ptr %172, align 8
  %182 = and i32 %181, 65535
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !431
  %186 = icmp eq i32 %185, 9
  br i1 %186, label %187, label %251

187:                                              ; preds = %180
  %188 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %172) #22
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %251, label %190

190:                                              ; preds = %187, %174
  %191 = tail call i32 @memory_operand(ptr noundef %172, i32 noundef 0) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193, !prof !498

193:                                              ; preds = %190
  %194 = tail call ptr @copy_rtx(ptr noundef %172) #22
  %195 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %196 = zext nneg i32 %170 to i64
  %197 = getelementptr inbounds ptr, ptr %195, i64 %196
  store ptr %194, ptr %197, align 8, !tbaa !417
  br label %255

198:                                              ; preds = %190
  %199 = tail call i32 @function_invariant_p(ptr noundef %172) #23, !range !496
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %247, label %201, !prof !499

201:                                              ; preds = %198
  %202 = load i32, ptr %172, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 49
  br i1 %204, label %205, label %212, !prof !499

205:                                              ; preds = %201
  %206 = tail call ptr @copy_rtx(ptr noundef nonnull %172) #22
  %207 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %208 = zext nneg i32 %170 to i64
  %209 = getelementptr inbounds ptr, ptr %207, i64 %208
  store ptr %206, ptr %209, align 8, !tbaa !417
  %210 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !431
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr @num_eliminable_invariants, align 4, !tbaa !431
  br label %255

212:                                              ; preds = %201
  %213 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !417
  %214 = icmp eq ptr %172, %213
  %215 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %216 = icmp eq ptr %172, %215
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %218, label %224, !prof !500

218:                                              ; preds = %212
  %219 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %220 = zext nneg i32 %170 to i64
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  store ptr %172, ptr %221, align 8, !tbaa !417
  %222 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !431
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr @num_eliminable_invariants, align 4, !tbaa !431
  br label %255

224:                                              ; preds = %212
  %225 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %172) #22
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %231, label %227, !prof !499

227:                                              ; preds = %224
  %228 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %229 = zext nneg i32 %170 to i64
  %230 = getelementptr inbounds ptr, ptr %228, i64 %229
  store ptr %172, ptr %230, align 8, !tbaa !417
  br label %255

231:                                              ; preds = %224
  %232 = load ptr, ptr %160, align 8, !tbaa !397
  %233 = load i32, ptr %232, align 8
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  %236 = tail call ptr @force_const_mem(i32 noundef %235, ptr noundef nonnull %172) #22
  %237 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %238 = zext nneg i32 %170 to i64
  %239 = getelementptr inbounds ptr, ptr %237, i64 %238
  store ptr %236, ptr %239, align 8, !tbaa !417
  %240 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %241 = getelementptr inbounds ptr, ptr %240, i64 %238
  %242 = load ptr, ptr %241, align 8, !tbaa !417
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %255

244:                                              ; preds = %231
  %245 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %246 = getelementptr inbounds ptr, ptr %245, i64 %238
  store ptr null, ptr %246, align 8, !tbaa !417
  br label %255

247:                                              ; preds = %198
  %248 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %249 = zext nneg i32 %170 to i64
  %250 = getelementptr inbounds ptr, ptr %248, i64 %249
  store ptr null, ptr %250, align 8, !tbaa !417
  br label %255

251:                                              ; preds = %187, %180
  %252 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %253 = zext nneg i32 %170 to i64
  %254 = getelementptr inbounds ptr, ptr %252, i64 %253
  store ptr null, ptr %254, align 8, !tbaa !417
  br label %255

255:                                              ; preds = %247, %165, %168, %157, %159, %251, %218, %231, %244, %227, %205, %193
  %256 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 2
  %257 = load ptr, ptr %256, align 8, !tbaa !397
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %111, !prof !501, !llvm.loop !502

259:                                              ; preds = %255, %77
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %261 = icmp ne ptr %260, null
  %262 = load i32, ptr @max_regno, align 4
  %263 = icmp sgt i32 %262, 53
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %292, !prof !503

265:                                              ; preds = %259
  %266 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  br label %267

267:                                              ; preds = %265, %286
  %268 = phi i32 [ %262, %265 ], [ %287, %286 ]
  %269 = phi ptr [ %266, %265 ], [ %288, %286 ]
  %270 = phi i64 [ 53, %265 ], [ %289, %286 ]
  %271 = getelementptr inbounds ptr, ptr %269, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !417
  %273 = icmp eq ptr %272, null
  br i1 %273, label %286, label %274

274:                                              ; preds = %267
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %276 = trunc i64 %270 to i32
  %277 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.3, i32 noundef %276) #23
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %279 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %280 = getelementptr inbounds ptr, ptr %279, i64 %270
  %281 = load ptr, ptr %280, align 8, !tbaa !417
  tail call void @print_inline_rtx(ptr noundef %278, ptr noundef %281, i32 noundef 20) #22
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %283 = tail call i32 @fputc(i32 10, ptr %282)
  %284 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %285 = load i32, ptr @max_regno, align 4, !tbaa !431
  br label %286

286:                                              ; preds = %267, %274
  %287 = phi i32 [ %268, %267 ], [ %285, %274 ]
  %288 = phi ptr [ %269, %267 ], [ %284, %274 ]
  %289 = add nuw nsw i64 %270, 1
  %290 = sext i32 %287 to i64
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %267, label %292, !llvm.loop !504

292:                                              ; preds = %286, %259
  tail call fastcc void @init_elim_table() #23
  %293 = tail call i32 @get_first_label_num() #22
  store i32 %293, ptr @first_label_num, align 4, !tbaa !431
  %294 = tail call i32 @max_label_num() #22
  %295 = load i32, ptr @first_label_num, align 4, !tbaa !431
  %296 = sub nsw i32 %294, %295
  store i32 %296, ptr @num_labels, align 4, !tbaa !431
  %297 = sext i32 %296 to i64
  %298 = tail call ptr @xmalloc(i64 noundef %297) #22
  store ptr %298, ptr @offsets_known_at, align 8, !tbaa !417
  %299 = load i32, ptr @num_labels, align 4, !tbaa !431
  %300 = sext i32 %299 to i64
  %301 = shl nsw i64 %300, 5
  %302 = tail call ptr @xmalloc(i64 noundef %301) #22
  store ptr %302, ptr @offsets_at, align 8, !tbaa !417
  %303 = load i32, ptr @max_regno, align 4, !tbaa !431
  %304 = add nsw i32 %303, -58
  %305 = sext i32 %304 to i64
  %306 = shl nsw i64 %305, 2
  %307 = tail call ptr @xmalloc(i64 noundef %306) #22
  store ptr %307, ptr @temp_pseudo_reg_arr, align 8, !tbaa !417
  %308 = load i32, ptr @max_regno, align 4, !tbaa !431
  %309 = icmp sgt i32 %308, 58
  br i1 %309, label %310, label %320, !prof !472

310:                                              ; preds = %292, %310
  %311 = phi i64 [ %313, %310 ], [ 0, %292 ]
  %312 = phi i32 [ %315, %310 ], [ 58, %292 ]
  %313 = add nuw nsw i64 %311, 1
  %314 = getelementptr inbounds i32, ptr %307, i64 %311
  store i32 %312, ptr %314, align 4, !tbaa !431
  %315 = add nuw nsw i32 %312, 1
  %316 = load i32, ptr @max_regno, align 4, !tbaa !431
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %310, label %318, !prof !505, !llvm.loop !506

318:                                              ; preds = %310
  %319 = trunc i64 %313 to i32
  br label %320

320:                                              ; preds = %318, %292
  %321 = phi i32 [ 0, %292 ], [ %319, %318 ]
  %322 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %326, label %324, !prof !470

324:                                              ; preds = %320
  %325 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !417
  tail call void @ira_sort_regnos_for_alter_reg(ptr noundef %307, i32 noundef %321, ptr noundef %325) #22
  br label %326

326:                                              ; preds = %324, %320
  %327 = icmp eq i32 %321, 0
  br i1 %327, label %330, label %328, !prof !486

328:                                              ; preds = %326
  %329 = zext i32 %321 to i64
  br label %335

330:                                              ; preds = %335, %326
  %331 = icmp ne ptr %0, null
  %332 = load i32, ptr @num_eliminable, align 4
  %333 = icmp ne i32 %332, 0
  %334 = select i1 %331, i1 %333, i1 false, !prof !507
  br i1 %334, label %342, label %360, !prof !472

335:                                              ; preds = %328, %335
  %336 = phi i64 [ 0, %328 ], [ %340, %335 ]
  %337 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !417
  %338 = getelementptr inbounds i32, ptr %337, i64 %336
  %339 = load i32, ptr %338, align 4, !tbaa !431
  tail call fastcc void @alter_reg(i32 noundef %339, i32 noundef -1, i8 noundef zeroext 0) #23
  %340 = add nuw nsw i64 %336, 1
  %341 = icmp eq i64 %340, %329
  br i1 %341, label %330, label %335, !prof !508, !llvm.loop !509

342:                                              ; preds = %330, %353
  %343 = phi i32 [ %354, %353 ], [ %332, %330 ]
  %344 = phi ptr [ %356, %353 ], [ %0, %330 ]
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 65535
  %347 = add nsw i32 %346, -7
  %348 = icmp ult i32 %347, 4
  br i1 %348, label %349, label %353, !prof !487

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 1
  %351 = load ptr, ptr %350, align 8, !tbaa !397
  tail call void @note_stores(ptr noundef %351, ptr noundef nonnull @mark_not_eliminable, ptr noundef null) #22
  %352 = load i32, ptr @num_eliminable, align 4
  br label %353

353:                                              ; preds = %342, %349
  %354 = phi i32 [ %343, %342 ], [ %352, %349 ]
  %355 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1, i32 0, i32 0, i64 2
  %356 = load ptr, ptr %355, align 8, !tbaa !397
  %357 = icmp ne ptr %356, null
  %358 = icmp ne i32 %354, 0
  %359 = select i1 %357, i1 %358, i1 false, !prof !507
  br i1 %359, label %342, label %360, !prof !510, !llvm.loop !511

360:                                              ; preds = %353, %330
  tail call fastcc void @maybe_fix_stack_asms() #23
  store ptr null, ptr @insns_need_reload, align 8, !tbaa !417
  store i1 false, ptr @something_needs_elimination, align 4
  store i32 -1, ptr @last_spill_reg, align 4, !tbaa !431
  store i64 0, ptr @used_spill_regs, align 8, !tbaa !449
  %361 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %362 = getelementptr inbounds %struct.elim_table, ptr %361, i64 4
  br label %363

363:                                              ; preds = %360, %383
  %364 = phi ptr [ %384, %383 ], [ %361, %360 ]
  %365 = phi ptr [ %385, %383 ], [ %362, %360 ]
  %366 = phi ptr [ %374, %383 ], [ %361, %360 ]
  %367 = load i32, ptr %366, align 8, !tbaa !512
  br label %368

368:                                              ; preds = %376, %363
  %369 = phi i32 [ 0, %363 ], [ %373, %376 ]
  %370 = phi ptr [ %366, %363 ], [ %374, %376 ]
  %371 = getelementptr inbounds %struct.elim_table, ptr %370, i64 0, i32 3
  %372 = load i32, ptr %371, align 8, !tbaa !514
  %373 = or i32 %372, %369
  %374 = getelementptr inbounds %struct.elim_table, ptr %370, i64 1
  %375 = icmp ult ptr %374, %365
  br i1 %375, label %376, label %379, !prof !515

376:                                              ; preds = %368
  %377 = load i32, ptr %374, align 8, !tbaa !512
  %378 = icmp eq i32 %377, %367
  br i1 %378, label %368, label %379, !prof !516, !llvm.loop !517

379:                                              ; preds = %368, %376
  %380 = icmp eq i32 %373, 0
  br i1 %380, label %381, label %383, !prof !518

381:                                              ; preds = %379
  tail call fastcc void @spill_hard_reg(i32 noundef %367) #23
  %382 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi ptr [ %382, %381 ], [ %364, %379 ]
  %385 = getelementptr inbounds %struct.elim_table, ptr %384, i64 4
  %386 = icmp ult ptr %374, %385
  br i1 %386, label %363, label %387, !prof !519, !llvm.loop !520

387:                                              ; preds = %383
  %388 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !521
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %391, label %390, !prof !470

390:                                              ; preds = %387
  tail call fastcc void @spill_hard_reg(i32 noundef 6) #23
  br label %391

391:                                              ; preds = %390, %387
  %392 = tail call fastcc i32 @finish_spills(i32 noundef %1) #23, !range !496
  store i32 1, ptr @reload_in_progress, align 4, !tbaa !431
  br label %393

393:                                              ; preds = %598, %391
  %394 = tail call i64 @get_frame_size() #22
  tail call fastcc void @set_initial_elim_offsets() #23
  tail call fastcc void @set_initial_label_offsets() #23
  %395 = load i32, ptr @max_regno, align 4, !tbaa !431
  %396 = icmp sgt i32 %395, 53
  br i1 %396, label %397, label %480, !prof !522

397:                                              ; preds = %393, %475
  %398 = phi i64 [ %476, %475 ], [ 53, %393 ]
  %399 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %400 = getelementptr inbounds i16, ptr %399, i64 %398
  %401 = load i16, ptr %400, align 2, !tbaa !432
  %402 = icmp slt i16 %401, 0
  br i1 %402, label %403, label %475, !prof !523

403:                                              ; preds = %397
  %404 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %405 = getelementptr inbounds ptr, ptr %404, i64 %398
  %406 = load ptr, ptr %405, align 8, !tbaa !417
  %407 = icmp eq ptr %406, null
  br i1 %407, label %475, label %408, !prof !524

408:                                              ; preds = %403
  %409 = tail call ptr @eliminate_regs(ptr noundef nonnull %406, i32 noundef 0, ptr noundef null) #23
  %410 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %411 = getelementptr inbounds ptr, ptr %410, i64 %398
  %412 = load ptr, ptr %411, align 8, !tbaa !417
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 16
  %415 = and i32 %414, 255
  %416 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !397
  %418 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1, i32 0, i32 0, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !397
  %420 = icmp eq ptr %419, null
  br i1 %420, label %424, label %421, !prof !525

421:                                              ; preds = %408
  %422 = getelementptr inbounds %struct.mem_attrs, ptr %419, i64 0, i32 5
  %423 = load i8, ptr %422, align 8, !tbaa !526
  br label %424

424:                                              ; preds = %408, %421
  %425 = phi i8 [ %423, %421 ], [ 0, %408 ]
  %426 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %415, ptr noundef %417, i8 noundef zeroext %425) #22
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %433, label %428, !prof !525

428:                                              ; preds = %424
  %429 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %430 = getelementptr inbounds ptr, ptr %429, i64 %398
  store ptr %409, ptr %430, align 8, !tbaa !417
  %431 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !417
  %432 = getelementptr inbounds ptr, ptr %431, i64 %398
  store ptr null, ptr %432, align 8, !tbaa !417
  br label %475

433:                                              ; preds = %424
  %434 = load ptr, ptr %416, align 8, !tbaa !397
  %435 = load i32, ptr %434, align 8
  %436 = and i32 %435, 65535
  %437 = zext nneg i32 %436 to i64
  %438 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !431
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
  %448 = load ptr, ptr %447, align 8, !tbaa !397
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
  %457 = load ptr, ptr %456, align 8, !tbaa !397
  %458 = load i32, ptr %457, align 8
  %459 = and i32 %458, 65535
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !431
  %463 = icmp eq i32 %462, 9
  br i1 %463, label %464, label %469

464:                                              ; preds = %455, %443, %433
  %465 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !417
  %466 = getelementptr inbounds ptr, ptr %465, i64 %398
  store ptr %434, ptr %466, align 8, !tbaa !417
  %467 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %468 = getelementptr inbounds ptr, ptr %467, i64 %398
  store ptr null, ptr %468, align 8, !tbaa !417
  br label %475

469:                                              ; preds = %441, %443, %455, %452, %446
  %470 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %471 = getelementptr inbounds ptr, ptr %470, i64 %398
  store ptr null, ptr %471, align 8, !tbaa !417
  %472 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %473 = getelementptr inbounds ptr, ptr %472, i64 %398
  store ptr null, ptr %473, align 8, !tbaa !417
  %474 = trunc i64 %398 to i32
  tail call fastcc void @alter_reg(i32 noundef %474, i32 noundef -1, i8 noundef zeroext 1) #23
  br label %475

475:                                              ; preds = %428, %469, %464, %397, %403
  %476 = add nuw nsw i64 %398, 1
  %477 = load i32, ptr @max_regno, align 4, !tbaa !431
  %478 = sext i32 %477 to i64
  %479 = icmp slt i64 %476, %478
  br i1 %479, label %397, label %480, !prof !528, !llvm.loop !529

480:                                              ; preds = %475, %393
  %481 = load i32, ptr @caller_save_needed, align 4, !tbaa !431
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %484, label %483, !prof !530

483:                                              ; preds = %480
  tail call void @setup_save_areas() #22
  br label %484

484:                                              ; preds = %483, %480
  %485 = tail call i64 @get_frame_size() #22
  %486 = icmp eq i64 %394, %485
  br i1 %486, label %487, label %598, !prof !531

487:                                              ; preds = %484
  %488 = icmp ne i64 %394, 0
  %489 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %488, i1 %490, i1 false
  br i1 %491, label %492, label %496, !prof !532

492:                                              ; preds = %487
  %493 = tail call ptr @assign_stack_local(i32 noundef 1, i64 noundef 0, i32 noundef %489) #22
  %494 = tail call i64 @get_frame_size() #22
  %495 = icmp eq i64 %394, %494
  br i1 %495, label %496, label %598, !prof !533

496:                                              ; preds = %492, %487
  %497 = load i32, ptr @caller_save_needed, align 4, !tbaa !431
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %536, label %499, !prof !534

499:                                              ; preds = %496
  tail call void @save_call_clobbered_regs() #22
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %500 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %501 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %502 = ptrtoint ptr %500 to i64
  %503 = ptrtoint ptr %501 to i64
  %504 = sub i64 %502, %503
  %505 = icmp slt i64 %504, 0
  br i1 %505, label %506, label %509, !prof !535

506:                                              ; preds = %499
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %507 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %508 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %509

509:                                              ; preds = %499, %506
  %510 = phi ptr [ %501, %499 ], [ %508, %506 ]
  %511 = phi i64 [ 0, %499 ], [ %507, %506 ]
  %512 = getelementptr inbounds i8, ptr %510, i64 %511
  %513 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %514 = icmp eq ptr %512, %513
  br i1 %514, label %515, label %518, !prof !536

515:                                              ; preds = %509
  %516 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %517 = or i8 %516, 2
  store i8 %517, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %518

518:                                              ; preds = %509, %515
  %519 = ptrtoint ptr %513 to i64
  store i64 %519, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %520 = ptrtoint ptr %512 to i64
  %521 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %522 = sext i32 %521 to i64
  %523 = add nsw i64 %522, %520
  %524 = xor i32 %521, -1
  %525 = sext i32 %524 to i64
  %526 = and i64 %523, %525
  %527 = inttoptr i64 %526 to ptr
  %528 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %529 = ptrtoint ptr %528 to i64
  %530 = sub i64 %526, %529
  %531 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %532 = ptrtoint ptr %531 to i64
  %533 = sub i64 %532, %529
  %534 = icmp sgt i64 %530, %533
  %535 = select i1 %534, ptr %531, ptr %527, !prof !535
  store ptr %535, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %535, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %513, ptr @reload_firstobj, align 8, !tbaa !417
  br label %536

536:                                              ; preds = %518, %496
  tail call fastcc void @calculate_needs_all_insns(i32 noundef %1) #23
  %537 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %539, label %540, !prof !470

539:                                              ; preds = %536
  tail call void @bitmap_clear(ptr noundef nonnull @spilled_pseudos) #22
  br label %540

540:                                              ; preds = %539, %536
  %541 = tail call i64 @get_frame_size() #22
  %542 = icmp eq i64 %394, %541
  br i1 %542, label %543, label %547, !prof !471

543:                                              ; preds = %540
  %544 = tail call fastcc zeroext i8 @verify_initial_elim_offsets() #23, !range !429
  %545 = xor i8 %544, 1
  %546 = zext nneg i8 %545 to i32
  br label %547

547:                                              ; preds = %543, %540
  %548 = phi i32 [ 1, %540 ], [ %546, %543 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !449
  call fastcc void @update_eliminables(ptr noundef nonnull %3) #23
  %549 = load i64, ptr %3, align 8, !tbaa !449
  %550 = xor i64 %549, -1
  %551 = load i64, ptr @used_spill_regs, align 8, !tbaa !449
  %552 = and i64 %551, %550
  store i64 %552, ptr @used_spill_regs, align 8, !tbaa !449
  br label %553

553:                                              ; preds = %547, %562
  %554 = phi i64 [ 0, %547 ], [ %565, %562 ]
  %555 = phi i32 [ 0, %547 ], [ %564, %562 ]
  %556 = phi i32 [ %548, %547 ], [ %563, %562 ]
  %557 = shl nuw nsw i64 1, %554
  %558 = and i64 %557, %549
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %562, label %560, !prof !537

560:                                              ; preds = %553
  %561 = trunc i64 %554 to i32
  tail call fastcc void @spill_hard_reg(i32 noundef %561) #23
  br label %562

562:                                              ; preds = %553, %560
  %563 = phi i32 [ 1, %560 ], [ %556, %553 ]
  %564 = phi i32 [ 1, %560 ], [ %555, %553 ]
  %565 = add nuw nsw i64 %554, 1
  %566 = icmp eq i64 %565, 53
  br i1 %566, label %567, label %553, !prof !538, !llvm.loop !539

567:                                              ; preds = %562
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  tail call fastcc void @select_reload_regs() #23
  %568 = load i1, ptr @failure, align 4
  br i1 %568, label %709, label %569, !prof !470

569:                                              ; preds = %567
  %570 = load ptr, ptr @insns_need_reload, align 8, !tbaa !417
  %571 = icmp ne ptr %570, null
  %572 = icmp ne i32 %564, 0
  %573 = select i1 %571, i1 true, i1 %572
  br i1 %573, label %574, label %577, !prof !540

574:                                              ; preds = %569
  %575 = tail call fastcc i32 @finish_spills(i32 noundef %1) #23, !range !496
  %576 = or i32 %575, %563
  br label %577

577:                                              ; preds = %569, %574
  %578 = phi i32 [ %576, %574 ], [ %563, %569 ]
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %601, label %580, !prof !471

580:                                              ; preds = %577
  %581 = load i32, ptr @caller_save_needed, align 4, !tbaa !431
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %584, label %583

583:                                              ; preds = %580
  tail call fastcc void @delete_caller_save_insns() #23
  br label %584

584:                                              ; preds = %583, %580
  %585 = load ptr, ptr @reload_firstobj, align 8, !tbaa !417
  %586 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %587 = ptrtoint ptr %585 to i64
  %588 = ptrtoint ptr %586 to i64
  %589 = sub i64 %587, %588
  store i64 %589, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %590 = icmp sgt i64 %589, 0
  br i1 %590, label %591, label %599

591:                                              ; preds = %584
  %592 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %593 = ptrtoint ptr %592 to i64
  %594 = sub i64 %593, %588
  %595 = icmp slt i64 %589, %594
  br i1 %595, label %596, label %599

596:                                              ; preds = %591
  %597 = getelementptr inbounds i8, ptr %586, i64 %589
  store ptr %597, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %597, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %598

598:                                              ; preds = %596, %599, %492, %484
  br label %393

599:                                              ; preds = %591, %584
  %600 = getelementptr inbounds i8, ptr %586, i64 %589
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %600) #22
  br label %598

601:                                              ; preds = %577
  %602 = icmp eq i32 %1, 0
  br i1 %602, label %621, label %603, !prof !470

603:                                              ; preds = %601
  %604 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %605

605:                                              ; preds = %603, %616
  %606 = phi ptr [ %617, %616 ], [ %604, %603 ]
  %607 = phi ptr [ %618, %616 ], [ %604, %603 ]
  %608 = getelementptr inbounds %struct.elim_table, ptr %607, i64 0, i32 3
  %609 = load i32, ptr %608, align 8, !tbaa !514
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %616, label %611, !prof !516

611:                                              ; preds = %605
  %612 = load i32, ptr %607, align 8, !tbaa !512
  %613 = getelementptr inbounds %struct.elim_table, ptr %607, i64 0, i32 1
  %614 = load i32, ptr %613, align 4, !tbaa !541
  tail call void @mark_elimination(i32 noundef %612, i32 noundef %614) #22
  %615 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %616

616:                                              ; preds = %605, %611
  %617 = phi ptr [ %606, %605 ], [ %615, %611 ]
  %618 = getelementptr inbounds %struct.elim_table, ptr %607, i64 1
  %619 = getelementptr inbounds %struct.elim_table, ptr %617, i64 4
  %620 = icmp ult ptr %618, %619
  br i1 %620, label %605, label %621, !prof !542, !llvm.loop !543

621:                                              ; preds = %616, %601
  %622 = load i32, ptr @max_regno, align 4, !tbaa !431
  %623 = icmp sgt i32 %622, 53
  br i1 %623, label %624, label %667, !prof !472

624:                                              ; preds = %621, %662
  %625 = phi i32 [ %663, %662 ], [ %622, %621 ]
  %626 = phi i64 [ %664, %662 ], [ 53, %621 ]
  %627 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %628 = getelementptr inbounds i16, ptr %627, i64 %626
  %629 = load i16, ptr %628, align 2, !tbaa !432
  %630 = icmp slt i16 %629, 0
  br i1 %630, label %631, label %662, !prof !544

631:                                              ; preds = %624
  %632 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %633 = getelementptr inbounds ptr, ptr %632, i64 %626
  %634 = load ptr, ptr %633, align 8, !tbaa !417
  %635 = icmp eq ptr %634, null
  br i1 %635, label %662, label %636, !prof !545

636:                                              ; preds = %631, %656
  %637 = phi ptr [ %658, %656 ], [ %634, %631 ]
  %638 = getelementptr inbounds %struct.rtx_def, ptr %637, i64 0, i32 1
  %639 = load ptr, ptr %638, align 8, !tbaa !397
  %640 = load i32, ptr %639, align 8
  %641 = and i32 %640, 65535
  %642 = icmp eq i32 %641, 13
  br i1 %642, label %656, label %643

643:                                              ; preds = %636
  %644 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %639) #22
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %646, label %656

646:                                              ; preds = %643
  %647 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %648 = getelementptr inbounds ptr, ptr %647, i64 %626
  %649 = load ptr, ptr %648, align 8, !tbaa !417
  %650 = getelementptr inbounds %struct.rtx_def, ptr %639, i64 1
  %651 = load ptr, ptr %650, align 8, !tbaa !397
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
  %658 = load ptr, ptr %657, align 8, !tbaa !397
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %636, !llvm.loop !546

660:                                              ; preds = %656
  %661 = load i32, ptr @max_regno, align 4, !tbaa !431
  br label %662

662:                                              ; preds = %660, %624, %631
  %663 = phi i32 [ %661, %660 ], [ %625, %624 ], [ %625, %631 ]
  %664 = add nuw nsw i64 %626, 1
  %665 = sext i32 %663 to i64
  %666 = icmp slt i64 %664, %665
  br i1 %666, label %624, label %667, !prof !473, !llvm.loop !547

667:                                              ; preds = %662, %621
  %668 = load ptr, ptr @insns_need_reload, align 8, !tbaa !417
  %669 = icmp ne ptr %668, null
  %670 = load i1, ptr @something_needs_elimination, align 4
  %671 = select i1 %669, i1 true, i1 %670
  %672 = load i32, ptr @something_needs_operands_changed, align 4
  %673 = icmp ne i32 %672, 0
  %674 = select i1 %671, i1 true, i1 %673
  br i1 %674, label %675, label %684, !prof !548

675:                                              ; preds = %667
  %676 = tail call i64 @get_frame_size() #22
  tail call fastcc void @reload_as_needed(i32 noundef %1) #23
  %677 = tail call i64 @get_frame_size() #22
  %678 = icmp eq i64 %676, %677
  br i1 %678, label %680, label %679, !prof !471

679:                                              ; preds = %675
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1188, ptr noundef nonnull @.str.2) #22
  br label %680

680:                                              ; preds = %675, %679
  %681 = tail call fastcc zeroext i8 @verify_initial_elim_offsets() #23, !range !429
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %683, label %684, !prof !470

683:                                              ; preds = %680
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1190, ptr noundef nonnull @.str.2) #22
  br label %684

684:                                              ; preds = %683, %680, %667
  %685 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !521
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %687, label %709, !prof !470

687:                                              ; preds = %684
  %688 = load ptr, ptr @cfun, align 8, !tbaa !417
  %689 = getelementptr inbounds %struct.function, ptr %688, i64 0, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !549
  %691 = load ptr, ptr %690, align 8, !tbaa !551
  %692 = getelementptr inbounds %struct.basic_block_def, ptr %691, i64 0, i32 6
  %693 = load ptr, ptr %692, align 8, !tbaa !553
  %694 = getelementptr inbounds %struct.control_flow_graph, ptr %690, i64 0, i32 1
  %695 = load ptr, ptr %694, align 8, !tbaa !555
  %696 = icmp eq ptr %693, %695
  br i1 %696, label %709, label %697

697:                                              ; preds = %687, %697
  %698 = phi ptr [ %702, %697 ], [ %693, %687 ]
  %699 = tail call ptr @df_get_live_in(ptr noundef %698) #22
  %700 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %699, i32 noundef 6) #22
  %701 = getelementptr inbounds %struct.basic_block_def, ptr %698, i64 0, i32 6
  %702 = load ptr, ptr %701, align 8, !tbaa !553
  %703 = load ptr, ptr @cfun, align 8, !tbaa !417
  %704 = getelementptr inbounds %struct.function, ptr %703, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !549
  %706 = getelementptr inbounds %struct.control_flow_graph, ptr %705, i64 0, i32 1
  %707 = load ptr, ptr %706, align 8, !tbaa !555
  %708 = icmp eq ptr %702, %707
  br i1 %708, label %709, label %697, !llvm.loop !556

709:                                              ; preds = %567, %697, %687, %684
  tail call void @bitmap_clear(ptr noundef nonnull @changed_allocation_pseudos) #22
  tail call void @bitmap_clear(ptr noundef nonnull @spilled_pseudos) #22
  store i32 0, ptr @reload_in_progress, align 4, !tbaa !431
  %710 = load i32, ptr @max_regno, align 4, !tbaa !431
  %711 = icmp sgt i32 %710, 53
  br i1 %711, label %712, label %902, !prof !472

712:                                              ; preds = %709, %897
  %713 = phi i64 [ %898, %897 ], [ 53, %709 ]
  %714 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %715 = getelementptr inbounds ptr, ptr %714, i64 %713
  %716 = load ptr, ptr %715, align 8, !tbaa !417
  %717 = icmp eq ptr %716, null
  %718 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !417
  %719 = getelementptr inbounds ptr, ptr %718, i64 %713
  %720 = load ptr, ptr %719, align 8, !tbaa !417
  %721 = icmp eq ptr %720, null
  br i1 %717, label %723, label %722, !prof !557

722:                                              ; preds = %712
  br i1 %721, label %724, label %728, !prof !558

723:                                              ; preds = %712
  br i1 %721, label %813, label %734, !prof !558

724:                                              ; preds = %722
  %725 = getelementptr inbounds %struct.rtx_def, ptr %716, i64 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !397
  %727 = icmp eq ptr %726, null
  br i1 %727, label %813, label %728, !prof !559

728:                                              ; preds = %722, %724
  %729 = phi ptr [ %726, %724 ], [ %720, %722 ]
  %730 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %731 = getelementptr inbounds i16, ptr %730, i64 %713
  %732 = load i16, ptr %731, align 2, !tbaa !432
  %733 = icmp slt i16 %732, 0
  br i1 %733, label %739, label %810, !prof !560

734:                                              ; preds = %723
  %735 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %736 = getelementptr inbounds i16, ptr %735, i64 %713
  %737 = load i16, ptr %736, align 2, !tbaa !432
  %738 = icmp slt i16 %737, 0
  br i1 %738, label %739, label %813, !prof !560

739:                                              ; preds = %734, %728
  %740 = phi ptr [ %720, %734 ], [ %729, %728 ]
  %741 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %742 = getelementptr inbounds ptr, ptr %741, i64 %713
  %743 = load ptr, ptr %742, align 8, !tbaa !417
  %744 = load i32, ptr %743, align 8
  %745 = and i32 %744, -134283264
  %746 = or disjoint i32 %745, 43
  store i32 %746, ptr %743, align 8
  %747 = getelementptr inbounds %struct.rtx_def, ptr %743, i64 0, i32 1
  store ptr %740, ptr %747, align 8, !tbaa !397
  %748 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %749 = getelementptr inbounds ptr, ptr %748, i64 %713
  %750 = load ptr, ptr %749, align 8, !tbaa !417
  %751 = icmp eq ptr %750, null
  br i1 %751, label %803, label %752, !prof !561

752:                                              ; preds = %739
  %753 = load i32, ptr %750, align 8
  %754 = and i32 %753, 134217728
  %755 = or disjoint i32 %754, %746
  store i32 %755, ptr %743, align 8
  %756 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %757 = getelementptr inbounds ptr, ptr %756, i64 %713
  %758 = load ptr, ptr %757, align 8, !tbaa !417
  %759 = load i32, ptr %758, align 8
  %760 = and i32 %759, 268435456
  %761 = and i32 %755, -268500949
  %762 = or disjoint i32 %760, %761
  store i32 %762, ptr %743, align 8
  %763 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %764 = getelementptr inbounds ptr, ptr %763, i64 %713
  %765 = load ptr, ptr %764, align 8, !tbaa !417
  %766 = load i32, ptr %765, align 8
  %767 = and i32 %766, -2147483648
  %768 = and i32 %762, 2147418155
  %769 = or disjoint i32 %767, %768
  store i32 %769, ptr %743, align 8
  %770 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %771 = getelementptr inbounds ptr, ptr %770, i64 %713
  %772 = load ptr, ptr %771, align 8, !tbaa !417
  %773 = load i32, ptr %772, align 8
  %774 = and i32 %773, 33554432
  %775 = and i32 %769, -33619925
  %776 = or disjoint i32 %774, %775
  store i32 %776, ptr %743, align 8
  %777 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %778 = getelementptr inbounds ptr, ptr %777, i64 %713
  %779 = load ptr, ptr %778, align 8, !tbaa !417
  %780 = load i32, ptr %779, align 8
  %781 = and i32 %780, 67108864
  %782 = and i32 %776, -67174357
  %783 = or disjoint i32 %781, %782
  store i32 %783, ptr %743, align 8
  %784 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %785 = getelementptr inbounds ptr, ptr %784, i64 %713
  %786 = load ptr, ptr %785, align 8, !tbaa !417
  %787 = load i32, ptr %786, align 8
  %788 = and i32 %787, 16777216
  %789 = and i32 %783, -16842709
  %790 = or disjoint i32 %788, %789
  store i32 %790, ptr %743, align 8
  %791 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %792 = getelementptr inbounds ptr, ptr %791, i64 %713
  %793 = load ptr, ptr %792, align 8, !tbaa !417
  %794 = load i32, ptr %793, align 8
  %795 = and i32 %794, 1073741824
  %796 = and i32 %790, -1073807317
  %797 = or disjoint i32 %795, %796
  store i32 %797, ptr %743, align 8
  %798 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %799 = getelementptr inbounds ptr, ptr %798, i64 %713
  %800 = load ptr, ptr %799, align 8, !tbaa !417
  %801 = getelementptr inbounds %struct.rtx_def, ptr %800, i64 0, i32 1, i32 0, i32 0, i64 1
  %802 = load ptr, ptr %801, align 8, !tbaa !397
  br label %805

803:                                              ; preds = %739
  %804 = and i32 %746, 1744764971
  br label %805

805:                                              ; preds = %803, %752
  %806 = phi i32 [ %804, %803 ], [ %797, %752 ]
  %807 = phi ptr [ null, %803 ], [ %802, %752 ]
  %808 = getelementptr inbounds %struct.rtx_def, ptr %743, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %807, ptr %808, align 8
  %809 = or i32 %806, 33554432
  store i32 %809, ptr %743, align 8
  br label %813

810:                                              ; preds = %728
  br i1 %717, label %813, label %811

811:                                              ; preds = %810
  %812 = getelementptr inbounds %struct.rtx_def, ptr %716, i64 0, i32 1
  store ptr %729, ptr %812, align 8, !tbaa !397
  br label %813

813:                                              ; preds = %734, %723, %805, %811, %810, %724
  %814 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !431
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %897, label %816, !prof !558

816:                                              ; preds = %813
  %817 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %818 = getelementptr inbounds i16, ptr %817, i64 %713
  %819 = load i16, ptr %818, align 2, !tbaa !432
  %820 = icmp slt i16 %819, 0
  br i1 %820, label %821, label %897

821:                                              ; preds = %816
  %822 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %823 = getelementptr inbounds ptr, ptr %822, i64 %713
  %824 = load ptr, ptr %823, align 8, !tbaa !417
  %825 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %826 = getelementptr inbounds ptr, ptr %825, i64 %713
  %827 = load ptr, ptr %826, align 8, !tbaa !417
  %828 = icmp eq ptr %827, null
  br i1 %828, label %829, label %847

829:                                              ; preds = %821
  %830 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %831 = getelementptr inbounds ptr, ptr %830, i64 %713
  %832 = load ptr, ptr %831, align 8, !tbaa !417
  %833 = icmp eq ptr %832, null
  br i1 %833, label %834, label %847

834:                                              ; preds = %829
  %835 = icmp eq ptr %824, null
  br i1 %835, label %847, label %836

836:                                              ; preds = %834
  %837 = load i32, ptr %824, align 8
  %838 = trunc i32 %837 to i16
  switch i16 %838, label %847 [
    i16 43, label %839
    i16 37, label %842
  ]

839:                                              ; preds = %836
  %840 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !562
  %841 = tail call ptr %840(ptr noundef nonnull %824) #22
  br label %847

842:                                              ; preds = %836
  %843 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %824) #23
  %844 = zext i32 %843 to i64
  %845 = icmp eq i64 %713, %844
  %846 = select i1 %845, ptr null, ptr %824
  br label %847

847:                                              ; preds = %836, %842, %834, %829, %821, %839
  %848 = phi ptr [ %841, %839 ], [ %827, %821 ], [ %832, %829 ], [ %846, %842 ], [ null, %834 ], [ null, %836 ]
  %849 = icmp eq ptr %848, %824
  br i1 %849, label %897, label %850

850:                                              ; preds = %847
  %851 = load ptr, ptr @df, align 8, !tbaa !417
  %852 = getelementptr inbounds %struct.df, ptr %851, i64 0, i32 6
  %853 = load ptr, ptr %852, align 8, !tbaa !574
  %854 = getelementptr inbounds ptr, ptr %853, i64 %713
  %855 = load ptr, ptr %854, align 8, !tbaa !417
  %856 = load ptr, ptr %855, align 8, !tbaa !577
  %857 = icmp eq ptr %856, null
  br i1 %857, label %897, label %858

858:                                              ; preds = %850
  %859 = icmp eq ptr %848, null
  br label %860

860:                                              ; preds = %858, %895
  %861 = phi ptr [ %856, %858 ], [ %868, %895 ]
  %862 = getelementptr inbounds %struct.df_base_ref, ptr %861, i64 0, i32 3
  %863 = load ptr, ptr %862, align 8, !tbaa !397
  %864 = load ptr, ptr %863, align 8, !tbaa !579
  br label %865

865:                                              ; preds = %870, %860
  %866 = phi ptr [ %861, %860 ], [ %868, %870 ]
  %867 = getelementptr inbounds %struct.df_base_ref, ptr %866, i64 0, i32 4
  %868 = load ptr, ptr %867, align 8, !tbaa !397
  %869 = icmp eq ptr %868, null
  br i1 %869, label %875, label %870

870:                                              ; preds = %865
  %871 = getelementptr inbounds %struct.df_base_ref, ptr %868, i64 0, i32 3
  %872 = load ptr, ptr %871, align 8, !tbaa !397
  %873 = load ptr, ptr %872, align 8, !tbaa !579
  %874 = icmp eq ptr %873, %864
  br i1 %874, label %865, label %875, !llvm.loop !581

875:                                              ; preds = %865, %870
  %876 = load i32, ptr %864, align 8
  %877 = and i32 %876, 65535
  %878 = icmp eq i32 %877, 7
  br i1 %878, label %879, label %895

879:                                              ; preds = %875
  br i1 %859, label %880, label %887

880:                                              ; preds = %879
  %881 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !417
  %882 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %881) #22
  %883 = getelementptr inbounds %struct.rtx_def, ptr %864, i64 1
  %884 = load ptr, ptr %883, align 8, !tbaa !397
  %885 = getelementptr inbounds %struct.rtx_def, ptr %884, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %882, ptr %885, align 8, !tbaa !397
  %886 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %864) #22
  br label %895

887:                                              ; preds = %879
  %888 = getelementptr inbounds %struct.rtx_def, ptr %864, i64 1
  %889 = load ptr, ptr %888, align 8, !tbaa !397
  %890 = getelementptr inbounds %struct.rtx_def, ptr %889, i64 0, i32 1, i32 0, i32 0, i64 1
  %891 = load ptr, ptr %890, align 8, !tbaa !397
  %892 = tail call ptr @simplify_replace_rtx(ptr noundef %891, ptr noundef %824, ptr noundef nonnull %848) #22
  %893 = load ptr, ptr %888, align 8, !tbaa !397
  %894 = getelementptr inbounds %struct.rtx_def, ptr %893, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %892, ptr %894, align 8, !tbaa !397
  br label %895

895:                                              ; preds = %875, %887, %880
  %896 = icmp eq ptr %868, null
  br i1 %896, label %897, label %860, !llvm.loop !582

897:                                              ; preds = %895, %850, %847, %813, %816
  %898 = add nuw nsw i64 %713, 1
  %899 = load i32, ptr @max_regno, align 4, !tbaa !431
  %900 = sext i32 %899 to i64
  %901 = icmp slt i64 %898, %900
  br i1 %901, label %712, label %902, !prof !473, !llvm.loop !583

902:                                              ; preds = %897, %709
  store i32 1, ptr @reload_completed, align 4, !tbaa !431
  br i1 %110, label %1013, label %903, !prof !486

903:                                              ; preds = %902, %1009
  %904 = phi ptr [ %1011, %1009 ], [ %0, %902 ]
  %905 = load i32, ptr %904, align 8
  %906 = and i32 %905, 65535
  %907 = add nsw i32 %906, -7
  %908 = icmp ult i32 %907, 4
  br i1 %908, label %909, label %1009, !prof !584

909:                                              ; preds = %903
  %910 = icmp eq i32 %906, 10
  br i1 %910, label %911, label %914, !prof !585

911:                                              ; preds = %909
  %912 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 1, i32 1, i32 0, i32 0, i64 2
  %913 = load ptr, ptr %912, align 8, !tbaa !397
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %912, i32 noundef 0, ptr noundef %913) #23
  br label %914

914:                                              ; preds = %911, %909
  %915 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 1
  %916 = load ptr, ptr %915, align 8, !tbaa !397
  %917 = load i32, ptr %916, align 8
  %918 = and i32 %917, 65535
  %919 = icmp eq i32 %918, 24
  br i1 %919, label %920, label %930, !prof !586

920:                                              ; preds = %914
  %921 = load i32, ptr %904, align 8
  %922 = and i32 %921, 16711680
  %923 = icmp eq i32 %922, 917504
  br i1 %923, label %1007, label %924, !prof !470

924:                                              ; preds = %920
  %925 = tail call ptr @find_reg_note(ptr noundef nonnull %904, i32 noundef 4, ptr noundef null) #22
  %926 = icmp eq ptr %925, null
  br i1 %926, label %927, label %1007, !prof !471

927:                                              ; preds = %924
  %928 = load ptr, ptr %915, align 8, !tbaa !397
  %929 = load i32, ptr %928, align 8
  br label %930

930:                                              ; preds = %927, %914
  %931 = phi i32 [ %929, %927 ], [ %917, %914 ]
  %932 = phi ptr [ %928, %927 ], [ %916, %914 ]
  %933 = and i32 %931, 65535
  %934 = icmp eq i32 %933, 25
  br i1 %934, label %935, label %954, !prof !587

935:                                              ; preds = %930
  %936 = getelementptr inbounds %struct.rtx_def, ptr %932, i64 0, i32 1
  %937 = load ptr, ptr %936, align 8, !tbaa !397
  %938 = load i32, ptr %937, align 8
  %939 = and i32 %938, 16777215
  %940 = icmp eq i32 %939, 65579
  br i1 %940, label %941, label %950

941:                                              ; preds = %935
  %942 = getelementptr inbounds %struct.rtx_def, ptr %937, i64 0, i32 1
  %943 = load ptr, ptr %942, align 8, !tbaa !397
  %944 = load i32, ptr %943, align 8
  %945 = and i32 %944, 65535
  %946 = icmp eq i32 %945, 38
  %947 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %948 = icmp eq ptr %943, %947
  %949 = select i1 %946, i1 true, i1 %948
  br i1 %949, label %953, label %1007

950:                                              ; preds = %935
  %951 = and i32 %938, -2147418113
  %952 = icmp eq i32 %951, -2147483611
  br i1 %952, label %953, label %1007

953:                                              ; preds = %950, %941
  tail call fastcc void @replace_pseudos_in(ptr noundef nonnull %936, i32 noundef 0, ptr noundef nonnull %932) #23
  br label %954

954:                                              ; preds = %930, %953
  %955 = load i32, ptr %904, align 8
  %956 = and i32 %955, 65535
  %957 = icmp eq i32 %956, 8
  br i1 %957, label %958, label %979, !prof !588

958:                                              ; preds = %954
  %959 = load ptr, ptr %915, align 8, !tbaa !397
  %960 = load i32, ptr %959, align 8
  %961 = and i32 %960, 65535
  %962 = icmp eq i32 %961, 23
  br i1 %962, label %963, label %979, !prof !589

963:                                              ; preds = %958
  %964 = getelementptr inbounds %struct.rtx_def, ptr %959, i64 0, i32 1, i32 0, i32 0, i64 1
  %965 = load ptr, ptr %964, align 8, !tbaa !397
  %966 = load i32, ptr %965, align 8
  %967 = and i32 %966, 65535
  %968 = icmp eq i32 %967, 37
  br i1 %968, label %969, label %979, !prof !590

969:                                              ; preds = %963
  %970 = getelementptr inbounds %struct.rtx_def, ptr %959, i64 0, i32 1
  %971 = load ptr, ptr %970, align 8, !tbaa !397
  %972 = load i32, ptr %971, align 8
  %973 = and i32 %972, 65535
  %974 = icmp eq i32 %973, 37
  br i1 %974, label %975, label %979, !prof !591

975:                                              ; preds = %969
  %976 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %965) #23
  %977 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %971) #23
  %978 = icmp eq i32 %976, %977
  br i1 %978, label %1007, label %979, !prof !592

979:                                              ; preds = %975, %969, %963, %958, %954
  %980 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 1, i32 1, i32 0, i32 0, i64 1
  %981 = load ptr, ptr %980, align 8, !tbaa !417
  %982 = icmp eq ptr %981, null
  br i1 %982, label %999, label %983, !prof !593

983:                                              ; preds = %979, %995
  %984 = phi ptr [ %996, %995 ], [ %981, %979 ]
  %985 = phi ptr [ %997, %995 ], [ %980, %979 ]
  %986 = load i32, ptr %984, align 8
  %987 = lshr i32 %986, 16
  %988 = trunc i32 %987 to i8
  switch i8 %988, label %992 [
    i8 1, label %989
    i8 6, label %989
    i8 2, label %989
  ], !prof !594

989:                                              ; preds = %983, %983, %983
  %990 = getelementptr inbounds %struct.rtx_def, ptr %984, i64 0, i32 1, i32 0, i32 0, i64 1
  %991 = load ptr, ptr %990, align 8, !tbaa !397
  store ptr %991, ptr %985, align 8, !tbaa !417
  br label %995

992:                                              ; preds = %983
  %993 = getelementptr inbounds %struct.rtx_def, ptr %984, i64 0, i32 1, i32 0, i32 0, i64 1
  %994 = load ptr, ptr %993, align 8, !tbaa !417
  br label %995

995:                                              ; preds = %992, %989
  %996 = phi ptr [ %991, %989 ], [ %994, %992 ]
  %997 = phi ptr [ %985, %989 ], [ %993, %992 ]
  %998 = icmp eq ptr %996, null
  br i1 %998, label %999, label %983, !prof !595, !llvm.loop !596

999:                                              ; preds = %995, %979
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %904) #22
  %1000 = load ptr, ptr %915, align 8, !tbaa !397
  %1001 = tail call i32 @asm_noperands(ptr noundef %1000) #22
  %1002 = icmp sgt i32 %1001, -1
  br i1 %1002, label %1003, label %1009, !prof !597

1003:                                             ; preds = %999
  tail call void @extract_insn(ptr noundef nonnull %904) #22
  %1004 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1009

1006:                                             ; preds = %1003
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %904, ptr noundef nonnull @.str.5) #22
  br label %1007

1007:                                             ; preds = %975, %920, %924, %950, %941, %1006
  %1008 = tail call ptr @delete_insn(ptr noundef nonnull %904) #22
  br label %1009

1009:                                             ; preds = %1007, %903, %1003, %999
  %1010 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 0, i32 1, i32 0, i32 0, i64 2
  %1011 = load ptr, ptr %1010, align 8, !tbaa !397
  %1012 = icmp eq ptr %1011, null
  br i1 %1012, label %1013, label %903, !prof !598, !llvm.loop !599

1013:                                             ; preds = %1009, %902
  %1014 = load i32, ptr @flag_stack_check, align 4, !tbaa !431
  %1015 = icmp eq i32 %1014, 1
  br i1 %1015, label %1016, label %1046, !prof !470

1016:                                             ; preds = %1013
  %1017 = tail call i64 @get_frame_size() #22
  %1018 = add nsw i64 %1017, 16
  br label %1019

1019:                                             ; preds = %1016, %1035
  %1020 = phi i64 [ 0, %1016 ], [ %1037, %1035 ]
  %1021 = phi i64 [ %1018, %1016 ], [ %1036, %1035 ]
  %1022 = trunc i64 %1020 to i32
  %1023 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %1022) #22
  %1024 = icmp eq i8 %1023, 0
  br i1 %1024, label %1035, label %1025

1025:                                             ; preds = %1019
  %1026 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1020
  %1027 = load i8, ptr %1026, align 1, !tbaa !397
  %1028 = icmp eq i8 %1027, 0
  br i1 %1028, label %1029, label %1035

1029:                                             ; preds = %1025
  %1030 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %1020
  %1031 = load i8, ptr %1030, align 1, !tbaa !397
  %1032 = icmp eq i8 %1031, 0
  %1033 = add nsw i64 %1021, 4
  %1034 = select i1 %1032, i64 %1021, i64 %1033
  br label %1035

1035:                                             ; preds = %1029, %1019, %1025
  %1036 = phi i64 [ %1021, %1025 ], [ %1021, %1019 ], [ %1034, %1029 ]
  %1037 = add nuw nsw i64 %1020, 1
  %1038 = icmp eq i64 %1037, 53
  br i1 %1038, label %1039, label %1019, !llvm.loop !600

1039:                                             ; preds = %1035
  %1040 = icmp sgt i64 %1036, 4092
  br i1 %1040, label %1041, label %1046

1041:                                             ; preds = %1039
  %1042 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.6) #22
  %1043 = load i1, ptr @reload.verbose_warned, align 4
  br i1 %1043, label %1046, label %1044

1044:                                             ; preds = %1041
  %1045 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.7) #22
  store i1 true, ptr @reload.verbose_warned, align 4
  br label %1046

1046:                                             ; preds = %1039, %1044, %1041, %1013
  %1047 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %1048 = icmp eq ptr %1047, null
  br i1 %1048, label %1050, label %1049, !prof !470

1049:                                             ; preds = %1046
  tail call void @free(ptr noundef nonnull %1047) #23
  br label %1050

1050:                                             ; preds = %1049, %1046
  %1051 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1054, label %1053, !prof !470

1053:                                             ; preds = %1050
  tail call void @free(ptr noundef nonnull %1051) #23
  br label %1054

1054:                                             ; preds = %1053, %1050
  store ptr null, ptr @reg_equiv_constant, align 8, !tbaa !417
  store ptr null, ptr @reg_equiv_invariant, align 8, !tbaa !417
  tail call fastcc void @VEC_rtx_gc_free() #23
  store ptr null, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %1055 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !417
  tail call void @free(ptr noundef %1055) #23
  %1056 = load ptr, ptr @offsets_known_at, align 8, !tbaa !417
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1059, label %1058, !prof !470

1058:                                             ; preds = %1054
  tail call void @free(ptr noundef nonnull %1056) #23
  br label %1059

1059:                                             ; preds = %1058, %1054
  %1060 = load ptr, ptr @offsets_at, align 8, !tbaa !417
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1063, label %1062, !prof !470

1062:                                             ; preds = %1059
  tail call void @free(ptr noundef nonnull %1060) #23
  br label %1063

1063:                                             ; preds = %1062, %1059
  %1064 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !417
  br label %1065

1065:                                             ; preds = %1063, %1073
  %1066 = phi ptr [ %1064, %1063 ], [ %1074, %1073 ]
  %1067 = phi i64 [ 0, %1063 ], [ %1075, %1073 ]
  %1068 = getelementptr inbounds ptr, ptr %1066, i64 %1067
  %1069 = load ptr, ptr %1068, align 8, !tbaa !417
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1073, label %1071, !prof !537

1071:                                             ; preds = %1065
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %1068) #22
  %1072 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !417
  br label %1073

1073:                                             ; preds = %1065, %1071
  %1074 = phi ptr [ %1066, %1065 ], [ %1072, %1071 ]
  %1075 = add nuw nsw i64 %1067, 1
  %1076 = icmp eq i64 %1075, 53
  br i1 %1076, label %1077, label %1065, !prof !538, !llvm.loop !601

1077:                                             ; preds = %1073
  tail call void @free(ptr noundef %1074) #23
  %1078 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  tail call void @free(ptr noundef %1078) #23
  store ptr null, ptr @reg_equiv_init, align 8, !tbaa !417
  %1079 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !417
  tail call void @free(ptr noundef %1079) #23
  %1080 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !417
  tail call void @free(ptr noundef %1080) #23
  %1081 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !417
  tail call void @free(ptr noundef %1081) #23
  %1082 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !417
  tail call void @free(ptr noundef %1082) #23
  %1083 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !417
  tail call void @free(ptr noundef %1083) #23
  store i64 0, ptr @used_spill_regs, align 8, !tbaa !449
  %1084 = load i32, ptr @n_spills, align 4, !tbaa !431
  %1085 = icmp sgt i32 %1084, 0
  br i1 %1085, label %1086, label %1100, !prof !602

1086:                                             ; preds = %1077
  %1087 = zext nneg i32 %1084 to i64
  br label %1088

1088:                                             ; preds = %1086, %1088
  %1089 = phi i64 [ 0, %1086 ], [ %1097, %1088 ]
  %1090 = phi i64 [ 0, %1086 ], [ %1096, %1088 ]
  %1091 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %1089
  %1092 = load i16, ptr %1091, align 2, !tbaa !432
  %1093 = sext i16 %1092 to i64
  %1094 = and i64 %1093, 4294967295
  %1095 = shl nuw i64 1, %1094
  %1096 = or i64 %1095, %1090
  %1097 = add nuw nsw i64 %1089, 1
  %1098 = icmp eq i64 %1097, %1087
  br i1 %1098, label %1099, label %1088, !prof !603, !llvm.loop !604

1099:                                             ; preds = %1088
  store i64 %1096, ptr @used_spill_regs, align 8, !tbaa !449
  br label %1100

1100:                                             ; preds = %1099, %1077
  %1101 = load ptr, ptr @reload_startobj, align 8, !tbaa !417
  %1102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %1103 = ptrtoint ptr %1101 to i64
  %1104 = ptrtoint ptr %1102 to i64
  %1105 = sub i64 %1103, %1104
  store i64 %1105, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %1106 = icmp sgt i64 %1105, 0
  br i1 %1106, label %1107, label %1114, !prof !470

1107:                                             ; preds = %1100
  %1108 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %1109 = ptrtoint ptr %1108 to i64
  %1110 = sub i64 %1109, %1104
  %1111 = icmp slt i64 %1105, %1110
  br i1 %1111, label %1112, label %1114

1112:                                             ; preds = %1107
  %1113 = getelementptr inbounds i8, ptr %1102, i64 %1105
  store ptr %1113, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %1113, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %1116

1114:                                             ; preds = %1107, %1100
  %1115 = getelementptr inbounds i8, ptr %1102, i64 %1105
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %1115) #22
  br label %1116

1116:                                             ; preds = %1114, %1112
  store ptr null, ptr @unused_insn_chains, align 8, !tbaa !417
  tail call void @fixup_abnormal_edges() #23
  tail call void @unshare_all_rtl_again(ptr noundef %0) #22
  %1117 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !521
  %1118 = icmp eq i8 %1117, 0
  br i1 %1118, label %1119, label %1122, !prof !470

1119:                                             ; preds = %1116
  %1120 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !605
  %1121 = getelementptr inbounds i8, ptr %1120, i64 6
  store i8 8, ptr %1121, align 1, !tbaa !397
  br label %1122

1122:                                             ; preds = %1116, %1119
  tail call fastcc void @VEC_rtx_p_heap_free() #23
  %1123 = load i1, ptr @failure, align 4
  %1124 = zext i1 %1123 to i32
  ret i32 %1124
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
define dso_local void @mark_home_live(i32 noundef %0) local_unnamed_addr #0 !prof !606 {
  %2 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !432
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %7, label %14, !prof !607

7:                                                ; preds = %1
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %9 = getelementptr inbounds ptr, ptr %8, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !417
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  tail call fastcc void @mark_home_live_1(i32 noundef %0, i32 noundef %13) #23
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_nonexceptional_receiver() unnamed_addr #0 !prof !608 !PGOFuncName !609 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %3 = load i32, ptr @optimize, align 4, !tbaa !431
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %110, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !417
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !549
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !610
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #22
  %15 = load ptr, ptr @cfun, align 8, !tbaa !417
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !549
  %18 = load ptr, ptr %17, align 8, !tbaa !551
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !555
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !553
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %32, label %24

24:                                               ; preds = %5, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %5 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !611
  %28 = and i32 %27, -3
  store i32 %28, ptr %26, align 8, !tbaa !611
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !553
  %31 = icmp eq ptr %30, %20
  br i1 %31, label %32, label %24, !llvm.loop !612

32:                                               ; preds = %24, %5
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !611
  %35 = or i32 %34, 2
  store i32 %35, ptr %33, align 8, !tbaa !611
  %36 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %20, ptr %14, align 8, !tbaa !417
  %37 = getelementptr inbounds i8, ptr %2, i64 8
  br label %41

38:                                               ; preds = %64, %41
  %39 = phi ptr [ %43, %41 ], [ %65, %64 ]
  %40 = icmp eq ptr %39, %14
  br i1 %40, label %70, label %41, !llvm.loop !613

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %36, %32 ], [ %39, %38 ]
  %43 = getelementptr inbounds ptr, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !tbaa !417
  %45 = tail call fastcc ptr @ei_start_1(ptr noundef %44) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !614
  store ptr %45, ptr %37, align 8, !tbaa.struct !615
  %46 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %45, ptr noundef nonnull %1) #23, !range !429
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %41, %64
  %49 = phi ptr [ %65, %64 ], [ %43, %41 ]
  %50 = load ptr, ptr %1, align 8, !tbaa !417
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !616
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load ptr, ptr %50, align 8, !tbaa !618
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !611
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = or disjoint i32 %58, 2
  store i32 %62, ptr %57, align 8, !tbaa !611
  %63 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %56, ptr %49, align 8, !tbaa !417
  br label %64

64:                                               ; preds = %55, %61, %48
  %65 = phi ptr [ %49, %48 ], [ %49, %55 ], [ %63, %61 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %66 = load i32, ptr %2, align 8
  %67 = load ptr, ptr %37, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %1) #23, !range !429
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %38, label %48, !llvm.loop !619

70:                                               ; preds = %38
  tail call void @free(ptr noundef %14) #23
  %71 = load ptr, ptr @cfun, align 8, !tbaa !417
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !549
  %74 = load ptr, ptr %73, align 8, !tbaa !551
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !553
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !555
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %110, label %80

80:                                               ; preds = %70, %101
  %81 = phi ptr [ %103, %101 ], [ %76, %70 ]
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !611
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %81) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !614
  store ptr %87, ptr %37, align 8, !tbaa.struct !615
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %1) #23, !range !429
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86, %96
  %91 = load ptr, ptr %1, align 8, !tbaa !417
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !616
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %97 = load i32, ptr %2, align 8
  %98 = load ptr, ptr %37, align 8
  %99 = call fastcc zeroext i8 @ei_cond(i32 %97, ptr %98, ptr noundef nonnull %1) #23, !range !429
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %90, !llvm.loop !620

101:                                              ; preds = %96, %86, %80
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !553
  %104 = load ptr, ptr @cfun, align 8, !tbaa !417
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !549
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !555
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %80, !llvm.loop !621

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
define internal fastcc void @scan_paradoxical_subregs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !622 !PGOFuncName !623 {
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
  ], !prof !624

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !397
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %67, !prof !625

10:                                               ; preds = %4
  %11 = lshr i32 %2, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !397
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !417
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !431
  %22 = icmp ult i32 %21, %16
  br i1 %22, label %23, label %67, !prof !625

23:                                               ; preds = %10
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %17, i64 %25
  store i32 %16, ptr %26, align 4, !tbaa !431
  %27 = load ptr, ptr %5, align 8, !tbaa !397
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
  %36 = load ptr, ptr %35, align 8, !tbaa !417
  %37 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !397
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %67, label %40, !prof !626

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %42 = zext i8 %38 to i64
  br label %43

43:                                               ; preds = %40, %65
  %44 = phi i64 [ %42, %40 ], [ %45, %65 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds i8, ptr %36, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !397
  switch i8 %47, label %65 [
    i8 101, label %48
    i8 69, label %51
  ], !prof !627

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %50 = load ptr, ptr %49, align 8, !tbaa !397
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %50) #23
  br label %65

51:                                               ; preds = %43
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %45
  %53 = load ptr, ptr %52, align 8, !tbaa !397
  %54 = load i32, ptr %53, align 8, !tbaa !628
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65, !prof !630

56:                                               ; preds = %51
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %57, %56 ], [ %60, %58 ]
  %60 = add nsw i64 %59, -1
  %61 = load ptr, ptr %52, align 8, !tbaa !397
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !417
  tail call fastcc void @scan_paradoxical_subregs(ptr noundef %63) #23
  %64 = icmp ugt i64 %59, 1
  br i1 %64, label %58, label %65, !prof !631, !llvm.loop !632

65:                                               ; preds = %58, %51, %43, %48
  %66 = icmp sgt i64 %44, 1
  br i1 %66, label %43, label %67, !prof !633, !llvm.loop !634

67:                                               ; preds = %65, %32, %4, %10, %23, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !635 !PGOFuncName !636 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !397
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @function_invariant_p(ptr noundef readonly %0) local_unnamed_addr #11 !prof !637 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !431
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %32, label %8, !prof !638

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !417
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %32, label %11, !prof !639

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !417
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %32, label %14, !prof !639

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 49
  br i1 %15, label %16, label %31, !prof !639

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !397
  %19 = icmp eq ptr %18, %9
  %20 = icmp eq ptr %18, %12
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !397
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !431
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
define internal fastcc void @init_elim_table() unnamed_addr #0 !prof !469 !PGOFuncName !640 {
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !641

3:                                                ; preds = %0
  %4 = tail call ptr @xcalloc(i64 noundef 4, i64 noundef 64) #22
  store ptr %4, ptr @reg_eliminate, align 8, !tbaa !417
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  store i32 0, ptr @num_eliminable, align 4, !tbaa !431
  br label %7

7:                                                ; preds = %5, %32
  %8 = phi ptr [ %38, %32 ], [ @reg_eliminate_1, %5 ]
  %9 = phi ptr [ %37, %32 ], [ %6, %5 ]
  %10 = load i32, ptr %8, align 4, !tbaa !642
  store i32 %10, ptr %9, align 8, !tbaa !512
  %11 = getelementptr inbounds %struct.elim_table_1, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !644
  %13 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !541
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !645
  %15 = tail call zeroext i8 %14(i32 noundef %10, i32 noundef %12) #22
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17, !prof !516

17:                                               ; preds = %7
  %18 = load i32, ptr %13, align 4, !tbaa !541
  %19 = icmp eq i32 %18, 7
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %29, !prof !486

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !646
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
  store i32 %34, ptr %35, align 4, !tbaa !647
  %36 = getelementptr inbounds %struct.elim_table, ptr %9, i64 0, i32 3
  store i32 %34, ptr %36, align 8, !tbaa !514
  %37 = getelementptr inbounds %struct.elim_table, ptr %9, i64 1
  %38 = getelementptr inbounds %struct.elim_table_1, ptr %8, i64 1
  %39 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %40 = getelementptr inbounds %struct.elim_table, ptr %39, i64 4
  %41 = icmp ult ptr %37, %40
  br i1 %41, label %7, label %42, !prof !542, !llvm.loop !648

42:                                               ; preds = %32, %42
  %43 = phi ptr [ %55, %42 ], [ %39, %32 ]
  %44 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !514
  %46 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr @num_eliminable, align 4, !tbaa !431
  %48 = load i32, ptr %43, align 8, !tbaa !512
  %49 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %48) #22
  %50 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !649
  %51 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !541
  %53 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %52) #22
  %54 = getelementptr inbounds %struct.elim_table, ptr %43, i64 0, i32 9
  store ptr %53, ptr %54, align 8, !tbaa !650
  %55 = getelementptr inbounds %struct.elim_table, ptr %43, i64 1
  %56 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %57 = getelementptr inbounds %struct.elim_table, ptr %56, i64 4
  %58 = icmp ult ptr %55, %57
  br i1 %58, label %42, label %59, !prof !542, !llvm.loop !651

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
define internal fastcc void @alter_reg(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !652 !PGOFuncName !653 {
  %4 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = icmp eq ptr %7, null
  br i1 %8, label %163, label %9, !prof !654

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %163, !prof !655

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %15 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %16 = getelementptr inbounds i16, ptr %15, i64 %5
  %17 = load i16, ptr %16, align 2, !tbaa !432
  %18 = sext i16 %17 to i32
  %19 = icmp slt i16 %17, 0
  %20 = select i1 %19, i32 %0, i32 %18, !prof !656
  tail call void @df_ref_change_reg_with_loc(i32 noundef %14, i32 noundef %20, ptr noundef nonnull %7) #22
  %21 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %22 = getelementptr inbounds i16, ptr %21, i64 %5
  %23 = load i16, ptr %22, align 2, !tbaa !432
  %24 = sext i16 %23 to i32
  %25 = icmp slt i16 %23, 0
  %26 = select i1 %25, i32 %0, i32 %24, !prof !656
  %27 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %28 = getelementptr inbounds ptr, ptr %27, i64 %5
  %29 = load ptr, ptr %28, align 8, !tbaa !417
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store i32 %26, ptr %30, align 8, !tbaa !397
  %31 = load i16, ptr %22, align 2, !tbaa !432
  %32 = icmp slt i16 %31, 0
  br i1 %32, label %33, label %163, !prof !656

33:                                               ; preds = %13
  %34 = tail call fastcc i32 @REG_N_REFS(i32 noundef %0) #23
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %163, !prof !657

36:                                               ; preds = %33
  %37 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %38 = getelementptr inbounds ptr, ptr %37, i64 %5
  %39 = load ptr, ptr %38, align 8, !tbaa !417
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %163, !prof !560

41:                                               ; preds = %36
  %42 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %43 = getelementptr inbounds ptr, ptr %42, i64 %5
  %44 = load ptr, ptr %43, align 8, !tbaa !417
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !560

46:                                               ; preds = %41
  %47 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %48 = getelementptr inbounds ptr, ptr %47, i64 %5
  %49 = load ptr, ptr %48, align 8, !tbaa !417
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %163

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %53 = getelementptr inbounds ptr, ptr %52, i64 %5
  %54 = load ptr, ptr %53, align 8, !tbaa !417
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %163, !prof !560

56:                                               ; preds = %51
  %57 = load ptr, ptr %28, align 8, !tbaa !417
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !397
  %64 = zext i8 %63 to i32
  %65 = tail call i32 @get_mode_alignment(i32 noundef %60) #22
  %66 = load ptr, ptr @reg_max_ref_width, align 8, !tbaa !417
  %67 = getelementptr inbounds i32, ptr %66, i64 %5
  %68 = load i32, ptr %67, align 4, !tbaa !431
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %64)
  %70 = shl i32 %68, 3
  %71 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73, !prof !561

73:                                               ; preds = %56
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %0) #22
  %75 = icmp eq i8 %2, 0
  br i1 %75, label %76, label %79, !prof !560

76:                                               ; preds = %73
  %77 = tail call ptr @ira_reuse_stack_slot(i32 noundef %0, i32 noundef %64, i32 noundef %69) #22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %152, !prof !658

79:                                               ; preds = %56, %73, %76
  %80 = icmp eq i32 %1, -1
  br i1 %80, label %86, label %81, !prof !659

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
  %90 = select i1 %88, i1 true, i1 %89, !prof !660
  %91 = sext i1 %90 to i32
  %92 = tail call ptr @assign_stack_local(i32 noundef %60, i64 noundef %87, i32 noundef %91) #22
  %93 = icmp eq i8 %2, 0
  %94 = load i8, ptr @ira_conflicts_p, align 1
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %152, !prof !661

97:                                               ; preds = %86
  tail call void @ira_mark_new_stack_slot(ptr noundef %92, i32 noundef %0, i32 noundef %69) #22
  br label %152

98:                                               ; preds = %81
  %99 = sext i32 %1 to i64
  %100 = getelementptr inbounds [53 x ptr], ptr @spill_stack_slot, i64 0, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !417
  %102 = icmp eq ptr %101, null
  br i1 %102, label %141, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds [53 x i32], ptr @spill_stack_slot_width, i64 0, i64 %99
  %105 = load i32, ptr %104, align 4, !tbaa !431
  %106 = icmp ult i32 %105, %69
  %107 = load i32, ptr %101, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  br i1 %106, label %125, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %113 = load i8, ptr %112, align 1, !tbaa !397
  %114 = icmp ult i8 %113, %63
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !397
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mem_attrs, ptr %117, i64 0, i32 4
  %121 = load i32, ptr %120, align 4, !tbaa !662
  br label %122

122:                                              ; preds = %115, %119
  %123 = phi i32 [ %121, %119 ], [ 8, %115 ]
  %124 = icmp ult i32 %123, %70
  br i1 %124, label %125, label %152

125:                                              ; preds = %103, %122, %111
  %126 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %127 = load i8, ptr %126, align 1, !tbaa !397
  %128 = icmp ugt i8 %127, %63
  %129 = select i1 %128, i32 %109, i32 %60
  %130 = tail call i32 @llvm.umax.i32(i32 %105, i32 %69)
  %131 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !397
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = icmp eq i32 %70, 0
  %136 = select i1 %135, i32 8, i32 %70
  br label %141

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.mem_attrs, ptr %132, i64 0, i32 4
  %139 = load i32, ptr %138, align 4, !tbaa !662
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
  store ptr %150, ptr %100, align 8, !tbaa !417
  %151 = getelementptr inbounds [53 x i32], ptr @spill_stack_slot_width, i64 0, i64 %99
  store i32 %143, ptr %151, align 4, !tbaa !431
  br label %152

152:                                              ; preds = %122, %86, %97, %141, %76
  %153 = phi ptr [ %77, %76 ], [ %150, %141 ], [ %92, %97 ], [ %92, %86 ], [ %101, %122 ]
  %154 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %155 = getelementptr inbounds ptr, ptr %154, i64 %5
  %156 = load ptr, ptr %155, align 8, !tbaa !417
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = tail call ptr @adjust_address_1(ptr noundef %153, i32 noundef %159, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  tail call void @set_mem_attrs_for_spill(ptr noundef %160) #22
  %161 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %162 = getelementptr inbounds ptr, ptr %161, i64 %5
  store ptr %160, ptr %162, align 8, !tbaa !417
  br label %163

163:                                              ; preds = %9, %3, %152, %51, %46, %36, %33, %13
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mark_not_eliminable(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #13 !prof !663 !PGOFuncName !664 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10, !prof !665

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !397
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !417
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %54, label %14, !prof !665

14:                                               ; preds = %10
  %15 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %16 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  br label %17

17:                                               ; preds = %14, %50
  %18 = phi i64 [ 0, %14 ], [ %52, %50 ]
  %19 = phi i32 [ %16, %14 ], [ %51, %50 ]
  %20 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %18, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !514
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %23, !prof !666

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %18, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !650
  %26 = icmp eq ptr %11, %25
  br i1 %26, label %27, label %50, !prof !667

27:                                               ; preds = %23
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !397
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 49
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !397
  %40 = icmp eq ptr %39, %11
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !397
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %37, %31, %27
  store i32 0, ptr %20, align 8, !tbaa !514
  %48 = getelementptr inbounds %struct.elim_table, ptr %15, i64 %18, i32 4
  store i32 0, ptr %48, align 4, !tbaa !647
  %49 = add nsw i32 %19, -1
  store i32 %49, ptr @num_eliminable, align 4, !tbaa !431
  br label %50

50:                                               ; preds = %17, %23, %41, %47
  %51 = phi i32 [ %19, %17 ], [ %19, %23 ], [ %19, %41 ], [ %49, %47 ]
  %52 = add nuw nsw i64 %18, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %17, !prof !668, !llvm.loop !669

54:                                               ; preds = %50, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_fix_stack_asms() unnamed_addr #0 !prof !469 !PGOFuncName !670 {
  %1 = alloca [30 x ptr], align 16
  %2 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #24
  %3 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !417
  %4 = icmp eq ptr %3, null
  br i1 %4, label %128, label %5, !prof !486

5:                                                ; preds = %0, %125
  %6 = phi ptr [ %126, %125 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.insn_chain, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !671
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %125, !prof !672

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !397
  %16 = call i32 @asm_noperands(ptr noundef %15) #22
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %125, label %18, !prof !673

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !tbaa !671
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !397
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %125

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !397
  %28 = load i32, ptr %27, align 8, !tbaa !628
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %54
  %33 = phi i64 [ 0, %30 ], [ %56, %54 ]
  %34 = phi i64 [ 0, %30 ], [ %55, %54 ]
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !417
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 25
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !397
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
  br i1 %57, label %58, label %32, !llvm.loop !674

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
  %74 = load ptr, ptr %73, align 8, !tbaa !417
  br label %75

75:                                               ; preds = %106, %70
  %76 = phi i64 [ %87, %106 ], [ %72, %70 ]
  %77 = phi ptr [ %107, %106 ], [ %74, %70 ]
  br label %78

78:                                               ; preds = %75, %102
  %79 = phi ptr [ %105, %102 ], [ %77, %75 ]
  %80 = phi i32 [ %103, %102 ], [ 0, %75 ]
  %81 = load i8, ptr %79, align 1, !tbaa !397
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
  %86 = load i64, ptr %85, align 8, !tbaa !449
  %87 = or i64 %86, %76
  %88 = getelementptr inbounds i8, ptr %79, i64 1
  br i1 %83, label %89, label %106

89:                                               ; preds = %82, %89
  %90 = phi ptr [ %91, %89 ], [ %88, %82 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load i8, ptr %90, align 1, !tbaa !397
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
  %101 = load i32, ptr %100, align 4, !tbaa !431
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
  br i1 %112, label %65, label %70, !llvm.loop !675

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
  br i1 %124, label %125, label %113, !llvm.loop !676

125:                                              ; preds = %122, %5, %18, %13
  %126 = load ptr, ptr %6, align 8, !tbaa !417
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %5, !prof !677, !llvm.loop !678

128:                                              ; preds = %125, %0
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spill_hard_reg(i32 noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !679 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw i64 1, %2
  %4 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !449
  %5 = or i64 %4, %3
  store i64 %5, ptr @bad_spill_regs_global, align 8, !tbaa !449
  tail call void @df_set_regs_ever_live(i32 noundef %0, i8 noundef zeroext 1) #22
  %6 = load i32, ptr @max_regno, align 4, !tbaa !431
  %7 = icmp sgt i32 %6, 53
  br i1 %7, label %8, label %40, !prof !472

8:                                                ; preds = %1
  %9 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  br label %10

10:                                               ; preds = %8, %34
  %11 = phi i32 [ %6, %8 ], [ %35, %34 ]
  %12 = phi ptr [ %9, %8 ], [ %36, %34 ]
  %13 = phi i64 [ 53, %8 ], [ %37, %34 ]
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !432
  %16 = sext i16 %15 to i32
  %17 = icmp slt i16 %15, 0
  %18 = icmp ugt i32 %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %34, label %20, !prof !680

20:                                               ; preds = %10
  %21 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %22 = getelementptr inbounds ptr, ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !417
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = tail call fastcc i32 @end_hard_regno(i32 noundef %26, i32 noundef %16) #23
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %29, label %34, !prof !681

29:                                               ; preds = %20
  %30 = trunc i64 %13 to i32
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %30) #22
  %32 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %33 = load i32, ptr @max_regno, align 4, !tbaa !431
  br label %34

34:                                               ; preds = %10, %20, %29
  %35 = phi i32 [ %11, %10 ], [ %11, %20 ], [ %33, %29 ]
  %36 = phi ptr [ %12, %10 ], [ %12, %20 ], [ %32, %29 ]
  %37 = add nuw nsw i64 %13, 1
  %38 = sext i32 %35 to i64
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %10, label %40, !prof !473, !llvm.loop !682

40:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @finish_spills(i32 noundef %0) unnamed_addr #0 !prof !683 !PGOFuncName !684 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  store i32 0, ptr @n_spills, align 4, !tbaa !431
  %6 = load i64, ptr @used_spill_regs, align 8, !tbaa !449
  br label %7

7:                                                ; preds = %1, %34
  %8 = phi i64 [ %6, %1 ], [ %35, %34 ]
  %9 = phi i64 [ 0, %1 ], [ %37, %34 ]
  %10 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %11 = shl nuw nsw i64 1, %9
  %12 = and i64 %8, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %32, label %14, !prof !685

14:                                               ; preds = %7
  %15 = load i32, ptr @n_spills, align 4, !tbaa !431
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %9
  store i16 %16, ptr %17, align 2, !tbaa !432
  %18 = trunc i64 %9 to i32
  %19 = trunc i64 %9 to i16
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr @n_spills, align 4, !tbaa !431
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %21
  store i16 %19, ptr %22, align 2, !tbaa !432
  %23 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !686

25:                                               ; preds = %14
  %26 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %18) #22
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 1, i32 %10, !prof !686
  br label %29

29:                                               ; preds = %25, %14
  %30 = phi i32 [ %10, %14 ], [ %28, %25 ]
  tail call void @df_set_regs_ever_live(i32 noundef %18, i8 noundef zeroext 1) #22
  %31 = load i64, ptr @used_spill_regs, align 8, !tbaa !449
  br label %34

32:                                               ; preds = %7
  %33 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %9
  store i16 -1, ptr %33, align 2, !tbaa !432
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi i64 [ %31, %29 ], [ %8, %32 ]
  %36 = phi i32 [ %30, %29 ], [ %10, %32 ]
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, 53
  br i1 %38, label %39, label %7, !prof !687, !llvm.loop !688

39:                                               ; preds = %34
  store i32 53, ptr %2, align 4, !tbaa !431
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull @spilled_pseudos, i32 noundef 53, ptr noundef nonnull %2) #23
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %41 = icmp eq i8 %40, 0
  %42 = load i8, ptr @ira_conflicts_p, align 1
  br i1 %41, label %85, label %43, !prof !689

43:                                               ; preds = %39
  %44 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  br label %45

45:                                               ; preds = %43, %78
  %46 = phi ptr [ %79, %78 ], [ %44, %43 ]
  %47 = phi i8 [ %80, %78 ], [ %42, %43 ]
  %48 = phi i8 [ %81, %78 ], [ %42, %43 ]
  %49 = phi i32 [ %82, %78 ], [ %36, %43 ]
  %50 = icmp eq i8 %48, 0
  %51 = load i32, ptr %2, align 4, !tbaa !431
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %46, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !432
  %55 = icmp sgt i16 %54, -1
  br i1 %50, label %57, label %56, !prof !690

56:                                               ; preds = %45
  br i1 %55, label %62, label %78, !prof !690

57:                                               ; preds = %45
  br i1 %55, label %62, label %58

58:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3991, ptr noundef nonnull @.str.2) #22
  %59 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %60 = getelementptr inbounds i16, ptr %59, i64 %52
  %61 = load i16, ptr %60, align 2, !tbaa !432
  br label %62

62:                                               ; preds = %56, %57, %58
  %63 = phi ptr [ %46, %57 ], [ %59, %58 ], [ %46, %56 ]
  %64 = phi i16 [ %54, %57 ], [ %61, %58 ], [ %54, %56 ]
  %65 = getelementptr inbounds i16, ptr %63, i64 %52
  %66 = sext i16 %64 to i64
  %67 = and i64 %66, 4294967295
  %68 = shl nuw i64 1, %67
  %69 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !417
  %70 = getelementptr inbounds i64, ptr %69, i64 %52
  %71 = load i64, ptr %70, align 8, !tbaa !449
  %72 = or i64 %68, %71
  store i64 %72, ptr %70, align 8, !tbaa !449
  store i16 -1, ptr %65, align 2, !tbaa !432
  %73 = load i8, ptr @ira_conflicts_p, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  tail call void @ira_mark_allocation_change(i32 noundef %51) #22
  %76 = load i8, ptr @ira_conflicts_p, align 1
  %77 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  br label %78

78:                                               ; preds = %62, %75, %56
  %79 = phi ptr [ %46, %56 ], [ %77, %75 ], [ %63, %62 ]
  %80 = phi i8 [ %47, %56 ], [ %76, %75 ], [ 0, %62 ]
  %81 = phi i8 [ %48, %56 ], [ %76, %75 ], [ 0, %62 ]
  %82 = phi i32 [ %49, %56 ], [ 1, %75 ], [ 1, %62 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %45, !prof !691, !llvm.loop !692

85:                                               ; preds = %78, %39
  %86 = phi i8 [ %42, %39 ], [ %80, %78 ]
  %87 = phi i32 [ %36, %39 ], [ %82, %78 ]
  %88 = icmp ne i32 %0, 0
  %89 = icmp ne i8 %86, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %183, !prof !693

91:                                               ; preds = %85
  %92 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !417
  %93 = load i32, ptr @max_regno, align 4, !tbaa !431
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %92, i8 0, i64 %95, i1 false)
  %96 = load ptr, ptr @insns_need_reload, align 8, !tbaa !417
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %104, !prof !689

98:                                               ; preds = %135, %91
  %99 = load i32, ptr @max_regno, align 4, !tbaa !431
  %100 = icmp ugt i32 %99, 53
  br i1 %100, label %101, label %173, !prof !694

101:                                              ; preds = %98
  %102 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !417
  %103 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  br label %139

104:                                              ; preds = %91, %135
  %105 = phi ptr [ %137, %135 ], [ %96, %91 ]
  %106 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %106, i32 noundef 53, ptr noundef nonnull %2) #23
  %107 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %120, label %109, !prof !695

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 10
  br label %111

111:                                              ; preds = %109, %111
  %112 = load i64, ptr %110, align 8, !tbaa !696
  %113 = load i32, ptr %2, align 4, !tbaa !431
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, ptr %92, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !449
  %117 = or i64 %116, %112
  store i64 %117, ptr %115, align 8, !tbaa !449
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %111, !prof !697, !llvm.loop !698

120:                                              ; preds = %111, %104
  %121 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %121, i32 noundef 53, ptr noundef nonnull %2) #23
  %122 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %135, label %124, !prof !699

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 10
  br label %126

126:                                              ; preds = %124, %126
  %127 = load i64, ptr %125, align 8, !tbaa !696
  %128 = load i32, ptr %2, align 4, !tbaa !431
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, ptr %92, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !449
  %132 = or i64 %131, %127
  store i64 %132, ptr %130, align 8, !tbaa !449
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %133 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %126, !prof !700, !llvm.loop !701

135:                                              ; preds = %126, %120
  %136 = getelementptr inbounds %struct.insn_chain, ptr %105, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !417
  %138 = icmp eq ptr %137, null
  br i1 %138, label %98, label %104, !prof !702, !llvm.loop !703

139:                                              ; preds = %101, %162
  %140 = phi ptr [ %103, %101 ], [ %163, %162 ]
  %141 = phi ptr [ %102, %101 ], [ %164, %162 ]
  %142 = phi i64 [ 53, %101 ], [ %166, %162 ]
  %143 = phi i32 [ 0, %101 ], [ %165, %162 ]
  %144 = getelementptr inbounds i16, ptr %141, i64 %142
  %145 = load i16, ptr %144, align 2, !tbaa !432
  %146 = getelementptr inbounds i16, ptr %140, i64 %142
  %147 = load i16, ptr %146, align 2, !tbaa !432
  %148 = icmp eq i16 %145, %147
  br i1 %148, label %162, label %149, !prof !704

149:                                              ; preds = %139
  %150 = icmp slt i16 %147, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %149
  %152 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !417
  %153 = add i32 %143, 1
  %154 = zext i32 %143 to i64
  %155 = getelementptr inbounds i32, ptr %152, i64 %154
  %156 = trunc i64 %142 to i32
  store i32 %156, ptr %155, align 4, !tbaa !431
  br label %162

157:                                              ; preds = %149
  %158 = trunc i64 %142 to i32
  %159 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %158) #22
  %160 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !417
  %161 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  br label %162

162:                                              ; preds = %139, %157, %151
  %163 = phi ptr [ %140, %151 ], [ %161, %157 ], [ %140, %139 ]
  %164 = phi ptr [ %141, %151 ], [ %160, %157 ], [ %141, %139 ]
  %165 = phi i32 [ %153, %151 ], [ %143, %157 ], [ %143, %139 ]
  %166 = add nuw nsw i64 %142, 1
  %167 = load i32, ptr @max_regno, align 4, !tbaa !431
  %168 = zext i32 %167 to i64
  %169 = icmp ult i64 %166, %168
  br i1 %169, label %139, label %170, !prof !705, !llvm.loop !706

170:                                              ; preds = %162
  %171 = trunc i64 %166 to i32
  %172 = load ptr, ptr @pseudo_forbidden_regs, align 8, !tbaa !417
  br label %173

173:                                              ; preds = %170, %98
  %174 = phi ptr [ %92, %98 ], [ %172, %170 ]
  %175 = phi i32 [ 53, %98 ], [ %171, %170 ]
  %176 = phi i32 [ 0, %98 ], [ %165, %170 ]
  store i32 %175, ptr %2, align 4, !tbaa !431
  %177 = load ptr, ptr @temp_pseudo_reg_arr, align 8, !tbaa !417
  %178 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !449
  %179 = load ptr, ptr @pseudo_previous_regs, align 8, !tbaa !417
  %180 = tail call zeroext i8 @ira_reassign_pseudos(ptr noundef %177, i32 noundef %176, i64 noundef %178, ptr noundef %174, ptr noundef %179, ptr noundef nonnull @spilled_pseudos) #22
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, i32 %87, i32 1, !prof !707
  br label %183

183:                                              ; preds = %173, %85
  %184 = phi i32 [ %182, %173 ], [ %87, %85 ]
  %185 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !417
  %186 = icmp eq ptr %185, null
  br i1 %186, label %215, label %187, !prof !689

187:                                              ; preds = %183, %212
  %188 = phi ptr [ %213, %212 ], [ %185, %183 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %189 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %196, !prof !708

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
  br i1 %200, label %212, label %201, !prof !709

201:                                              ; preds = %196
  store i64 0, ptr %4, align 8, !tbaa !449
  %202 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %202) #22
  store i64 0, ptr %5, align 8, !tbaa !449
  %203 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %5, ptr noundef nonnull %203) #22
  %204 = load i64, ptr %5, align 8, !tbaa !449
  %205 = load i64, ptr %4, align 8, !tbaa !449
  %206 = or i64 %205, %204
  store i64 %206, ptr %4, align 8, !tbaa !449
  call void @compute_use_by_pseudos(ptr noundef nonnull %4, ptr noundef nonnull %202) #23
  call void @compute_use_by_pseudos(ptr noundef nonnull %4, ptr noundef nonnull %203) #23
  %207 = load i64, ptr %4, align 8, !tbaa !449
  %208 = xor i64 %207, -1
  %209 = getelementptr inbounds %struct.insn_chain, ptr %188, i64 0, i32 10
  %210 = load i64, ptr @used_spill_regs, align 8, !tbaa !449
  %211 = and i64 %210, %208
  store i64 %211, ptr %209, align 8, !tbaa !696
  br label %212

212:                                              ; preds = %201, %196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %213 = load ptr, ptr %188, align 8, !tbaa !417
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %187, !prof !710, !llvm.loop !711

215:                                              ; preds = %212, %183
  call void @bitmap_clear(ptr noundef nonnull @changed_allocation_pseudos) #22
  %216 = load i32, ptr @max_regno, align 4, !tbaa !431
  %217 = icmp ugt i32 %216, 53
  br i1 %217, label %218, label %253, !prof !694

218:                                              ; preds = %215, %248
  %219 = phi i64 [ %249, %248 ], [ 53, %215 ]
  %220 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %221 = getelementptr inbounds i16, ptr %220, i64 %219
  %222 = load i16, ptr %221, align 2, !tbaa !432
  %223 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !417
  %224 = getelementptr inbounds i16, ptr %223, i64 %219
  %225 = load i16, ptr %224, align 2, !tbaa !432
  %226 = icmp eq i16 %225, %222
  br i1 %226, label %248, label %227, !prof !704

227:                                              ; preds = %218
  %228 = trunc i64 %219 to i32
  %229 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @changed_allocation_pseudos, i32 noundef %228) #22
  %230 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !417
  %231 = getelementptr inbounds i16, ptr %230, i64 %219
  %232 = load i16, ptr %231, align 2, !tbaa !432
  %233 = sext i16 %232 to i32
  call fastcc void @alter_reg(i32 noundef %228, i32 noundef %233, i8 noundef zeroext 0) #23
  %234 = load ptr, ptr @reg_old_renumber, align 8, !tbaa !417
  %235 = getelementptr inbounds i16, ptr %234, i64 %219
  store i16 %222, ptr %235, align 2, !tbaa !432
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %237 = icmp eq ptr %236, null
  br i1 %237, label %248, label %238

238:                                              ; preds = %227
  %239 = icmp eq i16 %222, -1
  br i1 %239, label %240, label %242

240:                                              ; preds = %238
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.15, i32 noundef %228) #23
  br label %248

242:                                              ; preds = %238
  %243 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %244 = getelementptr inbounds i16, ptr %243, i64 %219
  %245 = load i16, ptr %244, align 2, !tbaa !432
  %246 = sext i16 %245 to i32
  %247 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.16, i32 noundef %228, i32 noundef %246) #23
  br label %248

248:                                              ; preds = %227, %242, %240, %218
  %249 = add nuw nsw i64 %219, 1
  %250 = load i32, ptr @max_regno, align 4, !tbaa !431
  %251 = zext i32 %250 to i64
  %252 = icmp ult i64 %249, %251
  br i1 %252, label %218, label %253, !prof !705, !llvm.loop !712

253:                                              ; preds = %248, %215
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %184
}

; Function Attrs: optsize
declare i64 @get_frame_size() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_initial_elim_offsets() unnamed_addr #0 !prof !713 !PGOFuncName !714 {
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi ptr [ %11, %2 ], [ %1, %0 ]
  %4 = load i32, ptr %3, align 8, !tbaa !512
  %5 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !541
  %7 = tail call i64 @ix86_initial_elimination_offset(i32 noundef %4, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 2
  store i64 %7, ptr %8, align 8, !tbaa !715
  %9 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 5
  store i64 %7, ptr %9, align 8, !tbaa !716
  %10 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 6
  store i64 %7, ptr %10, align 8, !tbaa !717
  %11 = getelementptr inbounds %struct.elim_table, ptr %3, i64 1
  %12 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %13 = getelementptr inbounds %struct.elim_table, ptr %12, i64 4
  %14 = icmp ult ptr %11, %13
  br i1 %14, label %2, label %15, !prof !718, !llvm.loop !719

15:                                               ; preds = %2
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !431
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_initial_label_offsets() unnamed_addr #0 !prof !720 !PGOFuncName !721 {
  %1 = load ptr, ptr @offsets_known_at, align 8, !tbaa !417
  %2 = load i32, ptr @num_labels, align 4, !tbaa !431
  %3 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %3, i1 false)
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !397
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !722

6:                                                ; preds = %0, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !397
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @set_label_offsets(ptr noundef nonnull %9, ptr noundef null, i32 noundef 1) #23
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !397
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !prof !401, !llvm.loop !723

16:                                               ; preds = %12, %0
  tail call void @for_each_eh_label(ptr noundef nonnull @set_initial_eh_label_offset) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @eliminate_regs(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !724 {
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
define internal fastcc void @calculate_needs_all_insns(i32 noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !725 {
  store i1 false, ptr @something_needs_elimination, align 4
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11, !prof !470

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20, !prof !471

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  %37 = select i1 %36, ptr %33, ptr %29, !prof !470
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %15, ptr @reload_insn_firstobj, align 8, !tbaa !417
  %38 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !417
  %39 = icmp eq ptr %38, null
  br i1 %39, label %253, label %40, !prof !486

40:                                               ; preds = %20, %250
  %41 = phi ptr [ %251, %250 ], [ @insns_need_reload, %20 ]
  %42 = phi ptr [ %45, %250 ], [ %38, %20 ]
  %43 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !671
  %45 = load ptr, ptr %42, align 8, !tbaa !426
  %46 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 9
  store i32 0, ptr %46, align 8, !tbaa !726
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
  ], !prof !727

52:                                               ; preds = %40, %40, %40
  %53 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !397
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !728

56:                                               ; preds = %40, %40, %52
  tail call fastcc void @set_label_offsets(ptr noundef nonnull %44, ptr noundef nonnull %44, i32 noundef 0) #23
  %57 = load i32, ptr %44, align 8
  br label %58

58:                                               ; preds = %40, %56, %52
  %59 = phi i32 [ %50, %40 ], [ %57, %56 ], [ %50, %52 ]
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %250, !prof !729

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !397
  %66 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !397
  %68 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !397
  %70 = load i32, ptr %65, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 23
  br i1 %72, label %76, label %73, !prof !730

73:                                               ; preds = %63
  %74 = tail call ptr @single_set_2(ptr noundef nonnull %44, ptr noundef nonnull %65) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %107, label %76, !prof !731

76:                                               ; preds = %63, %73
  %77 = phi ptr [ %74, %73 ], [ %65, %63 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !397
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %107, !prof !732

83:                                               ; preds = %76
  %84 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #23
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16, ptr %84, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !432
  %89 = icmp slt i16 %88, 0
  br i1 %89, label %90, label %107, !prof !733

90:                                               ; preds = %83
  %91 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %92 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #23
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !417
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %102, !prof !733

97:                                               ; preds = %90
  %98 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !417
  %99 = getelementptr inbounds ptr, ptr %98, i64 %93
  %100 = load ptr, ptr %99, align 8, !tbaa !417
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102, !prof !733

102:                                              ; preds = %97, %90
  %103 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %104 = getelementptr inbounds ptr, ptr %103, i64 %93
  %105 = load ptr, ptr %104, align 8, !tbaa !417
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %250

107:                                              ; preds = %102, %97, %83, %76, %73
  %108 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113, !prof !734

110:                                              ; preds = %107
  %111 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !431
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110, %107
  %114 = tail call fastcc i32 @eliminate_regs_in_insn(ptr noundef nonnull %44, i32 noundef 0) #23
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi i32 [ %114, %113 ], [ 0, %110 ]
  %117 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !397
  %118 = sext i8 %117 to i32
  %119 = tail call i32 @find_reloads(ptr noundef nonnull %44, i32 noundef 0, i32 noundef %118, i32 noundef %0, ptr noundef nonnull @spill_reg_order) #22
  %120 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !431
  %121 = icmp ne i32 %120, 0
  %122 = load i32, ptr @n_reloads, align 4
  %123 = icmp sgt i32 %122, 1
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %125, label %204, !prof !735

125:                                              ; preds = %115
  %126 = load i32, ptr %44, align 8
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -7
  %129 = icmp ult i32 %128, 4
  br i1 %129, label %130, label %204

130:                                              ; preds = %125
  %131 = load ptr, ptr %64, align 8, !tbaa !397
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
  %142 = load ptr, ptr %141, align 8, !tbaa !397
  %143 = load ptr, ptr %140, align 8, !tbaa !397
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
  %159 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %160 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %142) #23
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i16, ptr %159, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !432
  %164 = icmp slt i16 %163, 0
  br i1 %164, label %165, label %204

165:                                              ; preds = %158
  %166 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %143) #23
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i16, ptr %159, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !432
  %170 = icmp slt i16 %169, 0
  br i1 %170, label %171, label %204

171:                                              ; preds = %165
  %172 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %173 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %142) #23
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds ptr, ptr %172, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !417
  %177 = icmp eq ptr %176, null
  br i1 %177, label %204, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds ptr, ptr %172, i64 %167
  %180 = load ptr, ptr %179, align 8, !tbaa !417
  %181 = icmp eq ptr %180, null
  br i1 %181, label %204, label %182

182:                                              ; preds = %178
  %183 = tail call i32 @rtx_equal_p(ptr noundef nonnull %176, ptr noundef nonnull %180) #22
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %182, %149
  %186 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %140, align 8, !tbaa !397
  %190 = tail call fastcc i32 @rhs_regno(ptr noundef %189) #23
  %191 = load ptr, ptr %141, align 8, !tbaa !397
  %192 = tail call fastcc i32 @rhs_regno(ptr noundef %191) #23
  tail call void @ira_mark_memory_move_deletion(i32 noundef %190, i32 noundef %192) #22
  br label %193

193:                                              ; preds = %188, %185
  %194 = tail call ptr @delete_insn(ptr noundef nonnull %44) #22
  %195 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !736
  %197 = icmp eq ptr %196, null
  %198 = select i1 %197, ptr @reload_insn_chain, ptr %196
  store ptr %45, ptr %198, align 8, !tbaa !417
  %199 = icmp eq ptr %45, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.insn_chain, ptr %45, i64 0, i32 1
  store ptr %196, ptr %201, align 8, !tbaa !736
  br label %202

202:                                              ; preds = %200, %193
  %203 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !417
  store ptr %203, ptr %42, align 8, !tbaa !426
  store ptr %42, ptr @unused_insn_chains, align 8, !tbaa !417
  br label %250

204:                                              ; preds = %125, %182, %178, %171, %165, %158, %154, %152, %135, %115
  %205 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207, !prof !734

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
  %215 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %216 = icmp sgt i32 %215, 0
  %217 = zext i1 %216 to i8
  %218 = trunc i32 %119 to i8
  %219 = shl i8 %218, 1
  %220 = and i8 %219, 2
  %221 = or disjoint i8 %214, %220
  %222 = or disjoint i8 %221, %217
  store i8 %222, ptr %47, align 4
  %223 = icmp eq i32 %116, 0
  br i1 %223, label %243, label %224, !prof !737

224:                                              ; preds = %208
  %225 = load ptr, ptr @reload_insn_firstobj, align 8, !tbaa !417
  %226 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %227 = ptrtoint ptr %225 to i64
  %228 = ptrtoint ptr %226 to i64
  %229 = sub i64 %227, %228
  store i64 %229, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %238, !prof !738

231:                                              ; preds = %224
  %232 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %233 = ptrtoint ptr %232 to i64
  %234 = sub i64 %233, %228
  %235 = icmp slt i64 %229, %234
  br i1 %235, label %236, label %238, !prof !738

236:                                              ; preds = %231
  %237 = getelementptr inbounds i8, ptr %226, i64 %229
  store ptr %237, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %237, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %241

238:                                              ; preds = %231, %224
  %239 = getelementptr inbounds i8, ptr %226, i64 %229
  tail call void @obstack_free(ptr noundef nonnull @reload_obstack, ptr noundef %239) #22
  %240 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %241

241:                                              ; preds = %238, %236
  %242 = phi i32 [ %240, %238 ], [ %215, %236 ]
  store ptr %65, ptr %64, align 8, !tbaa !397
  store i32 %67, ptr %66, align 8, !tbaa !397
  store ptr %69, ptr %68, align 8, !tbaa !397
  store i1 true, ptr @something_needs_elimination, align 4
  br label %243

243:                                              ; preds = %241, %208
  %244 = phi i32 [ %242, %241 ], [ %215, %208 ]
  %245 = load i32, ptr @something_needs_operands_changed, align 4, !tbaa !431
  %246 = or i32 %245, %119
  store i32 %246, ptr @something_needs_operands_changed, align 4, !tbaa !431
  %247 = icmp eq i32 %244, 0
  br i1 %247, label %250, label %248, !prof !739

248:                                              ; preds = %243
  tail call fastcc void @copy_reloads(ptr noundef nonnull %42) #23
  store ptr %42, ptr %41, align 8, !tbaa !417
  %249 = getelementptr inbounds %struct.insn_chain, ptr %42, i64 0, i32 2
  br label %250

250:                                              ; preds = %202, %102, %248, %243, %58
  %251 = phi ptr [ %41, %58 ], [ %41, %102 ], [ %249, %248 ], [ %41, %243 ], [ %41, %202 ]
  %252 = icmp eq ptr %45, null
  br i1 %252, label %253, label %40, !prof !740, !llvm.loop !741

253:                                              ; preds = %250, %20
  %254 = phi ptr [ @insns_need_reload, %20 ], [ %251, %250 ]
  store ptr null, ptr %254, align 8, !tbaa !417
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @verify_initial_elim_offsets() unnamed_addr #0 !prof !683 !PGOFuncName !742 {
  %1 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3, !prof !518

3:                                                ; preds = %0
  %4 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %14, %5 ]
  %7 = load i32, ptr %6, align 8, !tbaa !512
  %8 = getelementptr inbounds %struct.elim_table, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !541
  %10 = tail call i64 @ix86_initial_elimination_offset(i32 noundef %7, i32 noundef %9) #22
  %11 = getelementptr inbounds %struct.elim_table, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !715
  %13 = icmp eq i64 %10, %12
  %14 = getelementptr inbounds %struct.elim_table, ptr %6, i64 1
  %15 = load ptr, ptr @reg_eliminate, align 8
  %16 = getelementptr inbounds %struct.elim_table, ptr %15, i64 4
  %17 = icmp ult ptr %14, %16
  %18 = select i1 %13, i1 %17, i1 false
  br i1 %18, label %5, label %19, !prof !743, !llvm.loop !744

19:                                               ; preds = %5
  %20 = zext i1 %13 to i8
  br label %21

21:                                               ; preds = %19, %0
  %22 = phi i8 [ 1, %0 ], [ %20, %19 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_eliminables(ptr nocapture noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !745 {
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !521
  %3 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %6 = load i32, ptr %5, align 8, !tbaa !512
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %14, !prof !689

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 102), align 8, !tbaa !746
  %10 = tail call zeroext i8 %9() #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, ptr %5, align 8, !tbaa !512
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ %6, %4 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 103), align 8, !tbaa !645
  %17 = getelementptr inbounds %struct.elim_table, ptr %5, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !541
  %19 = tail call zeroext i8 %16(i32 noundef %15, i32 noundef %18) #22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !516

21:                                               ; preds = %14, %8
  %22 = getelementptr inbounds %struct.elim_table, ptr %5, i64 0, i32 3
  store i32 0, ptr %22, align 8, !tbaa !514
  br label %23

23:                                               ; preds = %14, %21
  %24 = getelementptr inbounds %struct.elim_table, ptr %5, i64 1
  %25 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %26 = getelementptr inbounds %struct.elim_table, ptr %25, i64 4
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %4, label %28, !prof !542, !llvm.loop !747

28:                                               ; preds = %23, %75
  %29 = phi ptr [ %77, %75 ], [ %25, %23 ]
  %30 = phi i64 [ %76, %75 ], [ 0, %23 ]
  %31 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !514
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %75, !prof !516

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !647
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %75, label %38, !prof !707

38:                                               ; preds = %34
  %39 = load i32, ptr %29, align 8, !tbaa !512
  br label %40

40:                                               ; preds = %38, %52
  %41 = phi ptr [ %25, %38 ], [ %54, %52 ]
  %42 = phi i64 [ 0, %38 ], [ %53, %52 ]
  %43 = load i32, ptr %41, align 8, !tbaa !512
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.elim_table, ptr %41, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !514
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.elim_table, ptr %41, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !541
  br label %56

52:                                               ; preds = %40, %45
  %53 = add nuw nsw i64 %42, 64
  %54 = getelementptr inbounds i8, ptr %25, i64 %53
  %55 = icmp ult i64 %42, 192
  br i1 %55, label %40, label %56, !llvm.loop !748

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ -1, %52 ]
  %58 = getelementptr inbounds %struct.elim_table, ptr %29, i64 0, i32 1
  br label %59

59:                                               ; preds = %56, %71
  %60 = phi ptr [ %25, %56 ], [ %73, %71 ]
  %61 = phi i64 [ 0, %56 ], [ %72, %71 ]
  %62 = load i32, ptr %60, align 8, !tbaa !512
  %63 = icmp eq i32 %62, %57
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.elim_table, ptr %60, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !541
  %67 = load i32, ptr %58, align 4, !tbaa !541
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.elim_table, ptr %60, i64 0, i32 3
  store i32 0, ptr %70, align 8, !tbaa !514
  br label %71

71:                                               ; preds = %59, %64, %69
  %72 = add nuw nsw i64 %61, 64
  %73 = getelementptr inbounds i8, ptr %25, i64 %72
  %74 = icmp ult i64 %61, 192
  br i1 %74, label %59, label %75, !llvm.loop !749

75:                                               ; preds = %71, %34, %28
  %76 = add nuw nsw i64 %30, 64
  %77 = getelementptr inbounds i8, ptr %25, i64 %76
  %78 = icmp ult i64 %30, 192
  br i1 %78, label %28, label %79, !prof !750, !llvm.loop !751

79:                                               ; preds = %75
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !521
  %80 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  br label %81

81:                                               ; preds = %79, %111
  %82 = phi i8 [ 1, %79 ], [ %112, %111 ]
  %83 = phi ptr [ %25, %79 ], [ %115, %111 ]
  %84 = phi i64 [ 0, %79 ], [ %114, %111 ]
  %85 = phi i32 [ %80, %79 ], [ %113, %111 ]
  %86 = getelementptr inbounds %struct.elim_table, ptr %83, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !514
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89, !prof !516

89:                                               ; preds = %81
  %90 = load i32, ptr %83, align 8, !tbaa !512
  %91 = icmp eq i32 %90, 20
  br i1 %91, label %92, label %111, !prof !752

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.elim_table, ptr %83, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !541
  %95 = icmp eq i32 %94, 6
  %96 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %97 = icmp ne i8 %96, 0
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %111, label %99, !prof !540

99:                                               ; preds = %92
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !521
  br label %111

100:                                              ; preds = %81
  %101 = getelementptr inbounds %struct.elim_table, ptr %83, i64 0, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !647
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104, !prof !707

104:                                              ; preds = %100
  store i32 0, ptr %101, align 4, !tbaa !647
  %105 = load i32, ptr %83, align 8, !tbaa !512
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = load i64, ptr %0, align 8, !tbaa !449
  %109 = or i64 %107, %108
  store i64 %109, ptr %0, align 8, !tbaa !449
  %110 = add nsw i32 %85, -1
  store i32 %110, ptr @num_eliminable, align 4, !tbaa !431
  br label %111

111:                                              ; preds = %89, %92, %99, %100, %104
  %112 = phi i8 [ %82, %89 ], [ %82, %92 ], [ 0, %99 ], [ %82, %100 ], [ %82, %104 ]
  %113 = phi i32 [ %85, %89 ], [ %85, %92 ], [ %85, %99 ], [ %85, %100 ], [ %110, %104 ]
  %114 = add nuw nsw i64 %84, 64
  %115 = getelementptr inbounds i8, ptr %25, i64 %114
  %116 = icmp ult i64 %84, 192
  br i1 %116, label %81, label %117, !prof !750, !llvm.loop !753

117:                                              ; preds = %111
  %118 = icmp eq i8 %112, 0
  %119 = icmp ne i8 %2, 0
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %124, label %121, !prof !754

121:                                              ; preds = %117
  %122 = load i64, ptr %0, align 8, !tbaa !449
  %123 = or i64 %122, 64
  store i64 %123, ptr %0, align 8, !tbaa !449
  br label %124

124:                                              ; preds = %121, %117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_reload_regs() unnamed_addr #0 !prof !469 !PGOFuncName !755 {
  %1 = load ptr, ptr @insns_need_reload, align 8, !tbaa !417
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !486

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  tail call fastcc void @find_reload_regs(ptr noundef nonnull %4) #23
  %5 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !prof !756, !llvm.loop !757

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_caller_save_insns() unnamed_addr #0 !prof !608 !PGOFuncName !758 {
  %1 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !417
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %0, %28
  %4 = phi ptr [ %9, %28 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %4, align 8, !tbaa !426
  br i1 %8, label %29, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !671
  %13 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !417
  %14 = icmp eq ptr %4, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr %9, ptr @reload_insn_chain, align 8, !tbaa !417
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call ptr @delete_insn(ptr noundef %12) #22
  %18 = icmp eq ptr %9, null
  %19 = getelementptr inbounds %struct.insn_chain, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !736
  br i1 %18, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !736
  br label %23

23:                                               ; preds = %16, %21
  %24 = icmp eq ptr %20, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  store ptr %9, ptr %20, align 8, !tbaa !426
  br label %26

26:                                               ; preds = %25, %23
  %27 = load ptr, ptr @unused_insn_chains, align 8, !tbaa !417
  store ptr %27, ptr %4, align 8, !tbaa !426
  store ptr %4, ptr @unused_insn_chains, align 8, !tbaa !417
  br i1 %18, label %31, label %28

28:                                               ; preds = %26, %29
  br label %3, !llvm.loop !759

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
define internal fastcc void @delete_dead_insn(ptr noundef %0) unnamed_addr #0 !prof !608 !PGOFuncName !760 {
  %2 = tail call ptr @prev_real_insn(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !397
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 23
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !397
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !397
  %19 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %12, ptr noundef %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %23 = tail call ptr @find_regno_note(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !397
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !397
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
define internal fastcc void @reload_as_needed(i32 noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !761 {
  %2 = alloca %struct.bitmap_head_def, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_reg_rtx, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @spill_reg_store, i8 0, i64 424, i1 false)
  %3 = load i32, ptr @max_regno, align 4, !tbaa !431
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #22
  store ptr %5, ptr @reg_last_reload_reg, align 8, !tbaa !417
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @reg_has_output_reload) #23
  store i64 0, ptr @reg_reloaded_valid, align 8, !tbaa !449
  tail call fastcc void @set_initial_elim_offsets() #23
  %6 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !417
  %7 = icmp eq ptr %6, null
  br i1 %7, label %154, label %8, !prof !486

8:                                                ; preds = %1, %151
  %9 = phi ptr [ %152, %151 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !671
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !397
  %14 = load i32, ptr %11, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %142 [
    i16 12, label %16
    i16 8, label %17
    i16 7, label %17
    i16 9, label %17
    i16 10, label %17
  ], !prof !762

16:                                               ; preds = %8
  call fastcc void @set_offsets_for_label(ptr noundef nonnull %11) #23
  br label %142

17:                                               ; preds = %8, %8, %8, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %2) #23
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !397
  call void @note_stores(ptr noundef %19, ptr noundef nonnull @forget_old_reloads_1, ptr noundef nonnull %2) #22
  %20 = load ptr, ptr %18, align 8, !tbaa !397
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %24, label %40, !prof !763

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !397
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 43
  br i1 %29, label %30, label %40, !prof !470

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !397
  %33 = lshr i32 %27, 16
  %34 = and i32 %33, 255
  %35 = call ptr @eliminate_regs(ptr noundef %32, i32 noundef %34, ptr noundef null) #23
  %36 = load ptr, ptr %18, align 8, !tbaa !397
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !397
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  store ptr %35, ptr %39, align 8, !tbaa !397
  br label %40

40:                                               ; preds = %17, %30, %24
  %41 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !734

43:                                               ; preds = %40
  %44 = load i32, ptr @num_eliminable_invariants, align 4, !tbaa !431
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds %struct.insn_chain, ptr %9, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51, !prof !737

51:                                               ; preds = %46
  %52 = call fastcc i32 @eliminate_regs_in_insn(ptr noundef nonnull %11, i32 noundef 1) #23
  %53 = load i32, ptr %11, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %57, !prof !764

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
  br i1 %61, label %62, label %63, !prof !765

62:                                               ; preds = %57
  store i32 0, ptr @n_reloads, align 4, !tbaa !431
  br label %114

63:                                               ; preds = %57
  call void @bitmap_clear(ptr noundef nonnull @reg_has_output_reload) #22
  store i64 0, ptr @reg_is_output_reload, align 8, !tbaa !449
  %64 = load i8, ptr @spill_indirect_levels, align 1, !tbaa !397
  %65 = sext i8 %64 to i32
  %66 = call i32 @find_reloads(ptr noundef nonnull %11, i32 noundef 1, i32 noundef %65, i32 noundef %0, ptr noundef nonnull @spill_reg_order) #22
  %67 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %114, !prof !766

69:                                               ; preds = %63
  %70 = load ptr, ptr %12, align 8, !tbaa !397
  %71 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !397
  call fastcc void @choose_reload_regs(ptr noundef nonnull %9) #23
  call fastcc void @merge_assigned_reloads(ptr noundef nonnull %11) #23
  call fastcc void @emit_reload_insns(ptr noundef nonnull %9) #23
  call void @subst_reloads(ptr noundef nonnull %11) #22
  %73 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !431
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75, !prof !767

75:                                               ; preds = %69
  %76 = load i32, ptr %11, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call fastcc void @fixup_eh_region_note(ptr noundef nonnull %11, ptr noundef %72, ptr noundef %70) #23
  br label %80

80:                                               ; preds = %79, %75, %69
  %81 = load ptr, ptr %18, align 8, !tbaa !397
  %82 = call i32 @asm_noperands(ptr noundef %81) #22
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %114, !prof !768

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !397
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
  %98 = load ptr, ptr %97, align 8, !tbaa !397
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
  %112 = load ptr, ptr %111, align 8, !tbaa !397
  %113 = icmp eq ptr %112, %70
  br i1 %113, label %114, label %88, !llvm.loop !769

114:                                              ; preds = %110, %84, %62, %80, %63
  %115 = load i32, ptr @num_eliminable, align 4, !tbaa !431
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117, !prof !734

117:                                              ; preds = %114
  %118 = load i8, ptr %58, align 4
  %119 = and i8 %118, 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121, !prof !737

121:                                              ; preds = %117
  call fastcc void @update_eliminable_offsets() #23
  br label %122

122:                                              ; preds = %121, %117, %114
  call fastcc void @forget_marked_reloads(ptr noundef nonnull %2) #23
  call void @bitmap_clear(ptr noundef nonnull %2) #22
  %123 = load ptr, ptr %12, align 8, !tbaa !397
  %124 = icmp eq ptr %123, %13
  br i1 %124, label %141, label %125, !prof !770

125:                                              ; preds = %122, %137
  %126 = phi ptr [ %139, %137 ], [ %123, %122 ]
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %137, !prof !771

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !397
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 25
  br i1 %135, label %136, label %137, !prof !772

136:                                              ; preds = %130
  call void @note_stores(ptr noundef nonnull %132, ptr noundef nonnull @forget_old_reloads_1, ptr noundef null) #22
  br label %137

137:                                              ; preds = %125, %130, %136
  %138 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 2
  %139 = load ptr, ptr %138, align 8, !tbaa !397
  %140 = icmp eq ptr %139, %13
  br i1 %140, label %141, label %125, !prof !773, !llvm.loop !774

141:                                              ; preds = %137, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  br label %142

142:                                              ; preds = %141, %8, %16
  %143 = load i32, ptr %11, align 8
  %144 = trunc i32 %143 to i16
  switch i16 %144, label %151 [
    i16 12, label %145
    i16 10, label %146
  ], !prof !775

145:                                              ; preds = %142
  store i64 0, ptr @reg_reloaded_valid, align 8, !tbaa !449
  br label %151

146:                                              ; preds = %142
  %147 = load i64, ptr @call_used_reg_set, align 8, !tbaa !449
  %148 = xor i64 %147, -1
  %149 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %150 = and i64 %149, %148
  store i64 %150, ptr @reg_reloaded_valid, align 8, !tbaa !449
  br label %151

151:                                              ; preds = %145, %146, %142, %56
  %152 = load ptr, ptr %9, align 8, !tbaa !417
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %8, !prof !740, !llvm.loop !776

154:                                              ; preds = %151, %1
  %155 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
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
define internal fastcc void @replace_pseudos_in(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !777 !PGOFuncName !778 {
  %4 = load ptr, ptr %0, align 8, !tbaa !417
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6, !prof !779

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
  %19 = load ptr, ptr %9, align 8, !tbaa !417
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  store ptr %18, ptr %9, align 8, !tbaa !417
  %22 = icmp eq ptr %18, null
  br i1 %22, label %101, label %10, !prof !401

23:                                               ; preds = %17
  %24 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %25 = zext i32 %15 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !417
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %99

29:                                               ; preds = %23
  %30 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %31 = getelementptr inbounds ptr, ptr %30, i64 %25
  %32 = load ptr, ptr %31, align 8, !tbaa !417
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !417
  %36 = getelementptr inbounds ptr, ptr %35, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !417
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %18, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef %42, ptr noundef nonnull %37) #22
  br label %99

44:                                               ; preds = %34
  %45 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %46 = getelementptr inbounds ptr, ptr %45, i64 %25
  %47 = load ptr, ptr %46, align 8, !tbaa !417
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
  %55 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %56 = getelementptr inbounds ptr, ptr %55, i64 %25
  %57 = load ptr, ptr %56, align 8, !tbaa !417
  br label %99

58:                                               ; preds = %10
  %59 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %60 = lshr i32 %12, 16
  %61 = and i32 %60, 255
  %62 = load ptr, ptr %59, align 8, !tbaa !417
  %63 = icmp eq ptr %62, null
  br i1 %63, label %101, label %6, !prof !401

64:                                               ; preds = %10
  %65 = and i32 %12, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !397
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %101, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %66
  %72 = load ptr, ptr %71, align 8, !tbaa !417
  %73 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %74 = zext i8 %68 to i64
  br label %75

75:                                               ; preds = %70, %95
  %76 = phi i64 [ 0, %70 ], [ %96, %95 ]
  %77 = phi ptr [ %72, %70 ], [ %97, %95 ]
  %78 = load i8, ptr %77, align 1, !tbaa !397
  switch i8 %78, label %95 [
    i8 101, label %84
    i8 69, label %79
  ]

79:                                               ; preds = %75
  %80 = getelementptr inbounds [1 x %union.rtunion_def], ptr %73, i64 0, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !397
  %82 = load i32, ptr %81, align 8, !tbaa !628
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
  %91 = load ptr, ptr %80, align 8, !tbaa !397
  %92 = load i32, ptr %91, align 8, !tbaa !628
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %86, label %95, !llvm.loop !780

95:                                               ; preds = %86, %79, %75, %84
  %96 = add nuw nsw i64 %76, 1
  %97 = getelementptr inbounds i8, ptr %77, i64 1
  %98 = icmp eq i64 %96, %74
  br i1 %98, label %101, label %75, !llvm.loop !781

99:                                               ; preds = %54, %51, %44, %29, %23, %39
  %100 = phi ptr [ %43, %39 ], [ %27, %23 ], [ %32, %29 ], [ %47, %44 ], [ %47, %51 ], [ %57, %54 ]
  store ptr %100, ptr %9, align 8, !tbaa !417
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
define internal fastcc void @VEC_rtx_gc_free() unnamed_addr #0 !prof !469 !PGOFuncName !782 {
  %1 = load ptr, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !417
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !470

3:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @reg_equiv_memory_loc_vec, align 8, !tbaa !417
  ret void
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_abnormal_edges() local_unnamed_addr #0 !prof !469 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !417
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !549
  %6 = load ptr, ptr %5, align 8, !tbaa !551
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !553
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !555
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %139, label %12, !prof !486

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
  store i32 0, ptr %2, align 8, !tbaa.struct !614
  store ptr %18, ptr %13, align 8, !tbaa.struct !615
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #23, !range !429
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %35, label %21, !prof !783

21:                                               ; preds = %14, %30
  %22 = load ptr, ptr %1, align 8, !tbaa !417
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !616
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 10
  %28 = icmp eq i32 %27, 10
  %29 = or i1 %26, %28
  br i1 %29, label %35, label %30, !prof !784

30:                                               ; preds = %21
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %1) #23, !range !429
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %21, !prof !785, !llvm.loop !786

35:                                               ; preds = %30, %21, %14
  %36 = load ptr, ptr %1, align 8, !tbaa !417
  %37 = icmp eq ptr %36, null
  br i1 %37, label %127, label %38, !prof !787

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !397
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !788
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %127, label %46

46:                                               ; preds = %38
  %47 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %42) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %46
  %50 = load ptr, ptr %39, align 8, !tbaa !397
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  br label %52

52:                                               ; preds = %64, %49
  %53 = phi ptr [ %51, %49 ], [ %65, %64 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !397
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
  %61 = load ptr, ptr %39, align 8, !tbaa !397
  %62 = load ptr, ptr %61, align 8, !tbaa !790
  %63 = icmp eq ptr %54, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %52, !llvm.loop !791

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
  %74 = load ptr, ptr %39, align 8, !tbaa !397
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !788
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !397
  store ptr %54, ptr %75, align 8, !tbaa !788
  %79 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !397
  store i32 0, ptr %2, align 8, !tbaa.struct !614
  store ptr %18, ptr %13, align 8, !tbaa.struct !615
  %81 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #23, !range !429
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %73, %89
  %84 = load ptr, ptr %1, align 8, !tbaa !417
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !616
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %90 = load i32, ptr %2, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = call fastcc zeroext i8 @ei_cond(i32 %90, ptr %91, ptr noundef nonnull %1) #23, !range !429
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %83, !llvm.loop !792

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
  %104 = load ptr, ptr %103, align 8, !tbaa !397
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
  %110 = load ptr, ptr %109, align 8, !tbaa !397
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
  store ptr null, ptr %119, align 8, !tbaa !397
  br label %120

120:                                              ; preds = %100, %118, %107, %114
  %121 = phi i8 [ 1, %114 ], [ %101, %107 ], [ %101, %118 ], [ %101, %100 ]
  %122 = icmp ne ptr %104, null
  %123 = icmp ne ptr %104, %78
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %100, label %127, !llvm.loop !793

125:                                              ; preds = %70
  %126 = tail call zeroext i8 @purge_dead_edges(ptr noundef %15) #22
  br label %127

127:                                              ; preds = %120, %94, %125, %46, %38, %35
  %128 = phi i8 [ %16, %38 ], [ %16, %46 ], [ %16, %35 ], [ %16, %125 ], [ %16, %94 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !553
  %131 = load ptr, ptr @cfun, align 8, !tbaa !417
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !549
  %134 = getelementptr inbounds %struct.control_flow_graph, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !555
  %136 = icmp eq ptr %130, %135
  br i1 %136, label %137, label %14, !prof !794, !llvm.loop !795

137:                                              ; preds = %127
  %138 = icmp eq i8 %128, 0
  br label %139

139:                                              ; preds = %137, %0
  %140 = phi i1 [ true, %0 ], [ %138, %137 ]
  %141 = phi ptr [ %5, %0 ], [ %133, %137 ]
  %142 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !431
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144, !prof !471

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 5
  %146 = load i32, ptr %145, align 8, !tbaa !796
  %147 = tail call ptr @sbitmap_alloc(i32 noundef %146) #22
  tail call void @sbitmap_ones(ptr noundef %147) #22
  tail call void @find_many_sub_basic_blocks(ptr noundef %147) #22
  %148 = load ptr, ptr %147, align 8, !tbaa !797
  tail call void @free(ptr noundef %148) #23
  tail call void @free(ptr noundef %147) #23
  br label %149

149:                                              ; preds = %144, %139
  br i1 %140, label %151, label %150, !prof !471

150:                                              ; preds = %149
  tail call void @commit_edge_insertions() #22
  br label %151

151:                                              ; preds = %150, %149
  ret void
}

; Function Attrs: optsize
declare void @unshare_all_rtl_again(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_p_heap_free() unnamed_addr #14 !prof !469 !PGOFuncName !799 {
  %1 = load ptr, ptr @substitute_stack, align 8, !tbaa !417
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !471

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @substitute_stack, align 8, !tbaa !417
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_home_live_1(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !800 !PGOFuncName !801 {
  %3 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !432
  %7 = icmp slt i16 %6, 0
  br i1 %7, label %16, label %8, !prof !802

8:                                                ; preds = %2
  %9 = zext nneg i16 %6 to i32
  %10 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %9) #23
  %11 = icmp sgt i32 %10, %9
  br i1 %11, label %12, label %16, !prof !803

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %14, %12 ], [ %9, %8 ]
  %14 = add nuw i32 %13, 1
  tail call void @df_set_regs_ever_live(i32 noundef %13, i8 noundef zeroext 1) #22
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %12, !prof !803, !llvm.loop !804

16:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @eliminate_regs_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !805 !PGOFuncName !806 {
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !417
  %6 = icmp eq ptr %5, null
  br i1 %6, label %410, label %7, !prof !807

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
  ], !prof !808

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #23
  %16 = icmp slt i32 %15, 53
  br i1 %16, label %17, label %39, !prof !809

17:                                               ; preds = %14
  %18 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %19

19:                                               ; preds = %17, %35
  %20 = phi ptr [ %18, %17 ], [ %37, %35 ]
  %21 = phi i64 [ 0, %17 ], [ %36, %35 ]
  %22 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !649
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %25, label %35, !prof !810

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !514
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29, !prof !811

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !650
  %32 = getelementptr inbounds %struct.elim_table, ptr %20, i64 0, i32 6
  %33 = load i64, ptr %32, align 8, !tbaa !717
  %34 = tail call ptr @plus_constant(ptr noundef %31, i64 noundef %33) #22
  br label %410

35:                                               ; preds = %19, %25
  %36 = add nuw nsw i64 %21, 64
  %37 = getelementptr inbounds i8, ptr %18, i64 %36
  %38 = icmp ult i64 %21, 192
  br i1 %38, label %19, label %410, !prof !812, !llvm.loop !813

39:                                               ; preds = %14
  %40 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %41 = icmp eq ptr %40, null
  br i1 %41, label %410, label %42, !prof !690

42:                                               ; preds = %39
  %43 = zext nneg i32 %15 to i64
  %44 = getelementptr inbounds i16, ptr %40, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !432
  %46 = icmp slt i16 %45, 0
  %47 = load ptr, ptr @reg_equiv_invariant, align 8
  %48 = icmp ne ptr %47, null
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %410, !prof !814

50:                                               ; preds = %42
  %51 = getelementptr inbounds ptr, ptr %47, i64 %43
  %52 = load ptr, ptr %51, align 8, !tbaa !417
  %53 = icmp eq ptr %52, null
  br i1 %53, label %410, label %54, !prof !815

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
  %65 = load ptr, ptr @current_function_decl, align 8, !tbaa !417
  %66 = icmp eq ptr %65, null
  br i1 %66, label %410, label %9, !prof !816

67:                                               ; preds = %57, %56
  %68 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !417
  %69 = getelementptr inbounds ptr, ptr %68, i64 %43
  store ptr null, ptr %69, align 8, !tbaa !417
  tail call fastcc void @alter_reg(i32 noundef %15, i32 noundef -1, i8 noundef zeroext 1) #23
  br label %410

70:                                               ; preds = %9
  %71 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !397
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %127, !prof !817

76:                                               ; preds = %70
  %77 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %72) #23
  %78 = icmp ult i32 %77, 53
  br i1 %78, label %79, label %127, !prof !818

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !397
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !431
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %127, !prof !819

88:                                               ; preds = %79
  %89 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %90

90:                                               ; preds = %88, %123
  %91 = phi ptr [ %89, %88 ], [ %125, %123 ]
  %92 = phi i64 [ 0, %88 ], [ %124, %123 ]
  %93 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !649
  %95 = icmp eq ptr %94, %72
  br i1 %95, label %96, label %123, !prof !820

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !514
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100, !prof !821

100:                                              ; preds = %96
  %101 = icmp ne i32 %1, 0
  %102 = icmp eq i32 %83, 30
  %103 = and i1 %101, %102
  br i1 %103, label %107, label %104, !prof !822

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 6
  %106 = load i64, ptr %105, align 8, !tbaa !717
  br label %117

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !397
  %110 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 6
  %111 = load i64, ptr %110, align 8, !tbaa !717
  %112 = sub nsw i64 0, %111
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %117, !prof !823

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !650
  br label %410

117:                                              ; preds = %104, %107
  %118 = phi i64 [ %106, %104 ], [ %111, %107 ]
  %119 = getelementptr inbounds %struct.elim_table, ptr %91, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !650
  %121 = tail call ptr @plus_constant(ptr noundef nonnull %81, i64 noundef %118) #22
  %122 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %120, ptr noundef %121) #22
  br label %410

123:                                              ; preds = %90, %96
  %124 = add nuw nsw i64 %92, 64
  %125 = getelementptr inbounds i8, ptr %89, i64 %124
  %126 = icmp ult i64 %92, 192
  br i1 %126, label %90, label %410, !prof !824, !llvm.loop !825

127:                                              ; preds = %79, %76, %70
  %128 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %72, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %129 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !397
  %131 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %130, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %132 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %133 = icmp eq ptr %132, null
  br i1 %133, label %410, label %134, !prof !826

134:                                              ; preds = %127
  %135 = load ptr, ptr %71, align 8, !tbaa !397
  %136 = icmp eq ptr %128, %135
  br i1 %136, label %137, label %140, !prof !827

137:                                              ; preds = %134
  %138 = load ptr, ptr %129, align 8, !tbaa !397
  %139 = icmp eq ptr %131, %138
  br i1 %139, label %410, label %140, !prof !827

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
  %154 = load i16, ptr %153, align 2, !tbaa !432
  %155 = icmp slt i16 %154, 0
  %156 = load ptr, ptr @reg_equiv_constant, align 8
  %157 = icmp ne ptr %156, null
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = getelementptr inbounds ptr, ptr %156, i64 %152
  %161 = load ptr, ptr %160, align 8, !tbaa !417
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
  %174 = load i16, ptr %173, align 2, !tbaa !432
  %175 = icmp slt i16 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %178 = getelementptr inbounds ptr, ptr %177, i64 %172
  %179 = load ptr, ptr %178, align 8, !tbaa !417
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
  %198 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !417
  %199 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %197, ptr noundef nonnull %188, ptr noundef %198) #22
  br label %410

200:                                              ; preds = %9
  %201 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !397
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 37
  br i1 %205, label %206, label %255, !prof !828

206:                                              ; preds = %200
  %207 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %202) #23
  %208 = icmp ult i32 %207, 53
  br i1 %208, label %209, label %255, !prof !828

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !397
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 30
  br i1 %214, label %215, label %255, !prof !828

215:                                              ; preds = %209
  %216 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %217

217:                                              ; preds = %215, %248
  %218 = phi ptr [ %216, %215 ], [ %250, %248 ]
  %219 = phi i64 [ 0, %215 ], [ %249, %248 ]
  %220 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !649
  %222 = icmp eq ptr %221, %202
  br i1 %222, label %223, label %248, !prof !829

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 3
  %225 = load i32, ptr %224, align 8, !tbaa !514
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
  store i32 1, ptr %234, align 8, !tbaa !830
  %235 = load ptr, ptr %210, align 8, !tbaa !397
  br label %236

236:                                              ; preds = %230, %230, %230, %233, %227
  %237 = phi ptr [ %211, %230 ], [ %211, %230 ], [ %211, %230 ], [ %235, %233 ], [ %211, %227 ]
  %238 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 9
  %239 = load ptr, ptr %238, align 8, !tbaa !650
  %240 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef 16, ptr noundef %239, ptr noundef %237) #22
  %241 = getelementptr inbounds %struct.elim_table, ptr %218, i64 0, i32 6
  %242 = load i64, ptr %241, align 8, !tbaa !717
  %243 = load ptr, ptr %210, align 8, !tbaa !397
  %244 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !397
  %246 = mul nsw i64 %245, %242
  %247 = tail call ptr @plus_constant(ptr noundef %240, i64 noundef %246) #22
  br label %410

248:                                              ; preds = %217, %223
  %249 = add nuw nsw i64 %219, 64
  %250 = getelementptr inbounds i8, ptr %216, i64 %249
  %251 = icmp ult i64 %219, 192
  br i1 %251, label %217, label %255, !prof !831, !llvm.loop !832

252:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %253 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !397
  br label %255

255:                                              ; preds = %248, %252, %200, %206, %209
  %256 = phi ptr [ %254, %252 ], [ %202, %200 ], [ %202, %206 ], [ %202, %209 ], [ %202, %248 ]
  %257 = and i32 %12, 65535
  %258 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %259 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %256, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %260 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !397
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263, !prof !833

263:                                              ; preds = %255
  %264 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %261, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  br label %265

265:                                              ; preds = %255, %263
  %266 = phi ptr [ %264, %263 ], [ null, %255 ]
  %267 = load ptr, ptr %258, align 8, !tbaa !397
  %268 = icmp eq ptr %259, %267
  br i1 %268, label %269, label %272, !prof !828

269:                                              ; preds = %265
  %270 = load ptr, ptr %260, align 8, !tbaa !397
  %271 = icmp eq ptr %266, %270
  br i1 %271, label %410, label %272, !prof !828

272:                                              ; preds = %265, %269
  %273 = load i32, ptr %11, align 8
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %257, i32 noundef %275, ptr noundef %259, ptr noundef %266) #22
  br label %410

277:                                              ; preds = %9
  %278 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !397
  %280 = icmp eq ptr %279, null
  br i1 %280, label %296, label %281, !prof !834

281:                                              ; preds = %277
  %282 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %279, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %283 = load ptr, ptr %278, align 8, !tbaa !397
  %284 = icmp eq ptr %282, %283
  br i1 %284, label %296, label %285, !prof !835

285:                                              ; preds = %281
  %286 = load i32, ptr %11, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = icmp eq i32 %288, 1
  %290 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !397
  br i1 %289, label %292, label %294, !prof !836

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
  %300 = load ptr, ptr %299, align 8, !tbaa !397
  %301 = icmp eq ptr %300, null
  br i1 %301, label %410, label %302, !prof !837

302:                                              ; preds = %296
  %303 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %300, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %304 = load ptr, ptr %299, align 8, !tbaa !397
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %410, label %306

306:                                              ; preds = %302
  %307 = load i32, ptr %297, align 8
  %308 = and i32 %307, 65535
  %309 = lshr i32 %307, 16
  %310 = and i32 %309, 255
  %311 = load ptr, ptr %298, align 8, !tbaa !397
  %312 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %308, i32 noundef %310, ptr noundef %311, ptr noundef %303) #22
  br label %410

313:                                              ; preds = %9, %9
  %314 = and i32 %12, 65535
  %315 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %316 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !397
  %318 = load i32, ptr %317, align 8
  %319 = and i32 %318, 65535
  %320 = icmp eq i32 %319, 49
  br i1 %320, label %321, label %410

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !397
  %324 = load ptr, ptr %315, align 8, !tbaa !397
  %325 = icmp eq ptr %323, %324
  br i1 %325, label %326, label %410

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !397
  %329 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %328, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  %330 = load ptr, ptr %316, align 8, !tbaa !397
  %331 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1, i32 0, i32 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !397
  %333 = icmp eq ptr %329, %332
  br i1 %333, label %410, label %334

334:                                              ; preds = %326
  %335 = load i32, ptr %11, align 8
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  %338 = load ptr, ptr %315, align 8, !tbaa !397
  %339 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %337, ptr noundef %338, ptr noundef %329) #22
  %340 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %314, i32 noundef %337, ptr noundef %338, ptr noundef %339) #22
  br label %410

341:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %342 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !397
  %344 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %343, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %345 = load ptr, ptr %342, align 8, !tbaa !397
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
  %355 = load ptr, ptr %354, align 8, !tbaa !397
  %356 = load i32, ptr %355, align 8
  %357 = and i32 %356, 65535
  %358 = icmp eq i32 %357, 37
  br i1 %358, label %359, label %380, !prof !625

359:                                              ; preds = %353
  %360 = lshr i32 %12, 16
  %361 = and i32 %360, 255
  %362 = zext nneg i32 %361 to i64
  %363 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !397
  %365 = lshr i32 %356, 16
  %366 = and i32 %365, 255
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !397
  %370 = icmp ule i8 %364, %369
  %371 = load ptr, ptr @reg_equiv_memory_loc, align 8
  %372 = icmp ne ptr %371, null
  %373 = select i1 %370, i1 %372, i1 false
  br i1 %373, label %374, label %380, !prof !838

374:                                              ; preds = %359
  %375 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %355) #23
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds ptr, ptr %371, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !417
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %410, !prof !625

380:                                              ; preds = %353, %359, %374
  %381 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %355, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %382 = load ptr, ptr %354, align 8, !tbaa !397
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %410, label %384, !prof !839

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
  %396 = load i8, ptr %395, align 1, !tbaa !397
  %397 = zext nneg i32 %387 to i64
  %398 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !397
  %400 = icmp ugt i8 %399, %396
  br i1 %400, label %406, label %401

401:                                              ; preds = %391
  %402 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %403 = load i32, ptr %402, align 8, !tbaa !397
  %404 = zext i32 %403 to i64
  %405 = tail call ptr @adjust_address_1(ptr noundef nonnull %381, i32 noundef %387, i64 noundef %404, i32 noundef 0, i32 noundef 1) #22
  br label %410

406:                                              ; preds = %391, %384
  %407 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load i32, ptr %407, align 8, !tbaa !397
  %409 = tail call ptr @gen_rtx_SUBREG(i32 noundef %387, ptr noundef nonnull %381, i32 noundef %408) #22
  br label %410

410:                                              ; preds = %326, %182, %190, %194, %313, %321, %334, %272, %269, %137, %127, %419, %380, %401, %406, %341, %296, %302, %67, %425, %347, %306, %236, %117, %114, %29, %437, %4, %374, %519, %35, %123, %63, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %39, %42, %50, %292, %412
  %411 = phi ptr [ %418, %412 ], [ %429, %425 ], [ %352, %347 ], [ %340, %334 ], [ %312, %306 ], [ %247, %236 ], [ %116, %114 ], [ %122, %117 ], [ %34, %29 ], [ %11, %67 ], [ %297, %302 ], [ %297, %296 ], [ %11, %341 ], [ %405, %401 ], [ %409, %406 ], [ %11, %380 ], [ %11, %419 ], [ %11, %137 ], [ %11, %127 ], [ %276, %272 ], [ %11, %269 ], [ %11, %321 ], [ %11, %313 ], [ %188, %182 ], [ %188, %190 ], [ %199, %194 ], [ %11, %326 ], [ %11, %437 ], [ %0, %4 ], [ %11, %374 ], [ %521, %519 ], [ %11, %35 ], [ %11, %123 ], [ null, %292 ], [ %11, %50 ], [ %11, %42 ], [ %11, %39 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %64, %63 ]
  ret ptr %411

412:                                              ; preds = %9
  %413 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !397
  %415 = lshr i32 %12, 16
  %416 = and i32 %415, 255
  %417 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %414, i32 noundef %416, ptr noundef %2, i8 noundef zeroext 1) #23
  %418 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %11, ptr noundef %417) #22
  br label %410

419:                                              ; preds = %9
  %420 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !397
  %422 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %421, i32 noundef 0, ptr noundef %2, i8 noundef zeroext 0) #23
  %423 = load ptr, ptr %420, align 8, !tbaa !397
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
  %441 = load i8, ptr %440, align 1, !tbaa !397
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %410, label %443, !prof !840

443:                                              ; preds = %437
  %444 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %439
  %445 = load ptr, ptr %444, align 8, !tbaa !417
  %446 = zext i8 %441 to i64
  br label %447

447:                                              ; preds = %443, %519
  %448 = phi i64 [ 0, %443 ], [ %522, %519 ]
  %449 = phi ptr [ %11, %443 ], [ %521, %519 ]
  %450 = phi i32 [ 0, %443 ], [ %520, %519 ]
  %451 = phi ptr [ %445, %443 ], [ %523, %519 ]
  %452 = load i8, ptr %451, align 1, !tbaa !397
  switch i8 %452, label %519 [
    i8 101, label %459
    i8 69, label %453
  ], !prof !841

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %455 = getelementptr inbounds [1 x %union.rtunion_def], ptr %454, i64 0, i64 %448
  %456 = load ptr, ptr %455, align 8, !tbaa !397
  %457 = load i32, ptr %456, align 8, !tbaa !628
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %475, label %519

459:                                              ; preds = %447
  %460 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %461 = getelementptr inbounds [1 x %union.rtunion_def], ptr %460, i64 0, i64 %448
  %462 = load ptr, ptr %461, align 8, !tbaa !397
  %463 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %462, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %464 = load ptr, ptr %461, align 8, !tbaa !397
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
  store ptr %463, ptr %474, align 8, !tbaa !397
  br label %519

475:                                              ; preds = %453, %506
  %476 = phi i64 [ %514, %506 ], [ 0, %453 ]
  %477 = phi ptr [ %515, %506 ], [ %456, %453 ]
  %478 = phi ptr [ %512, %506 ], [ %455, %453 ]
  %479 = phi i32 [ %510, %506 ], [ 0, %453 ]
  %480 = phi ptr [ %509, %506 ], [ %449, %453 ]
  %481 = phi i32 [ %508, %506 ], [ %450, %453 ]
  %482 = getelementptr inbounds %struct.rtvec_def, ptr %477, i64 0, i32 1, i64 %476
  %483 = load ptr, ptr %482, align 8, !tbaa !417
  %484 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %483, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0) #23
  %485 = load ptr, ptr %478, align 8, !tbaa !397
  %486 = getelementptr inbounds %struct.rtvec_def, ptr %485, i64 0, i32 1, i64 %476
  %487 = load ptr, ptr %486, align 8, !tbaa !417
  %488 = icmp eq ptr %484, %487
  %489 = icmp ne i32 %479, 0
  %490 = select i1 %488, i1 true, i1 %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %475
  %492 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1
  %493 = getelementptr inbounds [1 x %union.rtunion_def], ptr %492, i64 0, i64 %448
  %494 = load ptr, ptr %493, align 8, !tbaa !397
  br label %506

495:                                              ; preds = %475
  %496 = getelementptr inbounds %struct.rtvec_def, ptr %485, i64 0, i32 1
  %497 = load i32, ptr %485, align 8, !tbaa !628
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
  store ptr %498, ptr %505, align 8, !tbaa !397
  br label %506

506:                                              ; preds = %491, %502
  %507 = phi ptr [ %494, %491 ], [ %498, %502 ]
  %508 = phi i32 [ %481, %491 ], [ 1, %502 ]
  %509 = phi ptr [ %480, %491 ], [ %503, %502 ]
  %510 = phi i32 [ %479, %491 ], [ 1, %502 ]
  %511 = getelementptr inbounds %struct.rtx_def, ptr %509, i64 0, i32 1
  %512 = getelementptr inbounds [1 x %union.rtunion_def], ptr %511, i64 0, i64 %448
  %513 = getelementptr inbounds %struct.rtvec_def, ptr %507, i64 0, i32 1, i64 %476
  store ptr %484, ptr %513, align 8, !tbaa !417
  %514 = add nuw nsw i64 %476, 1
  %515 = load ptr, ptr %512, align 8, !tbaa !397
  %516 = load i32, ptr %515, align 8, !tbaa !628
  %517 = sext i32 %516 to i64
  %518 = icmp slt i64 %514, %517
  br i1 %518, label %475, label %519, !llvm.loop !842

519:                                              ; preds = %506, %453, %447, %470
  %520 = phi i32 [ %471, %470 ], [ %450, %447 ], [ %450, %453 ], [ %508, %506 ]
  %521 = phi ptr [ %472, %470 ], [ %449, %447 ], [ %449, %453 ], [ %509, %506 ]
  %522 = add nuw nsw i64 %448, 1
  %523 = getelementptr inbounds i8, ptr %451, i64 1
  %524 = icmp eq i64 %522, %446
  br i1 %524, label %410, label %447, !prof !843, !llvm.loop !844
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @elimination_target_reg_p(ptr noundef readnone %0) local_unnamed_addr #15 !prof !845 {
  %2 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %2, %1 ], [ %15, %13 ]
  %5 = phi i64 [ 0, %1 ], [ %14, %13 ]
  %6 = getelementptr inbounds %struct.elim_table, ptr %4, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !650
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %13, !prof !846

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.elim_table, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !514
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3, %9
  %14 = add nuw nsw i64 %5, 64
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = icmp ult i64 %5, 192
  br i1 %16, label %3, label %17, !prof !847, !llvm.loop !848

17:                                               ; preds = %13, %9
  %18 = phi i8 [ 1, %9 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deallocate_reload_reg(i32 noundef %0) local_unnamed_addr #0 !prof !608 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !849
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @true_regnum(ptr noundef nonnull %4) #22
  store ptr null, ptr %3, align 8, !tbaa !849
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !432
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !851
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !852
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !853
  tail call fastcc void @clear_reload_reg_in_use(i32 noundef %7, i32 noundef %14, i32 noundef %16, i32 noundef %18) #23
  br label %19

19:                                               ; preds = %12, %6
  %20 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %2
  store i32 -1, ptr %20, align 4, !tbaa !431
  br label %21

21:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_reload_reg_in_use(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !854 !PGOFuncName !855 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !397
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
  ], !prof !856

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
  %36 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  %49 = load i32, ptr %48, align 4, !tbaa !852
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  br i1 %33, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 12
  %54 = load i32, ptr %53, align 8, !tbaa !851
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %56, label %71

56:                                               ; preds = %52, %51
  %57 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 11
  %58 = load ptr, ptr %57, align 8, !tbaa !849
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @true_regnum(ptr noundef nonnull %58) #22
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %47, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !853
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
  br i1 %74, label %43, label %75, !llvm.loop !857

75:                                               ; preds = %71, %32, %40
  %76 = phi ptr [ %41, %40 ], [ %34, %32 ], [ %34, %71 ]
  %77 = phi i32 [ %42, %40 ], [ %35, %32 ], [ %72, %71 ]
  %78 = phi i32 [ %0, %40 ], [ %0, %32 ], [ %73, %71 ]
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %80, label %111, !prof !694

80:                                               ; preds = %75
  %81 = zext i32 %77 to i64
  %82 = zext i32 %78 to i64
  %83 = sub nsw i64 %81, %82
  %84 = load i64, ptr %76, align 8, !tbaa !449
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
  br i1 %103, label %104, label %94, !prof !858, !llvm.loop !859

104:                                              ; preds = %94
  %105 = insertelement <2 x i64> poison, i64 %95, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = or disjoint <2 x i64> %106, <i64 0, i64 1>
  %108 = icmp ugt <2 x i64> %107, %89
  %109 = select <2 x i1> %108, <2 x i64> %97, <2 x i64> %100
  %110 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %109)
  store i64 %110, ptr %76, align 8, !tbaa !449
  br label %111

111:                                              ; preds = %104, %75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 !prof !862 !PGOFuncName !863 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !864 !PGOFuncName !865 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !429
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !866

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !417
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !869

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !870

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 738, ptr noundef nonnull @.str.2) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !871
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !871
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
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #17 !prof !873 !PGOFuncName !874 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !397
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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #16 !prof !608 !PGOFuncName !875 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_label_offsets(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !876 !PGOFuncName !877 {
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
  ], !prof !878

8:                                                ; preds = %4
  %9 = and i32 %6, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %168, !prof !879

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !397
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %13, %11 ], [ %5, %4 ]
  %16 = load ptr, ptr @offsets_known_at, align 8, !tbaa !417
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !397
  %19 = load i32, ptr @first_label_num, align 4, !tbaa !431
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !397
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %49, !prof !880

25:                                               ; preds = %14
  %26 = icmp eq i32 %2, 0
  %27 = load ptr, ptr @offsets_at, align 8, !tbaa !417
  %28 = load ptr, ptr @reg_eliminate, align 8
  br label %29

29:                                               ; preds = %25, %35
  %30 = phi i64 [ 0, %25 ], [ %42, %35 ]
  br i1 %26, label %33, label %31, !prof !881

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.elim_table, ptr %28, i64 %30, i32 2
  br label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.elim_table, ptr %28, i64 %30, i32 5
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  %37 = load i64, ptr %36, align 8, !tbaa !449
  %38 = load i32, ptr %17, align 8, !tbaa !397
  %39 = sub nsw i32 %38, %19
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i64], ptr %27, i64 %40, i64 %30
  store i64 %37, ptr %41, align 8, !tbaa !449
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %29, !prof !882, !llvm.loop !883

44:                                               ; preds = %35
  %45 = load i32, ptr %17, align 8, !tbaa !397
  %46 = sub nsw i32 %45, %19
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %16, i64 %47
  store i8 1, ptr %48, align 1, !tbaa !397
  br label %168

49:                                               ; preds = %14
  %50 = icmp eq ptr %15, %1
  br i1 %50, label %51, label %59, !prof !884

51:                                               ; preds = %49
  %52 = tail call ptr @prev_nonnote_insn(ptr noundef %1) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54, !prof !885

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %58, label %59, !prof !886

58:                                               ; preds = %54
  tail call fastcc void @set_offsets_for_label(ptr noundef %1) #23
  br label %168

59:                                               ; preds = %54, %51, %49
  %60 = load ptr, ptr @offsets_at, align 8, !tbaa !417
  %61 = load i32, ptr @first_label_num, align 4, !tbaa !431
  %62 = icmp eq i32 %2, 0
  %63 = load ptr, ptr @reg_eliminate, align 8
  br label %64

64:                                               ; preds = %59, %81
  %65 = phi i64 [ 0, %59 ], [ %82, %81 ]
  %66 = load i32, ptr %17, align 8, !tbaa !397
  %67 = sub nsw i32 %66, %61
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i64], ptr %60, i64 %68, i64 %65
  %70 = load i64, ptr %69, align 8, !tbaa !449
  br i1 %62, label %73, label %71, !prof !887

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.elim_table, ptr %63, i64 %65, i32 2
  br label %75

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.elim_table, ptr %63, i64 %65, i32 5
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = load i64, ptr %76, align 8, !tbaa !449
  %78 = icmp eq i64 %70, %77
  br i1 %78, label %81, label %79, !prof !887

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.elim_table, ptr %63, i64 %65, i32 3
  store i32 0, ptr %80, align 8, !tbaa !514
  br label %81

81:                                               ; preds = %75, %79
  %82 = add nuw nsw i64 %65, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %168, label %64, !prof !888, !llvm.loop !889

84:                                               ; preds = %4
  %85 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !397
  tail call fastcc void @set_label_offsets(ptr noundef %86, ptr noundef %1, i32 noundef %2) #23
  br label %87

87:                                               ; preds = %4, %4, %84
  %88 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !397
  %90 = icmp eq ptr %89, null
  br i1 %90, label %168, label %91, !prof !890

91:                                               ; preds = %87, %99
  %92 = phi ptr [ %101, %99 ], [ %89, %87 ]
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 16711680
  %95 = icmp eq i32 %94, 655360
  br i1 %95, label %96, label %99, !prof !891

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !397
  tail call fastcc void @set_label_offsets(ptr noundef %98, ptr noundef %1, i32 noundef 1) #23
  br label %99

99:                                               ; preds = %91, %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !397
  %102 = icmp eq ptr %101, null
  br i1 %102, label %168, label %91, !prof !892, !llvm.loop !893

103:                                              ; preds = %4, %4, %4
  %104 = and i32 %6, 65535
  %105 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %106 = icmp eq i32 %104, 21
  %107 = zext i1 %106 to i64
  %108 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !397
  %110 = load i32, ptr %109, align 8, !tbaa !628
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %168, label %112, !prof !894

112:                                              ; preds = %103, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %103 ]
  %114 = phi ptr [ %118, %112 ], [ %109, %103 ]
  %115 = getelementptr inbounds %struct.rtvec_def, ptr %114, i64 0, i32 1, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !417
  tail call fastcc void @set_label_offsets(ptr noundef %116, ptr noundef %1, i32 noundef %2) #23
  %117 = add nuw nsw i64 %113, 1
  %118 = load ptr, ptr %108, align 8, !tbaa !397
  %119 = load i32, ptr %118, align 8, !tbaa !628
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %112, label %168, !prof !895, !llvm.loop !896

122:                                              ; preds = %4
  %123 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !397
  %125 = load ptr, ptr @global_rtl, align 16, !tbaa !417
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %127, label %168, !prof !897

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !397
  %130 = load i32, ptr %129, align 8
  %131 = trunc i32 %130 to i16
  switch i16 %131, label %152 [
    i16 36, label %168
    i16 27, label %168
    i16 44, label %150
    i16 47, label %132
  ], !prof !898

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1, i32 0, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !397
  %135 = load i32, ptr %134, align 8
  %136 = trunc i32 %135 to i16
  switch i16 %136, label %152 [
    i16 44, label %137
    i16 36, label %141
    i16 27, label %141
  ], !prof !899

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !397
  tail call fastcc void @set_label_offsets(ptr noundef %139, ptr noundef %1, i32 noundef %2) #23
  %140 = load ptr, ptr %128, align 8, !tbaa !397
  br label %141

141:                                              ; preds = %132, %132, %137
  %142 = phi ptr [ %129, %132 ], [ %129, %132 ], [ %140, %137 ]
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !397
  %145 = load i32, ptr %144, align 8
  %146 = trunc i32 %145 to i16
  switch i16 %146, label %152 [
    i16 44, label %147
    i16 36, label %168
    i16 27, label %168
  ], !prof !900

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !397
  br label %150

150:                                              ; preds = %147, %127
  %151 = phi ptr [ %149, %147 ], [ %129, %127 ]
  br label %4

152:                                              ; preds = %141, %132, %127
  %153 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %154

154:                                              ; preds = %152, %164
  %155 = phi ptr [ %153, %152 ], [ %166, %164 ]
  %156 = phi i64 [ 0, %152 ], [ %165, %164 ]
  %157 = getelementptr inbounds %struct.elim_table, ptr %155, i64 0, i32 5
  %158 = load i64, ptr %157, align 8, !tbaa !716
  %159 = getelementptr inbounds %struct.elim_table, ptr %155, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !715
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %164, label %162, !prof !901

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.elim_table, ptr %155, i64 0, i32 3
  store i32 0, ptr %163, align 8, !tbaa !514
  br label %164

164:                                              ; preds = %154, %162
  %165 = add nuw nsw i64 %156, 64
  %166 = getelementptr inbounds i8, ptr %153, i64 %165
  %167 = icmp ult i64 %156, 192
  br i1 %167, label %154, label %168, !prof !902, !llvm.loop !903

168:                                              ; preds = %4, %141, %141, %127, %127, %122, %164, %112, %99, %81, %103, %87, %44, %58, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @eliminate_regs_in_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !904 !PGOFuncName !905 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca [30 x ptr], align 16
  %5 = tail call fastcc i32 @recog_memoized(ptr noundef %0) #23
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  %8 = tail call i32 @asm_noperands(ptr noundef %7) #22
  %9 = icmp slt i32 %8, 0
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %25, !prof !906

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !tbaa !397
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 23
  br i1 %18, label %21, label %19, !prof !907

19:                                               ; preds = %14
  %20 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %15) #22
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #24
  %23 = icmp slt i32 %5, 0
  %24 = select i1 %9, i1 %23, i1 false
  br i1 %24, label %28, label %48, !prof !908

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #24
  %26 = icmp slt i32 %5, 0
  %27 = select i1 %9, i1 %26, i1 false
  br i1 %27, label %28, label %336, !prof !908

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr %6, align 8, !tbaa !397
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %32 [
    i16 24, label %37
    i16 25, label %37
    i16 20, label %37
    i16 21, label %37
    i16 16, label %37
  ], !prof !909

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
  br i1 %40, label %41, label %599, !prof !910

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 8, !tbaa !397
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !397
  %45 = tail call ptr @eliminate_regs(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %0) #23
  %46 = load ptr, ptr %6, align 8, !tbaa !397
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %45, ptr %47, align 8, !tbaa !397
  br label %599

48:                                               ; preds = %21
  %49 = icmp eq ptr %22, null
  br i1 %49, label %336, label %50, !prof !911

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !397
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %336, !prof !912

56:                                               ; preds = %50
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %52) #23
  %58 = icmp ult i32 %57, 53
  br i1 %58, label %59, label %186, !prof !913

59:                                               ; preds = %56
  %60 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %61

61:                                               ; preds = %59, %182
  %62 = phi ptr [ %60, %59 ], [ %184, %182 ]
  %63 = phi i64 [ 0, %59 ], [ %183, %182 ]
  %64 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !649
  %66 = icmp eq ptr %65, %52
  br i1 %66, label %67, label %182, !prof !914

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !514
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %182, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %62, align 8, !tbaa !512
  %73 = icmp eq i32 %72, 20
  br i1 %73, label %74, label %179

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !541
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %179

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 9
  %81 = load ptr, ptr %79, align 8, !tbaa !397
  %82 = load ptr, ptr %80, align 8, !tbaa !650
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
  %94 = load ptr, ptr %93, align 8, !tbaa !397
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %100 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !397
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
  %113 = load ptr, ptr %112, align 8, !tbaa !397
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
  %123 = load ptr, ptr %122, align 8, !tbaa !397
  %124 = tail call i32 @rtx_equal_p(ptr noundef %123, ptr noundef nonnull %86) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %80, align 8, !tbaa !650
  br label %129

129:                                              ; preds = %98, %126
  %130 = phi ptr [ %85, %98 ], [ %128, %126 ]
  %131 = phi ptr [ %99, %98 ], [ %127, %126 ]
  %132 = phi ptr [ %88, %98 ], [ %104, %126 ]
  %133 = phi i64 [ %102, %98 ], [ %87, %126 ]
  %134 = load ptr, ptr %131, align 8, !tbaa !397
  %135 = icmp eq ptr %134, %130
  br i1 %135, label %136, label %84

136:                                              ; preds = %129, %120, %117, %103, %106
  %137 = phi i64 [ %133, %129 ], [ %87, %120 ], [ %87, %117 ], [ %87, %103 ], [ %87, %106 ]
  %138 = phi ptr [ %130, %129 ], [ %86, %120 ], [ %86, %117 ], [ %86, %103 ], [ %86, %106 ]
  %139 = load ptr, ptr %80, align 8, !tbaa !650
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %78, %136
  %142 = phi i64 [ %137, %136 ], [ 0, %78 ]
  %143 = phi ptr [ %139, %136 ], [ %81, %78 ]
  %144 = getelementptr inbounds %struct.elim_table, ptr %62, i64 0, i32 5
  %145 = load i64, ptr %144, align 8, !tbaa !716
  %146 = sub nsw i64 %142, %145
  %147 = tail call ptr @plus_constant(ptr noundef %143, i64 noundef %146) #22
  %148 = icmp eq i32 %1, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = tail call ptr @copy_insn(ptr noundef %7) #22
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !397
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = tail call ptr @copy_insn_1(ptr noundef nonnull %152) #22
  store ptr %155, ptr %151, align 8, !tbaa !397
  br label %156

156:                                              ; preds = %149, %154, %141
  %157 = phi ptr [ %7, %141 ], [ %150, %154 ], [ %150, %149 ]
  store ptr %157, ptr %6, align 8, !tbaa !397
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
  %173 = load ptr, ptr %80, align 8, !tbaa !650
  %174 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %170, ptr noundef %173, i8 noundef zeroext 1) #22
  %175 = tail call i32 @apply_change_group() #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %592

177:                                              ; preds = %168
  store ptr %147, ptr %171, align 8, !tbaa !397
  %178 = load ptr, ptr %80, align 8, !tbaa !650
  store ptr %178, ptr %170, align 8, !tbaa !397
  br label %592

179:                                              ; preds = %136, %74, %71
  %180 = icmp eq i32 %1, 0
  br i1 %180, label %592, label %181

181:                                              ; preds = %179
  tail call fastcc void @delete_dead_insn(ptr noundef nonnull %0) #23
  br label %599

182:                                              ; preds = %61, %67
  %183 = add nuw nsw i64 %63, 64
  %184 = getelementptr inbounds i8, ptr %60, i64 %183
  %185 = icmp ult i64 %63, 192
  br i1 %185, label %61, label %186, !prof !915, !llvm.loop !916

186:                                              ; preds = %182, %56
  %187 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !397
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 49
  %192 = select i1 %191, ptr %188, ptr null, !prof !917
  br i1 %191, label %193, label %199, !prof !917

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !397
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 30
  br i1 %198, label %228, label %201, !prof !918

199:                                              ; preds = %186
  %200 = trunc i32 %189 to i16
  switch i16 %200, label %336 [
    i16 49, label %201
    i16 37, label %201
  ]

201:                                              ; preds = %199, %199, %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !397
  %204 = icmp eq ptr %203, null
  br i1 %204, label %336, label %205, !prof !919

205:                                              ; preds = %201, %224
  %206 = phi ptr [ %226, %224 ], [ %203, %201 ]
  %207 = load i32, ptr %206, align 8
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  %210 = add nsw i32 %209, -3
  %211 = icmp ult i32 %210, 2
  br i1 %211, label %212, label %224, !prof !920

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !397
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 49
  br i1 %217, label %218, label %224, !prof !921

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !397
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 65535
  %223 = icmp eq i32 %222, 30
  br i1 %223, label %228, label %224

224:                                              ; preds = %205, %212, %218
  %225 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !397
  %227 = icmp eq ptr %226, null
  br i1 %227, label %336, label %205, !prof !922, !llvm.loop !923

228:                                              ; preds = %218, %193
  %229 = phi ptr [ %188, %193 ], [ %214, %218 ]
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !397
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 39
  br i1 %234, label %235, label %241, !prof !924

235:                                              ; preds = %228
  %236 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %231) #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !397
  br label %241

241:                                              ; preds = %238, %235, %228
  %242 = phi ptr [ %240, %238 ], [ %231, %235 ], [ %231, %228 ]
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 37
  br i1 %245, label %246, label %336, !prof !925

246:                                              ; preds = %241
  %247 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %242) #23
  %248 = icmp ugt i32 %247, 52
  br i1 %248, label %336, label %249, !prof !926

249:                                              ; preds = %246
  %250 = load ptr, ptr %230, align 8, !tbaa !397
  %251 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !397
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !397
  %255 = load i32, ptr %250, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 39
  br i1 %257, label %258, label %261, !prof !926

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !397
  br label %261

261:                                              ; preds = %258, %249
  %262 = phi ptr [ %260, %258 ], [ %250, %249 ]
  %263 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %264

264:                                              ; preds = %261, %332
  %265 = phi ptr [ %263, %261 ], [ %334, %332 ]
  %266 = phi i64 [ 0, %261 ], [ %333, %332 ]
  %267 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 8
  %268 = load ptr, ptr %267, align 8, !tbaa !649
  %269 = icmp eq ptr %268, %262
  br i1 %269, label %270, label %332, !prof !927

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 3
  %272 = load i32, ptr %271, align 8, !tbaa !514
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %332, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 9
  %276 = load ptr, ptr %275, align 8, !tbaa !650
  %277 = getelementptr inbounds %struct.elim_table, ptr %265, i64 0, i32 5
  %278 = load i64, ptr %277, align 8, !tbaa !716
  %279 = add nsw i64 %278, %254
  %280 = load i32, ptr %229, align 8
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = tail call i64 @trunc_int_for_mode(i64 noundef %279, i32 noundef %282) #22
  %284 = load ptr, ptr %230, align 8, !tbaa !397
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 39
  br i1 %287, label %288, label %293

288:                                              ; preds = %274
  %289 = load ptr, ptr @rtl_hooks, align 8, !tbaa !928
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
  %304 = load ptr, ptr %303, align 8, !tbaa !397
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %301
  %307 = tail call ptr @copy_insn_1(ptr noundef nonnull %304) #22
  store ptr %307, ptr %303, align 8, !tbaa !397
  br label %308

308:                                              ; preds = %301, %306, %298
  %309 = phi ptr [ %7, %298 ], [ %302, %306 ], [ %302, %301 ]
  store ptr %309, ptr %6, align 8, !tbaa !397
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
  br i1 %324, label %325, label %592

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !397
  %328 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %327, ptr noundef %299) #22
  %329 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %328, i8 noundef zeroext 0) #22
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %592

331:                                              ; preds = %325
  store ptr %299, ptr %322, align 8, !tbaa !397
  br label %592

332:                                              ; preds = %264, %270
  %333 = add nuw nsw i64 %266, 64
  %334 = getelementptr inbounds i8, ptr %263, i64 %333
  %335 = icmp ult i64 %266, 192
  br i1 %335, label %264, label %336, !prof !930, !llvm.loop !931

336:                                              ; preds = %224, %332, %201, %199, %293, %241, %246, %50, %25, %48
  %337 = phi ptr [ null, %48 ], [ null, %25 ], [ null, %50 ], [ null, %199 ], [ %192, %246 ], [ %192, %241 ], [ null, %293 ], [ %192, %201 ], [ %192, %332 ], [ %192, %224 ]
  %338 = phi ptr [ null, %48 ], [ null, %25 ], [ %22, %50 ], [ %22, %199 ], [ %22, %246 ], [ %22, %241 ], [ %22, %293 ], [ %22, %201 ], [ %22, %332 ], [ %22, %224 ]
  tail call fastcc void @elimination_effects(ptr noundef %7, i32 noundef 0) #23
  tail call void @extract_insn(ptr noundef nonnull %0) #22
  %339 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !932
  %340 = icmp sgt i8 %339, 0
  br i1 %340, label %341, label %348, !prof !934

341:                                              ; preds = %336
  %342 = sext i32 %5 to i64
  %343 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %342, i32 3
  %344 = icmp eq ptr %338, null
  %345 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = icmp eq ptr %337, null
  %347 = icmp eq i32 %1, 0
  br label %354

348:                                              ; preds = %432, %336
  %349 = phi i32 [ 0, %336 ], [ %433, %432 ]
  %350 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !935
  %351 = icmp sgt i8 %350, 0
  br i1 %351, label %352, label %450, !prof !936

352:                                              ; preds = %348
  %353 = zext nneg i8 %350 to i64
  br label %438

354:                                              ; preds = %341, %432
  %355 = phi i64 [ 0, %341 ], [ %434, %432 ]
  %356 = phi i32 [ 0, %341 ], [ %433, %432 ]
  %357 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %355
  %358 = load ptr, ptr %357, align 8, !tbaa !417
  %359 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %355
  store ptr %358, ptr %359, align 8, !tbaa !417
  %360 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %355
  store ptr %358, ptr %360, align 8, !tbaa !417
  br i1 %9, label %361, label %366, !prof !937

361:                                              ; preds = %354
  %362 = load ptr, ptr %343, align 8, !tbaa !938
  %363 = getelementptr inbounds %struct.insn_operand_data, ptr %362, i64 %355, i32 4
  %364 = load i8, ptr %363, align 1, !tbaa !940
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %432, label %366, !prof !942

366:                                              ; preds = %361, %354
  %367 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %355
  %368 = load i32, ptr %367, align 4, !tbaa !431
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %388, label %370, !prof !943

370:                                              ; preds = %366
  %371 = load i32, ptr %358, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 37
  br i1 %373, label %374, label %388, !prof !944

374:                                              ; preds = %370
  %375 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %376

376:                                              ; preds = %374, %384
  %377 = phi ptr [ %375, %374 ], [ %386, %384 ]
  %378 = phi i64 [ 0, %374 ], [ %385, %384 ]
  %379 = getelementptr inbounds %struct.elim_table, ptr %377, i64 0, i32 8
  %380 = load ptr, ptr %379, align 8, !tbaa !649
  %381 = icmp eq ptr %380, %358
  br i1 %381, label %382, label %384, !prof !945

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.elim_table, ptr %377, i64 0, i32 3
  store i32 0, ptr %383, align 8, !tbaa !514
  br label %384

384:                                              ; preds = %376, %382
  %385 = add nuw nsw i64 %378, 64
  %386 = getelementptr inbounds i8, ptr %375, i64 %385
  %387 = icmp ult i64 %378, 192
  br i1 %387, label %376, label %388, !prof !946, !llvm.loop !947

388:                                              ; preds = %384, %370, %366
  br i1 %344, label %394, label %389, !prof !948

389:                                              ; preds = %388
  %390 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %355
  %391 = load ptr, ptr %390, align 8, !tbaa !417
  %392 = icmp eq ptr %391, %345
  %393 = zext i1 %392 to i8
  br label %394

394:                                              ; preds = %389, %388
  %395 = phi i8 [ 0, %388 ], [ %393, %389 ]
  br i1 %346, label %405, label %396, !prof !949

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1
  %398 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %399 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %355
  %400 = load ptr, ptr %399, align 8, !tbaa !417
  %401 = icmp eq ptr %400, %397
  %402 = icmp eq ptr %400, %398
  %403 = select i1 %401, i1 true, i1 %402
  %404 = zext i1 %403 to i8
  br label %405

405:                                              ; preds = %396, %394
  %406 = phi i8 [ 0, %394 ], [ %404, %396 ]
  br i1 %347, label %408, label %407, !prof !950

407:                                              ; preds = %405
  br label %408

408:                                              ; preds = %405, %407
  %409 = phi ptr [ %0, %407 ], [ null, %405 ]
  %410 = or i8 %406, %395
  %411 = tail call fastcc ptr @eliminate_regs_1(ptr noundef %358, i32 noundef 0, ptr noundef %409, i8 noundef zeroext %410) #23
  store ptr %411, ptr %360, align 8, !tbaa !417
  %412 = icmp eq ptr %411, %358
  br i1 %412, label %414, label %413, !prof !950

413:                                              ; preds = %408
  br label %414

414:                                              ; preds = %413, %408
  %415 = phi i32 [ 1, %413 ], [ %356, %408 ]
  %416 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %355
  %417 = load ptr, ptr %416, align 8, !tbaa !417
  store ptr null, ptr %417, align 8, !tbaa !417
  %418 = load i32, ptr %367, align 4, !tbaa !431
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %432, label %420, !prof !943

420:                                              ; preds = %414
  %421 = load i32, ptr %358, align 8
  %422 = and i32 %421, 65535
  %423 = icmp eq i32 %422, 37
  br i1 %423, label %424, label %432, !prof !944

424:                                              ; preds = %420
  %425 = load i32, ptr %411, align 8
  %426 = and i32 %425, 65535
  %427 = icmp eq i32 %426, 43
  br i1 %427, label %428, label %432, !prof !951

428:                                              ; preds = %424
  br i1 %347, label %432, label %429

429:                                              ; preds = %428
  %430 = tail call ptr @gen_clobber(ptr noundef nonnull %358) #22
  %431 = tail call ptr @emit_insn_after(ptr noundef %430, ptr noundef nonnull %0) #22
  br label %432

432:                                              ; preds = %414, %420, %424, %428, %429, %361
  %433 = phi i32 [ %356, %361 ], [ %415, %429 ], [ %415, %428 ], [ %415, %424 ], [ %415, %420 ], [ %415, %414 ]
  %434 = add nuw nsw i64 %355, 1
  %435 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !932
  %436 = sext i8 %435 to i64
  %437 = icmp slt i64 %434, %436
  br i1 %437, label %354, label %348, !prof !952, !llvm.loop !953

438:                                              ; preds = %352, %438
  %439 = phi i64 [ 0, %352 ], [ %448, %438 ]
  %440 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !397
  %442 = sext i8 %441 to i64
  %443 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !417
  %445 = load ptr, ptr %444, align 8, !tbaa !417
  %446 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %439
  %447 = load ptr, ptr %446, align 8, !tbaa !417
  store ptr %445, ptr %447, align 8, !tbaa !417
  %448 = add nuw nsw i64 %439, 1
  %449 = icmp eq i64 %448, %353
  br i1 %449, label %450, label %438, !prof !954, !llvm.loop !955

450:                                              ; preds = %438, %348
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %7) #23
  %451 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !932
  %452 = icmp sgt i8 %451, 0
  br i1 %452, label %453, label %455, !prof !934

453:                                              ; preds = %450
  %454 = zext nneg i8 %451 to i64
  br label %460

455:                                              ; preds = %460, %450
  %456 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !935
  %457 = icmp sgt i8 %456, 0
  br i1 %457, label %458, label %479, !prof !936

458:                                              ; preds = %455
  %459 = zext nneg i8 %456 to i64
  br label %468

460:                                              ; preds = %453, %460
  %461 = phi i64 [ 0, %453 ], [ %466, %460 ]
  %462 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !417
  %464 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %461
  %465 = load ptr, ptr %464, align 8, !tbaa !417
  store ptr %463, ptr %465, align 8, !tbaa !417
  %466 = add nuw nsw i64 %461, 1
  %467 = icmp eq i64 %466, %454
  br i1 %467, label %455, label %460, !prof !956, !llvm.loop !957

468:                                              ; preds = %458, %468
  %469 = phi i64 [ 0, %458 ], [ %477, %468 ]
  %470 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !397
  %472 = sext i8 %471 to i64
  %473 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !417
  %475 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %469
  %476 = load ptr, ptr %475, align 8, !tbaa !417
  store ptr %474, ptr %476, align 8, !tbaa !417
  %477 = add nuw nsw i64 %469, 1
  %478 = icmp eq i64 %477, %459
  br i1 %478, label %479, label %468, !prof !954, !llvm.loop !958

479:                                              ; preds = %468, %455
  %480 = icmp eq i32 %349, 0
  br i1 %480, label %531, label %481, !prof !959

481:                                              ; preds = %479
  %482 = icmp eq i32 %1, 0
  br i1 %482, label %483, label %490, !prof !960

483:                                              ; preds = %481
  %484 = tail call ptr @copy_insn(ptr noundef %7) #22
  %485 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %486 = load ptr, ptr %485, align 8, !tbaa !397
  %487 = icmp eq ptr %486, null
  br i1 %487, label %490, label %488, !prof !961

488:                                              ; preds = %483
  %489 = tail call ptr @copy_insn_1(ptr noundef nonnull %486) #22
  store ptr %489, ptr %485, align 8, !tbaa !397
  br label %490

490:                                              ; preds = %483, %488, %481
  %491 = phi ptr [ %7, %481 ], [ %484, %488 ], [ %484, %483 ]
  store ptr %491, ptr %6, align 8, !tbaa !397
  %492 = icmp ne ptr %338, null
  %493 = select i1 %9, i1 %492, i1 false
  br i1 %493, label %494, label %531, !prof !962

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %496 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1, i32 0, i32 0, i64 1
  %497 = load ptr, ptr %496, align 8, !tbaa !397
  %498 = load i32, ptr %497, align 8
  %499 = and i32 %498, 65535
  %500 = icmp eq i32 %499, 37
  br i1 %500, label %501, label %511, !prof !963

501:                                              ; preds = %494
  %502 = load i32, ptr %491, align 8
  %503 = and i32 %502, 65535
  %504 = icmp eq i32 %503, 23
  br i1 %504, label %505, label %526, !prof !522

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.rtx_def, ptr %491, i64 0, i32 1, i32 0, i32 0, i64 1
  %507 = load ptr, ptr %506, align 8, !tbaa !397
  %508 = load i32, ptr %507, align 8
  %509 = and i32 %508, 65535
  %510 = icmp eq i32 %509, 37
  br i1 %510, label %516, label %526, !prof !522

511:                                              ; preds = %494
  %512 = icmp ne i32 %499, 43
  %513 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %514 = icmp eq ptr %497, %513
  %515 = select i1 %512, i1 true, i1 %514
  br i1 %515, label %516, label %526, !prof !964

516:                                              ; preds = %505, %511
  %517 = load ptr, ptr %495, align 8, !tbaa !397
  %518 = load i32, ptr %517, align 8
  %519 = and i32 %518, 65535
  %520 = icmp eq i32 %519, 43
  %521 = load ptr, ptr @recog_data, align 8
  %522 = icmp ne ptr %517, %521
  %523 = select i1 %520, i1 %522, i1 false
  %524 = icmp eq i32 %499, 49
  %525 = or i1 %524, %523
  br i1 %525, label %526, label %531, !prof !965

526:                                              ; preds = %516, %511, %505, %501
  %527 = tail call i32 @recog(ptr noundef %491, ptr noundef nonnull %0, ptr noundef null) #22
  %528 = icmp sgt i32 %527, -1
  br i1 %528, label %529, label %531, !prof !966

529:                                              ; preds = %526
  %530 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 %527, ptr %530, align 8, !tbaa !397
  br label %531

531:                                              ; preds = %516, %526, %529, %490, %479
  %532 = icmp eq i32 %1, 0
  br i1 %532, label %533, label %562, !prof !967

533:                                              ; preds = %531
  %534 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !932
  %535 = icmp sgt i8 %534, 0
  br i1 %535, label %536, label %538, !prof !968

536:                                              ; preds = %533
  %537 = zext nneg i8 %534 to i64
  br label %543

538:                                              ; preds = %543, %533
  %539 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !935
  %540 = icmp sgt i8 %539, 0
  br i1 %540, label %541, label %562, !prof !969

541:                                              ; preds = %538
  %542 = zext nneg i8 %539 to i64
  br label %551

543:                                              ; preds = %536, %543
  %544 = phi i64 [ 0, %536 ], [ %549, %543 ]
  %545 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %544
  %546 = load ptr, ptr %545, align 8, !tbaa !417
  %547 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %544
  %548 = load ptr, ptr %547, align 8, !tbaa !417
  store ptr %546, ptr %548, align 8, !tbaa !417
  %549 = add nuw nsw i64 %544, 1
  %550 = icmp eq i64 %549, %537
  br i1 %550, label %538, label %543, !prof !970, !llvm.loop !971

551:                                              ; preds = %541, %551
  %552 = phi i64 [ 0, %541 ], [ %560, %551 ]
  %553 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !397
  %555 = sext i8 %554 to i64
  %556 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %555
  %557 = load ptr, ptr %556, align 8, !tbaa !417
  %558 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %552
  %559 = load ptr, ptr %558, align 8, !tbaa !417
  store ptr %557, ptr %559, align 8, !tbaa !417
  %560 = add nuw nsw i64 %552, 1
  %561 = icmp eq i64 %560, %542
  br i1 %561, label %562, label %551, !prof !954, !llvm.loop !972

562:                                              ; preds = %551, %538, %531
  %563 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %564

564:                                              ; preds = %586, %562
  %565 = phi ptr [ %588, %586 ], [ %563, %562 ]
  %566 = phi i32 [ 1, %586 ], [ %349, %562 ]
  %567 = phi i64 [ %587, %586 ], [ 0, %562 ]
  br label %568

568:                                              ; preds = %564, %582
  %569 = phi ptr [ %584, %582 ], [ %565, %564 ]
  %570 = phi i64 [ %583, %582 ], [ %567, %564 ]
  %571 = getelementptr inbounds %struct.elim_table, ptr %569, i64 0, i32 6
  %572 = load i64, ptr %571, align 8, !tbaa !717
  %573 = getelementptr inbounds %struct.elim_table, ptr %569, i64 0, i32 5
  %574 = load i64, ptr %573, align 8, !tbaa !716
  %575 = icmp eq i64 %572, %574
  %576 = getelementptr inbounds %struct.elim_table, ptr %569, i64 0, i32 7
  br i1 %575, label %582, label %577, !prof !973

577:                                              ; preds = %568
  %578 = load i32, ptr %576, align 8, !tbaa !830
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %586, label %580

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.elim_table, ptr %569, i64 0, i32 3
  store i32 0, ptr %581, align 8, !tbaa !514
  br label %586

582:                                              ; preds = %568
  store i32 0, ptr %576, align 8, !tbaa !830
  %583 = add nuw nsw i64 %570, 64
  %584 = getelementptr inbounds i8, ptr %563, i64 %583
  %585 = icmp ult i64 %570, 192
  br i1 %585, label %568, label %590, !prof !974, !llvm.loop !975

586:                                              ; preds = %577, %580
  store i32 0, ptr %576, align 8, !tbaa !830
  %587 = add nuw nsw i64 %570, 64
  %588 = getelementptr inbounds i8, ptr %563, i64 %587
  %589 = icmp ult i64 %570, 192
  br i1 %589, label %564, label %592, !prof !974, !llvm.loop !975

590:                                              ; preds = %582
  %591 = icmp eq i32 %566, 0
  br i1 %591, label %599, label %592, !prof !976

592:                                              ; preds = %586, %325, %331, %320, %168, %177, %179, %590
  %593 = phi i32 [ %566, %590 ], [ 1, %179 ], [ 1, %177 ], [ 1, %168 ], [ 1, %320 ], [ 1, %331 ], [ 1, %325 ], [ 1, %586 ]
  %594 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %595 = load ptr, ptr %594, align 8, !tbaa !397
  %596 = icmp eq ptr %595, null
  br i1 %596, label %599, label %597, !prof !977

597:                                              ; preds = %592
  %598 = tail call fastcc ptr @eliminate_regs_1(ptr noundef nonnull %595, i32 noundef 0, ptr noundef nonnull %595, i8 noundef zeroext 1) #23
  store ptr %598, ptr %594, align 8, !tbaa !397
  br label %599

599:                                              ; preds = %590, %592, %597, %37, %41, %181
  %600 = phi i32 [ 1, %181 ], [ 0, %41 ], [ 0, %37 ], [ %593, %597 ], [ %593, %592 ], [ 0, %590 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #24
  ret i32 %600
}

; Function Attrs: optsize
declare i32 @find_reloads(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_mark_memory_move_deletion(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_eliminable_offsets() unnamed_addr #13 !prof !904 !PGOFuncName !978 {
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !431
  %1 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %2

2:                                                ; preds = %0, %18
  %3 = phi ptr [ %1, %0 ], [ %21, %18 ]
  %4 = phi i64 [ 0, %0 ], [ %20, %18 ]
  %5 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %6 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !716
  %8 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 6
  store i64 %7, ptr %8, align 8, !tbaa !717
  %9 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !514
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12, !prof !979

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.elim_table, ptr %3, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !715
  %15 = icmp eq i64 %7, %14
  br i1 %15, label %18, label %16, !prof !980

16:                                               ; preds = %12
  %17 = add nsw i32 %5, 1
  store i32 %17, ptr @num_not_at_initial_offset, align 4, !tbaa !431
  br label %18

18:                                               ; preds = %2, %12, %16
  %19 = phi i32 [ %5, %2 ], [ %5, %12 ], [ %17, %16 ]
  %20 = add nuw nsw i64 %4, 64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = icmp ult i64 %4, 192
  br i1 %22, label %2, label %23, !prof !981, !llvm.loop !982

23:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_reloads(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !983 !PGOFuncName !984 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %3 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  store i32 %2, ptr %3, align 8, !tbaa !726
  %4 = sext i32 %2 to i64
  %5 = mul nsw i64 %4, 104
  store i64 %5, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, %5
  br i1 %11, label %12, label %16, !prof !985

12:                                               ; preds = %1
  %13 = trunc i64 %5 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef %13) #22
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %16

16:                                               ; preds = %1, %12
  %17 = phi ptr [ %7, %1 ], [ %15, %12 ]
  %18 = phi i64 [ %5, %1 ], [ %14, %12 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25, !prof !768

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %19 to i64
  %27 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = xor i32 %27, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %29, %31
  %33 = inttoptr i64 %32 to ptr
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %32, %35
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %35
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %42, !prof !768

41:                                               ; preds = %25
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %42

42:                                               ; preds = %25, %41
  %43 = phi ptr [ %33, %25 ], [ %37, %41 ]
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %44 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  store ptr %20, ptr %44, align 8, !tbaa !986
  %45 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr nonnull align 16 @rld, i64 %47, i1 false)
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57, !prof !768

54:                                               ; preds = %42
  tail call void @_obstack_newchunk(ptr noundef nonnull @reload_obstack, i32 noundef 0) #22
  %55 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %56 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %57

57:                                               ; preds = %42, %54
  %58 = phi ptr [ %49, %42 ], [ %56, %54 ]
  %59 = phi i64 [ 0, %42 ], [ %55, %54 ]
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %66, !prof !767

63:                                               ; preds = %57
  %64 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  %65 = or i8 %64, 2
  store i8 %65, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 10), align 8
  br label %66

66:                                               ; preds = %57, %63
  %67 = ptrtoint ptr %61 to i64
  store i64 %67, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 5), align 8, !tbaa !406
  %68 = ptrtoint ptr %60 to i64
  %69 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 6), align 8, !tbaa !415
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = xor i32 %69, -1
  %73 = sext i32 %72 to i64
  %74 = and i64 %71, %73
  %75 = inttoptr i64 %74 to ptr
  store ptr %75, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 1), align 8, !tbaa !416
  %77 = ptrtoint ptr %76 to i64
  %78 = sub i64 %74, %77
  %79 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 4), align 8, !tbaa !411
  %80 = ptrtoint ptr %79 to i64
  %81 = sub i64 %80, %77
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %84, !prof !768

83:                                               ; preds = %66
  store ptr %79, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 3), align 8, !tbaa !412
  br label %84

84:                                               ; preds = %66, %83
  %85 = phi ptr [ %75, %66 ], [ %79, %83 ]
  store ptr %85, ptr getelementptr inbounds (%struct.obstack, ptr @reload_obstack, i64 0, i32 2), align 8, !tbaa !413
  store ptr %61, ptr @reload_insn_firstobj, align 8, !tbaa !417
  ret void
}

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_offsets_for_label(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !987 !PGOFuncName !988 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !397
  store i32 0, ptr @num_not_at_initial_offset, align 4, !tbaa !431
  %4 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  %5 = load ptr, ptr @offsets_at, align 8, !tbaa !417
  %6 = load i32, ptr @first_label_num, align 4, !tbaa !431
  %7 = sub nsw i32 %3, %6
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %1, %26
  %10 = phi i64 [ 0, %1 ], [ %29, %26 ]
  %11 = phi ptr [ %4, %1 ], [ %28, %26 ]
  %12 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %13 = getelementptr inbounds [4 x i64], ptr %5, i64 %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !449
  %15 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 6
  store i64 %14, ptr %15, align 8, !tbaa !717
  %16 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 5
  store i64 %14, ptr %16, align 8, !tbaa !716
  %17 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !514
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !prof !989

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.elim_table, ptr %11, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !715
  %23 = icmp eq i64 %14, %22
  br i1 %23, label %26, label %24, !prof !990

24:                                               ; preds = %20
  %25 = add nsw i32 %12, 1
  store i32 %25, ptr @num_not_at_initial_offset, align 4, !tbaa !431
  br label %26

26:                                               ; preds = %9, %20, %24
  %27 = phi i32 [ %12, %9 ], [ %12, %20 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.elim_table, ptr %11, i64 1
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %9, !prof !991, !llvm.loop !992

31:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !904 !PGOFuncName !993 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !397
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !994

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #22
  store i32 %8, ptr %2, align 8, !tbaa !397
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
define internal fastcc void @elimination_effects(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #18 !prof !995 !PGOFuncName !996 {
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
  ], !prof !997

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %20 = icmp slt i32 %19, 53
  br i1 %20, label %21, label %39, !prof !998

21:                                               ; preds = %18, %35
  %22 = phi ptr [ %37, %35 ], [ %11, %18 ]
  %23 = phi i64 [ %36, %35 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.elim_table, ptr %22, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !649
  %26 = icmp eq ptr %25, %15
  br i1 %26, label %27, label %35, !prof !999

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.elim_table, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !514
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !1000

31:                                               ; preds = %27
  %32 = icmp eq i32 %13, 0
  br i1 %32, label %33, label %297, !prof !1001

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.elim_table, ptr %22, i64 0, i32 7
  store i32 1, ptr %34, align 8, !tbaa !830
  br label %297

35:                                               ; preds = %21, %27
  %36 = add nuw nsw i64 %23, 64
  %37 = getelementptr inbounds i8, ptr %11, i64 %36
  %38 = icmp ult i64 %23, 192
  br i1 %38, label %21, label %297, !prof !1002, !llvm.loop !1003

39:                                               ; preds = %18
  %40 = icmp ne ptr %8, null
  %41 = zext nneg i32 %19 to i64
  %42 = getelementptr inbounds i16, ptr %9, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !432
  %44 = icmp slt i16 %43, 0
  %45 = select i1 %44, i1 %40, i1 false
  br i1 %45, label %46, label %297, !prof !814

46:                                               ; preds = %39
  %47 = getelementptr inbounds ptr, ptr %8, i64 %41
  %48 = load ptr, ptr %47, align 8, !tbaa !417
  %49 = icmp eq ptr %48, null
  br i1 %49, label %297, label %50, !prof !815

50:                                               ; preds = %46
  %51 = tail call i32 @function_invariant_p(ptr noundef nonnull %48) #23, !range !496
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %136, label %297

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
  %66 = load ptr, ptr %65, align 8, !tbaa !649
  %67 = load ptr, ptr %56, align 8, !tbaa !397
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.elim_table, ptr %63, i64 0, i32 3
  store i32 0, ptr %70, align 8, !tbaa !514
  br label %71

71:                                               ; preds = %62, %69
  %72 = add nuw nsw i64 %64, 64
  %73 = getelementptr inbounds i8, ptr %11, i64 %72
  %74 = icmp ult i64 %64, 192
  br i1 %74, label %62, label %57, !llvm.loop !1004

75:                                               ; preds = %125, %57
  %76 = phi ptr [ %11, %57 ], [ %127, %125 ]
  %77 = phi i64 [ 0, %57 ], [ %126, %125 ]
  %78 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !650
  %80 = load ptr, ptr %56, align 8, !tbaa !397
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %75
  %83 = load i8, ptr %55, align 1, !tbaa !397
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
  %92 = load i64, ptr %91, align 8, !tbaa !716
  %93 = add nsw i64 %92, %90
  store i64 %93, ptr %91, align 8, !tbaa !716
  br label %123

94:                                               ; preds = %82, %82
  %95 = zext nneg i32 %88 to i64
  %96 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 5
  %97 = load i64, ptr %96, align 8, !tbaa !716
  %98 = sub nsw i64 %97, %95
  store i64 %98, ptr %96, align 8, !tbaa !716
  br label %123

99:                                               ; preds = %82
  br i1 %60, label %100, label %128

100:                                              ; preds = %99
  %101 = load ptr, ptr %61, align 8, !tbaa !397
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 49
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !397
  %108 = icmp eq ptr %79, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !397
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 30
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !397
  %118 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 5
  %119 = load i64, ptr %118, align 8, !tbaa !716
  %120 = sub nsw i64 %119, %117
  store i64 %120, ptr %118, align 8, !tbaa !716
  br label %123

121:                                              ; preds = %109, %105, %100
  %122 = getelementptr inbounds %struct.elim_table, ptr %76, i64 0, i32 3
  store i32 0, ptr %122, align 8, !tbaa !514
  br label %123

123:                                              ; preds = %89, %121, %115, %94, %75
  %124 = icmp ult i64 %77, 192
  br i1 %124, label %125, label %130

125:                                              ; preds = %123, %128
  %126 = add nuw nsw i64 %77, 64
  %127 = getelementptr inbounds i8, ptr %11, i64 %126
  br label %75, !llvm.loop !1005

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
  %135 = load ptr, ptr %134, align 8, !tbaa !397
  br label %136

136:                                              ; preds = %133, %138, %144, %158, %50
  %137 = phi ptr [ %48, %50 ], [ %140, %158 ], [ %140, %144 ], [ %140, %138 ], [ %135, %133 ]
  br label %14

138:                                              ; preds = %14
  %139 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !397
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %136, !prof !625

144:                                              ; preds = %138
  %145 = icmp ne ptr %10, null
  %146 = lshr i32 %16, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !397
  %151 = lshr i32 %141, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !397
  %156 = icmp ule i8 %150, %155
  %157 = select i1 %156, i1 %145, i1 false
  br i1 %157, label %158, label %136, !prof !838

158:                                              ; preds = %144
  %159 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %140) #23
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %10, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !417
  %163 = icmp eq ptr %162, null
  br i1 %163, label %136, label %297, !prof !625

164:                                              ; preds = %14
  %165 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %175
  %167 = phi ptr [ %11, %164 ], [ %177, %175 ]
  %168 = phi i64 [ 0, %164 ], [ %176, %175 ]
  %169 = getelementptr inbounds %struct.elim_table, ptr %167, i64 0, i32 8
  %170 = load ptr, ptr %169, align 8, !tbaa !649
  %171 = load ptr, ptr %165, align 8, !tbaa !397
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %175, !prof !1006

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.elim_table, ptr %167, i64 0, i32 3
  store i32 0, ptr %174, align 8, !tbaa !514
  br label %175

175:                                              ; preds = %166, %173
  %176 = add nuw nsw i64 %168, 64
  %177 = getelementptr inbounds i8, ptr %11, i64 %176
  %178 = icmp ult i64 %168, 192
  br i1 %178, label %166, label %133, !prof !902, !llvm.loop !1007

179:                                              ; preds = %14
  %180 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %181

181:                                              ; preds = %179, %190
  %182 = phi ptr [ %11, %179 ], [ %192, %190 ]
  %183 = phi i64 [ 0, %179 ], [ %191, %190 ]
  %184 = getelementptr inbounds %struct.elim_table, ptr %182, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !650
  %186 = load ptr, ptr %180, align 8, !tbaa !397
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %190, !prof !1008

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.elim_table, ptr %182, i64 0, i32 3
  store i32 0, ptr %189, align 8, !tbaa !514
  br label %190

190:                                              ; preds = %181, %188
  %191 = add nuw nsw i64 %183, 64
  %192 = getelementptr inbounds i8, ptr %11, i64 %191
  %193 = icmp ult i64 %183, 192
  br i1 %193, label %181, label %133, !prof !1009, !llvm.loop !1010

194:                                              ; preds = %14
  %195 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !397
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 37
  br i1 %199, label %200, label %241, !prof !1011

200:                                              ; preds = %194
  %201 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  br label %202

202:                                              ; preds = %200, %235
  %203 = phi ptr [ %11, %200 ], [ %237, %235 ]
  %204 = phi i64 [ 0, %200 ], [ %236, %235 ]
  %205 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !650
  %207 = load ptr, ptr %195, align 8, !tbaa !397
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %235, !prof !1012

209:                                              ; preds = %202
  %210 = icmp eq ptr %206, %201
  br i1 %210, label %235, label %211

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !397
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 49
  br i1 %216, label %217, label %233

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !397
  %220 = icmp eq ptr %219, %206
  br i1 %220, label %221, label %233

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !397
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 30
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !397
  %230 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 5
  %231 = load i64, ptr %230, align 8, !tbaa !716
  %232 = sub nsw i64 %231, %229
  store i64 %232, ptr %230, align 8, !tbaa !716
  br label %235

233:                                              ; preds = %221, %217, %211
  %234 = getelementptr inbounds %struct.elim_table, ptr %203, i64 0, i32 3
  store i32 0, ptr %234, align 8, !tbaa !514
  br label %235

235:                                              ; preds = %227, %233, %202, %209
  %236 = add nuw nsw i64 %204, 64
  %237 = getelementptr inbounds i8, ptr %11, i64 %236
  %238 = icmp ult i64 %204, 192
  br i1 %238, label %202, label %239, !prof !1013, !llvm.loop !1014

239:                                              ; preds = %235
  %240 = load ptr, ptr %195, align 8, !tbaa !397
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
  %255 = load ptr, ptr %253, align 8, !tbaa !397
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
  %264 = load i8, ptr %263, align 1, !tbaa !397
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %297, label %266, !prof !1015

266:                                              ; preds = %260
  %267 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %262
  %268 = load ptr, ptr %267, align 8, !tbaa !417
  %269 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %270 = zext i8 %264 to i64
  br label %271

271:                                              ; preds = %266, %293
  %272 = phi i64 [ 0, %266 ], [ %294, %293 ]
  %273 = phi ptr [ %268, %266 ], [ %295, %293 ]
  %274 = load i8, ptr %273, align 1, !tbaa !397
  switch i8 %274, label %293 [
    i8 101, label %280
    i8 69, label %275
  ], !prof !1016

275:                                              ; preds = %271
  %276 = getelementptr inbounds [1 x %union.rtunion_def], ptr %269, i64 0, i64 %272
  %277 = load ptr, ptr %276, align 8, !tbaa !397
  %278 = load i32, ptr %277, align 8, !tbaa !628
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %283, label %293, !prof !1017

280:                                              ; preds = %271
  %281 = getelementptr inbounds [1 x %union.rtunion_def], ptr %269, i64 0, i64 %272
  %282 = load ptr, ptr %281, align 8, !tbaa !397
  tail call fastcc void @elimination_effects(ptr noundef %282, i32 noundef %13) #23
  br label %293

283:                                              ; preds = %275, %283
  %284 = phi i64 [ %288, %283 ], [ 0, %275 ]
  %285 = phi ptr [ %289, %283 ], [ %277, %275 ]
  %286 = getelementptr inbounds %struct.rtvec_def, ptr %285, i64 0, i32 1, i64 %284
  %287 = load ptr, ptr %286, align 8, !tbaa !417
  tail call fastcc void @elimination_effects(ptr noundef %287, i32 noundef %13) #23
  %288 = add nuw nsw i64 %284, 1
  %289 = load ptr, ptr %276, align 8, !tbaa !397
  %290 = load i32, ptr %289, align 8, !tbaa !628
  %291 = sext i32 %290 to i64
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %283, label %293, !prof !1018, !llvm.loop !1019

293:                                              ; preds = %283, %275, %271, %280
  %294 = add nuw nsw i64 %272, 1
  %295 = getelementptr inbounds i8, ptr %273, i64 1
  %296 = icmp eq i64 %294, %270
  br i1 %296, label %297, label %271, !prof !1020, !llvm.loop !1021

297:                                              ; preds = %158, %50, %46, %39, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %35, %293, %260, %31, %33
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @check_eliminable_occurrences(ptr noundef readonly %0) unnamed_addr #18 !prof !1022 !PGOFuncName !1023 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3, !prof !1024

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %24, !prof !1025

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #23
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %24, !prof !1026

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_eliminate, align 8, !tbaa !417
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ %11, %10 ], [ %22, %20 ]
  %14 = phi i64 [ 0, %10 ], [ %21, %20 ]
  %15 = getelementptr inbounds %struct.elim_table, ptr %13, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !649
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %20, !prof !1027

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.elim_table, ptr %13, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !514
  br label %20

20:                                               ; preds = %12, %18
  %21 = add nuw nsw i64 %14, 64
  %22 = getelementptr inbounds i8, ptr %11, i64 %21
  %23 = icmp ult i64 %14, 192
  br i1 %23, label %12, label %60, !prof !1028, !llvm.loop !1029

24:                                               ; preds = %7, %3
  %25 = zext nneg i32 %5 to i64
  %26 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !397
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %60, label %29, !prof !1030

29:                                               ; preds = %24
  %30 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !417
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = zext i8 %27 to i64
  br label %34

34:                                               ; preds = %29, %56
  %35 = phi i64 [ 0, %29 ], [ %57, %56 ]
  %36 = phi ptr [ %31, %29 ], [ %58, %56 ]
  %37 = load i8, ptr %36, align 1, !tbaa !397
  switch i8 %37, label %56 [
    i8 101, label %43
    i8 69, label %38
  ], !prof !1031

38:                                               ; preds = %34
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !397
  %41 = load i32, ptr %40, align 8, !tbaa !628
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %46, label %56, !prof !1017

43:                                               ; preds = %34
  %44 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %35
  %45 = load ptr, ptr %44, align 8, !tbaa !397
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %45) #23
  br label %56

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %38 ]
  %48 = phi ptr [ %52, %46 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !417
  tail call fastcc void @check_eliminable_occurrences(ptr noundef %50) #23
  %51 = add nuw nsw i64 %47, 1
  %52 = load ptr, ptr %39, align 8, !tbaa !397
  %53 = load i32, ptr %52, align 8, !tbaa !628
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %46, label %56, !prof !1018, !llvm.loop !1032

56:                                               ; preds = %46, %38, %34, %43
  %57 = add nuw nsw i64 %35, 1
  %58 = getelementptr inbounds i8, ptr %36, i64 1
  %59 = icmp eq i64 %57, %33
  br i1 %59, label %60, label %34, !prof !1033, !llvm.loop !1034

60:                                               ; preds = %56, %20, %24, %1
  ret void
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reload_regs(ptr noundef %0) unnamed_addr #0 !prof !983 !PGOFuncName !1035 {
  %2 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !726
  %4 = icmp sgt i32 %3, 0
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !986
  br i1 %4, label %7, label %33, !prof !1036

7:                                                ; preds = %1
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi i64 [ 0, %7 ], [ %31, %28 ]
  %11 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !849
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14, !prof !1037

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #23
  %16 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 10
  store i32 %15, ptr %16, align 8, !tbaa !1038
  %17 = sext i32 %15 to i64
  %18 = load i32, ptr %12, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %17, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !397
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !1039
  br label %28

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.reload, ptr %6, i64 %10, i32 10
  store i32 -1, ptr %27, align 8, !tbaa !1038
  br label %28

28:                                               ; preds = %26, %14
  %29 = trunc i64 %10 to i16
  %30 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %10
  store i16 %29, ptr %30, align 2, !tbaa !432
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %33, label %9, !prof !1036, !llvm.loop !1040

33:                                               ; preds = %28, %1
  store i32 %3, ptr @n_reloads, align 4, !tbaa !431
  %34 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 8
  %35 = sext i32 %3 to i64
  %36 = mul nsw i64 %35, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @rld, ptr align 8 %6, i64 %36, i1 false)
  store i64 0, ptr @used_spill_regs_local, align 8, !tbaa !449
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39, !prof !767

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !671
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !397
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.8, i32 noundef %43) #23
  %45 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %39, %33
  %48 = phi i64 [ %46, %39 ], [ %35, %33 ]
  tail call void @spec_qsort(ptr noundef nonnull @reload_order, i64 noundef %48, i64 noundef 2, ptr noundef nonnull @reload_reg_class_lower) #22
  tail call fastcc void @order_regs_for_reload(ptr noundef nonnull %0) #23
  %49 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %53, label %51, !prof !1036

51:                                               ; preds = %47
  %52 = sext i32 %49 to i64
  br label %102

53:                                               ; preds = %47, %97
  %54 = phi i32 [ %98, %97 ], [ %49, %47 ]
  %55 = phi i64 [ %99, %97 ], [ 0, %47 ]
  %56 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !432
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !1041
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %71, !prof !1042

62:                                               ; preds = %53
  %63 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !1043
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71, !prof !1044

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
  br i1 %75, label %76, label %97, !prof !1045

76:                                               ; preds = %71
  %77 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa !1038
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %97, !prof !771

80:                                               ; preds = %76
  %81 = trunc i64 %55 to i32
  %82 = tail call fastcc i32 @find_reg(ptr noundef %0, i32 noundef %81) #23, !range !496
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !772

84:                                               ; preds = %80
  %85 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %97

86:                                               ; preds = %80
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = sext i16 %57 to i32
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.9, i32 noundef %90) #23
  br label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !671
  %95 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !1046
  tail call fastcc void @spill_failure(ptr noundef %94, i32 noundef %96) #23
  store i1 true, ptr @failure, align 4
  br label %110

97:                                               ; preds = %84, %76, %71, %66
  %98 = phi i32 [ %85, %84 ], [ %54, %76 ], [ %54, %71 ], [ %54, %66 ]
  %99 = add nuw nsw i64 %55, 1
  %100 = sext i32 %98 to i64
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %53, label %102, !prof !695, !llvm.loop !1047

102:                                              ; preds = %97, %51
  %103 = phi i64 [ %52, %51 ], [ %100, %97 ]
  %104 = load i64, ptr @used_spill_regs_local, align 8, !tbaa !449
  %105 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 10
  store i64 %104, ptr %105, align 8, !tbaa !696
  %106 = load i64, ptr @used_spill_regs, align 8, !tbaa !449
  %107 = or i64 %106, %104
  store i64 %107, ptr @used_spill_regs, align 8, !tbaa !449
  %108 = load ptr, ptr %34, align 8, !tbaa !986
  %109 = mul nsw i64 %103, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %108, ptr nonnull align 16 @rld, i64 %109, i1 false)
  br label %110

110:                                              ; preds = %92, %102
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @reload_reg_class_lower(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !608 !PGOFuncName !1048 {
  %3 = load i16, ptr %0, align 2, !tbaa !432
  %4 = sext i16 %3 to i32
  %5 = load i16, ptr %1, align 2, !tbaa !432
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
  %21 = load i32, ptr %20, align 8, !tbaa !1046
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !431
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !1046
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !431
  %32 = icmp eq i32 %31, 1
  %33 = sext i1 %32 to i32
  %34 = add nsw i32 %33, %26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %19
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %12, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !1039
  %39 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %7, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !1039
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
define internal fastcc void @order_regs_for_reload(ptr noundef %0) unnamed_addr #0 !prof !983 !PGOFuncName !1049 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = load i64, ptr @fixed_reg_set, align 8, !tbaa !449
  store i64 %6, ptr @bad_spill_regs, align 8, !tbaa !449
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_cost, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @spill_add_cost, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @hard_regno_to_pseudo_regno, i8 -1, i64 212, i1 false), !tbaa !431
  store i32 53, ptr %2, align 4, !tbaa !431
  store i64 0, ptr %3, align 8, !tbaa !449
  %7 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %7) #22
  store i64 0, ptr %4, align 8, !tbaa !449
  %8 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %4, ptr noundef nonnull %8) #22
  %9 = load i64, ptr %3, align 8, !tbaa !449
  %10 = load i64, ptr @bad_spill_regs, align 8, !tbaa !449
  %11 = or i64 %10, %9
  %12 = load i64, ptr %4, align 8, !tbaa !449
  %13 = or i64 %12, %11
  store i64 %13, ptr @bad_spill_regs, align 8, !tbaa !449
  call void @bitmap_clear(ptr noundef nonnull @pseudos_counted) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 53, ptr noundef nonnull %2) #23
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !429
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16, !prof !695

16:                                               ; preds = %1, %16
  %17 = load i32, ptr %2, align 4, !tbaa !431
  call fastcc void @count_pseudo(i32 noundef %17) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #23
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !429
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %16, !prof !697, !llvm.loop !1050

20:                                               ; preds = %16, %1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 53, ptr noundef nonnull %2) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !429
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !699

23:                                               ; preds = %20, %23
  %24 = load i32, ptr %2, align 4, !tbaa !431
  call fastcc void @count_pseudo(i32 noundef %24) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #23
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !429
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %23, !prof !700, !llvm.loop !1051

27:                                               ; preds = %23, %20
  call void @bitmap_clear(ptr noundef nonnull @pseudos_counted) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_reg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1052 !PGOFuncName !1053 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !432
  %8 = sext i16 %7 to i32
  %9 = sext i16 %7 to i64
  %10 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %11 = load i64, ptr @bad_spill_regs, align 8, !tbaa !449
  %12 = load i64, ptr @bad_spill_regs_global, align 8, !tbaa !449
  %13 = or i64 %12, %11
  %14 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !1046
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !449
  %19 = xor i64 %18, -1
  %20 = or i64 %13, %19
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %24, !prof !1054

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
  %35 = load i16, ptr %34, align 2, !tbaa !432
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %36, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !1038
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %76

40:                                               ; preds = %30
  %41 = sext i16 %35 to i32
  %42 = tail call fastcc i32 @reloads_conflict(i32 noundef %41, i32 noundef %8) #23, !range !496
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %36, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !1039
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = zext i32 %46 to i64
  %50 = load i32, ptr %37, align 8, !tbaa !1038
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
  br i1 %71, label %72, label %59, !llvm.loop !1055

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
  br i1 %80, label %24, label %30, !prof !401, !llvm.loop !1056

81:                                               ; preds = %24, %223
  %82 = phi i64 [ 0, %24 ], [ %227, %223 ]
  %83 = phi i32 [ 2147483647, %24 ], [ %226, %223 ]
  %84 = phi i32 [ -1, %24 ], [ %225, %223 ]
  %85 = phi i32 [ %25, %24 ], [ %224, %223 ]
  %86 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %82
  %87 = load i32, ptr %86, align 4, !tbaa !431
  %88 = zext i32 %87 to i64
  %89 = shl nuw i64 1, %88
  %90 = and i64 %89, %20
  %91 = icmp eq i64 %90, 0
  %92 = and i64 %89, %26
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %223, !prof !1057

95:                                               ; preds = %81
  %96 = load i32, ptr %27, align 4, !tbaa !853
  %97 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %87, i32 noundef %96) #22
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %223, label %99, !prof !1058

99:                                               ; preds = %95
  %100 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %88
  %101 = load i32, ptr %100, align 4, !tbaa !431
  %102 = load i32, ptr %27, align 4, !tbaa !853
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %88, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !397
  %106 = zext i8 %105 to i32
  %107 = icmp ugt i8 %105, 1
  br i1 %107, label %108, label %131, !prof !1059

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
  %118 = load i32, ptr %117, align 4, !tbaa !431
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
  br i1 %128, label %129, label %110, !prof !401, !llvm.loop !1060

129:                                              ; preds = %110
  %130 = icmp eq i32 %126, 0
  br i1 %130, label %223, label %131, !prof !1061

131:                                              ; preds = %99, %129
  %132 = phi i32 [ %119, %129 ], [ %101, %99 ]
  %133 = phi i32 [ %106, %129 ], [ 1, %99 ]
  %134 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %185, label %136, !prof !1058

136:                                              ; preds = %131
  %137 = icmp eq i8 %105, 0
  br i1 %137, label %165, label %138, !prof !1059

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
  %147 = load i32, ptr %146, align 4, !tbaa !431
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %161, label %149, !prof !1062

149:                                              ; preds = %140
  %150 = icmp eq i32 %142, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %149
  %152 = add i32 %142, -1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !431
  %156 = icmp eq i32 %155, %147
  br i1 %156, label %161, label %157

157:                                              ; preds = %151, %149
  %158 = add i32 %142, 1
  %159 = zext i32 %142 to i64
  %160 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %159
  store i32 %147, ptr %160, align 4, !tbaa !431
  br label %161

161:                                              ; preds = %151, %157, %140
  %162 = phi i32 [ %142, %140 ], [ %158, %157 ], [ %142, %151 ]
  %163 = add nuw nsw i64 %141, 1
  %164 = icmp eq i64 %163, %139
  br i1 %164, label %165, label %140, !prof !1063, !llvm.loop !1064

165:                                              ; preds = %161, %136
  %166 = phi i32 [ 0, %136 ], [ %162, %161 ]
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %167
  store i32 -1, ptr %168, align 4, !tbaa !431
  %169 = icmp slt i32 %84, 0
  br i1 %169, label %176, label %170, !prof !1065

170:                                              ; preds = %165
  %171 = load ptr, ptr %10, align 8, !tbaa !1043
  %172 = load ptr, ptr %28, align 8, !tbaa !1041
  %173 = load ptr, ptr %29, align 8, !tbaa !671
  %174 = tail call zeroext i8 @ira_better_spill_reload_regno_p(ptr noundef nonnull @find_reg.regno_pseudo_regs, ptr noundef nonnull @find_reg.best_regno_pseudo_regs, ptr noundef %171, ptr noundef %172, ptr noundef %173) #22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %223, label %176, !prof !1066

176:                                              ; preds = %170, %165
  br label %177

177:                                              ; preds = %176, %177
  %178 = phi i32 [ %184, %177 ], [ 0, %176 ]
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [53 x i32], ptr @find_reg.regno_pseudo_regs, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !431
  %182 = getelementptr inbounds [53 x i32], ptr @find_reg.best_regno_pseudo_regs, i64 0, i64 %179
  store i32 %181, ptr %182, align 4, !tbaa !431
  %183 = icmp slt i32 %181, 0
  %184 = add i32 %178, 1
  br i1 %183, label %223, label %177, !prof !771

185:                                              ; preds = %131
  %186 = load ptr, ptr %10, align 8, !tbaa !1043
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
  %199 = load ptr, ptr %28, align 8, !tbaa !1041
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
  %217 = load i32, ptr %216, align 4, !tbaa !431
  %218 = sext i32 %84 to i64
  %219 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !431
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
  br i1 %228, label %229, label %81, !prof !1067, !llvm.loop !1068

229:                                              ; preds = %223
  store i32 %224, ptr %3, align 4, !tbaa !431
  %230 = icmp eq i32 %225, -1
  br i1 %230, label %292, label %231, !prof !772

231:                                              ; preds = %229
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234, !prof !771

234:                                              ; preds = %231
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %232, ptr noundef nonnull @.str.10, i32 noundef %225, i32 noundef %8) #23
  br label %236

236:                                              ; preds = %234, %231
  %237 = sext i32 %225 to i64
  %238 = load i32, ptr %27, align 4, !tbaa !853
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %237, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !397
  %242 = zext i8 %241 to i32
  %243 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 6
  store i32 %242, ptr %243, align 8, !tbaa !1039
  %244 = getelementptr inbounds %struct.reload, ptr @rld, i64 %9, i32 10
  store i32 %225, ptr %244, align 8, !tbaa !1038
  %245 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %245, i32 noundef 53, ptr noundef nonnull %3) #23
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !429
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %253, label %248, !prof !1069

248:                                              ; preds = %236, %248
  %249 = load i32, ptr %243, align 8, !tbaa !1039
  %250 = load i32, ptr %3, align 4, !tbaa !431
  tail call fastcc void @count_spilled_pseudo(i32 noundef %225, i32 noundef %249, i32 noundef %250) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !429
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %248, !prof !401, !llvm.loop !1070

253:                                              ; preds = %248, %236
  %254 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %254, i32 noundef 53, ptr noundef nonnull %3) #23
  %255 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !429
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %260, !prof !1071

257:                                              ; preds = %260, %253
  %258 = load i32, ptr %243, align 8, !tbaa !1039
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %292, label %265, !prof !1071

260:                                              ; preds = %253, %260
  %261 = load i32, ptr %243, align 8, !tbaa !1039
  %262 = load i32, ptr %3, align 4, !tbaa !431
  tail call fastcc void @count_spilled_pseudo(i32 noundef %225, i32 noundef %261, i32 noundef %262) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %263 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !429
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %257, label %260, !prof !1072, !llvm.loop !1073

265:                                              ; preds = %257, %284
  %266 = phi i64 [ %288, %284 ], [ 0, %257 ]
  %267 = trunc i64 %266 to i32
  %268 = add i32 %225, %267
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !431
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273, !prof !771

273:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2020, ptr noundef nonnull @.str.2) #22
  br label %274

274:                                              ; preds = %265, %273
  %275 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %269
  %276 = load i32, ptr %275, align 4, !tbaa !431
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278, !prof !771

278:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2021, ptr noundef nonnull @.str.2) #22
  br label %279

279:                                              ; preds = %274, %278
  %280 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %269
  %281 = load i32, ptr %280, align 4, !tbaa !431
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %284, label %283, !prof !771

283:                                              ; preds = %279
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2022, ptr noundef nonnull @.str.2) #22
  br label %284

284:                                              ; preds = %279, %283
  %285 = shl nuw i64 1, %269
  %286 = load i64, ptr @used_spill_regs_local, align 8, !tbaa !449
  %287 = or i64 %286, %285
  store i64 %287, ptr @used_spill_regs_local, align 8, !tbaa !449
  %288 = add nuw nsw i64 %266, 1
  %289 = load i32, ptr %243, align 8, !tbaa !1039
  %290 = zext i32 %289 to i64
  %291 = icmp ult i64 %288, %290
  br i1 %291, label %265, label %292, !prof !1071, !llvm.loop !1074

292:                                              ; preds = %284, %257, %229
  %293 = phi i32 [ 0, %229 ], [ 1, %257 ], [ 1, %284 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %293
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spill_failure(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !1075 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !397
  %6 = tail call i32 @asm_noperands(ptr noundef %5) #22
  %7 = icmp sgt i32 %6, -1
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !417
  br i1 %7, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %10) #22
  br label %20

12:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef %10) #22
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 8, !tbaa !397
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.13, i32 noundef %16) #23
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !417
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
define internal fastcc void @count_pseudo(i32 noundef %0) unnamed_addr #0 !prof !1076 !PGOFuncName !1077 {
  %2 = load ptr, ptr @reg_info_p, align 8, !tbaa !417
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.reg_info_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !1078
  %6 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %7 = getelementptr inbounds i16, ptr %6, i64 %3
  %8 = load i16, ptr %7, align 2, !tbaa !432
  %9 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @pseudos_counted, i32 noundef %0) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50, !prof !1080

11:                                               ; preds = %1
  %12 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @spilled_pseudos, i32 noundef %0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50, !prof !1081

14:                                               ; preds = %11
  %15 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %16 = icmp ne i8 %15, 0
  %17 = icmp slt i16 %8, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %50, label %19, !prof !1082

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @pseudos_counted, i32 noundef %0) #22
  %21 = icmp sgt i16 %8, -1
  br i1 %21, label %23, label %22, !prof !1083

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1796, ptr noundef nonnull @.str.2) #22
  br label %23

23:                                               ; preds = %19, %22
  %24 = sext i16 %8 to i64
  %25 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !431
  %27 = add nsw i32 %26, %5
  store i32 %27, ptr %25, align 4, !tbaa !431
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %29 = getelementptr inbounds ptr, ptr %28, i64 %3
  %30 = load ptr, ptr %29, align 8, !tbaa !417
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %24, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !397
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38, !prof !1084

38:                                               ; preds = %23
  %39 = zext i8 %36 to i64
  %40 = sext i16 %8 to i64
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ %39, %38 ], [ %43, %41 ]
  %43 = add nsw i64 %42, -1
  %44 = add nsw i64 %43, %40
  %45 = getelementptr inbounds [53 x i32], ptr @hard_regno_to_pseudo_regno, i64 0, i64 %44
  store i32 %0, ptr %45, align 4, !tbaa !431
  %46 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !431
  %48 = add nsw i32 %47, %5
  store i32 %48, ptr %46, align 4, !tbaa !431
  %49 = icmp ugt i64 %42, 1
  br i1 %49, label %41, label %50, !prof !1084, !llvm.loop !1085

50:                                               ; preds = %41, %23, %1, %11, %14
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reloads_conflict(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !1086 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 17
  %6 = load i32, ptr %5, align 4, !tbaa !852
  %7 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !851
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !851
  %11 = icmp eq i32 %6, 9
  br i1 %11, label %88, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !852
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
  %60 = tail call fastcc zeroext i8 @reloads_unique_chain_p(i32 noundef %0, i32 noundef %1) #23, !range !429
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
define internal fastcc void @count_spilled_pseudo(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1052 !PGOFuncName !1087 {
  %4 = load ptr, ptr @reg_info_p, align 8, !tbaa !417
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.reg_info_t, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !1078
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %9 = getelementptr inbounds i16, ptr %8, i64 %5
  %10 = load i16, ptr %9, align 2, !tbaa !432
  %11 = sext i16 %10 to i64
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %13 = getelementptr inbounds ptr, ptr %12, i64 %5
  %14 = load ptr, ptr %13, align 8, !tbaa !417
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !397
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
  %23 = icmp ne i8 %22, 0
  %24 = icmp slt i16 %10, 0
  %25 = and i1 %24, %23
  br i1 %25, label %62, label %26, !prof !1088

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
  br i1 %35, label %36, label %62, !prof !1089

36:                                               ; preds = %26
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @spilled_pseudos, i32 noundef %2) #22
  %38 = getelementptr inbounds [53 x i32], ptr @spill_add_cost, i64 0, i64 %11
  %39 = load i32, ptr %38, align 4, !tbaa !431
  %40 = sub nsw i32 %39, %7
  store i32 %40, ptr %38, align 4, !tbaa !431
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %50, i8 -1, i64 %52, i1 false), !tbaa !431
  %53 = sext i16 %10 to i64
  br label %54

54:                                               ; preds = %42, %54
  %55 = phi i64 [ %51, %42 ], [ %56, %54 ]
  %56 = add nsw i64 %55, -1
  %57 = add nsw i64 %56, %53
  %58 = getelementptr inbounds [53 x i32], ptr @spill_cost, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !431
  %60 = sub nsw i32 %59, %7
  store i32 %60, ptr %58, align 4, !tbaa !431
  %61 = icmp ugt i64 %55, 1
  br i1 %61, label %54, label %62, !llvm.loop !1090

62:                                               ; preds = %54, %36, %26, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reloads_unique_chain_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !1091 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1043
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1043
  %11 = icmp eq ptr %10, null
  br i1 %11, label %76, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1041
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %76

16:                                               ; preds = %12
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1041
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !851
  %23 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !851
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
  %40 = load ptr, ptr %4, align 8, !tbaa !1043
  %41 = load ptr, ptr %9, align 8, !tbaa !1043
  %42 = tail call i32 @reg_mentioned_p(ptr noundef %40, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8, !tbaa !1043
  %46 = load ptr, ptr %4, align 8, !tbaa !1043
  %47 = tail call i32 @reg_mentioned_p(ptr noundef %45, ptr noundef %46) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %44, %39
  %50 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  %63 = load ptr, ptr %62, align 8, !tbaa !1043
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8, !tbaa !1043
  %67 = tail call i32 @reg_mentioned_p(ptr noundef %66, ptr noundef nonnull %63) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %71

71:                                               ; preds = %69, %55, %61
  %72 = phi i32 [ %70, %69 ], [ %56, %55 ], [ %56, %61 ]
  %73 = add nuw nsw i64 %57, 1
  %74 = sext i32 %72 to i64
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %55, label %76, !llvm.loop !1092

76:                                               ; preds = %65, %71, %49, %20, %26, %29, %34, %44, %12, %16, %2, %7
  %77 = phi i8 [ 0, %7 ], [ 0, %2 ], [ 0, %16 ], [ 0, %12 ], [ 0, %44 ], [ 0, %34 ], [ 0, %29 ], [ 0, %26 ], [ 0, %20 ], [ 1, %49 ], [ 0, %65 ], [ 1, %71 ]
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gen_reload_chain_without_interm_reg_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !1093 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = tail call ptr @get_last_insn() #22
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !1043
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1043
  %11 = tail call i32 @reg_mentioned_p(ptr noundef %7, ptr noundef %10) #22
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %1, i32 %0
  %14 = select i1 %12, i32 %0, i32 %1
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !1043
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !1043
  %21 = tail call i32 @reg_mentioned_p(ptr noundef %17, ptr noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5254, ptr noundef nonnull @.str.2) #22
  br label %24

24:                                               ; preds = %2, %23
  %25 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !1038
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !1038
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5256, ptr noundef nonnull @.str.2) #22
  br label %33

33:                                               ; preds = %24, %28, %32
  %34 = phi i32 [ %30, %28 ], [ %30, %32 ], [ %26, %24 ]
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %18, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !853
  %37 = tail call ptr @gen_rtx_REG(i32 noundef %36, i32 noundef %34) #22
  %38 = load ptr, ptr %19, align 8, !tbaa !1043
  store ptr %38, ptr %3, align 8, !tbaa !417
  %39 = load ptr, ptr %16, align 8, !tbaa !1043
  %40 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !853
  %42 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %34) #22
  call fastcc void @substitute(ptr noundef nonnull %3, ptr noundef %39, ptr noundef %42) #23
  %43 = load ptr, ptr %3, align 8, !tbaa !417
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 39
  br i1 %46, label %47, label %69

47:                                               ; preds = %33
  %48 = lshr i32 %44, 16
  %49 = and i32 %48, 255
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !397
  %53 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !397
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !397
  %61 = icmp ugt i8 %52, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %47
  %63 = call ptr @gen_lowpart_common(i32 noundef %57, ptr noundef %37) #22
  %64 = icmp eq ptr %63, null
  %65 = load ptr, ptr %3, align 8, !tbaa !417
  br i1 %64, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !397
  store ptr %68, ptr %3, align 8, !tbaa !417
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
  %77 = load ptr, ptr %76, align 8, !tbaa !397
  %78 = load i32, ptr %77, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %103 [
    i16 37, label %80
    i16 39, label %80
    i16 43, label %80
  ]

80:                                               ; preds = %75, %75, %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !397
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
  %89 = load i32, ptr %88, align 4, !tbaa !431
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
  %113 = load ptr, ptr %16, align 8, !tbaa !1043
  store ptr %113, ptr %112, align 8, !tbaa !417
  %114 = call fastcc i32 @VEC_rtx_p_base_length(ptr noundef %109) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %110, !llvm.loop !1094

116:                                              ; preds = %110, %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %104
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @substitute(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !608 !PGOFuncName !1095 {
  %4 = load ptr, ptr %0, align 8, !tbaa !417
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
  store ptr %2, ptr %0, align 8, !tbaa !417
  br label %53

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !417
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !417
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !397
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %12
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %51
  %25 = phi i64 [ %23, %22 ], [ %26, %51 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds i8, ptr %18, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !397
  switch i8 %28, label %51 [
    i8 69, label %29
    i8 101, label %47
  ]

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !417
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !397
  %34 = load i32, ptr %33, align 8, !tbaa !628
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ %37, %36 ], [ %40, %38 ]
  %40 = add nsw i64 %39, -1
  %41 = load ptr, ptr %0, align 8, !tbaa !417
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %26
  %44 = load ptr, ptr %43, align 8, !tbaa !397
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %40
  tail call fastcc void @substitute(ptr noundef nonnull %45, ptr noundef %1, ptr noundef %2) #23
  %46 = icmp ugt i64 %39, 1
  br i1 %46, label %38, label %51, !llvm.loop !1096

47:                                               ; preds = %24
  %48 = load ptr, ptr %0, align 8, !tbaa !417
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %49, i64 0, i64 %26
  tail call fastcc void @substitute(ptr noundef nonnull %50, ptr noundef %1, ptr noundef %2) #23
  br label %51

51:                                               ; preds = %38, %29, %24, %47
  %52 = icmp sgt i64 %25, 1
  br i1 %52, label %24, label %53, !llvm.loop !1097

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
define internal fastcc i32 @VEC_rtx_p_base_length(ptr noundef readonly %0) unnamed_addr #10 !prof !608 !PGOFuncName !1098 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1099
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_p_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !608 !PGOFuncName !1101 {
  %2 = load i32, ptr %0, align 8, !tbaa !1099
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1099
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !608 !PGOFuncName !1102 {
  tail call fastcc void @VEC_rtx_p_heap_reserve() #23
  %2 = load ptr, ptr @substitute_stack, align 8, !tbaa !417
  tail call fastcc void @VEC_rtx_p_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_p_heap_reserve() unnamed_addr #0 !prof !608 !PGOFuncName !1103 {
  %1 = load ptr, ptr @substitute_stack, align 8, !tbaa !417
  %2 = tail call fastcc i32 @VEC_rtx_p_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #22
  store ptr %5, ptr @substitute_stack, align 8, !tbaa !417
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !608 !PGOFuncName !1104 {
  %3 = load i32, ptr %0, align 8, !tbaa !1099
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1099
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !417
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_p_base_space(ptr noundef readonly %0) unnamed_addr #10 !prof !608 !PGOFuncName !1105 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1106
  %6 = load i32, ptr %0, align 8, !tbaa !1099
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
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #11 !prof !1107 !PGOFuncName !1108 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !417
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1109
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
define internal void @set_initial_eh_label_offset(ptr noundef %0) #0 !prof !608 !PGOFuncName !1111 {
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
define internal void @forget_old_reloads_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !1112 !PGOFuncName !1113 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %82 [
    i16 39, label %8
    i16 37, label %11
  ], !prof !1114

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !397
  br label %4, !llvm.loop !1115

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #23
  %13 = icmp ugt i32 %12, 52
  br i1 %13, label %46, label %14, !prof !1116

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !397
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %49, !prof !1117

22:                                               ; preds = %14
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %82, label %24, !prof !1071

24:                                               ; preds = %22
  %25 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %26 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  br i1 %37, label %38, label %42, !prof !1118

38:                                               ; preds = %30
  %39 = xor i64 %34, -1
  %40 = and i64 %32, %39
  store i64 %40, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %41 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %33
  store ptr null, ptr %41, align 8, !tbaa !417
  br label %42

42:                                               ; preds = %30, %38
  %43 = phi i64 [ %40, %38 ], [ %32, %30 ]
  %44 = add nuw nsw i64 %31, 1
  %45 = icmp eq i64 %44, %29
  br i1 %45, label %46, label %30, !prof !1072, !llvm.loop !1119

46:                                               ; preds = %42, %11
  %47 = phi i8 [ 1, %11 ], [ %20, %42 ]
  %48 = icmp eq ptr %2, null
  br i1 %48, label %54, label %49, !prof !1120

49:                                               ; preds = %14, %46
  %50 = phi i8 [ %47, %46 ], [ %20, %14 ]
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %82, label %52, !prof !1121

52:                                               ; preds = %49
  %53 = zext i8 %50 to i32
  br label %57

54:                                               ; preds = %46
  %55 = zext i8 %47 to i64
  %56 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %63

57:                                               ; preds = %52, %57
  %58 = phi i32 [ %59, %57 ], [ %53, %52 ]
  %59 = add nsw i32 %58, -1
  %60 = add i32 %59, %12
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %60) #22
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %82, label %57, !prof !1122, !llvm.loop !1123

63:                                               ; preds = %54, %79
  %64 = phi i32 [ %56, %54 ], [ %80, %79 ]
  %65 = phi i64 [ %55, %54 ], [ %66, %79 ]
  %66 = add nsw i64 %65, -1
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %64, 0
  %69 = add i32 %12, %67
  br i1 %68, label %74, label %70, !prof !772

70:                                               ; preds = %63
  %71 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %69) #22
  %72 = icmp eq i32 %71, 0
  %73 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br i1 %72, label %74, label %79, !prof !772

74:                                               ; preds = %63, %70
  %75 = phi i32 [ %73, %70 ], [ 0, %63 ]
  %76 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %77 = zext i32 %69 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr null, ptr %78, align 8, !tbaa !417
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %75, %74 ], [ %73, %70 ]
  %81 = icmp eq i32 %67, 0
  br i1 %81, label %82, label %63, !prof !1072, !llvm.loop !1124

82:                                               ; preds = %4, %57, %79, %22, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_reload_regs(ptr noundef %0) unnamed_addr #0 !prof !983 !PGOFuncName !1125 {
  %2 = alloca [180 x ptr], align 16
  %3 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !671
  call void @llvm.lifetime.start.p0(i64 1440, ptr nonnull %2) #24
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55, !prof !1036

7:                                                ; preds = %1, %43
  %8 = phi i64 [ %47, %43 ], [ 0, %1 ]
  %9 = phi i32 [ %45, %43 ], [ 1, %1 ]
  %10 = phi i32 [ %44, %43 ], [ 0, %1 ]
  %11 = trunc i64 %8 to i16
  %12 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %8
  store i16 %11, ptr %12, align 2, !tbaa !432
  %13 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !849
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !1037

16:                                               ; preds = %7
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %23, !prof !1126

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #23
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %25, label %23, !prof !1126

23:                                               ; preds = %20, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5984, ptr noundef nonnull @.str.2) #22
  %24 = load ptr, ptr %13, align 8, !tbaa !849
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %14, %20 ], [ %24, %23 ]
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #23
  br label %28

28:                                               ; preds = %7, %25
  %29 = phi i32 [ %27, %25 ], [ -1, %7 ]
  %30 = phi ptr [ %26, %25 ], [ null, %7 ]
  %31 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %8
  store i32 %29, ptr %31, align 4, !tbaa !431
  %32 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !1039
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %43, !prof !768

35:                                               ; preds = %28
  %36 = tail call i32 @llvm.umax.i32(i32 %33, i32 %9)
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !1046
  %39 = sext i32 %38 to i64
  %40 = sext i32 %10 to i64
  %41 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_superunion, i64 0, i64 %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !431
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ %42, %35 ], [ %10, %28 ]
  %45 = phi i32 [ %36, %35 ], [ %9, %28 ]
  %46 = getelementptr inbounds [180 x ptr], ptr %2, i64 0, i64 %8
  store ptr %30, ptr %46, align 8, !tbaa !417
  %47 = add nuw nsw i64 %8, 1
  %48 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %7, label %51, !prof !695, !llvm.loop !1127

51:                                               ; preds = %43
  %52 = icmp sgt i32 %48, 1
  br i1 %52, label %53, label %55, !prof !1128

53:                                               ; preds = %51
  %54 = zext nneg i32 %48 to i64
  tail call void @spec_qsort(ptr noundef nonnull @reload_order, i64 noundef %54, i64 noundef 2, ptr noundef nonnull @reload_reg_class_lower) #22
  br label %55

55:                                               ; preds = %1, %53, %51
  %56 = phi i32 [ %45, %53 ], [ %45, %51 ], [ 1, %1 ]
  %57 = phi i32 [ %44, %53 ], [ %44, %51 ], [ 0, %1 ]
  %58 = load i32, ptr @optimize, align 4, !tbaa !431
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  br label %64

61:                                               ; preds = %771
  %62 = add nsw i32 %65, -1
  %63 = icmp slt i32 %65, 1
  br i1 %63, label %775, label %64, !prof !695, !llvm.loop !1129

64:                                               ; preds = %55, %61
  %65 = phi i32 [ %60, %55 ], [ %62, %61 ]
  call fastcc void @choose_reload_regs_init(ptr noundef %0, ptr noundef nonnull %2) #23
  %66 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %771, !prof !1036

68:                                               ; preds = %64
  %69 = icmp eq i32 %65, 0
  br label %72

70:                                               ; preds = %721
  %71 = icmp sgt i32 %723, 0
  br i1 %71, label %726, label %771, !prof !731

72:                                               ; preds = %68, %721
  %73 = phi i64 [ 0, %68 ], [ %722, %721 ]
  %74 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !432
  %76 = sext i16 %75 to i32
  %77 = sext i16 %75 to i64
  %78 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77
  %79 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !1041
  %81 = icmp eq ptr %80, null
  %82 = load ptr, ptr %78, align 8, !tbaa !1043
  %83 = icmp eq ptr %82, null
  br i1 %81, label %84, label %91, !prof !1042

84:                                               ; preds = %72
  br i1 %83, label %85, label %92, !prof !1044

85:                                               ; preds = %84
  %86 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %87 = load i8, ptr %86, align 8
  %88 = and i8 %87, 4
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i1 true, i1 %69
  br i1 %90, label %721, label %114, !prof !1130

91:                                               ; preds = %72
  br i1 %83, label %113, label %92, !prof !1131

92:                                               ; preds = %84, %91
  %93 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !849
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96, !prof !1132

96:                                               ; preds = %92
  %97 = tail call i32 @rtx_equal_p(ptr noundef nonnull %82, ptr noundef nonnull %94) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %721, !prof !1126

99:                                               ; preds = %96
  %100 = load ptr, ptr %79, align 8, !tbaa !1041
  %101 = load ptr, ptr %93, align 8, !tbaa !849
  %102 = tail call i32 @rtx_equal_p(ptr noundef %100, ptr noundef %101) #22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104, !prof !1126

104:                                              ; preds = %99
  %105 = load ptr, ptr %78, align 8, !tbaa !1043
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 43
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = tail call i32 @true_regnum(ptr noundef nonnull %105) #22
  %111 = icmp slt i32 %110, 53
  %112 = or i1 %69, %111
  br i1 %112, label %721, label %114, !prof !1130

113:                                              ; preds = %104, %99, %92, %91
  br i1 %69, label %721, label %114, !prof !768

114:                                              ; preds = %85, %109, %113
  %115 = load ptr, ptr %78, align 8, !tbaa !1043
  %116 = icmp eq ptr %115, null
  br i1 %116, label %485, label %117, !prof !1133

117:                                              ; preds = %114
  %118 = load i32, ptr %115, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 37
  br i1 %120, label %121, label %123, !prof !1134

121:                                              ; preds = %117
  %122 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %115) #23
  br label %146

123:                                              ; preds = %117
  %124 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !1135
  %126 = load i32, ptr %125, align 8
  %127 = trunc i32 %126 to i16
  switch i16 %127, label %453 [
    i16 37, label %128
    i16 39, label %130
  ], !prof !1136

128:                                              ; preds = %123
  %129 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %125) #23
  br label %146

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !397
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 37
  br i1 %135, label %136, label %453

136:                                              ; preds = %130
  %137 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %132) #23
  %138 = icmp slt i32 %137, 53
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = tail call i32 @subreg_regno(ptr noundef nonnull %125) #22
  %141 = load ptr, ptr %124, align 8, !tbaa !1135
  %142 = load i32, ptr %141, align 8
  br label %146

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load i32, ptr %144, align 8, !tbaa !397
  br label %150

146:                                              ; preds = %139, %121, %128
  %147 = phi i32 [ %118, %121 ], [ %126, %128 ], [ %142, %139 ]
  %148 = phi i32 [ %122, %121 ], [ %129, %128 ], [ %140, %139 ]
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %453, !prof !1137

150:                                              ; preds = %143, %146
  %151 = phi i32 [ %126, %143 ], [ %147, %146 ]
  %152 = phi i32 [ %145, %143 ], [ 0, %146 ]
  %153 = phi i32 [ %137, %143 ], [ %148, %146 ]
  %154 = lshr i32 %151, 16
  %155 = and i32 %154, 255
  %156 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %157 = zext nneg i32 %153 to i64
  %158 = getelementptr inbounds ptr, ptr %156, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !417
  %160 = icmp eq ptr %159, null
  br i1 %160, label %453, label %161, !prof !561

161:                                              ; preds = %150
  %162 = load i32, ptr %159, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %159) #23
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !431
  %169 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %164, i32 noundef %155, i32 noundef %168) #22
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %453, !prof !560

171:                                              ; preds = %161
  %172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !1046
  %174 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %175 = getelementptr inbounds ptr, ptr %174, i64 %157
  %176 = load ptr, ptr %175, align 8, !tbaa !417
  %177 = tail call fastcc i32 @rhs_regno(ptr noundef %176) #23
  %178 = load i32, ptr %176, align 8
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  %181 = tail call i32 @subreg_regno_offset(i32 noundef %177, i32 noundef %180, i32 noundef %152, i32 noundef %155) #22
  %182 = add i32 %181, %177
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !431
  %186 = icmp eq i32 %152, 0
  br i1 %186, label %200, label %187, !prof !560

187:                                              ; preds = %171
  %188 = zext nneg i32 %155 to i64
  %189 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !397
  %191 = zext i8 %190 to i32
  %192 = add i32 %152, %191
  %193 = shl i32 %192, 3
  %194 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %188
  %195 = load i8, ptr %194, align 1, !tbaa !397
  %196 = icmp eq i8 %195, 3
  %197 = select i1 %196, i8 2, i8 %195
  %198 = zext i8 %197 to i32
  %199 = tail call i32 @smallest_mode_for_size(i32 noundef %193, i32 noundef %198) #22
  br label %200

200:                                              ; preds = %171, %187
  %201 = phi i32 [ %199, %187 ], [ %155, %171 ]
  %202 = load i32, ptr %176, align 8
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !397
  %208 = zext i32 %201 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !397
  %211 = icmp ult i8 %207, %210
  br i1 %211, label %453, label %212, !prof !561

212:                                              ; preds = %200
  %213 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %183
  %214 = load i32, ptr %213, align 4, !tbaa !431
  %215 = icmp eq i32 %214, %153
  br i1 %215, label %216, label %453, !prof !1138

216:                                              ; preds = %212
  %217 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %218 = zext nneg i32 %182 to i64
  %219 = shl nuw i64 1, %218
  %220 = and i64 %217, %219
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %453, label %222, !prof !1139

222:                                              ; preds = %216
  %223 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 5
  %224 = load i32, ptr %223, align 4, !tbaa !853
  %225 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %182, i32 noundef %224) #22
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %453, label %227

227:                                              ; preds = %222
  %228 = sext i32 %173 to i64
  %229 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %228
  %230 = load i64, ptr %229, align 8, !tbaa !449
  %231 = and i64 %230, %219
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = tail call i32 @ix86_register_move_cost(i32 noundef %155, i32 noundef %185, i32 noundef %173) #22
  %235 = tail call i32 @ix86_memory_move_cost(i32 noundef %155, i32 noundef %173, i32 noundef 1) #22
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %453

237:                                              ; preds = %233
  %238 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %173, i32 noundef %155, ptr noundef nonnull %176) #22
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %453

240:                                              ; preds = %237
  %241 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %185, i32 noundef %173, i32 noundef %155, i32 noundef 1) #22
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %453

243:                                              ; preds = %240, %227
  %244 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %245 = load i32, ptr %244, align 8, !tbaa !1039
  %246 = icmp eq i32 %245, %56
  br i1 %246, label %253, label %247

247:                                              ; preds = %243
  %248 = sext i32 %57 to i64
  %249 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !449
  %251 = and i64 %250, %219
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %453

253:                                              ; preds = %247, %243
  %254 = load i32, ptr %223, align 4, !tbaa !853
  %255 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 12
  %256 = load i32, ptr %255, align 8, !tbaa !851
  %257 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %258 = load i32, ptr %257, align 4, !tbaa !852
  %259 = load ptr, ptr %78, align 8, !tbaa !1043
  %260 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !417
  %261 = tail call fastcc i32 @free_for_value_p(i32 noundef %182, i32 noundef %254, i32 noundef %256, i32 noundef %258, ptr noundef %259, ptr noundef %260, i32 noundef %76, i32 noundef 1) #23, !range !496
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %453, label %263

263:                                              ; preds = %253
  %264 = load i32, ptr %223, align 4, !tbaa !853
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %183, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !397
  %268 = zext i8 %267 to i32
  %269 = icmp ugt i8 %267, 1
  br i1 %269, label %270, label %288

270:                                              ; preds = %263
  %271 = load i64, ptr @reg_reloaded_valid, align 8
  %272 = zext i8 %267 to i64
  br label %273

273:                                              ; preds = %270, %283
  %274 = phi i64 [ 1, %270 ], [ %284, %283 ]
  %275 = add nsw i64 %274, %183
  %276 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !431
  %278 = icmp eq i32 %277, %153
  br i1 %278, label %279, label %286

279:                                              ; preds = %273
  %280 = shl nuw i64 1, %275
  %281 = and i64 %271, %280
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  %284 = add nuw nsw i64 %274, 1
  %285 = icmp eq i64 %284, %272
  br i1 %285, label %291, label %273, !llvm.loop !1140

286:                                              ; preds = %273, %279
  %287 = trunc i64 %274 to i32
  br label %288

288:                                              ; preds = %286, %263
  %289 = phi i32 [ 1, %263 ], [ %287, %286 ]
  %290 = icmp eq i32 %289, %268
  br i1 %290, label %291, label %453

291:                                              ; preds = %283, %288
  %292 = load i32, ptr %176, align 8
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 255
  %295 = icmp eq i32 %294, %155
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = tail call ptr @gen_rtx_REG(i32 noundef %155, i32 noundef %182) #22
  br label %298

298:                                              ; preds = %291, %296
  %299 = phi ptr [ %297, %296 ], [ %176, %291 ]
  %300 = icmp eq i8 %267, 0
  br i1 %300, label %333, label %301

301:                                              ; preds = %298
  %302 = zext i8 %267 to i64
  %303 = load i32, ptr %172, align 8, !tbaa !1046
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %304
  %306 = load i64, ptr %305, align 8, !tbaa !449
  %307 = add nuw nsw i64 %302, 3
  %308 = and i64 %307, 508
  %309 = add nsw i64 %302, -1
  %310 = insertelement <4 x i64> poison, i64 %309, i64 0
  %311 = shufflevector <4 x i64> %310, <4 x i64> poison, <4 x i32> zeroinitializer
  %312 = insertelement <4 x i64> poison, i64 %183, i64 0
  %313 = shufflevector <4 x i64> %312, <4 x i64> poison, <4 x i32> zeroinitializer
  %314 = insertelement <4 x i64> poison, i64 %306, i64 0
  %315 = shufflevector <4 x i64> %314, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %316

316:                                              ; preds = %316, %301
  %317 = phi i64 [ 0, %301 ], [ %326, %316 ]
  %318 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %301 ], [ %327, %316 ]
  %319 = phi <4 x i32> [ zeroinitializer, %301 ], [ %325, %316 ]
  %320 = add nsw <4 x i64> %318, %313
  %321 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %320
  %322 = and <4 x i64> %315, %321
  %323 = icmp eq <4 x i64> %322, zeroinitializer
  %324 = zext <4 x i1> %323 to <4 x i32>
  %325 = or <4 x i32> %319, %324
  %326 = add i64 %317, 4
  %327 = add <4 x i64> %318, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %326, %308
  br i1 %328, label %329, label %316, !llvm.loop !1141

329:                                              ; preds = %316
  %330 = icmp ugt <4 x i64> %318, %311
  %331 = select <4 x i1> %330, <4 x i32> %319, <4 x i32> %325
  %332 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %331)
  br label %333

333:                                              ; preds = %329, %298
  %334 = phi i32 [ 0, %298 ], [ %332, %329 ]
  %335 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !431
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %333, %347
  %338 = phi i64 [ %348, %347 ], [ 0, %333 ]
  %339 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %340 = getelementptr inbounds ptr, ptr %339, i64 %157
  %341 = load ptr, ptr %340, align 8, !tbaa !417
  %342 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %338
  %343 = load ptr, ptr %342, align 8, !tbaa !417
  %344 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %341, ptr noundef %343) #22
  %345 = icmp eq i32 %344, 0
  %346 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !431
  br i1 %345, label %347, label %351

347:                                              ; preds = %337
  %348 = add nuw nsw i64 %338, 1
  %349 = sext i32 %346 to i64
  %350 = icmp slt i64 %348, %349
  br i1 %350, label %337, label %351, !llvm.loop !1142

351:                                              ; preds = %337, %347
  %352 = phi i64 [ %348, %347 ], [ %338, %337 ]
  %353 = trunc i64 %352 to i32
  br label %354

354:                                              ; preds = %351, %333
  %355 = phi i32 [ %335, %333 ], [ %346, %351 ]
  %356 = phi i32 [ 0, %333 ], [ %353, %351 ]
  %357 = icmp eq i32 %356, %355
  br i1 %357, label %358, label %408

358:                                              ; preds = %354
  %359 = load i32, ptr %223, align 4, !tbaa !853
  %360 = load i32, ptr %255, align 8, !tbaa !851
  %361 = load i32, ptr %257, align 4, !tbaa !852
  %362 = load ptr, ptr %78, align 8, !tbaa !1043
  %363 = load ptr, ptr %79, align 8, !tbaa !1041
  %364 = tail call fastcc i32 @free_for_value_p(i32 noundef %182, i32 noundef %359, i32 noundef %360, i32 noundef %361, ptr noundef %362, ptr noundef %363, i32 noundef %76, i32 noundef 1) #23, !range !496
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %408, label %366

366:                                              ; preds = %358
  %367 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !449
  %368 = and i64 %367, %219
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %79, align 8, !tbaa !1041
  %372 = icmp eq ptr %371, null
  br i1 %372, label %377, label %373

373:                                              ; preds = %370
  %374 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !449
  %375 = and i64 %374, %219
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %408, label %377

377:                                              ; preds = %373, %370, %366
  %378 = icmp eq i32 %182, 6
  %379 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %380 = icmp ne i8 %379, 0
  %381 = select i1 %378, i1 %380, i1 false
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load ptr, ptr %79, align 8, !tbaa !1041
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %408

385:                                              ; preds = %382, %377
  %386 = load i32, ptr %223, align 4, !tbaa !853
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !397
  %390 = zext nneg i32 %155 to i64
  %391 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !397
  %393 = icmp ugt i8 %389, %392
  %394 = icmp ne i32 %334, 0
  %395 = select i1 %393, i1 true, i1 %394
  br i1 %395, label %408, label %396

396:                                              ; preds = %385
  %397 = load ptr, ptr %79, align 8, !tbaa !1041
  %398 = icmp eq ptr %397, null
  br i1 %398, label %418, label %399

399:                                              ; preds = %396
  %400 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  %401 = load ptr, ptr %400, align 8, !tbaa !849
  %402 = icmp eq ptr %401, null
  br i1 %402, label %418, label %403

403:                                              ; preds = %399
  %404 = tail call i32 @rtx_equal_p(ptr noundef nonnull %397, ptr noundef nonnull %401) #22
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %403
  %407 = load i32, ptr %223, align 4, !tbaa !853
  br label %418

408:                                              ; preds = %403, %385, %382, %373, %358, %354
  %409 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %410 = load i8, ptr %409, align 8
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %453

413:                                              ; preds = %408
  %414 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %77
  store ptr %299, ptr %414, align 8, !tbaa !417
  %415 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %183
  %416 = load ptr, ptr %415, align 8, !tbaa !417
  %417 = getelementptr inbounds [180 x ptr], ptr @reload_inheritance_insn, i64 0, i64 %77
  store ptr %416, ptr %417, align 8, !tbaa !417
  br label %453

418:                                              ; preds = %406, %399, %396
  %419 = phi i32 [ %407, %406 ], [ %386, %399 ], [ %386, %396 ]
  %420 = load i32, ptr %255, align 8, !tbaa !851
  %421 = load i32, ptr %257, align 4, !tbaa !852
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %182, i32 noundef %420, i32 noundef %421, i32 noundef %419) #23
  %422 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  store ptr %299, ptr %422, align 8, !tbaa !849
  %423 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %77
  store i8 1, ptr %423, align 1, !tbaa !397
  %424 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %183
  %425 = load ptr, ptr %424, align 8, !tbaa !417
  %426 = getelementptr inbounds [180 x ptr], ptr @reload_inheritance_insn, i64 0, i64 %77
  store ptr %425, ptr %426, align 8, !tbaa !417
  %427 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %77
  store i32 %182, ptr %427, align 4, !tbaa !431
  br i1 %300, label %453, label %428

428:                                              ; preds = %418
  %429 = zext i8 %267 to i64
  %430 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !449
  %431 = add nuw nsw i64 %429, 1
  %432 = and i64 %431, 510
  %433 = add nsw i64 %429, -1
  %434 = insertelement <2 x i64> poison, i64 %433, i64 0
  %435 = shufflevector <2 x i64> %434, <2 x i64> poison, <2 x i32> zeroinitializer
  %436 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %430, i64 0
  %437 = insertelement <2 x i64> poison, i64 %183, i64 0
  %438 = shufflevector <2 x i64> %437, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %439

439:                                              ; preds = %439, %428
  %440 = phi i64 [ 0, %428 ], [ %446, %439 ]
  %441 = phi <2 x i64> [ <i64 0, i64 1>, %428 ], [ %447, %439 ]
  %442 = phi <2 x i64> [ %436, %428 ], [ %445, %439 ]
  %443 = add nsw <2 x i64> %441, %438
  %444 = shl nuw <2 x i64> <i64 1, i64 1>, %443
  %445 = or <2 x i64> %442, %444
  %446 = add i64 %440, 2
  %447 = add <2 x i64> %441, <i64 2, i64 2>
  %448 = icmp eq i64 %446, %432
  br i1 %448, label %449, label %439, !llvm.loop !1143

449:                                              ; preds = %439
  %450 = icmp ugt <2 x i64> %441, %435
  %451 = select <2 x i1> %450, <2 x i64> %442, <2 x i64> %445
  %452 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %451)
  store i64 %452, ptr @reload_reg_used_for_inherit, align 8, !tbaa !449
  br label %453

453:                                              ; preds = %418, %449, %123, %130, %200, %212, %216, %222, %233, %237, %240, %247, %253, %413, %408, %288, %161, %150, %146
  %454 = load ptr, ptr %78, align 8, !tbaa !1043
  %455 = icmp eq ptr %454, null
  br i1 %455, label %485, label %456, !prof !1144

456:                                              ; preds = %453
  %457 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %77
  %458 = load i8, ptr %457, align 1, !tbaa !397
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %460, label %721, !prof !1145

460:                                              ; preds = %456
  %461 = load ptr, ptr %79, align 8, !tbaa !1041
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %721, !prof !1145

463:                                              ; preds = %460
  %464 = load i32, ptr %454, align 8
  %465 = and i32 %464, 65535
  %466 = zext nneg i32 %465 to i64
  %467 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %466
  %468 = load i32, ptr %467, align 4, !tbaa !431
  %469 = freeze i32 %468
  %470 = icmp eq i32 %469, 9
  br i1 %470, label %473, label %471

471:                                              ; preds = %463
  %472 = trunc i32 %464 to i16
  switch i16 %472, label %721 [
    i16 49, label %473
    i16 43, label %473
    i16 37, label %473
  ]

473:                                              ; preds = %471, %471, %471, %463
  %474 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %475 = load i32, ptr %474, align 8, !tbaa !1039
  %476 = icmp eq i32 %475, %56
  br i1 %476, label %521, label %477, !prof !1145

477:                                              ; preds = %473
  %478 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 2
  %479 = load i32, ptr %478, align 8, !tbaa !1046
  %480 = tail call i32 @reg_classes_intersect_p(i32 noundef %479, i32 noundef %57) #22
  %481 = icmp eq i32 %480, 0
  %482 = load ptr, ptr %78, align 8, !tbaa !1043
  %483 = icmp eq ptr %482, null
  br i1 %481, label %520, label %484

484:                                              ; preds = %477
  br i1 %483, label %485, label %721, !prof !731

485:                                              ; preds = %114, %453, %484
  %486 = load ptr, ptr %79, align 8, !tbaa !1041
  %487 = icmp eq ptr %486, null
  br i1 %487, label %721, label %488, !prof !1146

488:                                              ; preds = %485
  %489 = load i32, ptr %4, align 8
  %490 = and i32 %489, 65535
  %491 = add nsw i32 %490, -7
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %493, label %721, !prof !1147

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %495 = load ptr, ptr %494, align 8, !tbaa !397
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 65535
  %498 = icmp eq i32 %497, 23
  br i1 %498, label %504, label %499, !prof !1148

499:                                              ; preds = %493
  %500 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %495) #22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %721, label %502, !prof !1149

502:                                              ; preds = %499
  %503 = load ptr, ptr %79, align 8, !tbaa !1041
  br label %504

504:                                              ; preds = %502, %493
  %505 = phi ptr [ %503, %502 ], [ %486, %493 ]
  %506 = phi ptr [ %500, %502 ], [ %495, %493 ]
  %507 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !397
  %509 = tail call i32 @rtx_equal_p(ptr noundef %505, ptr noundef %508) #22
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %721, label %511, !prof !1146

511:                                              ; preds = %504
  %512 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1, i32 0, i32 0, i64 1
  %513 = load ptr, ptr %512, align 8, !tbaa !397
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !431
  %519 = icmp eq i32 %518, 9
  br i1 %519, label %521, label %721, !prof !1150

520:                                              ; preds = %477
  br i1 %483, label %721, label %521, !prof !1144

521:                                              ; preds = %473, %511, %520
  %522 = phi ptr [ %482, %520 ], [ %513, %511 ], [ %454, %473 ]
  %523 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 2
  %524 = load i32, ptr %523, align 8, !tbaa !1046
  %525 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 5
  %526 = load i32, ptr %525, align 4, !tbaa !853
  %527 = tail call ptr @find_equiv_reg(ptr noundef nonnull %522, ptr noundef %4, i32 noundef %524, i32 noundef -1, ptr noundef null, i32 noundef 0, i32 noundef %526) #22
  %528 = icmp eq ptr %527, null
  br i1 %528, label %721, label %529, !prof !1151

529:                                              ; preds = %521
  %530 = load i32, ptr %527, align 8
  %531 = trunc i32 %530 to i16
  switch i16 %531, label %537 [
    i16 37, label %532
    i16 39, label %538
  ]

532:                                              ; preds = %529
  %533 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %527) #23
  %534 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %535 = load i32, ptr %534, align 8, !tbaa !1039
  %536 = add i32 %535, %533
  br label %561

537:                                              ; preds = %529
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6322, ptr noundef nonnull @.str.2) #22
  br label %538

538:                                              ; preds = %529, %537
  %539 = tail call i32 @subreg_regno(ptr noundef nonnull %527) #22
  %540 = load i32, ptr %525, align 4, !tbaa !853
  %541 = tail call ptr @gen_rtx_REG(i32 noundef %540, i32 noundef %539) #22
  %542 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 6
  %543 = load i32, ptr %542, align 8, !tbaa !1039
  %544 = add i32 %543, %539
  %545 = icmp sgt i32 %543, 0
  br i1 %545, label %546, label %558

546:                                              ; preds = %538
  %547 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !449
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
  br i1 %557, label %548, label %558, !llvm.loop !1152

558:                                              ; preds = %548, %538
  %559 = phi ptr [ %541, %538 ], [ %555, %548 ]
  %560 = icmp eq ptr %559, null
  br i1 %560, label %721, label %561, !prof !1144

561:                                              ; preds = %532, %558
  %562 = phi i32 [ %536, %532 ], [ %544, %558 ]
  %563 = phi i32 [ %533, %532 ], [ %539, %558 ]
  %564 = phi ptr [ %527, %532 ], [ %559, %558 ]
  %565 = icmp slt i32 %563, %562
  br i1 %565, label %566, label %627

566:                                              ; preds = %561
  %567 = sub i32 %562, %563
  %568 = load i32, ptr %523, align 8, !tbaa !1046
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %569
  %571 = load i64, ptr %570, align 8, !tbaa !449
  %572 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !449
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
  br i1 %602, label %603, label %585, !llvm.loop !1153

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
  %614 = load i32, ptr %525, align 4, !tbaa !853
  %615 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 12
  %616 = load i32, ptr %615, align 8, !tbaa !851
  %617 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %618 = load i32, ptr %617, align 4, !tbaa !852
  %619 = load ptr, ptr %78, align 8, !tbaa !1043
  %620 = load ptr, ptr %79, align 8, !tbaa !1041
  %621 = tail call fastcc i32 @free_for_value_p(i32 noundef %563, i32 noundef %614, i32 noundef %616, i32 noundef %618, ptr noundef %619, ptr noundef %620, i32 noundef %76, i32 noundef 1) #23, !range !496
  %622 = icmp eq i32 %621, 0
  %623 = icmp ne i32 %610, 0
  %624 = select i1 %622, i1 true, i1 %623
  br i1 %624, label %721, label %627, !prof !1154

625:                                              ; preds = %603
  %626 = icmp eq i32 %610, 0
  br i1 %626, label %627, label %721, !prof !1144

627:                                              ; preds = %561, %613, %625
  %628 = load i32, ptr %525, align 4, !tbaa !853
  %629 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %563, i32 noundef %628) #22
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %721, label %631

631:                                              ; preds = %627
  %632 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !431
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %639, label %650

634:                                              ; preds = %639
  %635 = add nuw nsw i64 %640, 1
  %636 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !431
  %637 = sext i32 %636 to i64
  %638 = icmp slt i64 %635, %637
  br i1 %638, label %639, label %650, !llvm.loop !1155

639:                                              ; preds = %631, %634
  %640 = phi i64 [ %635, %634 ], [ 0, %631 ]
  %641 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !417
  %643 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %564, ptr noundef %642) #22
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %634, label %645

645:                                              ; preds = %639
  %646 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %647 = load i8, ptr %646, align 8
  %648 = and i8 %647, 1
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %719, label %721

650:                                              ; preds = %634, %631
  %651 = load i32, ptr %525, align 4, !tbaa !853
  %652 = tail call i32 @regno_clobbered_p(i32 noundef %563, ptr noundef %4, i32 noundef %651, i32 noundef 2) #22
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %662, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %656 = load i32, ptr %655, align 4, !tbaa !852
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
  %658 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
  %659 = load i8, ptr %658, align 8
  %660 = and i8 %659, 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %719, label %721

662:                                              ; preds = %650
  %663 = load i32, ptr %525, align 4, !tbaa !853
  %664 = tail call i32 @regno_clobbered_p(i32 noundef %563, ptr noundef %4, i32 noundef %663, i32 noundef 1) #22
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %674, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %668 = load i32, ptr %667, align 4, !tbaa !852
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
  %670 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 18
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
  %681 = load i32, ptr %525, align 4, !tbaa !853
  %682 = zext i32 %681 to i64
  %683 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %680, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !397
  %685 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 11
  store ptr %564, ptr %685, align 8, !tbaa !849
  %686 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %77
  store i32 %563, ptr %686, align 4, !tbaa !431
  %687 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %77
  store i8 1, ptr %687, align 1, !tbaa !397
  %688 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %689 = zext nneg i32 %563 to i64
  %690 = shl nuw i64 1, %689
  %691 = and i64 %688, %690
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %695

693:                                              ; preds = %679
  %694 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %680
  store ptr null, ptr %694, align 8, !tbaa !417
  br label %695

695:                                              ; preds = %693, %679
  %696 = icmp eq i8 %684, 0
  br i1 %696, label %721, label %697

697:                                              ; preds = %695
  %698 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !449
  %699 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 12
  %700 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %77, i32 17
  %701 = zext i8 %684 to i64
  br label %702

702:                                              ; preds = %697, %715
  %703 = phi i64 [ 0, %697 ], [ %717, %715 ]
  %704 = phi i64 [ %698, %697 ], [ %716, %715 ]
  %705 = add nsw i64 %703, %680
  %706 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %705
  %707 = load i16, ptr %706, align 2, !tbaa !432
  %708 = icmp sgt i16 %707, -1
  br i1 %708, label %709, label %715

709:                                              ; preds = %702
  %710 = load i32, ptr %699, align 8, !tbaa !851
  %711 = load i32, ptr %700, align 4, !tbaa !852
  %712 = load i32, ptr %525, align 4, !tbaa !853
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %563, i32 noundef %710, i32 noundef %711, i32 noundef %712) #23
  %713 = shl nuw i64 1, %705
  %714 = or i64 %704, %713
  store i64 %714, ptr @reload_reg_used_for_inherit, align 8, !tbaa !449
  br label %715

715:                                              ; preds = %702, %709
  %716 = phi i64 [ %704, %702 ], [ %714, %709 ]
  %717 = add nuw nsw i64 %703, 1
  %718 = icmp eq i64 %717, %701
  br i1 %718, label %721, label %702, !llvm.loop !1156

719:                                              ; preds = %669, %657, %645
  %720 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %77
  store ptr %564, ptr %720, align 8, !tbaa !417
  br label %721

721:                                              ; preds = %715, %719, %85, %460, %456, %471, %695, %666, %669, %654, %657, %627, %613, %625, %521, %558, %645, %488, %113, %511, %499, %504, %484, %485, %520, %674, %96, %109
  %722 = add nuw nsw i64 %73, 1
  %723 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %724 = sext i32 %723 to i64
  %725 = icmp slt i64 %722, %724
  br i1 %725, label %72, label %70, !prof !695, !llvm.loop !1157

726:                                              ; preds = %70, %762
  %727 = phi i32 [ %763, %762 ], [ %723, %70 ]
  %728 = phi i64 [ %764, %762 ], [ 0, %70 ]
  %729 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %728
  %730 = load i16, ptr %729, align 2, !tbaa !432
  %731 = sext i16 %730 to i32
  %732 = sext i16 %730 to i64
  %733 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 1
  %734 = load ptr, ptr %733, align 8, !tbaa !1041
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %745, !prof !1042

736:                                              ; preds = %726
  %737 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732
  %738 = load ptr, ptr %737, align 8, !tbaa !1043
  %739 = icmp eq ptr %738, null
  br i1 %739, label %740, label %745, !prof !1044

740:                                              ; preds = %736
  %741 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 18
  %742 = load i8, ptr %741, align 8
  %743 = and i8 %742, 4
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %762, label %745

745:                                              ; preds = %740, %736, %726
  %746 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 11
  %747 = load ptr, ptr %746, align 8, !tbaa !849
  %748 = icmp eq ptr %747, null
  br i1 %748, label %749, label %762, !prof !1037

749:                                              ; preds = %745
  %750 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %732, i32 18
  %751 = load i8, ptr %750, align 8
  %752 = and i8 %751, 1
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %754, label %762, !prof !1158

754:                                              ; preds = %749
  %755 = add nsw i32 %727, -1
  %756 = zext i32 %755 to i64
  %757 = icmp eq i64 %728, %756
  %758 = zext i1 %757 to i32
  %759 = tail call fastcc i32 @allocate_reload_reg(i32 noundef %731, i32 noundef %758) #23
  %760 = icmp eq i32 %759, 0
  %761 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br i1 %760, label %767, label %762

762:                                              ; preds = %754, %745, %749, %740
  %763 = phi i32 [ %727, %745 ], [ %727, %749 ], [ %727, %740 ], [ %761, %754 ]
  %764 = add nuw nsw i64 %728, 1
  %765 = sext i32 %763 to i64
  %766 = icmp slt i64 %764, %765
  br i1 %766, label %726, label %767, !prof !695, !llvm.loop !1159

767:                                              ; preds = %754, %762
  %768 = phi i32 [ %763, %762 ], [ %761, %754 ]
  %769 = phi i64 [ %764, %762 ], [ %728, %754 ]
  %770 = trunc i64 %769 to i32
  br label %771

771:                                              ; preds = %64, %767, %70
  %772 = phi i32 [ %723, %70 ], [ %768, %767 ], [ %66, %64 ]
  %773 = phi i32 [ 0, %70 ], [ %770, %767 ], [ 0, %64 ]
  %774 = icmp eq i32 %773, %772
  br i1 %774, label %834, label %61, !prof !767

775:                                              ; preds = %61
  call fastcc void @choose_reload_regs_init(ptr noundef %0, ptr noundef nonnull %2) #23
  %776 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 9
  %777 = load i32, ptr %776, align 8, !tbaa !726
  %778 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %779 = icmp eq i32 %777, %778
  br i1 %779, label %782, label %780

780:                                              ; preds = %775
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6539, ptr noundef nonnull @.str.2) #22
  %781 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  %789 = load ptr, ptr %786, align 8, !tbaa !986
  %790 = getelementptr inbounds %struct.reload, ptr %789, i64 %788, i32 10
  %791 = load i32, ptr %790, align 8, !tbaa !1038
  %792 = icmp slt i32 %791, 0
  br i1 %792, label %829, label %793

793:                                              ; preds = %787
  %794 = getelementptr inbounds %struct.reload, ptr %789, i64 %788, i32 11
  %795 = load ptr, ptr %794, align 8, !tbaa !849
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %829

797:                                              ; preds = %793
  %798 = getelementptr inbounds %struct.reload, ptr %789, i64 %788, i32 17
  %799 = load i32, ptr %798, align 4, !tbaa !852
  %800 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %788, i32 17
  %801 = load i32, ptr %800, align 4, !tbaa !852
  %802 = icmp eq i32 %799, %801
  br i1 %802, label %804, label %803

803:                                              ; preds = %797
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6545, ptr noundef nonnull @.str.2) #22
  br label %804

804:                                              ; preds = %797, %803
  %805 = load i32, ptr @n_spills, align 4, !tbaa !431
  %806 = icmp sgt i32 %805, 0
  br i1 %806, label %807, label %829

807:                                              ; preds = %804
  %808 = trunc i64 %788 to i32
  br label %809

809:                                              ; preds = %807, %824
  %810 = phi i64 [ 0, %807 ], [ %825, %824 ]
  %811 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %810
  %812 = load i16, ptr %811, align 2, !tbaa !432
  %813 = sext i16 %812 to i32
  %814 = load ptr, ptr %786, align 8, !tbaa !986
  %815 = getelementptr inbounds %struct.reload, ptr %814, i64 %788, i32 10
  %816 = load i32, ptr %815, align 8, !tbaa !1038
  %817 = icmp eq i32 %816, %813
  br i1 %817, label %818, label %824

818:                                              ; preds = %809
  %819 = trunc i64 %810 to i32
  %820 = tail call fastcc i32 @set_reload_reg(i32 noundef %819, i32 noundef %808) #23, !range !496
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %824

822:                                              ; preds = %818
  %823 = load ptr, ptr %3, align 8, !tbaa !671
  tail call fastcc void @failed_reload(ptr noundef %823, i32 noundef %808) #23
  br label %824

824:                                              ; preds = %809, %822, %818
  %825 = add nuw nsw i64 %810, 1
  %826 = load i32, ptr @n_spills, align 4, !tbaa !431
  %827 = sext i32 %826 to i64
  %828 = icmp slt i64 %825, %827
  br i1 %828, label %809, label %829, !llvm.loop !1160

829:                                              ; preds = %824, %804, %787, %793
  %830 = add nuw nsw i64 %788, 1
  %831 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %832 = sext i32 %831 to i64
  %833 = icmp slt i64 %830, %832
  br i1 %833, label %787, label %834, !llvm.loop !1161

834:                                              ; preds = %771, %829, %782
  %835 = phi i32 [ %783, %782 ], [ %831, %829 ], [ %772, %771 ]
  %836 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !431
  %837 = icmp sgt i32 %836, -1
  br i1 %837, label %838, label %842, !prof !1036

838:                                              ; preds = %834, %908
  %839 = phi i32 [ %909, %908 ], [ %835, %834 ]
  %840 = phi i32 [ %911, %908 ], [ %836, %834 ]
  %841 = icmp sgt i32 %839, 0
  br i1 %841, label %847, label %908, !prof !1162

842:                                              ; preds = %908, %834
  %843 = phi i32 [ %835, %834 ], [ %909, %908 ]
  %844 = icmp sgt i32 %843, 0
  br i1 %844, label %845, label %1063, !prof !1036

845:                                              ; preds = %842
  %846 = zext nneg i32 %843 to i64
  br label %914

847:                                              ; preds = %838, %902
  %848 = phi i64 [ %904, %902 ], [ 0, %838 ]
  %849 = phi i32 [ %903, %902 ], [ %840, %838 ]
  %850 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %848
  %851 = load i16, ptr %850, align 2, !tbaa !432
  %852 = sext i16 %851 to i32
  %853 = sext i16 %851 to i64
  %854 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %853
  %855 = load i8, ptr %854, align 1, !tbaa !397
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %861, label %857, !prof !1163

857:                                              ; preds = %847
  %858 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 11
  %859 = load ptr, ptr %858, align 8, !tbaa !849
  %860 = icmp eq ptr %859, null
  br i1 %860, label %861, label %868

861:                                              ; preds = %857, %847
  %862 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %853
  %863 = load ptr, ptr %862, align 8, !tbaa !417
  %864 = icmp eq ptr %863, null
  br i1 %864, label %902, label %865, !prof !1163

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
  %873 = load i32, ptr %872, align 4, !tbaa !853
  %874 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 12
  %875 = load i32, ptr %874, align 8, !tbaa !851
  %876 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 17
  %877 = load i32, ptr %876, align 4, !tbaa !852
  %878 = load ptr, ptr %871, align 8, !tbaa !1043
  %879 = load i8, ptr %854, align 1, !tbaa !397
  %880 = icmp eq i8 %879, 0
  %881 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %853, i32 1
  %882 = select i1 %880, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr %881
  %883 = load ptr, ptr %882, align 8, !tbaa !417
  %884 = tail call fastcc i32 @free_for_value_p(i32 noundef %870, i32 noundef %873, i32 noundef %875, i32 noundef %877, ptr noundef %878, ptr noundef %883, i32 noundef %852, i32 noundef 1) #23, !range !496
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %890

886:                                              ; preds = %868
  %887 = icmp eq i32 %849, 0
  br i1 %887, label %888, label %902

888:                                              ; preds = %886
  store i8 0, ptr %854, align 1, !tbaa !397
  %889 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %853
  store ptr null, ptr %889, align 8, !tbaa !417
  br label %902

890:                                              ; preds = %868
  %891 = load ptr, ptr %871, align 8, !tbaa !1043
  %892 = icmp eq ptr %891, null
  br i1 %892, label %902, label %893

893:                                              ; preds = %890
  %894 = load ptr, ptr %881, align 8, !tbaa !1041
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
  %905 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %906 = sext i32 %905 to i64
  %907 = icmp slt i64 %904, %906
  br i1 %907, label %847, label %908, !prof !1164, !llvm.loop !1165

908:                                              ; preds = %902, %838
  %909 = phi i32 [ %839, %838 ], [ %905, %902 ]
  %910 = phi i32 [ %840, %838 ], [ %903, %902 ]
  %911 = add nsw i32 %910, -1
  %912 = icmp sgt i32 %910, 0
  br i1 %912, label %838, label %842, !prof !1166, !llvm.loop !1167

913:                                              ; preds = %921
  br i1 %844, label %926, label %1063, !prof !731

914:                                              ; preds = %845, %921
  %915 = phi i64 [ 0, %845 ], [ %922, %921 ]
  %916 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %915
  %917 = load ptr, ptr %916, align 8, !tbaa !417
  %918 = icmp eq ptr %917, null
  br i1 %918, label %921, label %919, !prof !767

919:                                              ; preds = %914
  %920 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %915
  store ptr %917, ptr %920, align 8, !tbaa !1043
  br label %921

921:                                              ; preds = %914, %919
  %922 = add nuw nsw i64 %915, 1
  %923 = icmp eq i64 %922, %846
  br i1 %923, label %913, label %914, !prof !1036, !llvm.loop !1168

924:                                              ; preds = %968
  %925 = icmp sgt i32 %969, 0
  br i1 %925, label %973, label %1063, !prof !731

926:                                              ; preds = %913, %968
  %927 = phi i32 [ %969, %968 ], [ %843, %913 ]
  %928 = phi i64 [ %970, %968 ], [ 0, %913 ]
  %929 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928
  %930 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 11
  %931 = load ptr, ptr %930, align 8, !tbaa !849
  %932 = icmp eq ptr %931, null
  br i1 %932, label %968, label %933, !prof !1169

933:                                              ; preds = %926
  %934 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 18
  %935 = load i8, ptr %934, align 8
  %936 = and i8 %935, 1
  %937 = icmp eq i8 %936, 0
  br i1 %937, label %942, label %938, !prof !1170

938:                                              ; preds = %933
  %939 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %928
  %940 = load i8, ptr %939, align 1, !tbaa !397
  %941 = icmp eq i8 %940, 0
  br i1 %941, label %952, label %942, !prof !1126

942:                                              ; preds = %938, %933
  %943 = load ptr, ptr %929, align 8, !tbaa !1043
  %944 = icmp eq ptr %943, null
  br i1 %944, label %945, label %968, !prof !771

945:                                              ; preds = %942
  %946 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 1
  %947 = load ptr, ptr %946, align 8, !tbaa !1041
  %948 = icmp eq ptr %947, null
  %949 = and i8 %935, 4
  %950 = icmp eq i8 %949, 0
  %951 = and i1 %950, %948
  br i1 %951, label %952, label %968, !prof !1171

952:                                              ; preds = %945, %938
  %953 = tail call i32 @true_regnum(ptr noundef nonnull %931) #22
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %954
  %956 = load i16, ptr %955, align 2, !tbaa !432
  %957 = icmp sgt i16 %956, -1
  br i1 %957, label %958, label %965, !prof !1172

958:                                              ; preds = %952
  %959 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 12
  %960 = load i32, ptr %959, align 8, !tbaa !851
  %961 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 17
  %962 = load i32, ptr %961, align 4, !tbaa !852
  %963 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %928, i32 5
  %964 = load i32, ptr %963, align 4, !tbaa !853
  tail call fastcc void @clear_reload_reg_in_use(i32 noundef %953, i32 noundef %960, i32 noundef %962, i32 noundef %964) #23
  br label %965

965:                                              ; preds = %958, %952
  store ptr null, ptr %930, align 8, !tbaa !849
  %966 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %928
  store i32 -1, ptr %966, align 4, !tbaa !431
  %967 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %968

968:                                              ; preds = %926, %942, %945, %965
  %969 = phi i32 [ %927, %926 ], [ %927, %942 ], [ %927, %945 ], [ %967, %965 ]
  %970 = add nuw nsw i64 %928, 1
  %971 = sext i32 %969 to i64
  %972 = icmp slt i64 %970, %971
  br i1 %972, label %926, label %924, !prof !695, !llvm.loop !1173

973:                                              ; preds = %924, %1058
  %974 = phi i64 [ %1059, %1058 ], [ 0, %924 ]
  %975 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %974
  %976 = load i16, ptr %975, align 2, !tbaa !432
  %977 = sext i16 %976 to i64
  %978 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %977
  %979 = load i32, ptr %978, align 4, !tbaa !431
  %980 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 9
  %981 = load ptr, ptr %980, align 8, !tbaa !1174
  %982 = icmp eq ptr %981, null
  br i1 %982, label %1058, label %983, !prof !1042

983:                                              ; preds = %973
  %984 = load i32, ptr %981, align 8
  %985 = and i32 %984, 65535
  %986 = icmp eq i32 %985, 37
  br i1 %986, label %987, label %1058, !prof !1175

987:                                              ; preds = %983
  %988 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 11
  %989 = load ptr, ptr %988, align 8, !tbaa !849
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1058, label %991, !prof !1176

991:                                              ; preds = %987
  %992 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %981) #23
  %993 = icmp slt i32 %992, 53
  br i1 %993, label %994, label %1003, !prof !771

994:                                              ; preds = %991
  %995 = sext i32 %992 to i64
  %996 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 5
  %997 = load i32, ptr %996, align 4, !tbaa !853
  %998 = zext i32 %997 to i64
  %999 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %995, i64 %998
  %1000 = load i8, ptr %999, align 1, !tbaa !397
  %1001 = zext i8 %1000 to i32
  %1002 = icmp eq i8 %1000, 0
  br i1 %1002, label %1011, label %1003, !prof !1177

1003:                                             ; preds = %991, %994
  %1004 = phi i32 [ 1, %991 ], [ %1001, %994 ]
  br label %1005

1005:                                             ; preds = %1003, %1005
  %1006 = phi i32 [ %1007, %1005 ], [ %1004, %1003 ]
  %1007 = add nsw i32 %1006, -1
  %1008 = add nsw i32 %1007, %992
  %1009 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @reg_has_output_reload, i32 noundef %1008) #22
  %1010 = icmp ugt i32 %1006, 1
  br i1 %1010, label %1005, label %1011, !prof !1071, !llvm.loop !1178

1011:                                             ; preds = %1005, %994
  %1012 = icmp sgt i32 %979, -1
  br i1 %1012, label %1013, label %1054, !prof !771

1013:                                             ; preds = %1011
  %1014 = zext nneg i32 %979 to i64
  %1015 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 5
  %1016 = load i32, ptr %1015, align 4, !tbaa !853
  %1017 = zext i32 %1016 to i64
  %1018 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1014, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !397
  %1020 = icmp eq i8 %1019, 0
  br i1 %1020, label %1054, label %1021, !prof !1071

1021:                                             ; preds = %1013
  %1022 = zext nneg i32 %979 to i64
  %1023 = zext i8 %1019 to i64
  %1024 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !449
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
  br i1 %1046, label %1047, label %1037, !prof !858, !llvm.loop !1179

1047:                                             ; preds = %1037
  %1048 = insertelement <2 x i64> poison, i64 %1038, i64 0
  %1049 = shufflevector <2 x i64> %1048, <2 x i64> poison, <2 x i32> zeroinitializer
  %1050 = or disjoint <2 x i64> %1049, <i64 0, i64 1>
  %1051 = icmp ugt <2 x i64> %1050, %1029
  %1052 = select <2 x i1> %1051, <2 x i64> %1040, <2 x i64> %1043
  %1053 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %1052)
  store i64 %1053, ptr @reg_is_output_reload, align 8, !tbaa !449
  br label %1054

1054:                                             ; preds = %1013, %1047, %1011
  %1055 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %977, i32 17
  %1056 = load i32, ptr %1055, align 4, !tbaa !852
  switch i32 %1056, label %1057 [
    i32 9, label %1058
    i32 1, label %1058
    i32 2, label %1058
  ], !prof !1180

1057:                                             ; preds = %1054
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6661, ptr noundef nonnull @.str.2) #22
  br label %1058

1058:                                             ; preds = %1057, %1054, %1054, %1054, %987, %983, %973
  %1059 = add nuw nsw i64 %974, 1
  %1060 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %1061 = sext i32 %1060 to i64
  %1062 = icmp slt i64 %1059, %1061
  br i1 %1062, label %973, label %1063, !prof !695, !llvm.loop !1181

1063:                                             ; preds = %1058, %842, %913, %924
  call void @llvm.lifetime.end.p0(i64 1440, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_assigned_reloads(ptr noundef %0) unnamed_addr #0 !prof !983 !PGOFuncName !1182 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %214, !prof !1036

4:                                                ; preds = %1, %209
  %5 = phi i32 [ %210, %209 ], [ %2, %1 ]
  %6 = phi i64 [ %211, %209 ], [ 0, %1 ]
  %7 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !1043
  %9 = icmp eq ptr %8, null
  br i1 %9, label %209, label %10, !prof !1133

10:                                               ; preds = %4
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !852
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %209, label %14, !prof !1044

14:                                               ; preds = %10
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1041
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %209, !prof !1145

18:                                               ; preds = %14
  %19 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !849
  %21 = icmp eq ptr %20, null
  br i1 %21, label %209, label %22, !prof !1145

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
  %38 = load ptr, ptr %37, align 8, !tbaa !849
  %39 = icmp eq ptr %38, null
  br i1 %39, label %85, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %19, align 8, !tbaa !849
  %42 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %38, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !852
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %50 = load i32, ptr %49, align 8, !tbaa !851
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 %32)
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %32, %44 ], [ %51, %48 ]
  %54 = load ptr, ptr %19, align 8, !tbaa !849
  %55 = load ptr, ptr %37, align 8, !tbaa !849
  %56 = tail call i32 @rtx_equal_p(ptr noundef %54, ptr noundef %55) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !1041
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load ptr, ptr %36, align 8, !tbaa !1043
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 8, !tbaa !1043
  %67 = tail call i32 @rtx_equal_p(ptr noundef %66, ptr noundef nonnull %63) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65, %62, %58, %52
  %70 = load i32, ptr %45, align 4, !tbaa !852
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i32, ptr %11, align 4, !tbaa !852
  switch i32 %73, label %93 [
    i32 3, label %77
    i32 10, label %74
  ]

74:                                               ; preds = %72
  %75 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %76 = load i32, ptr %75, align 8, !tbaa !851
  br label %82

77:                                               ; preds = %72
  %78 = load i32, ptr %27, align 8, !tbaa !851
  %79 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %30, i32 12
  %80 = load i32, ptr %79, align 8, !tbaa !851
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
  %90 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %29, label %93, !llvm.loop !1183

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
  %110 = load i32, ptr %11, align 4, !tbaa !852
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
  %126 = load ptr, ptr %125, align 8, !tbaa !849
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %19, align 8, !tbaa !849
  %130 = tail call i32 @rtx_equal_p(ptr noundef %129, ptr noundef nonnull %126) #22
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  br i1 %118, label %136, label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %121, i32 17
  %135 = load i32, ptr %134, align 4, !tbaa !852
  switch i32 %135, label %139 [
    i32 3, label %136
    i32 10, label %136
  ]

136:                                              ; preds = %133, %133, %132
  store i32 9, ptr %11, align 4, !tbaa !852
  store ptr null, ptr %124, align 8, !tbaa !1043
  %137 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %121
  store i32 -1, ptr %137, align 4, !tbaa !431
  %138 = trunc i64 %121 to i32
  tail call void @transfer_replacements(i32 noundef %119, i32 noundef %138) #22
  br label %139

139:                                              ; preds = %133, %120, %123, %128, %136
  %140 = add nuw nsw i64 %121, 1
  %141 = load i32, ptr @n_reloads, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %120, label %144, !llvm.loop !1184

144:                                              ; preds = %139
  %145 = load i32, ptr %11, align 4, !tbaa !852
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
  %154 = load ptr, ptr %153, align 8, !tbaa !1043
  %155 = icmp eq ptr %154, null
  br i1 %155, label %204, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152, i32 17
  %158 = load i32, ptr %157, align 4, !tbaa !852
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
  %164 = load ptr, ptr %7, align 8, !tbaa !1043
  %165 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %154, ptr noundef %164) #22
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %204, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr %157, align 4, !tbaa !852
  %169 = add i32 %168, -3
  %170 = icmp ult i32 %169, 2
  %171 = select i1 %170, i32 10, i32 9
  store i32 %171, ptr %157, align 4, !tbaa !852
  %172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %152, i32 11
  %173 = load ptr, ptr %172, align 8, !tbaa !849
  %174 = icmp ne ptr %173, null
  %175 = icmp ne i64 %152, 0
  %176 = and i1 %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %167, %201
  %178 = phi i64 [ %202, %201 ], [ 0, %167 ]
  %179 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !1043
  %181 = icmp eq ptr %180, null
  br i1 %181, label %201, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 11
  %184 = load ptr, ptr %183, align 8, !tbaa !849
  %185 = icmp eq ptr %184, null
  br i1 %185, label %201, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 17
  %188 = load i32, ptr %187, align 4, !tbaa !852
  %189 = load i32, ptr %157, align 4, !tbaa !852
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load ptr, ptr %172, align 8, !tbaa !849
  %193 = tail call i32 @rtx_equal_p(ptr noundef nonnull %184, ptr noundef %192) #22
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %179, align 8, !tbaa !1043
  %197 = load ptr, ptr %153, align 8, !tbaa !1043
  %198 = tail call i32 @rtx_equal_p(ptr noundef %196, ptr noundef %197) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6824, ptr noundef nonnull @.str.2) #22
  br label %201

201:                                              ; preds = %200, %195, %191, %186, %182, %177
  %202 = add nuw nsw i64 %178, 1
  %203 = icmp eq i64 %202, %152
  br i1 %203, label %204, label %177, !llvm.loop !1185

204:                                              ; preds = %201, %167, %159, %156, %156, %156, %156, %151, %163
  %205 = add nuw nsw i64 %152, 1
  %206 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %207 = sext i32 %206 to i64
  %208 = icmp slt i64 %205, %207
  br i1 %208, label %151, label %209, !llvm.loop !1186

209:                                              ; preds = %204, %114, %100, %144, %4, %10, %14, %18, %22
  %210 = phi i32 [ %101, %100 ], [ %141, %144 ], [ %5, %4 ], [ %5, %10 ], [ %5, %14 ], [ %5, %18 ], [ %25, %22 ], [ %115, %114 ], [ %206, %204 ]
  %211 = add nuw nsw i64 %6, 1
  %212 = sext i32 %210 to i64
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %4, label %214, !prof !695, !llvm.loop !1187

214:                                              ; preds = %209, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_reload_insns(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !983 !PGOFuncName !1188 {
  %2 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !671
  store i64 0, ptr @reg_reloaded_died, align 8, !tbaa !449
  %4 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %9, !prof !1036

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @other_output_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @outaddr_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @output_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @output_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @inpaddr_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @input_address_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @input_reload_insns, i8 0, i64 %8, i1 false), !tbaa !417
  br label %9

9:                                                ; preds = %6, %1
  store ptr null, ptr @other_input_address_reload_insns, align 8, !tbaa !417
  store ptr null, ptr @other_input_reload_insns, align 8, !tbaa !417
  store ptr null, ptr @operand_reload_insns, align 8, !tbaa !417
  store ptr null, ptr @other_operand_reload_insns, align 8, !tbaa !417
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !417
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !767

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !397
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.13, i32 noundef %14) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !417
  tail call void @debug_reload_to_stream(ptr noundef %16) #22
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %50, !prof !1036

20:                                               ; preds = %17, %43
  %21 = phi i64 [ %46, %43 ], [ 0, %17 ]
  %22 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !849
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25, !prof !1189

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %23) #23
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %43, !prof !771

28:                                               ; preds = %25
  %29 = load i32, ptr %23, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %26) #23
  %33 = icmp ult i32 %26, %32
  br i1 %33, label %34, label %43, !prof !1072

34:                                               ; preds = %28
  %35 = zext nneg i32 %26 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %38 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %37
  store ptr null, ptr %38, align 8, !tbaa !417
  %39 = add nuw nsw i64 %37, 1
  %40 = tail call fastcc i32 @end_hard_regno(i32 noundef %31, i32 noundef %26) #23
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %36, label %43, !prof !1071, !llvm.loop !1190

43:                                               ; preds = %36, %28, %25, %20
  %44 = getelementptr inbounds %struct.reload, ptr @rld, i64 %21
  %45 = trunc i64 %21 to i32
  tail call fastcc void @do_input_reload(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %45) #23
  tail call fastcc void @do_output_reload(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %45) #23
  %46 = add nuw nsw i64 %21, 1
  %47 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %20, label %50, !prof !695, !llvm.loop !1191

50:                                               ; preds = %43, %17
  %51 = load ptr, ptr @other_input_address_reload_insns, align 8, !tbaa !417
  %52 = tail call ptr @emit_insn_before(ptr noundef %51, ptr noundef %3) #22
  %53 = load ptr, ptr @other_input_reload_insns, align 8, !tbaa !417
  %54 = tail call ptr @emit_insn_before(ptr noundef %53, ptr noundef %3) #22
  %55 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72, !prof !1036

57:                                               ; preds = %50, %57
  %58 = phi i64 [ %68, %57 ], [ 0, %50 ]
  %59 = getelementptr inbounds [30 x ptr], ptr @inpaddr_address_reload_insns, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !417
  %61 = tail call ptr @emit_insn_before(ptr noundef %60, ptr noundef %3) #22
  %62 = getelementptr inbounds [30 x ptr], ptr @input_address_reload_insns, i64 0, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !417
  %64 = tail call ptr @emit_insn_before(ptr noundef %63, ptr noundef %3) #22
  %65 = getelementptr inbounds [30 x ptr], ptr @input_reload_insns, i64 0, i64 %58
  %66 = load ptr, ptr %65, align 8, !tbaa !417
  %67 = tail call ptr @emit_insn_before(ptr noundef %66, ptr noundef %3) #22
  %68 = add nuw nsw i64 %58, 1
  %69 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %57, label %72, !prof !1192, !llvm.loop !1193

72:                                               ; preds = %57, %50
  %73 = load ptr, ptr @other_operand_reload_insns, align 8, !tbaa !417
  %74 = tail call ptr @emit_insn_before(ptr noundef %73, ptr noundef %3) #22
  %75 = load ptr, ptr @operand_reload_insns, align 8, !tbaa !417
  %76 = tail call ptr @emit_insn_before(ptr noundef %75, ptr noundef %3) #22
  %77 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %82, label %79, !prof !1036

79:                                               ; preds = %82, %72
  %80 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %100, label %621, !prof !1036

82:                                               ; preds = %72, %82
  %83 = phi i64 [ %96, %82 ], [ 0, %72 ]
  %84 = getelementptr inbounds [30 x ptr], ptr @outaddr_address_reload_insns, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !417
  %86 = tail call ptr @emit_insn_after(ptr noundef %85, ptr noundef %3) #22
  %87 = getelementptr inbounds [30 x ptr], ptr @output_address_reload_insns, i64 0, i64 %83
  %88 = load ptr, ptr %87, align 8, !tbaa !417
  %89 = tail call ptr @emit_insn_after(ptr noundef %88, ptr noundef %86) #22
  %90 = getelementptr inbounds [30 x ptr], ptr @output_reload_insns, i64 0, i64 %83
  %91 = load ptr, ptr %90, align 8, !tbaa !417
  %92 = tail call ptr @emit_insn_after(ptr noundef %91, ptr noundef %89) #22
  %93 = getelementptr inbounds [30 x ptr], ptr @other_output_reload_insns, i64 0, i64 %83
  %94 = load ptr, ptr %93, align 8, !tbaa !417
  %95 = tail call ptr @emit_insn_after(ptr noundef %94, ptr noundef %92) #22
  %96 = add nuw nsw i64 %83, 1
  %97 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %82, label %79, !prof !1192, !llvm.loop !1194

100:                                              ; preds = %79, %616
  %101 = phi i64 [ %617, %616 ], [ 0, %79 ]
  %102 = getelementptr inbounds [180 x i16], ptr @reload_order, i64 0, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !432
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !431
  %107 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104
  %108 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !1135
  %110 = icmp eq ptr %109, null
  br i1 %110, label %153, label %111, !prof !1133

111:                                              ; preds = %100
  %112 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %104
  %113 = load i8, ptr %112, align 1, !tbaa !397
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %153, !prof !1145

115:                                              ; preds = %111
  %116 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %104
  %117 = load ptr, ptr %116, align 8, !tbaa !417
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %153, !prof !1145

119:                                              ; preds = %115
  %120 = load i32, ptr %109, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 39
  br i1 %122, label %123, label %127, !prof !1044

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !397
  %126 = load i32, ptr %125, align 8
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i32 [ %126, %123 ], [ %120, %119 ]
  %129 = phi ptr [ %125, %123 ], [ %109, %119 ]
  %130 = and i32 %128, 65535
  %131 = icmp eq i32 %130, 37
  br i1 %131, label %132, label %153, !prof !1134

132:                                              ; preds = %127
  %133 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %129) #23
  %134 = icmp ugt i32 %133, 52
  br i1 %134, label %135, label %153, !prof !560

135:                                              ; preds = %132
  %136 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %133) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %153, !prof !560

138:                                              ; preds = %135
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %129) #23
  %140 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds ptr, ptr %140, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !417
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145, !prof !561

145:                                              ; preds = %138
  %146 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %143) #23
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !431
  %150 = icmp eq i32 %149, %139
  br i1 %150, label %151, label %153, !prof !1138

151:                                              ; preds = %145
  %152 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %147
  store ptr null, ptr %152, align 8, !tbaa !417
  br label %153

153:                                              ; preds = %127, %132, %135, %145, %151, %138, %115, %111, %100
  %154 = icmp sgt i32 %106, -1
  br i1 %154, label %155, label %439, !prof !1045

155:                                              ; preds = %153
  %156 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 11
  %157 = load ptr, ptr %156, align 8, !tbaa !849
  %158 = icmp eq ptr %157, null
  br i1 %158, label %616, label %159, !prof !772

159:                                              ; preds = %155
  %160 = zext nneg i32 %106 to i64
  %161 = load i32, ptr %157, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %160, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !397
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %188, label %168, !prof !1071

168:                                              ; preds = %159
  %169 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 12
  %170 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 17
  %171 = zext i8 %166 to i64
  br label %172

172:                                              ; preds = %168, %185
  %173 = phi i64 [ 0, %168 ], [ %186, %185 ]
  %174 = add nuw nsw i64 %173, %160
  %175 = load i32, ptr %169, align 8, !tbaa !851
  %176 = load i32, ptr %170, align 4, !tbaa !852
  %177 = trunc i64 %174 to i32
  %178 = tail call fastcc i32 @reload_reg_reaches_end_p(i32 noundef %177, i32 noundef %175, i32 noundef %176) #23, !range !496
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180, !prof !772

180:                                              ; preds = %172
  %181 = shl nuw i64 1, %174
  %182 = xor i64 %181, -1
  %183 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %184 = and i64 %183, %182
  store i64 %184, ptr @reg_reloaded_valid, align 8, !tbaa !449
  br label %185

185:                                              ; preds = %172, %180
  %186 = add nuw nsw i64 %173, 1
  %187 = icmp eq i64 %186, %171
  br i1 %187, label %188, label %172, !prof !1072, !llvm.loop !1195

188:                                              ; preds = %185, %159
  %189 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !1041
  %191 = icmp eq ptr %190, null
  br i1 %191, label %300, label %192, !prof !772

192:                                              ; preds = %188
  %193 = load i32, ptr %190, align 8
  %194 = and i32 %193, 65535
  %195 = icmp eq i32 %194, 37
  br i1 %195, label %202, label %196, !prof !771

196:                                              ; preds = %192
  %197 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %198 = load ptr, ptr %197, align 8, !tbaa !1174
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 37
  br i1 %201, label %202, label %616

202:                                              ; preds = %196, %192
  %203 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %104
  %204 = load ptr, ptr %203, align 8, !tbaa !417
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %204) #23
  %209 = sext i32 %208 to i64
  %210 = zext nneg i32 %207 to i64
  %211 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %209, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !397
  %213 = zext i8 %212 to i32
  %214 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 12
  %215 = load i32, ptr %214, align 8, !tbaa !851
  %216 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 17
  %217 = load i32, ptr %216, align 4, !tbaa !852
  %218 = tail call fastcc zeroext i8 @reload_regs_reach_end_p(i32 noundef %208, i32 noundef %213, i32 noundef %215, i32 noundef %217) #23, !range !429
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %616, label %220, !prof !772

220:                                              ; preds = %202
  %221 = load ptr, ptr %189, align 8, !tbaa !1041
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 37
  br i1 %224, label %233, label %225, !prof !771

225:                                              ; preds = %220
  %226 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %227 = load ptr, ptr %226, align 8, !tbaa !1174
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %233, !prof !771

229:                                              ; preds = %225
  %230 = load ptr, ptr %108, align 8, !tbaa !1135
  %231 = getelementptr inbounds %struct.rtx_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !397
  br label %233

233:                                              ; preds = %225, %220, %229
  %234 = phi ptr [ %232, %229 ], [ %221, %220 ], [ %227, %225 ]
  %235 = tail call fastcc i32 @rhs_regno(ptr noundef %234) #23
  %236 = icmp slt i32 %235, 53
  br i1 %236, label %239, label %237, !prof !771

237:                                              ; preds = %233
  %238 = zext nneg i32 %235 to i64
  br label %244

239:                                              ; preds = %233
  %240 = sext i32 %235 to i64
  %241 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %240, i64 %210
  %242 = load i8, ptr %241, align 1, !tbaa !397
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %237, %239
  %245 = phi i64 [ %238, %237 ], [ %240, %239 ]
  %246 = phi i32 [ 1, %237 ], [ %243, %239 ]
  %247 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %209
  %248 = load ptr, ptr %247, align 8, !tbaa !417
  %249 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %209
  store ptr %248, ptr %249, align 8, !tbaa !417
  %250 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %209
  store ptr %234, ptr %250, align 8, !tbaa !417
  %251 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %252 = getelementptr inbounds ptr, ptr %251, i64 %245
  store ptr %204, ptr %252, align 8, !tbaa !417
  %253 = icmp eq i32 %246, %213
  %254 = select i1 %236, i1 %253, i1 false
  br i1 %254, label %255, label %258, !prof !1196

255:                                              ; preds = %244
  %256 = tail call fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %235, i32 noundef %208, i32 noundef %207) #23, !range !429
  %257 = icmp ne i8 %256, 0
  br label %258

258:                                              ; preds = %255, %244
  %259 = phi i1 [ false, %244 ], [ %257, %255 ]
  %260 = icmp ugt i32 %246, 1
  %261 = select i1 %236, i1 %260, i1 false
  br i1 %261, label %262, label %278, !prof !1197

262:                                              ; preds = %258
  %263 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %264 = zext nneg i32 %246 to i64
  %265 = getelementptr ptr, ptr %263, i64 %245
  br label %266

266:                                              ; preds = %262, %273
  %267 = phi i64 [ 1, %262 ], [ %276, %273 ]
  br i1 %259, label %268, label %273

268:                                              ; preds = %266
  %269 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %270 = getelementptr ptr, ptr %269, i64 %267
  %271 = getelementptr ptr, ptr %270, i64 %209
  %272 = load ptr, ptr %271, align 8, !tbaa !417
  br label %273

273:                                              ; preds = %266, %268
  %274 = phi ptr [ %272, %268 ], [ null, %266 ]
  %275 = getelementptr ptr, ptr %265, i64 %267
  store ptr %274, ptr %275, align 8, !tbaa !417
  %276 = add nuw nsw i64 %267, 1
  %277 = icmp eq i64 %276, %264
  br i1 %277, label %278, label %266, !prof !401, !llvm.loop !1198

278:                                              ; preds = %273, %258
  %279 = icmp eq i8 %212, 0
  br i1 %279, label %616, label %280, !prof !1071

280:                                              ; preds = %278
  %281 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %282 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !449
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
  %293 = select i1 %259, i32 %292, i32 0, !prof !1196
  %294 = add nsw i32 %293, %235
  %295 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %288
  store i32 %294, ptr %295, align 4, !tbaa !431
  %296 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %288
  store ptr %3, ptr %296, align 8, !tbaa !417
  %297 = or i64 %287, %289
  %298 = add nuw nsw i64 %285, 1
  %299 = icmp eq i64 %298, %283
  br i1 %299, label %615, label %284, !prof !1072, !llvm.loop !1199

300:                                              ; preds = %188
  %301 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %302 = load ptr, ptr %301, align 8, !tbaa !1174
  %303 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %304 = icmp eq ptr %302, null
  br i1 %304, label %305, label %616

305:                                              ; preds = %300
  %306 = load ptr, ptr %107, align 8, !tbaa !1043
  %307 = icmp eq ptr %306, null
  br i1 %307, label %616, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr %306, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %318

312:                                              ; preds = %308
  %313 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %306) #23
  %314 = icmp ult i32 %313, 53
  br i1 %314, label %318, label %315

315:                                              ; preds = %312
  %316 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %313) #22
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %327, label %318

318:                                              ; preds = %315, %312, %308
  %319 = load ptr, ptr %108, align 8, !tbaa !1135
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 37
  br i1 %322, label %323, label %616

323:                                              ; preds = %318
  %324 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %319) #23
  %325 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %324) #22
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %616

327:                                              ; preds = %323, %315
  %328 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %329 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %104
  %330 = load ptr, ptr %329, align 8, !tbaa !417
  %331 = load ptr, ptr %328, align 8, !tbaa !397
  %332 = tail call i32 @reg_set_p(ptr noundef %330, ptr noundef %331) #22
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %616

334:                                              ; preds = %327
  %335 = load ptr, ptr %329, align 8, !tbaa !417
  %336 = load i32, ptr %335, align 8
  %337 = lshr i32 %336, 16
  %338 = and i32 %337, 255
  %339 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %335) #23
  %340 = sext i32 %339 to i64
  %341 = zext nneg i32 %338 to i64
  %342 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %340, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !397
  %344 = zext i8 %343 to i32
  %345 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 12
  %346 = load i32, ptr %345, align 8, !tbaa !851
  %347 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 17
  %348 = load i32, ptr %347, align 4, !tbaa !852
  %349 = tail call fastcc zeroext i8 @reload_regs_reach_end_p(i32 noundef %339, i32 noundef %344, i32 noundef %346, i32 noundef %348) #23, !range !429
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %616, label %351

351:                                              ; preds = %334
  %352 = load ptr, ptr %107, align 8, !tbaa !1043
  %353 = load i32, ptr %352, align 8
  %354 = and i32 %353, 65535
  %355 = icmp eq i32 %354, 37
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %352) #23
  %358 = icmp ugt i32 %357, 52
  br i1 %358, label %367, label %359

359:                                              ; preds = %356, %351
  %360 = load ptr, ptr %108, align 8, !tbaa !1135
  %361 = load i32, ptr %360, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 37
  br i1 %363, label %367, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !397
  br label %367

367:                                              ; preds = %356, %359, %364
  %368 = phi ptr [ %366, %364 ], [ %360, %359 ], [ %352, %356 ]
  %369 = tail call fastcc i32 @rhs_regno(ptr noundef %368) #23
  %370 = icmp slt i32 %369, 53
  br i1 %370, label %375, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %373 = zext nneg i32 %369 to i64
  %374 = getelementptr inbounds ptr, ptr %372, i64 %373
  store ptr %335, ptr %374, align 8, !tbaa !417
  br label %404

375:                                              ; preds = %367
  %376 = sext i32 %369 to i64
  %377 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %376, i64 %341
  %378 = load i8, ptr %377, align 1, !tbaa !397
  %379 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %380 = getelementptr inbounds ptr, ptr %379, i64 %376
  store ptr %335, ptr %380, align 8, !tbaa !417
  %381 = icmp eq i8 %378, %343
  br i1 %381, label %382, label %385

382:                                              ; preds = %375
  %383 = tail call fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %339, i32 noundef %369, i32 noundef %338) #23, !range !429
  %384 = icmp ne i8 %383, 0
  br label %385

385:                                              ; preds = %382, %375
  %386 = phi i1 [ false, %375 ], [ %384, %382 ]
  %387 = icmp ugt i8 %378, 1
  br i1 %387, label %388, label %404

388:                                              ; preds = %385
  %389 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %390 = zext i8 %378 to i64
  %391 = getelementptr ptr, ptr %389, i64 %376
  br label %392

392:                                              ; preds = %388, %399
  %393 = phi i64 [ 1, %388 ], [ %402, %399 ]
  br i1 %386, label %394, label %399

394:                                              ; preds = %392
  %395 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %396 = getelementptr ptr, ptr %395, i64 %393
  %397 = getelementptr ptr, ptr %396, i64 %340
  %398 = load ptr, ptr %397, align 8, !tbaa !417
  br label %399

399:                                              ; preds = %392, %394
  %400 = phi ptr [ %398, %394 ], [ null, %392 ]
  %401 = getelementptr ptr, ptr %391, i64 %393
  store ptr %400, ptr %401, align 8, !tbaa !417
  %402 = add nuw nsw i64 %393, 1
  %403 = icmp eq i64 %402, %390
  br i1 %403, label %404, label %392, !llvm.loop !1200

404:                                              ; preds = %399, %385, %371
  %405 = phi i1 [ false, %371 ], [ %386, %385 ], [ %386, %399 ]
  %406 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %104
  %407 = load i8, ptr %406, align 1, !tbaa !397
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %404
  %410 = load ptr, ptr %189, align 8, !tbaa !1041
  %411 = icmp eq ptr %410, null
  br i1 %411, label %417, label %412

412:                                              ; preds = %409
  %413 = load ptr, ptr %303, align 8, !tbaa !1174
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %412, %404
  %416 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %340
  store ptr null, ptr %416, align 8, !tbaa !417
  br label %417

417:                                              ; preds = %415, %412, %409
  %418 = icmp eq i8 %343, 0
  br i1 %418, label %616, label %419

419:                                              ; preds = %417
  %420 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %421 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !449
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
  %432 = select i1 %405, i32 %431, i32 0
  %433 = add nsw i32 %432, %369
  %434 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %427
  store i32 %433, ptr %434, align 4, !tbaa !431
  %435 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %427
  store ptr %3, ptr %435, align 8, !tbaa !417
  %436 = or i64 %426, %428
  %437 = add nuw nsw i64 %424, 1
  %438 = icmp eq i64 %437, %422
  br i1 %438, label %614, label %423, !llvm.loop !1201

439:                                              ; preds = %153
  %440 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !1041
  %442 = icmp eq ptr %441, null
  br i1 %442, label %452, label %443, !prof !1202

443:                                              ; preds = %439
  %444 = load i32, ptr %441, align 8
  %445 = trunc i32 %444 to i16
  switch i16 %445, label %616 [
    i16 37, label %460
    i16 43, label %446
  ], !prof !1203

446:                                              ; preds = %443
  %447 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %448 = load ptr, ptr %447, align 8, !tbaa !1174
  %449 = load i32, ptr %448, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 37
  br i1 %451, label %460, label %616, !prof !1204

452:                                              ; preds = %439
  %453 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %454 = load ptr, ptr %453, align 8, !tbaa !1174
  %455 = icmp eq ptr %454, null
  br i1 %455, label %616, label %456, !prof !1145

456:                                              ; preds = %452
  %457 = load i32, ptr %454, align 8
  %458 = and i32 %457, 65535
  %459 = icmp eq i32 %458, 37
  br i1 %459, label %467, label %616

460:                                              ; preds = %443, %446
  %461 = and i32 %444, 65535
  %462 = icmp eq i32 %461, 37
  br i1 %462, label %467, label %463, !prof !560

463:                                              ; preds = %460
  %464 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 9
  %465 = load ptr, ptr %464, align 8, !tbaa !1174
  %466 = load i32, ptr %465, align 8
  br label %467

467:                                              ; preds = %456, %463, %460
  %468 = phi i32 [ %444, %460 ], [ %466, %463 ], [ %457, %456 ]
  %469 = phi ptr [ %441, %460 ], [ %465, %463 ], [ %454, %456 ]
  %470 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %469) #23
  %471 = lshr i32 %468, 16
  %472 = and i32 %471, 255
  %473 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %104, i32 11
  %474 = load ptr, ptr %473, align 8, !tbaa !849
  %475 = icmp eq ptr %474, null
  br i1 %475, label %479, label %476, !prof !560

476:                                              ; preds = %467
  %477 = icmp eq ptr %474, %469
  br i1 %477, label %479, label %478

478:                                              ; preds = %476
  tail call void @forget_old_reloads_1(ptr noundef nonnull %474, ptr poison, ptr noundef null) #23
  br label %479

479:                                              ; preds = %478, %476, %467
  %480 = icmp slt i32 %470, 53
  br i1 %480, label %602, label %481, !prof !561

481:                                              ; preds = %479
  %482 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %483 = zext nneg i32 %470 to i64
  %484 = getelementptr inbounds ptr, ptr %482, i64 %483
  store ptr null, ptr %484, align 8, !tbaa !417
  %485 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %104
  %486 = load ptr, ptr %485, align 8, !tbaa !417
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %526, !prof !560

488:                                              ; preds = %481
  %489 = load i32, ptr %3, align 8
  %490 = and i32 %489, 65535
  %491 = add nsw i32 %490, -7
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %493, label %616, !prof !1205

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %495 = load ptr, ptr %494, align 8, !tbaa !397
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 65535
  %498 = icmp eq i32 %497, 23
  br i1 %498, label %502, label %499, !prof !560

499:                                              ; preds = %493
  %500 = tail call ptr @single_set_2(ptr noundef nonnull %3, ptr noundef nonnull %495) #22
  %501 = icmp eq ptr %500, null
  br i1 %501, label %616, label %502, !prof !1206

502:                                              ; preds = %493, %499
  %503 = phi ptr [ %500, %499 ], [ %495, %493 ]
  %504 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !397
  %506 = load ptr, ptr %440, align 8, !tbaa !1041
  %507 = icmp eq ptr %505, %506
  br i1 %507, label %508, label %616, !prof !560

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1, i32 0, i32 0, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !397
  %511 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %531, !prof !1207

513:                                              ; preds = %508
  %514 = zext nneg i32 %511 to i64
  br label %518

515:                                              ; preds = %518
  %516 = add nuw nsw i64 %519, 1
  %517 = icmp eq i64 %516, %514
  br i1 %517, label %531, label %518, !prof !1207, !llvm.loop !1208

518:                                              ; preds = %513, %515
  %519 = phi i64 [ 0, %513 ], [ %516, %515 ]
  %520 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !1043
  %522 = icmp eq ptr %521, %510
  br i1 %522, label %523, label %515, !prof !561

523:                                              ; preds = %518
  %524 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %519
  %525 = load ptr, ptr %524, align 8, !tbaa !417
  br label %531

526:                                              ; preds = %481
  %527 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %486) #23
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !417
  br label %534

531:                                              ; preds = %515, %508, %523
  %532 = phi ptr [ %525, %523 ], [ %510, %508 ], [ %510, %515 ]
  %533 = icmp eq ptr %532, null
  br i1 %533, label %616, label %534, !prof !1144

534:                                              ; preds = %526, %531
  %535 = phi ptr [ %530, %526 ], [ %3, %531 ]
  %536 = phi ptr [ %486, %526 ], [ %532, %531 ]
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 37
  br i1 %539, label %540, label %616, !prof !560

540:                                              ; preds = %534
  %541 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %536) #23
  %542 = icmp ult i32 %541, 53
  br i1 %542, label %543, label %616, !prof !560

543:                                              ; preds = %540
  %544 = lshr i32 %537, 16
  %545 = and i32 %544, 255
  %546 = icmp eq i32 %545, %472
  br i1 %546, label %548, label %547, !prof !560

547:                                              ; preds = %543
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8156, ptr noundef nonnull @.str.2) #22
  br label %548

548:                                              ; preds = %543, %547
  %549 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %536) #23
  %550 = sext i32 %549 to i64
  %551 = zext nneg i32 %472 to i64
  %552 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %550, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !397
  %554 = tail call ptr @find_regno_note(ptr noundef %3, i32 noundef 1, i32 noundef %549) #22
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %560, !prof !561

556:                                              ; preds = %548
  %557 = icmp eq ptr %535, null
  br i1 %557, label %560, label %558

558:                                              ; preds = %556
  %559 = tail call ptr @find_regno_note(ptr noundef nonnull %535, i32 noundef 1, i32 noundef %549) #22
  br label %560

560:                                              ; preds = %558, %556, %548
  %561 = phi ptr [ %554, %548 ], [ %559, %558 ], [ null, %556 ]
  %562 = icmp eq i8 %553, 0
  br i1 %562, label %598, label %563, !prof !1209

563:                                              ; preds = %560
  %564 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !449
  %565 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !449
  %566 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %567 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !449
  %568 = icmp eq ptr %561, null
  %569 = zext nneg i32 %549 to i64
  %570 = shl nuw i64 1, %569
  %571 = zext i8 %553 to i64
  br label %572

572:                                              ; preds = %563, %593
  %573 = phi i64 [ 0, %563 ], [ %595, %593 ]
  %574 = phi i64 [ %567, %563 ], [ %585, %593 ]
  %575 = phi i64 [ %566, %563 ], [ %586, %593 ]
  %576 = phi i64 [ %565, %563 ], [ %587, %593 ]
  %577 = phi i64 [ %564, %563 ], [ %594, %593 ]
  %578 = add nsw i64 %573, %550
  %579 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %578
  store ptr %535, ptr %579, align 8, !tbaa !417
  %580 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %578
  store ptr %469, ptr %580, align 8, !tbaa !417
  %581 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %578
  store i32 %470, ptr %581, align 4, !tbaa !431
  %582 = getelementptr inbounds [53 x ptr], ptr @reg_reloaded_insn, i64 0, i64 %578
  store ptr %535, ptr %582, align 8, !tbaa !417
  %583 = shl nuw i64 1, %578
  %584 = xor i64 %583, -1
  %585 = and i64 %574, %584
  %586 = or i64 %575, %583
  %587 = or i64 %576, %583
  br i1 %568, label %590, label %588, !prof !561

588:                                              ; preds = %572
  %589 = or i64 %577, %570
  br label %593

590:                                              ; preds = %572
  %591 = xor i64 %570, -1
  %592 = and i64 %577, %591
  br label %593

593:                                              ; preds = %588, %590
  %594 = phi i64 [ %592, %590 ], [ %589, %588 ]
  %595 = add nuw nsw i64 %573, 1
  %596 = icmp eq i64 %595, %571
  br i1 %596, label %597, label %572, !prof !1207, !llvm.loop !1210

597:                                              ; preds = %593
  store i64 %585, ptr @reg_reloaded_dead, align 8, !tbaa !449
  store i64 %586, ptr @reg_reloaded_valid, align 8, !tbaa !449
  store i64 %587, ptr @reg_is_output_reload, align 8, !tbaa !449
  store i64 %594, ptr @reg_reloaded_died, align 8, !tbaa !449
  br label %598

598:                                              ; preds = %597, %560
  %599 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %600 = getelementptr inbounds ptr, ptr %599, i64 %483
  store ptr %536, ptr %600, align 8, !tbaa !417
  %601 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @reg_has_output_reload, i32 noundef %470) #22
  br label %616

602:                                              ; preds = %479
  %603 = sext i32 %470 to i64
  %604 = zext nneg i32 %472 to i64
  %605 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %603, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !397
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %616, label %608

608:                                              ; preds = %602
  %609 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %610 = shl nsw i64 %603, 3
  %611 = getelementptr i8, ptr %609, i64 %610
  %612 = zext i8 %606 to i64
  %613 = shl nuw nsw i64 %612, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %611, i8 0, i64 %613, i1 false), !tbaa !417
  br label %616

614:                                              ; preds = %423
  store i64 %430, ptr @reg_reloaded_dead, align 8, !tbaa !449
  store i64 %436, ptr @reg_reloaded_valid, align 8, !tbaa !449
  br label %616

615:                                              ; preds = %284
  store i64 %291, ptr @reg_reloaded_dead, align 8, !tbaa !449
  store i64 %297, ptr @reg_reloaded_valid, align 8, !tbaa !449
  br label %616

616:                                              ; preds = %196, %608, %602, %278, %615, %417, %614, %334, %202, %300, %305, %318, %323, %327, %488, %499, %502, %446, %443, %155, %598, %540, %534, %531, %456, %452
  %617 = add nuw nsw i64 %101, 1
  %618 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %619 = sext i32 %618 to i64
  %620 = icmp slt i64 %617, %619
  br i1 %620, label %100, label %621, !prof !695, !llvm.loop !1211

621:                                              ; preds = %616, %79
  %622 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !449
  %623 = load i64, ptr @reg_reloaded_dead, align 8, !tbaa !449
  %624 = or i64 %623, %622
  store i64 %624, ptr @reg_reloaded_dead, align 8, !tbaa !449
  ret void
}

; Function Attrs: optsize
declare void @subst_reloads(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_eh_region_note(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !608 !PGOFuncName !1212 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !397
  tail call void @copy_reg_eh_region_note_forward(ptr noundef nonnull %4, ptr noundef %12, ptr noundef %2) #22
  br label %13

13:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forget_marked_reloads(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1213 !PGOFuncName !1214 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #23
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %45, label %6, !prof !1215

6:                                                ; preds = %1
  %7 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %8

8:                                                ; preds = %6, %41
  %9 = phi i32 [ %7, %6 ], [ %42, %41 ]
  %10 = load i32, ptr %2, align 4, !tbaa !431
  %11 = icmp ult i32 %10, 53
  br i1 %11, label %12, label %30, !prof !1216

12:                                               ; preds = %8
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %17, !prof !1217

14:                                               ; preds = %12
  %15 = zext nneg i32 %10 to i64
  %16 = shl nuw nsw i64 1, %15
  br label %23

17:                                               ; preds = %12
  %18 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !449
  %19 = zext nneg i32 %10 to i64
  %20 = shl nuw nsw i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32, !prof !1218

23:                                               ; preds = %14, %17
  %24 = phi i64 [ %16, %14 ], [ %20, %17 ]
  %25 = phi i64 [ %15, %14 ], [ %19, %17 ]
  %26 = xor i64 %24, -1
  %27 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %28 = and i64 %27, %26
  store i64 %28, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %29 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %25
  store ptr null, ptr %29, align 8, !tbaa !417
  br label %30

30:                                               ; preds = %23, %8
  %31 = icmp eq i32 %9, 0
  br i1 %31, label %36, label %32, !prof !1219

32:                                               ; preds = %17, %30
  %33 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @reg_has_output_reload, i32 noundef %10) #22
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br i1 %34, label %36, label %41, !prof !1220

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %35, %32 ], [ 0, %30 ]
  %38 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %39 = zext i32 %10 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr null, ptr %40, align 8, !tbaa !417
  br label %41

41:                                               ; preds = %32, %36
  %42 = phi i32 [ %35, %32 ], [ %37, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !429
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %8, !prof !1221, !llvm.loop !1222

45:                                               ; preds = %41, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @choose_reload_regs_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !983 !PGOFuncName !1223 {
  %3 = alloca i64, align 8
  %4 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15, !prof !1036

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %13, %8 ]
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !417
  %12 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  store ptr %11, ptr %12, align 8, !tbaa !849
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %7
  br i1 %14, label %15, label %8, !prof !1036, !llvm.loop !1224

15:                                               ; preds = %8, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) @reload_inherited, i8 0, i64 180, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) @reload_override_in, i8 0, i64 1440, i1 false)
  store i64 0, ptr @reload_reg_used, align 8, !tbaa !449
  store i64 0, ptr @reload_reg_used_at_all, align 8, !tbaa !449
  store i64 0, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  store i64 0, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  store i64 0, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  store i64 0, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !449
  store i64 0, ptr @reg_used_in_insn, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !449
  %16 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %16) #22
  %17 = load i64, ptr %3, align 8, !tbaa !449
  %18 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !449
  %19 = or i64 %18, %17
  store i64 %19, ptr @reg_used_in_insn, align 8, !tbaa !449
  store i64 0, ptr %3, align 8, !tbaa !449
  %20 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 7
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %20) #22
  %21 = load i64, ptr %3, align 8, !tbaa !449
  %22 = load i64, ptr @reg_used_in_insn, align 8, !tbaa !449
  %23 = or i64 %22, %21
  store i64 %23, ptr @reg_used_in_insn, align 8, !tbaa !449
  call void @compute_use_by_pseudos(ptr noundef nonnull @reg_used_in_insn, ptr noundef nonnull %16) #23
  call void @compute_use_by_pseudos(ptr noundef nonnull @reg_used_in_insn, ptr noundef nonnull %20) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  %24 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29, !prof !1036

26:                                               ; preds = %15
  %27 = zext nneg i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_output, i8 0, i64 %28, i1 false), !tbaa !449
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_input, i8 0, i64 %28, i1 false), !tbaa !449
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_input_addr, i8 0, i64 %28, i1 false), !tbaa !449
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_inpaddr_addr, i8 0, i64 %28, i1 false), !tbaa !449
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_output_addr, i8 0, i64 %28, i1 false), !tbaa !449
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @reload_reg_used_in_outaddr_addr, i8 0, i64 %28, i1 false), !tbaa !449
  br label %29

29:                                               ; preds = %26, %15
  %30 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !696
  %32 = xor i64 %31, -1
  store i64 %32, ptr @reload_reg_unavailable, align 8, !tbaa !449
  store i64 0, ptr @reload_reg_used_for_inherit, align 8, !tbaa !449
  %33 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55, !prof !1036

35:                                               ; preds = %29, %50
  %36 = phi i32 [ %51, %50 ], [ %33, %29 ]
  %37 = phi i64 [ %52, %50 ], [ 0, %29 ]
  %38 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !849
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41, !prof !1037

41:                                               ; preds = %35
  %42 = call fastcc i32 @rhs_regno(ptr noundef nonnull %39) #23
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !851
  %45 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !852
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %37, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !853
  call fastcc void @mark_reload_reg_in_use(i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #23
  %49 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %50

50:                                               ; preds = %35, %41
  %51 = phi i32 [ %36, %35 ], [ %49, %41 ]
  %52 = add nuw nsw i64 %37, 1
  %53 = sext i32 %51 to i64
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %35, label %55, !prof !695, !llvm.loop !1225

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
define internal fastcc noundef i32 @free_for_value_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !608 !PGOFuncName !1226 {
  %9 = sext i32 %0 to i64
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !397
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
  br i1 %21, label %22, label %14, !llvm.loop !1227

22:                                               ; preds = %14, %17
  %23 = phi i32 [ 0, %17 ], [ 1, %14 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_for_reload_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @mark_reload_reg_in_use(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #19 !prof !1228 !PGOFuncName !1229 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !397
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, %0
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %12, label %74, !prof !1230

12:                                               ; preds = %4
  %13 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !449
  %14 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
  %15 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  %16 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  %17 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !449
  %18 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %19 = sext i32 %1 to i64
  %20 = zext i32 %10 to i64
  br label %21

21:                                               ; preds = %12, %64
  %22 = phi i64 [ %5, %12 ], [ %71, %64 ]
  %23 = phi i64 [ %18, %12 ], [ %69, %64 ]
  %24 = phi i64 [ %17, %12 ], [ %68, %64 ]
  %25 = phi i64 [ %16, %12 ], [ %67, %64 ]
  %26 = phi i64 [ %15, %12 ], [ %66, %64 ]
  %27 = phi i64 [ %14, %12 ], [ %65, %64 ]
  %28 = phi i64 [ %13, %12 ], [ %70, %64 ]
  %29 = shl nuw i64 1, %22
  switch i32 %2, label %64 [
    i32 9, label %30
    i32 3, label %32
    i32 4, label %36
    i32 5, label %40
    i32 6, label %44
    i32 7, label %48
    i32 8, label %50
    i32 10, label %52
    i32 0, label %54
    i32 1, label %58
    i32 2, label %62
  ], !prof !1231

30:                                               ; preds = %21
  %31 = or i64 %27, %29
  store i64 %31, ptr @reload_reg_used, align 8, !tbaa !449
  br label %64

32:                                               ; preds = %21
  %33 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %19
  %34 = load i64, ptr %33, align 8, !tbaa !449
  %35 = or i64 %34, %29
  store i64 %35, ptr %33, align 8, !tbaa !449
  br label %64

36:                                               ; preds = %21
  %37 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %19
  %38 = load i64, ptr %37, align 8, !tbaa !449
  %39 = or i64 %38, %29
  store i64 %39, ptr %37, align 8, !tbaa !449
  br label %64

40:                                               ; preds = %21
  %41 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %19
  %42 = load i64, ptr %41, align 8, !tbaa !449
  %43 = or i64 %42, %29
  store i64 %43, ptr %41, align 8, !tbaa !449
  br label %64

44:                                               ; preds = %21
  %45 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %19
  %46 = load i64, ptr %45, align 8, !tbaa !449
  %47 = or i64 %46, %29
  store i64 %47, ptr %45, align 8, !tbaa !449
  br label %64

48:                                               ; preds = %21
  %49 = or i64 %26, %29
  store i64 %49, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  br label %64

50:                                               ; preds = %21
  %51 = or i64 %25, %29
  store i64 %51, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  br label %64

52:                                               ; preds = %21
  %53 = or i64 %24, %29
  store i64 %53, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !449
  br label %64

54:                                               ; preds = %21
  %55 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %19
  %56 = load i64, ptr %55, align 8, !tbaa !449
  %57 = or i64 %56, %29
  store i64 %57, ptr %55, align 8, !tbaa !449
  br label %64

58:                                               ; preds = %21
  %59 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %19
  %60 = load i64, ptr %59, align 8, !tbaa !449
  %61 = or i64 %60, %29
  store i64 %61, ptr %59, align 8, !tbaa !449
  br label %64

62:                                               ; preds = %21
  %63 = or i64 %23, %29
  store i64 %63, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  br label %64

64:                                               ; preds = %21, %62, %58, %54, %52, %50, %48, %44, %40, %36, %32, %30
  %65 = phi i64 [ %27, %62 ], [ %27, %58 ], [ %27, %54 ], [ %27, %52 ], [ %27, %50 ], [ %27, %48 ], [ %27, %44 ], [ %27, %40 ], [ %27, %36 ], [ %27, %32 ], [ %31, %30 ], [ %27, %21 ]
  %66 = phi i64 [ %26, %62 ], [ %26, %58 ], [ %26, %54 ], [ %26, %52 ], [ %26, %50 ], [ %49, %48 ], [ %26, %44 ], [ %26, %40 ], [ %26, %36 ], [ %26, %32 ], [ %26, %30 ], [ %26, %21 ]
  %67 = phi i64 [ %25, %62 ], [ %25, %58 ], [ %25, %54 ], [ %25, %52 ], [ %51, %50 ], [ %25, %48 ], [ %25, %44 ], [ %25, %40 ], [ %25, %36 ], [ %25, %32 ], [ %25, %30 ], [ %25, %21 ]
  %68 = phi i64 [ %24, %62 ], [ %24, %58 ], [ %24, %54 ], [ %53, %52 ], [ %24, %50 ], [ %24, %48 ], [ %24, %44 ], [ %24, %40 ], [ %24, %36 ], [ %24, %32 ], [ %24, %30 ], [ %24, %21 ]
  %69 = phi i64 [ %63, %62 ], [ %23, %58 ], [ %23, %54 ], [ %23, %52 ], [ %23, %50 ], [ %23, %48 ], [ %23, %44 ], [ %23, %40 ], [ %23, %36 ], [ %23, %32 ], [ %23, %30 ], [ %23, %21 ]
  %70 = or i64 %28, %29
  %71 = add nuw nsw i64 %22, 1
  %72 = icmp eq i64 %71, %20
  br i1 %72, label %73, label %21, !prof !1230, !llvm.loop !1232

73:                                               ; preds = %64
  store i64 %70, ptr @reload_reg_used_at_all, align 8, !tbaa !449
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
define internal fastcc noundef i32 @allocate_reload_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1052 !PGOFuncName !1233 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !1039
  %6 = icmp ugt i32 %5, 1
  %7 = icmp eq i32 %1, 0
  %8 = and i1 %7, %6
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 2
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 12
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 17
  %12 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 5
  %13 = select i1 %8, i32 7, i32 5
  %14 = load i32, ptr @n_spills, align 4, !tbaa !431
  br label %16

15:                                               ; preds = %129
  br i1 %18, label %16, label %136, !prof !1234, !llvm.loop !1235

16:                                               ; preds = %2, %15
  %17 = phi i32 [ %14, %2 ], [ %130, %15 ]
  %18 = phi i1 [ true, %2 ], [ false, %15 ]
  %19 = load i32, ptr @last_spill_reg, align 4, !tbaa !431
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %21, label %129, !prof !1072

21:                                               ; preds = %16, %125
  %22 = phi i32 [ %127, %125 ], [ %17, %16 ]
  %23 = phi i32 [ %29, %125 ], [ %19, %16 ]
  %24 = phi i32 [ %126, %125 ], [ 0, %16 ]
  %25 = load i32, ptr %9, align 8, !tbaa !1046
  %26 = add nsw i32 %23, 1
  %27 = icmp slt i32 %26, %22
  %28 = select i1 %27, i32 0, i32 %22, !prof !1236
  %29 = sub nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !432
  %33 = sext i16 %32 to i32
  %34 = load i32, ptr %10, align 8, !tbaa !851
  %35 = load i32, ptr %11, align 4, !tbaa !852
  %36 = tail call fastcc i32 @reload_reg_free_p(i32 noundef %33, i32 noundef %34, i32 noundef %35) #23, !range !496
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38, !prof !1237

38:                                               ; preds = %21
  %39 = zext nneg i32 %33 to i64
  %40 = shl nuw i64 1, %39
  br label %59

41:                                               ; preds = %21
  %42 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3
  %43 = load ptr, ptr %42, align 8, !tbaa !1043
  %44 = icmp eq ptr %43, null
  br i1 %44, label %125, label %45

45:                                               ; preds = %41
  %46 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
  %47 = zext nneg i32 %33 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %46, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %125

51:                                               ; preds = %45
  %52 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3, i32 1
  %53 = load i32, ptr %12, align 4, !tbaa !853
  %54 = load i32, ptr %10, align 8, !tbaa !851
  %55 = load i32, ptr %11, align 4, !tbaa !852
  %56 = load ptr, ptr %52, align 8, !tbaa !1041
  %57 = tail call fastcc i32 @free_for_value_p(i32 noundef %33, i32 noundef %53, i32 noundef %54, i32 noundef %55, ptr noundef nonnull %43, ptr noundef %56, i32 noundef %0, i32 noundef 1) #23, !range !496
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %125, label %59

59:                                               ; preds = %38, %51
  %60 = phi i64 [ %40, %38 ], [ %48, %51 ]
  %61 = sext i32 %25 to i64
  %62 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !449
  %64 = and i64 %63, %60
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %125, label %66, !prof !1237

66:                                               ; preds = %59
  %67 = load i32, ptr %12, align 4, !tbaa !853
  %68 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %33, i32 noundef %67) #22
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %125, label %70, !prof !1237

70:                                               ; preds = %66
  br i1 %18, label %71, label %79, !prof !1238

71:                                               ; preds = %70
  %72 = load i64, ptr @reload_reg_used_at_all, align 8, !tbaa !449
  %73 = and i64 %72, %60
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %125, label %75, !prof !771

75:                                               ; preds = %71
  %76 = load i64, ptr @reload_reg_used_for_inherit, align 8, !tbaa !449
  %77 = and i64 %76, %60
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %75, %70
  %80 = sext i16 %32 to i64
  %81 = load i32, ptr %12, align 4, !tbaa !853
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %80, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !397
  %85 = zext i8 %84 to i32
  br i1 %8, label %86, label %88, !prof !772

86:                                               ; preds = %79
  %87 = load i32, ptr %4, align 8, !tbaa !1039
  br label %88

88:                                               ; preds = %86, %79
  %89 = phi i32 [ %87, %86 ], [ %85, %79 ]
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %120, label %91, !prof !771

91:                                               ; preds = %88
  %92 = add nsw i32 %33, -1
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
  %101 = load i64, ptr %62, align 8, !tbaa !449
  %102 = zext nneg i32 %100 to i64
  %103 = shl nuw i64 1, %102
  %104 = and i64 %101, %103
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %99
  %107 = sext i32 %100 to i64
  %108 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !432
  %110 = icmp sgt i16 %109, -1
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i32, ptr %10, align 8, !tbaa !851
  %113 = load i32, ptr %11, align 4, !tbaa !852
  %114 = tail call fastcc i32 @reload_reg_free_p(i32 noundef %100, i32 noundef %112, i32 noundef %113) #23, !range !496
  %115 = icmp eq i32 %114, 0
  %116 = add nsw i64 %96, -1
  br i1 %115, label %117, label %95

117:                                              ; preds = %111, %95
  %118 = phi i32 [ %98, %111 ], [ %94, %95 ]
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %125

120:                                              ; preds = %88, %117
  %121 = phi i32 [ 5, %117 ], [ %13, %88 ]
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, ptr @n_spills, align 4, !tbaa !431
  br label %129

125:                                              ; preds = %106, %99, %117, %75, %71, %66, %59, %51, %45, %41, %120
  %126 = add nuw nsw i32 %24, 1
  %127 = load i32, ptr @n_spills, align 4, !tbaa !431
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %21, label %129, !prof !1239, !llvm.loop !1240

129:                                              ; preds = %125, %123, %16
  %130 = phi i32 [ %17, %16 ], [ %124, %123 ], [ %127, %125 ]
  %131 = phi i32 [ 0, %16 ], [ %24, %123 ], [ %126, %125 ]
  %132 = phi i32 [ %19, %16 ], [ %29, %123 ], [ %29, %125 ]
  %133 = icmp slt i32 %131, %130
  br i1 %133, label %134, label %15, !prof !1238

134:                                              ; preds = %129
  %135 = tail call fastcc i32 @set_reload_reg(i32 noundef %132, i32 noundef %0) #23, !range !496
  br label %136

136:                                              ; preds = %15, %134
  %137 = phi i32 [ %135, %134 ], [ 0, %15 ]
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_reload_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1052 !PGOFuncName !1241 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [53 x ptr], ptr @spill_reg_rtx, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !417
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !1242

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !853
  br label %19

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !853
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %26, label %19, !prof !1243

19:                                               ; preds = %7, %11
  %20 = phi i64 [ %8, %7 ], [ %15, %11 ]
  %21 = phi i32 [ %10, %7 ], [ %17, %11 ]
  %22 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %3
  %23 = load i16, ptr %22, align 2, !tbaa !432
  %24 = sext i16 %23 to i32
  %25 = tail call ptr @gen_rtx_REG(i32 noundef %21, i32 noundef %24) #22
  store ptr %25, ptr %4, align 8, !tbaa !417
  br label %26

26:                                               ; preds = %19, %11
  %27 = phi i64 [ %20, %19 ], [ %15, %11 ]
  %28 = phi ptr [ %25, %19 ], [ %5, %11 ]
  %29 = tail call i32 @true_regnum(ptr noundef %28) #22
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !853
  %32 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %31) #22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %69, label %34, !prof !772

34:                                               ; preds = %26
  %35 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27
  %36 = load ptr, ptr %35, align 8, !tbaa !1043
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38, !prof !771

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !1244

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %41) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %34, %43, %38
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !1041
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !772

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %53) #22
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56, !prof !772

56:                                               ; preds = %50, %46
  store i32 %0, ptr @last_spill_reg, align 4, !tbaa !431
  %57 = getelementptr inbounds [53 x i16], ptr @spill_regs, i64 0, i64 %3
  %58 = load i16, ptr %57, align 2, !tbaa !432
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !851
  %62 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 17
  %63 = load i32, ptr %62, align 4, !tbaa !852
  %64 = load i32, ptr %30, align 4, !tbaa !853
  tail call fastcc void @mark_reload_reg_in_use(i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %64) #23
  %65 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %27, i32 11
  store ptr %28, ptr %65, align 8, !tbaa !849
  %66 = load i16, ptr %57, align 2, !tbaa !432
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %27
  store i32 %67, ptr %68, align 4, !tbaa !431
  br label %69

69:                                               ; preds = %26, %43, %50, %56
  %70 = phi i32 [ 1, %56 ], [ 0, %50 ], [ 0, %43 ], [ 0, %26 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @failed_reload(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !1245 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !397
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
  store ptr null, ptr %11, align 8, !tbaa !849
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
define internal fastcc noundef i32 @reload_reg_free_for_value_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !608 !PGOFuncName !1246 {
  %9 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !449
  %10 = zext nneg i32 %1 to i64
  %11 = shl nuw i64 1, %10
  %12 = and i64 %9, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %219

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !417
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
  %41 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %218

43:                                               ; preds = %39
  %44 = icmp ne ptr %17, null
  %45 = icmp eq ptr %17, null
  %46 = sext i32 %6 to i64
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %46, i32 9
  %48 = zext i32 %6 to i64
  br label %49

49:                                               ; preds = %43, %205
  %50 = phi i64 [ 0, %43 ], [ %207, %205 ]
  %51 = phi i32 [ 0, %43 ], [ %206, %205 ]
  %52 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50
  %53 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !849
  %55 = icmp eq ptr %54, null
  br i1 %55, label %205, label %56

56:                                               ; preds = %49
  %57 = load i32, ptr %54, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %205

60:                                               ; preds = %56
  %61 = tail call i32 @true_regnum(ptr noundef nonnull %54) #22
  %62 = sub i32 %1, %61
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #23
  %64 = zext i32 %63 to i64
  %65 = load i32, ptr %54, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %64, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !397
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -1
  %73 = icmp ugt i32 %62, %72
  %74 = icmp eq i64 %50, %48
  %75 = or i1 %74, %73
  br i1 %75, label %205, label %76

76:                                               ; preds = %60
  %77 = load ptr, ptr %52, align 8, !tbaa !1043
  %78 = tail call i32 @true_regnum(ptr noundef nonnull %54) #22
  %79 = icmp eq i32 %78, %0
  %80 = select i1 %79, ptr %77, ptr null
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = tail call i32 @rtx_equal_p(ptr noundef nonnull %80, ptr noundef %4) #22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !1041
  %88 = icmp ne ptr %87, null
  %89 = or i1 %44, %88
  br i1 %89, label %90, label %205

90:                                               ; preds = %85, %82, %76
  %91 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 17
  %92 = load i32, ptr %91, align 4, !tbaa !852
  switch i32 %92, label %219 [
    i32 10, label %185
    i32 4, label %93
    i32 3, label %118
    i32 0, label %134
    i32 8, label %139
    i32 7, label %150
    i32 2, label %151
    i32 1, label %152
    i32 6, label %153
    i32 5, label %168
    i32 9, label %172
  ]

93:                                               ; preds = %90
  switch i32 %3, label %113 [
    i32 3, label %94
    i32 0, label %103
  ]

94:                                               ; preds = %93
  %95 = icmp ne i32 %7, 0
  %96 = add nuw nsw i64 %50, 1
  %97 = icmp eq i64 %96, %48
  %98 = and i1 %95, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %46, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !1041
  %102 = icmp eq ptr %101, null
  br i1 %102, label %205, label %113

103:                                              ; preds = %93
  %104 = icmp ne i32 %7, 0
  %105 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 12
  %106 = load i32, ptr %105, align 8, !tbaa !851
  %107 = icmp eq i32 %106, %2
  %108 = and i1 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %46, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !1041
  %112 = icmp eq ptr %111, null
  br i1 %112, label %205, label %113

113:                                              ; preds = %94, %99, %93, %109, %103
  %114 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 12
  %115 = load i32, ptr %114, align 8, !tbaa !851
  %116 = shl nsw i32 %115, 2
  %117 = or disjoint i32 %116, 2
  br label %185

118:                                              ; preds = %90
  %119 = icmp ne i32 %7, 0
  %120 = icmp eq i32 %3, 0
  %121 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 12
  %122 = load i32, ptr %121, align 8, !tbaa !851
  %123 = icmp eq i32 %122, %2
  %124 = and i1 %119, %123
  %125 = select i1 %120, i1 %124, i1 false
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %46, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !1041
  %129 = icmp eq ptr %128, null
  br i1 %129, label %205, label %130

130:                                              ; preds = %118, %126
  %131 = phi i32 [ %2, %126 ], [ %122, %118 ]
  %132 = shl nsw i32 %131, 2
  %133 = or disjoint i32 %132, 3
  br label %185

134:                                              ; preds = %90
  %135 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 12
  %136 = load i32, ptr %135, align 8, !tbaa !851
  %137 = shl nsw i32 %136, 2
  %138 = add nsw i32 %137, 4
  br label %185

139:                                              ; preds = %90
  %140 = icmp eq i32 %3, 7
  br i1 %140, label %141, label %185

141:                                              ; preds = %139
  %142 = icmp ne i32 %7, 0
  %143 = add nuw nsw i64 %50, 1
  %144 = icmp eq i64 %143, %48
  %145 = and i1 %142, %144
  br i1 %145, label %146, label %185

146:                                              ; preds = %141
  %147 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %46, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !1041
  %149 = icmp eq ptr %148, null
  br i1 %149, label %205, label %185

150:                                              ; preds = %90
  br label %185

151:                                              ; preds = %90
  br label %185

152:                                              ; preds = %90
  br label %185

153:                                              ; preds = %90
  %154 = icmp eq i32 %3, 5
  br i1 %154, label %155, label %164

155:                                              ; preds = %153
  %156 = icmp ne i32 %7, 0
  %157 = add nuw nsw i64 %50, 1
  %158 = icmp eq i64 %157, %48
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %46, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !1041
  %163 = icmp eq ptr %162, null
  br i1 %163, label %205, label %164

164:                                              ; preds = %160, %155, %153
  %165 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 12
  %166 = load i32, ptr %165, align 8, !tbaa !851
  %167 = add nsw i32 %166, 124
  br label %185

168:                                              ; preds = %90
  %169 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 12
  %170 = load i32, ptr %169, align 8, !tbaa !851
  %171 = add nsw i32 %170, 125
  br label %185

172:                                              ; preds = %90
  %173 = load ptr, ptr %52, align 8, !tbaa !1043
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = tail call i32 @rtx_equal_p(ptr noundef %80, ptr noundef %4) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175, %172
  %179 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !1041
  %181 = tail call i32 @earlyclobber_operand_p(ptr noundef %180) #22
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 124, i32 123
  br label %185

184:                                              ; preds = %175
  br i1 %45, label %185, label %219

185:                                              ; preds = %178, %139, %141, %146, %90, %184, %168, %164, %152, %151, %150, %134, %130, %113
  %186 = phi i32 [ %51, %184 ], [ %51, %168 ], [ %51, %164 ], [ %51, %152 ], [ %51, %151 ], [ 1, %150 ], [ 1, %134 ], [ %51, %130 ], [ %51, %113 ], [ %51, %90 ], [ %51, %146 ], [ %51, %141 ], [ %51, %139 ], [ %51, %178 ]
  %187 = phi i32 [ 1, %184 ], [ %171, %168 ], [ %167, %164 ], [ 124, %152 ], [ 123, %151 ], [ 122, %150 ], [ %138, %134 ], [ %133, %130 ], [ %117, %113 ], [ 0, %90 ], [ 121, %146 ], [ 121, %141 ], [ 121, %139 ], [ %183, %178 ]
  %188 = icmp slt i32 %40, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %52, align 8, !tbaa !1043
  %191 = icmp eq ptr %190, null
  br i1 %191, label %219, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %50, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !1041
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %219

196:                                              ; preds = %192
  %197 = tail call i32 @rtx_equal_p(ptr noundef %80, ptr noundef %4) #22
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %219, label %199

199:                                              ; preds = %196, %185
  br i1 %45, label %205, label %200

200:                                              ; preds = %199
  %201 = load ptr, ptr %47, align 8, !tbaa !1174
  %202 = icmp ne ptr %201, null
  %203 = icmp sgt i32 %187, 122
  %204 = and i1 %203, %202
  br i1 %204, label %219, label %205

205:                                              ; preds = %160, %146, %126, %109, %99, %199, %200, %85, %49, %56, %60
  %206 = phi i32 [ %51, %60 ], [ %51, %56 ], [ %51, %49 ], [ %186, %199 ], [ %186, %200 ], [ %51, %85 ], [ %51, %99 ], [ %51, %109 ], [ %51, %126 ], [ %51, %146 ], [ %51, %160 ]
  %207 = add nuw nsw i64 %50, 1
  %208 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %49, label %211, !llvm.loop !1247

211:                                              ; preds = %205
  %212 = icmp ne i32 %206, 0
  %213 = icmp ne ptr %17, null
  %214 = and i1 %213, %212
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %17) #22
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %39, %215, %211
  br label %219

219:                                              ; preds = %184, %90, %200, %196, %192, %189, %215, %8, %218
  %220 = phi i32 [ 1, %218 ], [ 0, %8 ], [ 0, %215 ], [ 0, %189 ], [ 0, %192 ], [ 0, %196 ], [ 0, %200 ], [ 0, %90 ], [ 0, %184 ]
  ret i32 %220
}

; Function Attrs: optsize
declare i32 @earlyclobber_operand_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_reg_free_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !713 !PGOFuncName !1248 {
  %4 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
  %5 = zext nneg i32 %0 to i64
  %6 = shl nuw i64 1, %5
  %7 = and i64 %4, %6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %304, !prof !1249

9:                                                ; preds = %3
  %10 = load i64, ptr @reload_reg_unavailable, align 8, !tbaa !449
  %11 = and i64 %10, %6
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %304, !prof !1249

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
  ], !prof !1250

14:                                               ; preds = %13
  %15 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %291

17:                                               ; preds = %14
  %18 = zext nneg i32 %15 to i64
  br label %280

19:                                               ; preds = %13
  %20 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %236

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %230

24:                                               ; preds = %13
  %25 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %219

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  br label %213

29:                                               ; preds = %13
  %30 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !449
  %31 = and i64 %30, %6
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %304

33:                                               ; preds = %29
  %34 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  %35 = and i64 %34, %6
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %304

37:                                               ; preds = %33
  %38 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  %39 = and i64 %38, %6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %304

41:                                               ; preds = %37
  %42 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %43 = and i64 %42, %6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %304

45:                                               ; preds = %41
  %46 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %304

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  br label %53

50:                                               ; preds = %79
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, %49
  br i1 %52, label %304, label %53, !llvm.loop !1251

53:                                               ; preds = %48, %50
  %54 = phi i64 [ 0, %48 ], [ %51, %50 ]
  %55 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !449
  %57 = and i64 %56, %6
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %304

59:                                               ; preds = %53
  %60 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %54
  %61 = load i64, ptr %60, align 8, !tbaa !449
  %62 = and i64 %61, %6
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %304

64:                                               ; preds = %59
  %65 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %54
  %66 = load i64, ptr %65, align 8, !tbaa !449
  %67 = and i64 %66, %6
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %304

69:                                               ; preds = %64
  %70 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %54
  %71 = load i64, ptr %70, align 8, !tbaa !449
  %72 = and i64 %71, %6
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %304

74:                                               ; preds = %69
  %75 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %54
  %76 = load i64, ptr %75, align 8, !tbaa !449
  %77 = and i64 %76, %6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %304

79:                                               ; preds = %74
  %80 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %54
  %81 = load i64, ptr %80, align 8, !tbaa !449
  %82 = and i64 %81, %6
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %50, label %304

84:                                               ; preds = %13
  %85 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %86 = and i64 %85, %6
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %304

88:                                               ; preds = %84
  %89 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  %90 = and i64 %89, %6
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %304

92:                                               ; preds = %88
  %93 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  %94 = and i64 %93, %6
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %304

96:                                               ; preds = %92
  %97 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = zext nneg i32 %97 to i64
  br label %107

101:                                              ; preds = %107
  %102 = add nuw nsw i64 %108, 1
  %103 = icmp eq i64 %102, %100
  br i1 %103, label %104, label %107, !llvm.loop !1252

104:                                              ; preds = %101, %96
  %105 = sext i32 %1 to i64
  %106 = sext i32 %97 to i64
  br label %113

107:                                              ; preds = %99, %101
  %108 = phi i64 [ 0, %99 ], [ %102, %101 ]
  %109 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !449
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
  %119 = load i64, ptr %118, align 8, !tbaa !449
  %120 = and i64 %119, %6
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %304

122:                                              ; preds = %117
  %123 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %115
  %124 = load i64, ptr %123, align 8, !tbaa !449
  %125 = and i64 %124, %6
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %113, label %304, !llvm.loop !1253

127:                                              ; preds = %13
  %128 = sext i32 %1 to i64
  %129 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !449
  %131 = and i64 %130, %6
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %304

133:                                              ; preds = %127
  %134 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %128
  %135 = load i64, ptr %134, align 8, !tbaa !449
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
  %145 = load i64, ptr %144, align 8, !tbaa !449
  %146 = and i64 %145, %6
  %147 = icmp eq i64 %146, 0
  %148 = add nuw nsw i64 %143, 1
  %149 = icmp ne i64 %148, %141
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %142, label %304, !llvm.loop !1254

151:                                              ; preds = %13
  %152 = sext i32 %1 to i64
  %153 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !449
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
  %164 = load i64, ptr %163, align 8, !tbaa !449
  %165 = and i64 %164, %6
  %166 = icmp eq i64 %165, 0
  %167 = add nuw nsw i64 %162, 1
  %168 = icmp ne i64 %167, %160
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %161, label %304, !llvm.loop !1255

170:                                              ; preds = %13
  %171 = sext i32 %1 to i64
  %172 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !449
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
  %184 = load i64, ptr %183, align 8, !tbaa !449
  %185 = and i64 %184, %6
  %186 = icmp eq i64 %185, 0
  %187 = add nuw nsw i64 %182, 1
  %188 = icmp ne i64 %187, %180
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %181, label %304, !llvm.loop !1256

190:                                              ; preds = %13
  %191 = sext i32 %1 to i64
  %192 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !449
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
  %204 = load i64, ptr %203, align 8, !tbaa !449
  %205 = and i64 %204, %6
  %206 = icmp eq i64 %205, 0
  %207 = add nuw nsw i64 %202, 1
  %208 = icmp ne i64 %207, %200
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %201, label %304, !llvm.loop !1257

210:                                              ; preds = %213
  %211 = add nuw nsw i64 %214, 1
  %212 = icmp eq i64 %211, %28
  br i1 %212, label %219, label %213, !llvm.loop !1258

213:                                              ; preds = %27, %210
  %214 = phi i64 [ 0, %27 ], [ %211, %210 ]
  %215 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !449
  %217 = and i64 %216, %6
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %210, label %304

219:                                              ; preds = %210, %24
  %220 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
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
  br i1 %229, label %236, label %230, !llvm.loop !1259

230:                                              ; preds = %22, %227
  %231 = phi i64 [ 0, %22 ], [ %228, %227 ]
  %232 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !449
  %234 = and i64 %233, %6
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %227, label %304

236:                                              ; preds = %227, %19
  %237 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  %238 = and i64 %237, %6
  %239 = icmp eq i64 %238, 0
  br label %304

240:                                              ; preds = %13
  %241 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %242 = and i64 %241, %6
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %304, !prof !1249

244:                                              ; preds = %240
  %245 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %252, !prof !1062

247:                                              ; preds = %244
  %248 = zext nneg i32 %245 to i64
  br label %257

249:                                              ; preds = %257
  %250 = add nuw nsw i64 %258, 1
  %251 = icmp eq i64 %250, %248
  br i1 %251, label %252, label %257, !prof !1260, !llvm.loop !1261

252:                                              ; preds = %249, %244
  %253 = icmp sgt i32 %245, %1
  br i1 %253, label %254, label %304, !prof !1062

254:                                              ; preds = %252
  %255 = sext i32 %1 to i64
  %256 = sext i32 %245 to i64
  br label %266

257:                                              ; preds = %247, %249
  %258 = phi i64 [ 0, %247 ], [ %250, %249 ]
  %259 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !449
  %261 = and i64 %260, %6
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %249, label %304, !prof !1062

263:                                              ; preds = %272
  %264 = add nsw i64 %267, 1
  %265 = icmp eq i64 %264, %256
  br i1 %265, label %304, label %266, !prof !1260, !llvm.loop !1262

266:                                              ; preds = %254, %263
  %267 = phi i64 [ %255, %254 ], [ %264, %263 ]
  %268 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !449
  %270 = and i64 %269, %6
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %304, !prof !1062

272:                                              ; preds = %266
  %273 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %267
  %274 = load i64, ptr %273, align 8, !tbaa !449
  %275 = and i64 %274, %6
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %263, label %304, !prof !1062

277:                                              ; preds = %286
  %278 = add nuw nsw i64 %281, 1
  %279 = icmp eq i64 %278, %18
  br i1 %279, label %291, label %280, !llvm.loop !1263

280:                                              ; preds = %17, %277
  %281 = phi i64 [ 0, %17 ], [ %278, %277 ]
  %282 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %281
  %283 = load i64, ptr %282, align 8, !tbaa !449
  %284 = and i64 %283, %6
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %280
  %287 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %281
  %288 = load i64, ptr %287, align 8, !tbaa !449
  %289 = and i64 %288, %6
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %277, label %304

291:                                              ; preds = %277, %14
  %292 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %293 = and i64 %292, %6
  %294 = icmp eq i64 %293, 0
  %295 = load i64, ptr @reload_reg_used_in_op_addr, align 8
  %296 = and i64 %295, %6
  %297 = icmp eq i64 %296, 0
  %298 = select i1 %294, i1 %297, i1 false
  br label %304

299:                                              ; preds = %13
  %300 = load i64, ptr @reload_reg_used_in_other_addr, align 8, !tbaa !449
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
define internal fastcc void @do_input_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !983 !PGOFuncName !1264 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !671
  %6 = load ptr, ptr %1, align 8, !tbaa !417
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !1133

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !849
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %11
  store ptr %10, ptr %12, align 8, !tbaa !417
  br label %69

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  %17 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %18 = select i1 %16, ptr %17, ptr %1, !prof !1265
  %19 = load ptr, ptr %18, align 8, !tbaa !417
  %20 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !849
  %22 = icmp ne ptr %19, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %45, !prof !1266

25:                                               ; preds = %13
  %26 = load i32, ptr %19, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !1267
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
  store ptr %42, ptr %44, align 8, !tbaa !417
  br label %48

45:                                               ; preds = %13
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %46
  store ptr %21, ptr %47, align 8, !tbaa !417
  br i1 %22, label %48, label %69, !prof !1268

48:                                               ; preds = %41, %45
  %49 = phi i64 [ %43, %41 ], [ %46, %45 ]
  %50 = phi ptr [ %42, %41 ], [ %21, %45 ]
  %51 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %49
  %52 = load i8, ptr %51, align 1, !tbaa !397
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54, !prof !1145

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !1041
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !1174
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %48
  %63 = tail call i32 @rtx_equal_p(ptr noundef %50, ptr noundef nonnull %19) #22
  %64 = icmp eq i32 %63, 0
  %65 = icmp ne ptr %50, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %69, !prof !1269

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.reload, ptr @rld, i64 %49
  tail call fastcc void @emit_input_reload_insns(ptr noundef nonnull %0, ptr noundef nonnull %68, ptr noundef nonnull %19, i32 noundef %2) #23
  br label %69

69:                                               ; preds = %8, %67, %62, %58, %54, %45
  %70 = phi i64 [ %49, %67 ], [ %49, %62 ], [ %49, %58 ], [ %49, %54 ], [ %46, %45 ], [ %11, %8 ]
  %71 = phi ptr [ %50, %67 ], [ %50, %62 ], [ %50, %58 ], [ %50, %54 ], [ %21, %45 ], [ %10, %8 ]
  %72 = load i32, ptr @optimize, align 4, !tbaa !431
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %140, label %74, !prof !768

74:                                               ; preds = %69
  %75 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %70
  %76 = load i8, ptr %75, align 1, !tbaa !397
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %108, label %78, !prof !767

78:                                               ; preds = %74
  %79 = load ptr, ptr %1, align 8, !tbaa !1043
  %80 = icmp eq ptr %79, null
  br i1 %80, label %112, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %79, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 43
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !1135
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %112

91:                                               ; preds = %85
  %92 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %70
  %93 = load i32, ptr %92, align 4, !tbaa !431
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %97 = zext nneg i32 %93 to i64
  %98 = shl nuw i64 1, %97
  %99 = and i64 %96, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !417
  %103 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !431
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !417
  store ptr %107, ptr %1, align 8, !tbaa !1043
  br label %112

108:                                              ; preds = %74
  %109 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %70
  %110 = load ptr, ptr %109, align 8, !tbaa !417
  %111 = icmp eq ptr %110, null
  br i1 %111, label %140, label %112, !prof !767

112:                                              ; preds = %78, %81, %85, %91, %95, %101, %108
  %113 = icmp eq ptr %71, null
  br i1 %113, label %140, label %114

114:                                              ; preds = %112
  %115 = load i32, ptr %71, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 37
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !417
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %120
  %126 = load ptr, ptr %125, align 8, !tbaa !417
  %127 = tail call i32 @dead_or_set_p(ptr noundef %5, ptr noundef %126) #22
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !417
  %134 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !1174
  %136 = tail call i32 @rtx_equal_p(ptr noundef %133, ptr noundef %135) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %129, %124
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #23
  tail call fastcc void @delete_output_reload(ptr noundef %5, i32 noundef %2, i32 noundef %139, ptr noundef nonnull %71) #23
  br label %140

140:                                              ; preds = %69, %138, %129, %118, %114, %112, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_output_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !983 !PGOFuncName !1270 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !671
  %6 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !1174
  %8 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !849
  %10 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1041
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %38, !prof !1271

15:                                               ; preds = %3
  %16 = load i32, ptr %11, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30, !prof !772

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !397
  %23 = tail call i32 @asm_noperands(ptr noundef %22) #22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @_fatal_insn(ptr noundef nonnull @.str.21, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef 7695, ptr noundef nonnull @.str.2) #22
  br label %26

26:                                               ; preds = %25, %20
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %5, ptr noundef nonnull @.str.22) #22
  %27 = load i32, ptr @word_mode, align 4, !tbaa !431
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #23
  %29 = tail call ptr @gen_rtx_REG(i32 noundef %27, i32 noundef %28) #22
  store ptr %29, ptr %10, align 8, !tbaa !1041
  br label %30

30:                                               ; preds = %26, %15
  %31 = phi i32 [ %27, %26 ], [ %18, %15 ]
  %32 = load i32, ptr %9, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %38, label %36, !prof !771

36:                                               ; preds = %30
  %37 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %9, i32 noundef %31) #22
  br label %38

38:                                               ; preds = %30, %36, %3
  %39 = phi ptr [ %9, %3 ], [ %37, %36 ], [ %9, %30 ]
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %40
  store ptr %39, ptr %41, align 8, !tbaa !417
  %42 = icmp ne ptr %7, null
  %43 = load i32, ptr @optimize, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %89, !prof !1272

46:                                               ; preds = %38
  %47 = load i32, ptr %7, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %89, !prof !1175

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !1135
  %53 = tail call i32 @rtx_equal_p(ptr noundef %52, ptr noundef nonnull %7) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %89, !prof !1273

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %57 = icmp ugt i32 %56, 52
  br i1 %57, label %58, label %89, !prof !1176

58:                                               ; preds = %55
  %59 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %60 = zext i32 %56 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !417
  %63 = icmp eq ptr %62, null
  br i1 %63, label %89, label %64, !prof !560

64:                                               ; preds = %58
  %65 = sext i32 %56 to i64
  %66 = getelementptr inbounds ptr, ptr %59, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !417
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef %67) #23
  %69 = load i64, ptr @reg_reloaded_valid, align 8, !tbaa !449
  %70 = zext nneg i32 %68 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %69
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %64
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !431
  %78 = icmp eq i32 %77, %56
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %75
  %81 = load ptr, ptr %80, align 8, !tbaa !417
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %75
  %85 = load ptr, ptr %84, align 8, !tbaa !417
  %86 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef %85) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call fastcc void @delete_output_reload(ptr noundef %5, i32 noundef %2, i32 noundef %68, ptr noundef %39) #23
  br label %89

89:                                               ; preds = %64, %74, %79, %83, %88, %58, %55, %50, %46, %38
  %90 = load ptr, ptr %6, align 8, !tbaa !1174
  %91 = icmp eq ptr %90, null
  %92 = icmp eq ptr %39, null
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %140, label %94, !prof !1274

94:                                               ; preds = %89
  %95 = tail call i32 @rtx_equal_p(ptr noundef nonnull %90, ptr noundef nonnull %39) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %140, !prof !771

97:                                               ; preds = %94
  %98 = load i32, ptr %90, align 8
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -37
  %101 = icmp ult i32 %100, 2
  br i1 %101, label %102, label %109, !prof !1275

102:                                              ; preds = %97
  %103 = tail call ptr @find_reg_note(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %90) #22
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107, !prof !771

105:                                              ; preds = %102
  %106 = load i32, ptr %90, align 8
  br label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  store ptr %39, ptr %108, align 8, !tbaa !397
  br label %140

109:                                              ; preds = %105, %97
  %110 = phi i32 [ %106, %105 ], [ %98, %97 ]
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 39
  br i1 %112, label %113, label %130, !prof !772

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !397
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
  store ptr %128, ptr %129, align 8, !tbaa !397
  br label %140

130:                                              ; preds = %123, %109
  %131 = phi i32 [ %124, %123 ], [ %111, %109 ]
  %132 = icmp eq i32 %131, 38
  br i1 %132, label %140, label %133, !prof !1276

133:                                              ; preds = %113, %130
  %134 = load i32, ptr %5, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 8
  br i1 %136, label %138, label %137, !prof !771

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
define internal fastcc i32 @reload_reg_reaches_end_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !713 !PGOFuncName !1277 {
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
  ], !prof !1250

4:                                                ; preds = %3
  %5 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  br label %165

6:                                                ; preds = %3
  %7 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %8 = icmp sgt i32 %7, 0
  %9 = zext nneg i32 %0 to i64
  %10 = shl nuw i64 1, %9
  br i1 %8, label %11, label %214

11:                                               ; preds = %6
  %12 = zext nneg i32 %7 to i64
  br label %198

13:                                               ; preds = %3
  %14 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  %15 = zext nneg i32 %0 to i64
  %16 = shl nuw i64 1, %15
  %17 = sext i32 %1 to i64
  %18 = sext i32 %14 to i64
  br label %146

19:                                               ; preds = %3
  %20 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
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
  br i1 %28, label %60, label %29, !llvm.loop !1278

29:                                               ; preds = %24, %26
  %30 = phi i64 [ 0, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !449
  %33 = and i64 %32, %23
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %250

35:                                               ; preds = %29
  %36 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %30
  %37 = load i64, ptr %36, align 8, !tbaa !449
  %38 = and i64 %37, %23
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %250

40:                                               ; preds = %35
  %41 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %30
  %42 = load i64, ptr %41, align 8, !tbaa !449
  %43 = and i64 %42, %23
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %250

45:                                               ; preds = %40
  %46 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input_addr, i64 0, i64 %30
  %47 = load i64, ptr %46, align 8, !tbaa !449
  %48 = and i64 %47, %23
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %250

50:                                               ; preds = %45
  %51 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %30
  %52 = load i64, ptr %51, align 8, !tbaa !449
  %53 = and i64 %52, %23
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %250

55:                                               ; preds = %50
  %56 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %30
  %57 = load i64, ptr %56, align 8, !tbaa !449
  %58 = and i64 %57, %23
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %26, label %250

60:                                               ; preds = %26, %19
  %61 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  %62 = and i64 %61, %23
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %250

64:                                               ; preds = %60
  %65 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  %66 = and i64 %65, %23
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %250

68:                                               ; preds = %64
  %69 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %70 = and i64 %69, %23
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %250

72:                                               ; preds = %68
  %73 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
  %74 = and i64 %73, %23
  %75 = icmp eq i64 %74, 0
  br label %250

76:                                               ; preds = %3, %3
  %77 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
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
  br i1 %86, label %83, label %87, !llvm.loop !1279

87:                                               ; preds = %76, %84
  %88 = phi i64 [ %85, %84 ], [ %81, %76 ]
  %89 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !449
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
  %103 = load i64, ptr %102, align 8, !tbaa !449
  %104 = and i64 %103, %80
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %250

106:                                              ; preds = %101
  %107 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %95
  %108 = load i64, ptr %107, align 8, !tbaa !449
  %109 = and i64 %108, %80
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %93, label %250, !llvm.loop !1280

111:                                              ; preds = %125
  %112 = add nuw nsw i64 %115, 1
  %113 = icmp eq i64 %112, %100
  br i1 %113, label %130, label %114, !llvm.loop !1281

114:                                              ; preds = %99, %111
  %115 = phi i64 [ 0, %99 ], [ %112, %111 ]
  %116 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !449
  %118 = and i64 %117, %80
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %250

120:                                              ; preds = %114
  %121 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %115
  %122 = load i64, ptr %121, align 8, !tbaa !449
  %123 = and i64 %122, %80
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %250

125:                                              ; preds = %120
  %126 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %115
  %127 = load i64, ptr %126, align 8, !tbaa !449
  %128 = and i64 %127, %80
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %111, label %250

130:                                              ; preds = %111, %97
  %131 = load i64, ptr @reload_reg_used_in_op_addr_reload, align 8, !tbaa !449
  %132 = and i64 %131, %80
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %250

134:                                              ; preds = %130
  %135 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  %136 = and i64 %135, %80
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %250

138:                                              ; preds = %134
  %139 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %140 = and i64 %139, %80
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %250

142:                                              ; preds = %138
  %143 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
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
  %152 = load i64, ptr %151, align 8, !tbaa !449
  %153 = and i64 %152, %16
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %250

155:                                              ; preds = %150
  %156 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_inpaddr_addr, i64 0, i64 %148
  %157 = load i64, ptr %156, align 8, !tbaa !449
  %158 = and i64 %157, %16
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %250

160:                                              ; preds = %155
  %161 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_input, i64 0, i64 %148
  %162 = load i64, ptr %161, align 8, !tbaa !449
  %163 = and i64 %162, %16
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %146, label %250, !llvm.loop !1282

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
  br i1 %174, label %191, label %175, !llvm.loop !1283

175:                                              ; preds = %170, %172
  %176 = phi i64 [ 0, %170 ], [ %173, %172 ]
  %177 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !449
  %179 = and i64 %178, %169
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %250

181:                                              ; preds = %175
  %182 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %176
  %183 = load i64, ptr %182, align 8, !tbaa !449
  %184 = and i64 %183, %169
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %250

186:                                              ; preds = %181
  %187 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %176
  %188 = load i64, ptr %187, align 8, !tbaa !449
  %189 = and i64 %188, %169
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %172, label %250

191:                                              ; preds = %172, %165
  %192 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
  %193 = and i64 %192, %169
  %194 = icmp eq i64 %193, 0
  br label %250

195:                                              ; preds = %209
  %196 = add nuw nsw i64 %199, 1
  %197 = icmp eq i64 %196, %12
  br i1 %197, label %214, label %198, !llvm.loop !1284

198:                                              ; preds = %11, %195
  %199 = phi i64 [ 0, %11 ], [ %196, %195 ]
  %200 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !449
  %202 = and i64 %201, %10
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %198
  %205 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %199
  %206 = load i64, ptr %205, align 8, !tbaa !449
  %207 = and i64 %206, %10
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %250

209:                                              ; preds = %204
  %210 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output, i64 0, i64 %199
  %211 = load i64, ptr %210, align 8, !tbaa !449
  %212 = and i64 %211, %10
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %195, label %250

214:                                              ; preds = %195, %6
  %215 = load i64, ptr @reload_reg_used_in_op_addr, align 8, !tbaa !449
  %216 = and i64 %215, %10
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i64, ptr @reload_reg_used_in_insn, align 8, !tbaa !449
  %220 = and i64 %219, %10
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %250

222:                                              ; preds = %218
  %223 = load i64, ptr @reload_reg_used, align 8, !tbaa !449
  %224 = and i64 %223, %10
  %225 = icmp eq i64 %224, 0
  br label %250

226:                                              ; preds = %3
  %227 = load i32, ptr @reload_n_operands, align 4, !tbaa !431
  br label %228

228:                                              ; preds = %3, %3, %3, %226
  %229 = phi i32 [ %1, %3 ], [ %1, %3 ], [ %1, %3 ], [ %227, %226 ]
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %250, !prof !1285

231:                                              ; preds = %228
  %232 = zext nneg i32 %0 to i64
  %233 = shl nuw i64 1, %232
  br label %238

234:                                              ; preds = %244
  %235 = zext nneg i32 %229 to i64
  %236 = add nuw nsw i64 %239, 1
  %237 = icmp eq i64 %236, %235
  br i1 %237, label %250, label %238, !prof !401, !llvm.loop !1286

238:                                              ; preds = %231, %234
  %239 = phi i64 [ 0, %231 ], [ %236, %234 ]
  %240 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_output_addr, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !449
  %242 = and i64 %241, %233
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = getelementptr inbounds [30 x i64], ptr @reload_reg_used_in_outaddr_addr, i64 0, i64 %239
  %246 = load i64, ptr %245, align 8, !tbaa !449
  %247 = and i64 %246, %233
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %234, label %250

249:                                              ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5110, ptr noundef nonnull @.str.2) #22
  br label %250

250:                                              ; preds = %244, %238, %234, %198, %204, %209, %150, %155, %160, %175, %181, %186, %87, %101, %106, %114, %120, %125, %29, %35, %40, %45, %50, %55, %228, %214, %218, %222, %134, %138, %142, %130, %60, %64, %68, %72, %3, %249, %191
  %251 = phi i1 [ false, %249 ], [ %194, %191 ], [ true, %3 ], [ false, %68 ], [ false, %64 ], [ false, %60 ], [ %75, %72 ], [ false, %130 ], [ false, %138 ], [ false, %134 ], [ %145, %142 ], [ false, %218 ], [ false, %214 ], [ %225, %222 ], [ true, %228 ], [ false, %55 ], [ false, %50 ], [ false, %45 ], [ false, %40 ], [ false, %35 ], [ false, %29 ], [ false, %125 ], [ false, %120 ], [ false, %114 ], [ false, %106 ], [ false, %101 ], [ false, %87 ], [ false, %186 ], [ false, %181 ], [ false, %175 ], [ false, %160 ], [ false, %155 ], [ false, %150 ], [ false, %209 ], [ false, %204 ], [ false, %198 ], [ false, %244 ], [ false, %238 ], [ true, %234 ]
  %252 = zext i1 %251 to i32
  ret i32 %252
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_regs_reach_end_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1052 !PGOFuncName !1287 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %9, label %14, !prof !1072

6:                                                ; preds = %9
  %7 = add nuw nsw i32 %10, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %14, label %9, !prof !1072, !llvm.loop !1288

9:                                                ; preds = %4, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %11 = add i32 %10, %0
  %12 = tail call fastcc i32 @reload_reg_reaches_end_p(i32 noundef %11, i32 noundef %2, i32 noundef %3) #23, !range !496
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6, !prof !772

14:                                               ; preds = %9, %6, %4
  %15 = phi i8 [ 1, %4 ], [ 1, %6 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @inherit_piecemeal_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1052 !PGOFuncName !1289 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !431
  %7 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %4
  %8 = load i32, ptr %7, align 4, !tbaa !431
  %9 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %2, i32 noundef %6, i32 noundef %8) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20, !prof !771

11:                                               ; preds = %3
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !431
  %15 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !431
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
define internal fastcc void @emit_input_reload_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !608 !PGOFuncName !1290 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.secondary_reload_info, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !671
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !417
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !1135
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
  %28 = load ptr, ptr %27, align 8, !tbaa !397
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %15, %4, %23, %29, %21, %26
  %31 = phi ptr [ %17, %26 ], [ %17, %21 ], [ %17, %23 ], [ %17, %29 ], [ %2, %15 ], [ %2, %4 ]
  %32 = phi ptr [ %2, %26 ], [ %17, %21 ], [ %2, %23 ], [ %2, %29 ], [ %2, %15 ], [ %2, %4 ]
  %33 = phi ptr [ %28, %26 ], [ null, %21 ], [ %2, %23 ], [ null, %29 ], [ null, %15 ], [ null, %4 ]
  %34 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_input, i64 0, i64 %11
  %35 = load ptr, ptr %34, align 8, !tbaa !417
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = load i32, ptr @optimize, align 4, !tbaa !431
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
  %51 = load ptr, ptr %50, align 8, !tbaa !417
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %31, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !417
  %60 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef %59) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #23
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !417
  %67 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !1174
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
  %85 = load ptr, ptr %84, align 8, !tbaa !397
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 39
  br i1 %88, label %77, label %89, !llvm.loop !1291

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
  %102 = load i32, ptr %101, align 4, !tbaa !852
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
  %105 = load i32, ptr %104, align 8, !tbaa !851
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [30 x ptr], ptr @input_reload_insns, i64 0, i64 %106
  br label %132

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %110 = load i32, ptr %109, align 8, !tbaa !851
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [30 x ptr], ptr @input_address_reload_insns, i64 0, i64 %111
  br label %132

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %115 = load i32, ptr %114, align 8, !tbaa !851
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x ptr], ptr @inpaddr_address_reload_insns, i64 0, i64 %116
  br label %132

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %120 = load i32, ptr %119, align 8, !tbaa !851
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [30 x ptr], ptr @output_address_reload_insns, i64 0, i64 %121
  br label %132

123:                                              ; preds = %99
  %124 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %125 = load i32, ptr %124, align 8, !tbaa !851
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
  %134 = load ptr, ptr %133, align 8, !tbaa !417
  tail call void @push_to_sequence(ptr noundef %134) #22
  %135 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !1041
  %137 = icmp eq ptr %136, null
  br i1 %137, label %196, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !1174
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %196

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !1292
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6995, ptr noundef nonnull @.str.2) #22
  br label %147

147:                                              ; preds = %142, %146
  %148 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %11
  %149 = load i8, ptr %148, align 1, !tbaa !397
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, ptr %100, ptr %35
  %152 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !1135
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !397
  %156 = load i32, ptr @optimize, align 4, !tbaa !431
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
  %168 = load ptr, ptr %167, align 8, !tbaa !417
  %169 = icmp eq ptr %168, null
  br i1 %169, label %188, label %170

170:                                              ; preds = %165
  %171 = load i32, ptr %155, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 37
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %166
  %176 = load ptr, ptr %175, align 8, !tbaa !417
  %177 = tail call i32 @dead_or_set_p(ptr noundef %10, ptr noundef %176) #22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !417
  %184 = tail call i32 @rtx_equal_p(ptr noundef %183, ptr noundef nonnull %155) #22
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179, %174
  %187 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %151) #23
  tail call fastcc void @delete_output_reload(ptr noundef %10, i32 noundef %3, i32 noundef %187, ptr noundef nonnull %35) #23
  br label %188

188:                                              ; preds = %186, %179, %170, %165, %162, %158, %147
  %189 = load ptr, ptr %135, align 8, !tbaa !1041
  %190 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 7
  %191 = load i32, ptr %190, align 4, !tbaa !1293
  %192 = tail call fastcc ptr @inc_for_reload(ptr noundef nonnull %35, ptr noundef %151, ptr noundef %189, i32 noundef %191) #23
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %194
  store ptr %192, ptr %195, align 8, !tbaa !417
  br label %584

196:                                              ; preds = %138, %132
  %197 = load i32, ptr @optimize, align 4, !tbaa !431
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
  %210 = tail call fastcc i32 @conflicts_with_override(ptr noundef nonnull %35) #23, !range !496
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %317

212:                                              ; preds = %209
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %214 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 5
  %215 = load i32, ptr %214, align 4, !tbaa !853
  %216 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !851
  %218 = load i32, ptr %101, align 4, !tbaa !852
  %219 = load ptr, ptr %135, align 8, !tbaa !1041
  %220 = tail call fastcc i32 @free_for_value_p(i32 noundef %213, i32 noundef %215, i32 noundef %217, i32 noundef %218, ptr noundef nonnull %31, ptr noundef %219, i32 noundef %3, i32 noundef 0) #23, !range !496
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %317, label %222

222:                                              ; preds = %212
  %223 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !397
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
  %232 = load ptr, ptr %231, align 8, !tbaa !397
  %233 = icmp eq ptr %232, null
  br i1 %233, label %317, label %226, !llvm.loop !1294

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !397
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 23
  br i1 %239, label %240, label %317

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !397
  %243 = icmp eq ptr %242, %31
  br i1 %243, label %244, label %317

244:                                              ; preds = %240
  %245 = tail call i32 @asm_noperands(ptr noundef nonnull %236) #22
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %317

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !397
  %250 = tail call i32 @count_occurrences(ptr noundef %249, ptr noundef nonnull %31, i32 noundef 0) #22
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %317

252:                                              ; preds = %247
  %253 = load ptr, ptr %235, align 8, !tbaa !397
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !397
  store ptr %35, ptr %254, align 8, !tbaa !397
  tail call void @extract_insn(ptr noundef nonnull %227) #22
  %256 = tail call i32 @constrain_operands(i32 noundef 1) #22
  %257 = icmp eq i32 %256, 0
  %258 = load ptr, ptr %235, align 8, !tbaa !397
  br i1 %257, label %315, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !397
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
  store ptr null, ptr %270, align 8, !tbaa !417
  %271 = load ptr, ptr %235, align 8, !tbaa !397
  %272 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !397
  %274 = tail call fastcc i32 @rhs_regno(ptr noundef %273) #23
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %275
  store ptr null, ptr %276, align 8, !tbaa !417
  br label %277

277:                                              ; preds = %268, %265, %259
  %278 = load ptr, ptr @reg_info_p, align 8, !tbaa !417
  %279 = tail call fastcc i32 @rhs_regno(ptr noundef %255) #23
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.reg_info_t, ptr %278, i64 %280, i32 1
  %282 = load i32, ptr %281, align 4, !tbaa !1295
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %298

284:                                              ; preds = %277
  %285 = tail call fastcc i32 @REG_N_SETS(i32 noundef %279) #23
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %289 = trunc i32 %288 to i16
  %290 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %291 = getelementptr inbounds i16, ptr %290, i64 %280
  store i16 %289, ptr %291, align 2, !tbaa !432
  %292 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
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
  %300 = load ptr, ptr %299, align 8, !tbaa !397
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
  %308 = load ptr, ptr %307, align 8, !tbaa !397
  %309 = tail call ptr @replace_rtx(ptr noundef %308, ptr noundef %255, ptr noundef nonnull %35) #22
  br label %311

310:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7083, ptr noundef nonnull @.str.2) #22
  br label %311

311:                                              ; preds = %302, %310, %306
  %312 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 2
  %313 = load ptr, ptr %312, align 8, !tbaa !397
  %314 = icmp eq ptr %313, %10
  br i1 %314, label %584, label %302, !llvm.loop !1296

315:                                              ; preds = %252
  %316 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1
  store ptr %255, ptr %316, align 8, !tbaa !397
  br label %317

317:                                              ; preds = %230, %226, %222, %209, %212, %206, %203, %199, %196, %247, %244, %240, %234, %315
  %318 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 13
  %319 = load i32, ptr %318, align 4, !tbaa !1292
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %522

321:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !417
  %322 = load i32, ptr %100, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 39
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !397
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
  %338 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %339 = zext i32 %335 to i64
  %340 = getelementptr inbounds ptr, ptr %338, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !417
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %345 = getelementptr inbounds ptr, ptr %344, i64 %339
  %346 = load ptr, ptr %345, align 8, !tbaa !417
  %347 = icmp eq ptr %346, null
  br i1 %347, label %359, label %348

348:                                              ; preds = %343, %337
  %349 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %350 = getelementptr inbounds ptr, ptr %349, i64 %339
  %351 = load ptr, ptr %350, align 8, !tbaa !417
  %352 = icmp eq ptr %351, null
  %353 = load i32, ptr @num_not_at_initial_offset, align 4
  %354 = icmp ne i32 %353, 0
  %355 = select i1 %352, i1 true, i1 %354
  %356 = or i1 %324, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %348
  %358 = load ptr, ptr %1, align 8, !tbaa !1043
  br label %359

359:                                              ; preds = %348, %357, %343, %334, %329
  %360 = phi ptr [ %358, %357 ], [ %100, %343 ], [ %100, %334 ], [ %100, %329 ], [ %351, %348 ]
  %361 = load i32, ptr %31, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 39
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !397
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
  %377 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %378 = zext i32 %374 to i64
  %379 = getelementptr inbounds ptr, ptr %377, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !417
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %387

382:                                              ; preds = %376
  %383 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %384 = getelementptr inbounds ptr, ptr %383, i64 %378
  %385 = load ptr, ptr %384, align 8, !tbaa !417
  %386 = icmp eq ptr %385, null
  br i1 %386, label %398, label %387

387:                                              ; preds = %382, %376
  %388 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %389 = getelementptr inbounds ptr, ptr %388, i64 %378
  %390 = load ptr, ptr %389, align 8, !tbaa !417
  %391 = icmp eq ptr %390, null
  %392 = load i32, ptr @num_not_at_initial_offset, align 4
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %391, i1 true, i1 %393
  %395 = or i1 %363, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = load ptr, ptr %1, align 8, !tbaa !1043
  br label %398

398:                                              ; preds = %387, %396, %382, %373, %368
  %399 = phi ptr [ %397, %396 ], [ %31, %382 ], [ %31, %373 ], [ %31, %368 ], [ %390, %387 ]
  %400 = zext nneg i32 %319 to i64
  %401 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 11
  %402 = load ptr, ptr %401, align 8, !tbaa !849
  store ptr %402, ptr %5, align 8, !tbaa !417
  %403 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 13
  %404 = load i32, ptr %403, align 4, !tbaa !1292
  %405 = icmp sgt i32 %404, -1
  br i1 %405, label %406, label %416

406:                                              ; preds = %398
  %407 = zext nneg i32 %404 to i64
  %408 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %407, i32 11
  %409 = load ptr, ptr %408, align 8, !tbaa !849
  store ptr %409, ptr %6, align 8, !tbaa !417
  %410 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %400, i32 15
  %411 = load i32, ptr %410, align 4, !tbaa !1297
  %412 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %407, i32 13
  %413 = load i32, ptr %412, align 4, !tbaa !1292
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7169, ptr noundef nonnull @.str.2) #22
  br label %416

416:                                              ; preds = %415, %406, %398
  %417 = phi i32 [ 2956, %398 ], [ %411, %406 ], [ %411, %415 ]
  %418 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 15
  %419 = load i32, ptr %418, align 4, !tbaa !1297
  %420 = icmp eq ptr %31, %100
  br i1 %420, label %424, label %421

421:                                              ; preds = %416
  %422 = tail call i32 @rtx_equal_p(ptr noundef nonnull %31, ptr noundef nonnull %100) #22
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %430, label %424

424:                                              ; preds = %421, %416
  %425 = load ptr, ptr %1, align 8, !tbaa !1043
  %426 = icmp eq ptr %425, null
  br i1 %426, label %478, label %427

427:                                              ; preds = %424
  %428 = load ptr, ptr %135, align 8, !tbaa !1041
  %429 = icmp eq ptr %428, null
  br i1 %429, label %478, label %430

430:                                              ; preds = %427, %421
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  store i32 2956, ptr %7, align 8, !tbaa !1298
  %431 = getelementptr inbounds %struct.secondary_reload_info, ptr %7, i64 0, i32 2
  store ptr null, ptr %431, align 8, !tbaa !1300
  %432 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !1301
  %433 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 2
  %434 = load i32, ptr %433, align 8, !tbaa !1046
  %435 = call i32 %432(i8 noundef zeroext 1, ptr noundef %360, i32 noundef %434, i32 noundef %38, ptr noundef nonnull %7) #22
  %436 = icmp eq i32 %435, 0
  %437 = load i32, ptr %7, align 8
  %438 = icmp eq i32 %437, 2956
  %439 = select i1 %436, i1 %438, i1 false
  br i1 %439, label %440, label %441

440:                                              ; preds = %430
  store ptr null, ptr %5, align 8, !tbaa !417
  br label %472

441:                                              ; preds = %430
  br i1 %436, label %442, label %448

442:                                              ; preds = %441
  %443 = load ptr, ptr %6, align 8, !tbaa !417
  %444 = call fastcc zeroext i8 @reload_adjust_reg_for_icode(ptr noundef nonnull %5, ptr noundef %443, i32 noundef %437) #23
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %472, label %446

446:                                              ; preds = %442
  %447 = load i32, ptr %7, align 8, !tbaa !1298
  store ptr null, ptr %6, align 8, !tbaa !417
  br label %472

448:                                              ; preds = %441
  br i1 %438, label %450, label %449

449:                                              ; preds = %448
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7203, ptr noundef nonnull @.str.2) #22
  br label %472

450:                                              ; preds = %448
  %451 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !1301
  %452 = call i32 %451(i8 noundef zeroext 1, ptr noundef %360, i32 noundef %435, i32 noundef %38, ptr noundef nonnull %7) #22
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %450
  %455 = load ptr, ptr %6, align 8, !tbaa !417
  %456 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %5, ptr noundef %455, i32 noundef %435, i32 noundef %38) #23
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %472, label %458

458:                                              ; preds = %454
  store ptr null, ptr %6, align 8, !tbaa !417
  br label %472

459:                                              ; preds = %450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %460 = load ptr, ptr %5, align 8, !tbaa !417
  store ptr %460, ptr %8, align 8, !tbaa !417
  %461 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %8, ptr noundef null, i32 noundef %435, i32 noundef %38) #23
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %459
  %464 = call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef nonnull %6, ptr noundef null, i32 noundef %452, i32 noundef %38) #23
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %463
  %467 = load ptr, ptr %8, align 8, !tbaa !417
  store ptr %467, ptr %5, align 8, !tbaa !417
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
  %477 = load ptr, ptr %5, align 8, !tbaa !417
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
  %488 = load ptr, ptr %6, align 8, !tbaa !417
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
  %496 = load ptr, ptr %495, align 8, !tbaa !1302
  %497 = load ptr, ptr %6, align 8, !tbaa !417
  %498 = call ptr (ptr, ...) %496(ptr noundef nonnull %479, ptr noundef %482, ptr noundef %497) #22
  %499 = call ptr @emit_insn(ptr noundef %498) #22
  br label %512

500:                                              ; preds = %491
  %501 = load ptr, ptr %6, align 8, !tbaa !417
  %502 = icmp eq ptr %501, null
  %503 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %504 = load i32, ptr %503, align 8, !tbaa !851
  %505 = load i32, ptr %101, align 4, !tbaa !852
  br i1 %502, label %511, label %506

506:                                              ; preds = %500
  call fastcc void @gen_reload(ptr noundef nonnull %501, ptr noundef %482, i32 noundef %504, i32 noundef %505) #23
  %507 = load ptr, ptr %5, align 8, !tbaa !417
  %508 = load ptr, ptr %6, align 8, !tbaa !417
  %509 = load i32, ptr %503, align 8, !tbaa !851
  %510 = load i32, ptr %101, align 4, !tbaa !852
  call fastcc void @gen_reload(ptr noundef %507, ptr noundef %508, i32 noundef %509, i32 noundef %510) #23
  br label %512

511:                                              ; preds = %500
  call fastcc void @gen_reload(ptr noundef nonnull %479, ptr noundef %482, i32 noundef %504, i32 noundef %505) #23
  br label %512

512:                                              ; preds = %506, %511, %493
  %513 = load ptr, ptr %5, align 8, !tbaa !417
  br label %514

514:                                              ; preds = %512, %478
  %515 = phi ptr [ %483, %478 ], [ %513, %512 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %522

516:                                              ; preds = %490, %487
  %517 = zext i32 %480 to i64
  %518 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %517, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !1302
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
  %534 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %535 = zext i32 %531 to i64
  %536 = getelementptr inbounds ptr, ptr %534, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !417
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %577

539:                                              ; preds = %533
  %540 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %541 = getelementptr inbounds ptr, ptr %540, i64 %535
  %542 = load ptr, ptr %541, align 8, !tbaa !417
  %543 = icmp eq ptr %542, null
  br i1 %543, label %565, label %577

544:                                              ; preds = %526
  %545 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !397
  %547 = load i32, ptr %546, align 8
  %548 = and i32 %547, 65535
  %549 = icmp eq i32 %548, 37
  br i1 %549, label %550, label %565

550:                                              ; preds = %544
  %551 = call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #23
  %552 = icmp ugt i32 %551, 52
  br i1 %552, label %553, label %565

553:                                              ; preds = %550
  %554 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %555 = call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #23
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %554, i64 %556
  %558 = load ptr, ptr %557, align 8, !tbaa !417
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %577

560:                                              ; preds = %553
  %561 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !417
  %562 = getelementptr inbounds ptr, ptr %561, i64 %556
  %563 = load ptr, ptr %562, align 8, !tbaa !417
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %577

565:                                              ; preds = %526, %530, %539, %560, %550, %544
  %566 = zext nneg i32 %528 to i64
  %567 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !431
  %569 = icmp eq i32 %568, 9
  br i1 %569, label %570, label %579

570:                                              ; preds = %565
  %571 = call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #23
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !431
  %575 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %523, i32 noundef %574) #22
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %570, %560, %553, %539, %533
  %578 = load ptr, ptr %1, align 8, !tbaa !1043
  br label %579

579:                                              ; preds = %577, %570, %565
  %580 = phi ptr [ %578, %577 ], [ %523, %570 ], [ %523, %565 ]
  %581 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %582 = load i32, ptr %581, align 8, !tbaa !851
  %583 = load i32, ptr %101, align 4, !tbaa !852
  call fastcc void @gen_reload(ptr noundef nonnull %35, ptr noundef %580, i32 noundef %582, i32 noundef %583) #23
  br label %584

584:                                              ; preds = %311, %298, %188, %516, %579, %522
  %585 = phi ptr [ %523, %579 ], [ %523, %522 ], [ %483, %516 ], [ %151, %188 ], [ %100, %298 ], [ %100, %311 ]
  %586 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !431
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %590, label %588

588:                                              ; preds = %584
  %589 = call ptr @get_insns() #22
  call void @copy_reg_eh_region_note_forward(ptr noundef %10, ptr noundef %589, ptr noundef null) #22
  br label %590

590:                                              ; preds = %588, %584
  %591 = call ptr @get_insns() #22
  store ptr %591, ptr %133, align 8, !tbaa !417
  call void @end_sequence() #22
  %592 = icmp eq ptr %33, null
  br i1 %592, label %594, label %593

593:                                              ; preds = %590
  store ptr %585, ptr %12, align 8, !tbaa !417
  br label %594

594:                                              ; preds = %593, %590
  ret void
}

; Function Attrs: optsize
declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_output_reload(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !608 !PGOFuncName !1303 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x ptr], ptr @spill_reg_store, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %312

11:                                               ; preds = %4
  %12 = getelementptr inbounds [53 x ptr], ptr @spill_reg_stored_to, i64 0, i64 %5
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %19, %13 ], [ %12, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !397
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 39
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br i1 %18, label %13, label %20, !llvm.loop !1304

20:                                               ; preds = %13
  %21 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !417
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !417
  %26 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  %36 = load ptr, ptr %35, align 8, !tbaa !1043
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %36, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %34
  %44 = load ptr, ptr %43, align 8, !tbaa !417
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %34, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !1135
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
  %58 = load ptr, ptr %57, align 8, !tbaa !397
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %55, label %62, !llvm.loop !1305

62:                                               ; preds = %55, %50
  %63 = phi ptr [ %52, %50 ], [ %58, %55 ]
  %64 = tail call i32 @rtx_equal_p(ptr noundef nonnull %63, ptr noundef nonnull %15) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %34
  %68 = load i8, ptr %67, align 1, !tbaa !397
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %34
  %72 = load ptr, ptr %71, align 8, !tbaa !417
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
  br i1 %80, label %31, label %81, !llvm.loop !1306

81:                                               ; preds = %78, %20
  %82 = phi i32 [ 0, %20 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !397
  %85 = tail call i32 @count_occurrences(ptr noundef %84, ptr noundef nonnull %15, i32 noundef 0) #22
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !397
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
  %100 = load ptr, ptr %83, align 8, !tbaa !397
  %101 = tail call ptr @eliminate_regs(ptr noundef nonnull %25, i32 noundef 0, ptr noundef null) #23
  %102 = tail call i32 @count_occurrences(ptr noundef %100, ptr noundef %101, i32 noundef 0) #22
  %103 = add nsw i32 %102, %97
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i32 [ %103, %99 ], [ %97, %96 ]
  %106 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !417
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !397
  %111 = icmp eq ptr %110, null
  br i1 %111, label %128, label %112

112:                                              ; preds = %104, %120
  %113 = phi ptr [ %126, %120 ], [ %110, %104 ]
  %114 = phi i32 [ %124, %120 ], [ %105, %104 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !397
  %117 = tail call i32 @rtx_equal_p(ptr noundef %116, ptr noundef %25) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8543, ptr noundef nonnull @.str.2) #22
  br label %120

120:                                              ; preds = %112, %119
  %121 = load ptr, ptr %83, align 8, !tbaa !397
  %122 = load ptr, ptr %115, align 8, !tbaa !397
  %123 = tail call i32 @count_occurrences(ptr noundef %121, ptr noundef %122, i32 noundef 0) #22
  %124 = add nsw i32 %123, %114
  %125 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !397
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %112, !llvm.loop !1307

128:                                              ; preds = %120, %104
  %129 = phi i32 [ %105, %104 ], [ %124, %120 ]
  %130 = icmp sgt i32 %129, %82
  br i1 %130, label %312, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %133 = load ptr, ptr %132, align 8, !tbaa !397
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
  %141 = load i32, ptr %140, align 8, !tbaa !397
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %312, label %178

143:                                              ; preds = %135, %135
  %144 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !397
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
  %156 = load ptr, ptr %155, align 8, !tbaa !397
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 24
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !397
  %163 = tail call i32 @rtx_equal_p(ptr noundef nonnull %15, ptr noundef %162) #22
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = add nsw i32 %153, %165
  %167 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 2
  %168 = load ptr, ptr %167, align 8, !tbaa !397
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %152, label %172, !llvm.loop !1308

172:                                              ; preds = %152, %160, %148
  %173 = phi ptr [ %136, %148 ], [ %168, %160 ], [ %154, %152 ]
  %174 = phi i32 [ %129, %148 ], [ %166, %160 ], [ %153, %152 ]
  %175 = icmp sle i32 %174, %82
  %176 = icmp eq ptr %173, %0
  %177 = and i1 %176, %175
  br i1 %177, label %182, label %312

178:                                              ; preds = %135, %139, %143
  %179 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 2
  %180 = load ptr, ptr %179, align 8, !tbaa !397
  %181 = icmp eq ptr %180, %0
  br i1 %181, label %182, label %135, !llvm.loop !1309

182:                                              ; preds = %178, %131, %172
  %183 = load i32, ptr %15, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !397
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %199, i8 0, i64 %201, i1 false), !tbaa !417
  %202 = getelementptr i8, ptr @spill_reg_stored_to, i64 %198
  tail call void @llvm.memset.p0.i64(ptr align 8 %202, i8 0, i64 %201, i1 false), !tbaa !417
  br label %203

203:                                              ; preds = %190, %182
  %204 = sext i32 %1 to i64
  %205 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %204
  %206 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %204, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !1041
  %208 = load ptr, ptr %205, align 8, !tbaa !1043
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %310, label %210

210:                                              ; preds = %203
  %211 = load ptr, ptr @reg_info_p, align 8, !tbaa !417
  %212 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %213, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !1295
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %310

217:                                              ; preds = %210
  %218 = tail call fastcc i32 @REG_N_SETS(i32 noundef %212) #23
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %310

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %213, i32 6
  %222 = load i32, ptr %221, align 4, !tbaa !1310
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %310

224:                                              ; preds = %220
  %225 = tail call ptr @find_regno_note(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %212) #22
  %226 = icmp eq ptr %225, null
  br i1 %226, label %310, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !397
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
  %239 = load ptr, ptr %238, align 8, !tbaa !397
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
  %249 = load ptr, ptr %248, align 8, !tbaa !397
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
  %256 = load ptr, ptr %255, align 8, !tbaa !397
  %257 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %15, ptr noundef %256) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %254
  tail call fastcc void @delete_address_reloads(ptr noundef nonnull %7, ptr noundef nonnull %0) #23
  %260 = tail call ptr @delete_insn(ptr noundef nonnull %7) #22
  br label %312

261:                                              ; preds = %254, %251, %246
  %262 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !397
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %231, !llvm.loop !1311

265:                                              ; preds = %261, %251, %251
  %266 = load ptr, ptr %228, align 8, !tbaa !397
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
  %276 = load ptr, ptr %275, align 8, !tbaa !397
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
  %286 = load ptr, ptr %285, align 8, !tbaa !397
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
  %295 = load ptr, ptr %294, align 8, !tbaa !397
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %268, !llvm.loop !1312

297:                                              ; preds = %293, %290, %290, %227, %265
  %298 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #23
  %299 = trunc i32 %298 to i16
  %300 = load ptr, ptr @reg_renumber, align 8, !tbaa !417
  %301 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #23
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i16, ptr %300, i64 %302
  store i16 %299, ptr %303, align 2, !tbaa !432
  %304 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !397
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
define internal fastcc ptr @inc_for_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !608 !PGOFuncName !1313 {
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
  %22 = load ptr, ptr @reg_last_reload_reg, align 8, !tbaa !417
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #23
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr null, ptr %25, align 8, !tbaa !417
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
  %32 = load ptr, ptr %31, align 8, !tbaa !397
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8835, ptr noundef nonnull @.str.2) #22
  %37 = load ptr, ptr %31, align 8, !tbaa !397
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
  %95 = load i64, ptr %94, align 8, !tbaa !397
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
define internal fastcc noundef i32 @conflicts_with_override(ptr noundef %0) unnamed_addr #0 !prof !608 !PGOFuncName !1314 {
  %2 = load i32, ptr @n_reloads, align 4, !tbaa !431
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1, %15
  %5 = phi i32 [ %16, %15 ], [ %2, %1 ]
  %6 = phi i64 [ %17, %15 ], [ 0, %1 ]
  %7 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !417
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef nonnull %8) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, ptr @n_reloads, align 4, !tbaa !431
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ %5, %4 ]
  %17 = add nuw nsw i64 %6, 1
  %18 = sext i32 %16 to i64
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %4, label %20, !llvm.loop !1315

20:                                               ; preds = %10, %15, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 1, %10 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @count_occurrences(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #11 !prof !608 !PGOFuncName !1316 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !417
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !1317
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_adjust_reg_for_icode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !608 !PGOFuncName !1318 {
  %4 = tail call i32 @scratch_reload_class(i32 noundef %2) #22
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !938
  %8 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 2, i32 2
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = tail call fastcc zeroext i8 @reload_adjust_reg_for_temp(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %10) #23
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reload_adjust_reg_for_temp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !608 !PGOFuncName !1319 {
  %5 = load ptr, ptr %0, align 8, !tbaa !417
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
  %15 = load i64, ptr %9, align 8, !tbaa !449
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
  %30 = load i8, ptr %29, align 1, !tbaa !397
  %31 = load i32, ptr %12, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !397
  %37 = icmp ugt i8 %30, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %12, i32 noundef %3) #22
  br label %40

40:                                               ; preds = %20, %38
  %41 = phi ptr [ %39, %38 ], [ %12, %20 ]
  store ptr %41, ptr %0, align 8, !tbaa !417
  br label %44

42:                                               ; preds = %11, %25, %28
  %43 = icmp eq ptr %13, null
  br i1 %43, label %44, label %11, !llvm.loop !1320

44:                                               ; preds = %42, %4, %40
  %45 = phi i8 [ 1, %40 ], [ 0, %4 ], [ 0, %42 ]
  ret i8 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_reload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1052 !PGOFuncName !1321 {
  %5 = tail call ptr @get_last_insn() #22
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %29, !prof !772

9:                                                ; preds = %4
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !397
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !397
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !397
  %23 = icmp ugt i8 %14, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = tail call ptr @gen_lowpart_common(i32 noundef %19, ptr noundef %0) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %15, align 8, !tbaa !397
  br label %53

29:                                               ; preds = %24, %9, %4
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 39
  br i1 %32, label %33, label %53, !prof !772

33:                                               ; preds = %29
  %34 = lshr i32 %30, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !397
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !397
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !397
  %47 = icmp ugt i8 %38, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = tail call ptr @gen_lowpart_common(i32 noundef %43, ptr noundef nonnull %1) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %39, align 8, !tbaa !397
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
  ], !prof !1322

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !397
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i16
  switch i16 %62, label %223 [
    i16 37, label %63
    i16 39, label %63
    i16 43, label %63
  ]

63:                                               ; preds = %58, %58, %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !397
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
  %72 = load i32, ptr %71, align 4, !tbaa !431
  %73 = icmp eq i32 %72, 9
  %74 = icmp eq i32 %69, 43
  %75 = or i1 %74, %73
  br i1 %75, label %76, label %223

76:                                               ; preds = %63, %63, %68
  %77 = tail call ptr @find_replacement(ptr noundef nonnull %59) #22
  %78 = tail call ptr @find_replacement(ptr noundef nonnull %64) #22
  %79 = load ptr, ptr %64, align 8, !tbaa !397
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
  %92 = load ptr, ptr %59, align 8, !tbaa !397
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
  %112 = load i32, ptr %111, align 4, !tbaa !1323
  %113 = load i32, ptr %91, align 8
  %114 = and i32 %113, 65535
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !431
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
  %130 = load ptr, ptr %129, align 8, !tbaa !938
  %131 = getelementptr inbounds %struct.insn_operand_data, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !1325
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
  %160 = load ptr, ptr %159, align 8, !tbaa !397
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 37
  br i1 %163, label %164, label %223

164:                                              ; preds = %53, %158
  %165 = tail call i32 @reg_or_subregno(ptr noundef nonnull %54) #22
  %166 = icmp ult i32 %165, 53
  br i1 %166, label %167, label %223, !prof !771

167:                                              ; preds = %164
  %168 = load i32, ptr %55, align 8
  %169 = trunc i32 %168 to i16
  switch i16 %169, label %223 [
    i16 37, label %176
    i16 39, label %170
  ], !prof !1326

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !397
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 37
  br i1 %175, label %176, label %223

176:                                              ; preds = %167, %170
  %177 = tail call i32 @reg_or_subregno(ptr noundef nonnull %55) #22
  %178 = icmp ult i32 %177, 53
  br i1 %178, label %179, label %223, !prof !771

179:                                              ; preds = %176
  %180 = tail call i32 @reg_or_subregno(ptr noundef nonnull %54) #22
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !431
  %184 = tail call i32 @reg_or_subregno(ptr noundef nonnull %55) #22
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !431
  %188 = load i32, ptr %55, align 8
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  %191 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %183, i32 noundef %187, i32 noundef %190, i32 noundef 1) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %223, label %193, !prof !771

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
  br i1 %226, label %230, label %274, !prof !771

230:                                              ; preds = %223
  %231 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %229
  %232 = load i32, ptr %231, align 4, !tbaa !431
  %233 = icmp eq i32 %232, 4
  br i1 %233, label %234, label %274, !prof !772

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %236 = tail call ptr @find_replacement(ptr noundef nonnull %235) #22
  %237 = load ptr, ptr %235, align 8, !tbaa !397
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
  %276 = load i32, ptr %275, align 4, !tbaa !431
  %277 = and i32 %276, -2
  %278 = icmp eq i32 %277, 8
  %279 = icmp eq i32 %228, 39
  %280 = or i1 %279, %278
  br i1 %280, label %281, label %284, !prof !1275

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
  br i1 %288, label %289, label %291, !prof !771

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
define internal fastcc noundef ptr @emit_insn_if_valid_for_reload(ptr noundef %0) unnamed_addr #0 !prof !608 !PGOFuncName !1327 {
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
define internal fastcc void @delete_address_reloads(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !1328 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !397
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
  %19 = load ptr, ptr %18, align 8, !tbaa !397
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !397
  tail call fastcc void @delete_address_reloads_1(ptr noundef nonnull %0, ptr noundef %25, ptr noundef %1) #23
  br label %26

26:                                               ; preds = %2, %16, %23, %13
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !397
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !397
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
  %41 = load ptr, ptr %40, align 8, !tbaa !397
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
  %55 = load ptr, ptr %54, align 8, !tbaa !397
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
  %69 = load ptr, ptr %68, align 8, !tbaa !397
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 49
  br i1 %72, label %73, label %125

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %75 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !397
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 49
  br i1 %79, label %80, label %125

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !397
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 30
  br i1 %85, label %86, label %125

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !397
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 30
  br i1 %91, label %92, label %125

92:                                               ; preds = %86
  %93 = load ptr, ptr %67, align 8, !tbaa !397
  %94 = load ptr, ptr %74, align 8, !tbaa !397
  %95 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %94) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %68, align 8, !tbaa !397
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !397
  %101 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %75, align 8, !tbaa !397
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !397
  %107 = tail call i32 @rtx_equal_p(ptr noundef %93, ptr noundef %106) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %68, align 8, !tbaa !397
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !397
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !397
  %115 = load ptr, ptr %75, align 8, !tbaa !397
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !397
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !397
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
define internal fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !608 !PGOFuncName !1329 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !417
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !397
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
  %21 = load i8, ptr %20, align 1, !tbaa !397
  switch i8 %21, label %39 [
    i8 101, label %22
    i8 69, label %25
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !397
  tail call fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %24, ptr noundef %2) #23
  br label %39

25:                                               ; preds = %17
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %27 = load ptr, ptr %26, align 8, !tbaa !397
  %28 = load i32, ptr %27, align 8, !tbaa !628
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !397
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !417
  tail call fastcc void @delete_address_reloads_1(ptr noundef %0, ptr noundef %37, ptr noundef %2) #23
  %38 = icmp ugt i64 %33, 1
  br i1 %38, label %32, label %39, !llvm.loop !1330

39:                                               ; preds = %32, %25, %17, %22
  %40 = icmp sgt i64 %18, 1
  br i1 %40, label %17, label %184, !llvm.loop !1331

41:                                               ; preds = %3
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #23
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [53 x i16], ptr @spill_reg_order, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !432
  %46 = icmp slt i16 %45, 0
  br i1 %46, label %184, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !397
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
  %57 = load ptr, ptr %56, align 8, !tbaa !397
  %58 = tail call i32 @reg_set_p(ptr noundef nonnull %1, ptr noundef %57) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !397
  %62 = tail call i32 @reg_referenced_p(ptr noundef nonnull %1, ptr noundef %61) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %184

64:                                               ; preds = %51, %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !397
  %67 = icmp eq ptr %66, null
  br i1 %67, label %184, label %51, !llvm.loop !1332

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !397
  %71 = load i32, ptr @reload_first_uid, align 4, !tbaa !431
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %184, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %52, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %184

78:                                               ; preds = %73
  %79 = load ptr, ptr %56, align 8, !tbaa !397
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
  %89 = load ptr, ptr %88, align 8, !tbaa !397
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
  %98 = load ptr, ptr %97, align 8, !tbaa !397
  %99 = tail call i32 @reg_set_p(ptr noundef nonnull %89, ptr noundef %98) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %185

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !397
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
  %111 = load ptr, ptr %110, align 8, !tbaa !397
  %112 = tail call i32 @reg_referenced_p(ptr noundef nonnull %89, ptr noundef %111) #22
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %109
  %115 = icmp eq ptr %106, %2
  br i1 %115, label %116, label %184

116:                                              ; preds = %114
  %117 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  %128 = load ptr, ptr %127, align 8, !tbaa !849
  %129 = icmp eq ptr %128, %89
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %121
  %132 = load i8, ptr %131, align 1, !tbaa !397
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %184

134:                                              ; preds = %130, %126
  %135 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %121
  %136 = load ptr, ptr %135, align 8, !tbaa !417
  %137 = icmp eq ptr %136, %89
  br i1 %137, label %184, label %119, !llvm.loop !1333

138:                                              ; preds = %124, %148
  %139 = phi i64 [ %140, %148 ], [ %118, %124 ]
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !1043
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %140, i32 11
  %146 = load ptr, ptr %145, align 8, !tbaa !849
  %147 = icmp eq ptr %146, %89
  br i1 %147, label %185, label %148

148:                                              ; preds = %138, %144
  %149 = icmp sgt i64 %139, 1
  br i1 %149, label %138, label %184, !llvm.loop !1334

150:                                              ; preds = %109
  %151 = load i32, ptr %106, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 9
  br i1 %153, label %185, label %154

154:                                              ; preds = %150
  %155 = icmp eq ptr %106, %2
  br i1 %155, label %156, label %176

156:                                              ; preds = %154
  %157 = load i32, ptr @n_reloads, align 4, !tbaa !431
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
  %166 = load ptr, ptr %165, align 8, !tbaa !849
  %167 = icmp eq ptr %166, %89
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr inbounds [180 x i8], ptr @reload_inherited, i64 0, i64 %161
  %170 = load i8, ptr %169, align 1, !tbaa !397
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %168, %164
  %173 = getelementptr inbounds [180 x ptr], ptr @reload_override_in, i64 0, i64 %161
  %174 = load ptr, ptr %173, align 8, !tbaa !417
  %175 = icmp eq ptr %174, %89
  br i1 %175, label %184, label %159, !llvm.loop !1335

176:                                              ; preds = %159, %154
  %177 = load ptr, ptr %110, align 8, !tbaa !397
  %178 = tail call i32 @reg_set_p(ptr noundef nonnull %89, ptr noundef %177) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %105, %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 2
  %182 = load ptr, ptr %181, align 8, !tbaa !397
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %105, !llvm.loop !1336

184:                                              ; preds = %73, %114, %86, %93, %83, %68, %41, %124, %47, %7, %148, %130, %134, %168, %172, %51, %51, %60, %64, %39, %185
  ret void

185:                                              ; preds = %176, %150, %180, %105, %144, %101, %96
  %186 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !397
  tail call fastcc void @delete_address_reloads_1(ptr noundef nonnull %52, ptr noundef %187, ptr noundef %2) #23
  %188 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #23
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [53 x i32], ptr @reg_reloaded_contents, i64 0, i64 %189
  store i32 -1, ptr %190, align 4, !tbaa !431
  %191 = tail call ptr @delete_insn(ptr noundef nonnull %52) #22
  br label %184
}

; Function Attrs: optsize
declare ptr @delete_related_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_output_reload_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1052 !PGOFuncName !1337 {
  %4 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !671
  %6 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1041
  %8 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !852
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %12, !prof !772

11:                                               ; preds = %3
  tail call void @start_sequence() #22
  br label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !851
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [30 x ptr], ptr @output_reload_insns, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !417
  tail call void @push_to_sequence(ptr noundef %17) #22
  br label %18

18:                                               ; preds = %12, %11
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [180 x ptr], ptr @reload_reg_rtx_for_output, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !417
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !1338
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %137, !prof !772

28:                                               ; preds = %18
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 14
  %31 = load i32, ptr %30, align 8, !tbaa !1338
  %32 = load i32, ptr %7, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %37 = icmp ugt i32 %36, 52
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !417
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !417
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr %7, ptr %42
  br label %45

45:                                               ; preds = %38, %35, %28
  %46 = phi ptr [ %7, %35 ], [ %7, %28 ], [ %44, %38 ]
  %47 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1046
  %49 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %48, i32 noundef %24, ptr noundef nonnull %46) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %137, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !849
  %54 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !1339
  %56 = icmp eq i32 %55, 2956
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = icmp slt i32 %31, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7404, ptr noundef nonnull @.str.2) #22
  %60 = load i32, ptr %54, align 8, !tbaa !1339
  br label %61

61:                                               ; preds = %57, %59
  %62 = phi i32 [ %55, %57 ], [ %60, %59 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %63, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !1302
  %66 = tail call ptr (ptr, ...) %65(ptr noundef nonnull %46, ptr noundef nonnull %21, ptr noundef %53) #22
  %67 = tail call ptr @emit_insn(ptr noundef %66) #22
  br label %182

68:                                               ; preds = %51
  %69 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 16
  %70 = load i32, ptr %69, align 8, !tbaa !1339
  %71 = icmp slt i32 %31, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = zext nneg i32 %31 to i64
  %74 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %73, i32 14
  %75 = load i32, ptr %74, align 8, !tbaa !1338
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
  %91 = load ptr, ptr %90, align 8, !tbaa !849
  %92 = load i32, ptr %46, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = lshr i32 %92, 16
  %97 = and i32 %96, 255
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !397
  %101 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !397
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !397
  %109 = icmp ugt i8 %100, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %95
  %111 = tail call ptr @gen_lowpart_common(i32 noundef %105, ptr noundef %86) #22
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %101, align 8, !tbaa !397
  br label %115

115:                                              ; preds = %113, %110, %95, %88
  %116 = phi ptr [ %114, %113 ], [ %46, %110 ], [ %46, %95 ], [ %46, %88 ]
  %117 = phi ptr [ %111, %113 ], [ %86, %110 ], [ %86, %95 ], [ %86, %88 ]
  %118 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %119 = load i32, ptr %118, align 8, !tbaa !851
  %120 = load i32, ptr %8, align 4, !tbaa !852
  tail call fastcc void @gen_reload(ptr noundef %117, ptr noundef nonnull %21, i32 noundef %119, i32 noundef %120) #23
  %121 = zext i32 %70 to i64
  %122 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %121, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !1302
  %124 = tail call ptr (ptr, ...) %123(ptr noundef %116, ptr noundef %117, ptr noundef %91) #22
  %125 = tail call ptr @emit_insn(ptr noundef %124) #22
  br label %182

126:                                              ; preds = %85
  %127 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %128 = load i32, ptr %127, align 8, !tbaa !851
  %129 = load i32, ptr %8, align 4, !tbaa !852
  tail call fastcc void @gen_reload(ptr noundef %86, ptr noundef nonnull %21, i32 noundef %128, i32 noundef %129) #23
  %130 = icmp sgt i32 %31, -1
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = zext nneg i32 %31 to i64
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %132, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !849
  %135 = load i32, ptr %127, align 8, !tbaa !851
  %136 = load i32, ptr %8, align 4, !tbaa !852
  tail call fastcc void @gen_reload(ptr noundef %134, ptr noundef %86, i32 noundef %135, i32 noundef %136) #23
  br label %137

137:                                              ; preds = %18, %45, %131, %126
  %138 = phi ptr [ %86, %126 ], [ %134, %131 ], [ %21, %45 ], [ %21, %18 ]
  %139 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !431
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %178, label %141, !prof !772

141:                                              ; preds = %137
  %142 = load i32, ptr %7, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %145, label %178, !prof !771

145:                                              ; preds = %141
  %146 = load i32, ptr %5, align 8
  %147 = and i32 %146, 65535
  %148 = add nsw i32 %147, -7
  %149 = icmp ult i32 %148, 4
  br i1 %149, label %150, label %178, !prof !1340

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !397
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 23
  br i1 %155, label %159, label %156, !prof !771

156:                                              ; preds = %150
  %157 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %152) #22
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159, !prof !1341

159:                                              ; preds = %150, %156
  %160 = phi ptr [ %157, %156 ], [ %152, %150 ]
  %161 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !397
  %163 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef %162) #22
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %178, !prof !772

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !397
  %168 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %7, ptr noundef %167) #22
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %165
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #23
  %172 = icmp ult i32 %171, 53
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !853
  %176 = tail call i32 @regno_clobbered_p(i32 noundef %171, ptr noundef nonnull %5, i32 noundef %175, i32 noundef 0) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %145, %173, %170, %165, %159, %156, %141, %137
  %179 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %180 = load i32, ptr %179, align 8, !tbaa !851
  %181 = load i32, ptr %8, align 4, !tbaa !852
  tail call fastcc void @gen_reload(ptr noundef %7, ptr noundef %138, i32 noundef %180, i32 noundef %181) #23
  br label %182

182:                                              ; preds = %61, %115, %173, %178
  %183 = tail call ptr @get_insns() #22
  %184 = icmp eq ptr %183, null
  br i1 %184, label %311, label %185, !prof !1071

185:                                              ; preds = %182, %307
  %186 = phi ptr [ %309, %307 ], [ %183, %182 ]
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, 65535
  %189 = add nsw i32 %188, -7
  %190 = icmp ult i32 %189, 4
  br i1 %190, label %191, label %307, !prof !1340

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !397
  tail call void @note_stores(ptr noundef %193, ptr noundef nonnull @forget_old_reloads_1, ptr noundef null) #22
  %194 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %21, ptr noundef %193) #22
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %307, label %196, !prof !772

196:                                              ; preds = %191
  %197 = load i32, ptr %5, align 8
  %198 = and i32 %197, 65535
  %199 = add nsw i32 %198, -7
  %200 = icmp ult i32 %199, 4
  br i1 %200, label %201, label %231, !prof !1340

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %203 = getelementptr inbounds [180 x i32], ptr @reload_spill_index, i64 0, i64 %19
  %204 = load ptr, ptr %202, align 8, !tbaa !397
  %205 = load i32, ptr %204, align 8
  %206 = and i32 %205, 65535
  %207 = icmp eq i32 %206, 23
  br i1 %207, label %210, label %208, !prof !771

208:                                              ; preds = %201
  %209 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %204) #22
  br label %210

210:                                              ; preds = %201, %208
  %211 = phi ptr [ %209, %208 ], [ %204, %201 ]
  %212 = load i32, ptr %203, align 4, !tbaa !431
  %213 = icmp slt i32 %212, 0
  %214 = icmp ne ptr %211, null
  %215 = select i1 %213, i1 %214, i1 false
  br i1 %215, label %216, label %231, !prof !1342

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !397
  %219 = icmp eq ptr %218, %21
  br i1 %219, label %220, label %231

220:                                              ; preds = %216
  %221 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  store i32 %221, ptr %203, align 4, !tbaa !431
  %222 = zext nneg i32 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !449
  %225 = or i64 %224, %223
  store i64 %225, ptr @reg_is_output_reload, align 8, !tbaa !449
  %226 = tail call ptr @find_regno_note(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %221) #22
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %220
  %229 = load i64, ptr @reg_reloaded_died, align 8, !tbaa !449
  %230 = or i64 %229, %223
  store i64 %230, ptr @reg_reloaded_died, align 8, !tbaa !449
  br label %231

231:                                              ; preds = %196, %220, %228, %216, %210
  %232 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  %233 = icmp ult i32 %232, 53
  br i1 %233, label %234, label %307, !prof !771

234:                                              ; preds = %231
  %235 = load i32, ptr %25, align 8, !tbaa !1338
  %236 = load i32, ptr %186, align 8
  %237 = and i32 %236, 65535
  %238 = add nsw i32 %237, -7
  %239 = icmp ult i32 %238, 4
  br i1 %239, label %240, label %249, !prof !1340

240:                                              ; preds = %234
  %241 = load ptr, ptr %192, align 8, !tbaa !397
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 23
  br i1 %244, label %245, label %247, !prof !771

245:                                              ; preds = %240
  %246 = icmp sgt i32 %235, -1
  br i1 %246, label %255, label %303, !prof !772

247:                                              ; preds = %240
  %248 = tail call ptr @single_set_2(ptr noundef nonnull %186, ptr noundef nonnull %241) #22
  br label %249

249:                                              ; preds = %234, %247
  %250 = phi ptr [ %248, %247 ], [ null, %234 ]
  %251 = icmp sgt i32 %235, -1
  %252 = icmp eq ptr %250, null
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %307, label %254, !prof !1343

254:                                              ; preds = %249
  br i1 %251, label %255, label %303, !prof !772

255:                                              ; preds = %245, %254
  %256 = phi ptr [ %241, %245 ], [ %250, %254 ]
  %257 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !397
  %259 = icmp eq ptr %258, %21
  br i1 %259, label %260, label %303

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !397
  %263 = zext nneg i32 %235 to i64
  %264 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %263, i32 11
  %265 = load ptr, ptr %264, align 8, !tbaa !849
  %266 = icmp eq ptr %262, %265
  br i1 %266, label %267, label %303

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 9
  %269 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %270 = load ptr, ptr %269, align 8, !tbaa !397
  %271 = load ptr, ptr %6, align 8, !tbaa !1041
  %272 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %263, i32 1
  store ptr %271, ptr %272, align 8, !tbaa !1041
  %273 = load ptr, ptr %268, align 8, !tbaa !1174
  %274 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %263, i32 9
  store ptr %273, ptr %274, align 8, !tbaa !1174
  %275 = load i32, ptr %270, align 8
  %276 = and i32 %275, 65535
  %277 = add nsw i32 %276, -7
  %278 = icmp ult i32 %277, 4
  br i1 %278, label %279, label %307

279:                                              ; preds = %267
  %280 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !397
  %282 = load i32, ptr %281, align 8
  %283 = and i32 %282, 65535
  %284 = icmp eq i32 %283, 23
  br i1 %284, label %288, label %285

285:                                              ; preds = %279
  %286 = tail call ptr @single_set_2(ptr noundef nonnull %270, ptr noundef nonnull %281) #22
  %287 = icmp eq ptr %286, null
  br i1 %287, label %307, label %288

288:                                              ; preds = %279, %285
  %289 = phi ptr [ %286, %285 ], [ %281, %279 ]
  %290 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !397
  %292 = icmp eq ptr %291, %262
  br i1 %292, label %293, label %307

293:                                              ; preds = %288
  %294 = tail call fastcc i32 @rhs_regno(ptr noundef %262) #23
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !417
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %307

299:                                              ; preds = %293
  %300 = shl nuw i64 1, %295
  %301 = load i64, ptr @reg_is_output_reload, align 8, !tbaa !449
  %302 = or i64 %301, %300
  store i64 %302, ptr @reg_is_output_reload, align 8, !tbaa !449
  store ptr %270, ptr %296, align 8, !tbaa !417
  br label %307

303:                                              ; preds = %245, %260, %255, %254
  %304 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #23
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [53 x ptr], ptr @new_spill_reg_store, i64 0, i64 %305
  store ptr %186, ptr %306, align 8, !tbaa !417
  br label %307

307:                                              ; preds = %267, %185, %191, %249, %303, %299, %293, %288, %285, %231
  %308 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 2
  %309 = load ptr, ptr %308, align 8, !tbaa !397
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %185, !prof !1072, !llvm.loop !1344

311:                                              ; preds = %307, %182
  %312 = load i32, ptr %8, align 4, !tbaa !852
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %314, label %322, !prof !772

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  %316 = load i32, ptr %315, align 8, !tbaa !851
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [30 x ptr], ptr @other_output_reload_insns, i64 0, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !417
  %320 = tail call ptr @emit_insn(ptr noundef %319) #22
  %321 = tail call ptr @get_insns() #22
  br label %325

322:                                              ; preds = %311
  %323 = tail call ptr @get_insns() #22
  %324 = getelementptr inbounds %struct.reload, ptr %1, i64 0, i32 12
  br label %325

325:                                              ; preds = %322, %314
  %326 = phi ptr [ %324, %322 ], [ %315, %314 ]
  %327 = phi ptr [ @output_reload_insns, %322 ], [ @other_output_reload_insns, %314 ]
  %328 = phi ptr [ %323, %322 ], [ %321, %314 ]
  %329 = load i32, ptr %326, align 8, !tbaa !851
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [30 x ptr], ptr %327, i64 0, i64 %330
  store ptr %328, ptr %331, align 8, !tbaa !417
  %332 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !431
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %336, label %334, !prof !771

334:                                              ; preds = %325
  %335 = tail call ptr @get_insns() #22
  tail call void @copy_reg_eh_region_note_forward(ptr noundef %5, ptr noundef %335, ptr noundef null) #22
  br label %336

336:                                              ; preds = %334, %325
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !864 !PGOFuncName !1345 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1346

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !867 !PGOFuncName !1347 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !869

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #10 !prof !1348 !PGOFuncName !1349 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1350

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1351
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1353 !PGOFuncName !1354 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1355

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 687, ptr noundef nonnull @.str.2) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !417
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !867 !PGOFuncName !1356 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !417
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!395}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!35 = !{ptr @init_reload, ptr @gen_rtx_REG, i64 3}
!36 = !{ptr @init_reload, ptr @gen_rtx_CONST_INT, i64 1}
!37 = !{ptr @init_reload, ptr @gen_rtx_fmt_ee_stat, i64 2}
!38 = !{ptr @init_reload, ptr @gen_rtx_MEM, i64 3}
!39 = !{ptr @init_reload, ptr @memory_address_addr_space_p, i64 4}
!40 = !{ptr @init_reload, ptr @gen_rtx_fmt_s00_stat, i64 1}
!41 = !{ptr @init_reload, ptr @plus_constant, i64 1}
!42 = !{ptr @init_reload, ptr @_obstack_begin, i64 1}
!43 = !{ptr @init_reload, ptr @bitmap_initialize_stat, i64 3}
!44 = !{ptr @new_insn_chain, ptr @_obstack_newchunk, i64 21803}
!45 = !{ptr @new_insn_chain, ptr @bitmap_initialize_stat, i64 1352994}
!46 = !{ptr @compute_use_by_pseudos, ptr @bmp_iter_set_init, i64 640348}
!47 = !{ptr @compute_use_by_pseudos, ptr @bmp_iter_set, i64 1095798}
!48 = !{ptr @compute_use_by_pseudos, ptr @add_to_hard_reg_set, i64 450729}
!49 = !{ptr @compute_use_by_pseudos, ptr @bmp_iter_next, i64 455450}
!50 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 450730}
!51 = !{ptr @reload, ptr @init_recog, i64 38}
!52 = !{ptr @reload, ptr @_obstack_newchunk, i64 2}
!53 = !{ptr @reload, ptr @emit_note, i64 38}
!54 = !{ptr @reload, ptr @get_max_uid, i64 38}
!55 = !{ptr @reload, ptr @clear_secondary_mem, i64 38}
!56 = !{ptr @reload, ptr @init_save_areas, i64 38}
!57 = !{ptr @reload, ptr @mark_home_live, i64 282554}
!58 = !{ptr @reload, ptr @has_nonexceptional_receiver, i64 1}
!59 = !{ptr @reload, ptr @df_set_regs_ever_live, i64 4}
!60 = !{ptr @reload, ptr @xcalloc, i64 304}
!61 = !{ptr @reload, ptr @xmalloc, i64 152}
!62 = !{ptr @reload, ptr @single_set_2, i64 1}
!63 = !{ptr @reload, ptr @scan_paradoxical_subregs, i64 607706}
!64 = !{ptr @reload, ptr @find_reg_note, i64 374430}
!65 = !{ptr @reload, ptr @rhs_regno, i64 154471}
!66 = !{ptr @reload, ptr @function_invariant_p, i64 31086}
!67 = !{ptr @reload, ptr @memory_operand, i64 24801}
!68 = !{ptr @reload, ptr @copy_rtx, i64 18519}
!69 = !{ptr @reload, ptr @legitimate_constant_p, i64 6280}
!70 = !{ptr @reload, ptr @force_const_mem, i64 1}
!71 = !{ptr @reload, ptr @fprintf, i64 10}
!72 = !{ptr @reload, ptr @print_inline_rtx, i64 10}
!73 = !{ptr @reload, ptr @fputc, i64 10}
!74 = !{ptr @reload, ptr @init_elim_table, i64 38}
!75 = !{ptr @reload, ptr @get_first_label_num, i64 38}
!76 = !{ptr @reload, ptr @max_label_num, i64 38}
!77 = !{ptr @reload, ptr @ira_sort_regnos_for_alter_reg, i64 37}
!78 = !{ptr @reload, ptr @alter_reg, i64 282369}
!79 = !{ptr @reload, ptr @note_stores, i64 607707}
!80 = !{ptr @reload, ptr @maybe_fix_stack_asms, i64 38}
!81 = !{ptr @reload, ptr @spill_hard_reg, i64 39}
!82 = !{ptr @reload, ptr @finish_spills, i64 76}
!83 = !{ptr @reload, ptr @get_frame_size, i64 218}
!84 = !{ptr @reload, ptr @set_initial_elim_offsets, i64 48}
!85 = !{ptr @reload, ptr @set_initial_label_offsets, i64 48}
!86 = !{ptr @reload, ptr @eliminate_regs, i64 924}
!87 = !{ptr @reload, ptr @strict_memory_address_addr_space_p, i64 924}
!88 = !{ptr @reload, ptr @setup_save_areas, i64 13}
!89 = !{ptr @reload, ptr @assign_stack_local, i64 8}
!90 = !{ptr @reload, ptr @save_call_clobbered_regs, i64 5}
!91 = !{ptr @reload, ptr @calculate_needs_all_insns, i64 39}
!92 = !{ptr @reload, ptr @bitmap_clear, i64 77}
!93 = !{ptr @reload, ptr @verify_initial_elim_offsets, i64 75}
!94 = !{ptr @reload, ptr @update_eliminables, i64 39}
!95 = !{ptr @reload, ptr @select_reload_regs, i64 39}
!96 = !{ptr @reload, ptr @delete_caller_save_insns, i64 1}
!97 = !{ptr @reload, ptr @obstack_free, i64 39}
!98 = !{ptr @reload, ptr @mark_elimination, i64 71}
!99 = !{ptr @reload, ptr @can_throw_internal, i64 15}
!100 = !{ptr @reload, ptr @reg_set_p, i64 6}
!101 = !{ptr @reload, ptr @delete_dead_insn, i64 4}
!102 = !{ptr @reload, ptr @set_insn_deleted, i64 2}
!103 = !{ptr @reload, ptr @reload_as_needed, i64 37}
!104 = !{ptr @reload, ptr @fancy_abort, i64 2}
!105 = !{ptr @reload, ptr @df_get_live_in, i64 19}
!106 = !{ptr @reload, ptr @bitmap_clear_bit, i64 19}
!107 = !{ptr @reload, ptr @gen_rtx_fmt_e_stat, i64 1}
!108 = !{ptr @reload, ptr @df_insn_rescan_debug_internal, i64 1}
!109 = !{ptr @reload, ptr @simplify_replace_rtx, i64 1}
!110 = !{ptr @reload, ptr @replace_pseudos_in, i64 67191}
!111 = !{ptr @reload, ptr @cleanup_subreg_operands, i64 543555}
!112 = !{ptr @reload, ptr @asm_noperands, i64 543555}
!113 = !{ptr @reload, ptr @extract_insn, i64 1}
!114 = !{ptr @reload, ptr @constrain_operands, i64 1}
!115 = !{ptr @reload, ptr @delete_insn, i64 64341}
!116 = !{ptr @reload, ptr @df_regs_ever_live_p, i64 30}
!117 = !{ptr @reload, ptr @free, i64 452}
!118 = !{ptr @reload, ptr @VEC_rtx_gc_free, i64 38}
!119 = !{ptr @reload, ptr @free_EXPR_LIST_list, i64 1}
!120 = !{ptr @reload, ptr @fixup_abnormal_edges, i64 38}
!121 = !{ptr @reload, ptr @unshare_all_rtl_again, i64 38}
!122 = !{ptr @reload, ptr @VEC_rtx_p_heap_free, i64 38}
!123 = !{ptr @mark_home_live, ptr @mark_home_live_1, i64 107131}
!124 = !{ptr @scan_paradoxical_subregs, ptr @rhs_regno, i64 604}
!125 = !{ptr @scan_paradoxical_subregs, ptr @mark_home_live_1, i64 201}
!126 = !{ptr @scan_paradoxical_subregs, ptr @scan_paradoxical_subregs, i64 2783948}
!127 = !{ptr @init_elim_table, ptr @xcalloc, i64 2}
!128 = !{ptr @init_elim_table, ptr @gen_rtx_REG, i64 300}
!129 = !{ptr @alter_reg, ptr @rhs_regno, i64 289796}
!130 = !{ptr @alter_reg, ptr @df_ref_change_reg_with_loc, i64 289796}
!131 = !{ptr @alter_reg, ptr @REG_N_REFS, i64 182665}
!132 = !{ptr @alter_reg, ptr @get_mode_alignment, i64 300}
!133 = !{ptr @alter_reg, ptr @bitmap_set_bit, i64 299}
!134 = !{ptr @alter_reg, ptr @ira_reuse_stack_slot, i64 298}
!135 = !{ptr @alter_reg, ptr @assign_stack_local, i64 8}
!136 = !{ptr @alter_reg, ptr @ira_mark_new_stack_slot, i64 7}
!137 = !{ptr @alter_reg, ptr @adjust_address_1, i64 300}
!138 = !{ptr @alter_reg, ptr @set_mem_attrs_for_spill, i64 300}
!139 = !{ptr @maybe_fix_stack_asms, ptr @asm_noperands, i64 607709}
!140 = !{ptr @maybe_fix_stack_asms, ptr @rhs_regno, i64 2}
!141 = !{ptr @maybe_fix_stack_asms, ptr @lookup_constraint, i64 3222}
!142 = !{ptr @maybe_fix_stack_asms, ptr @regclass_for_constraint, i64 3222}
!143 = !{ptr @maybe_fix_stack_asms, ptr @insn_constraint_len, i64 112762}
!144 = !{ptr @maybe_fix_stack_asms, ptr @bitmap_clear_bit, i64 20}
!145 = !{ptr @spill_hard_reg, ptr @df_set_regs_ever_live, i64 38}
!146 = !{ptr @spill_hard_reg, ptr @end_hard_regno, i64 104384}
!147 = !{ptr @spill_hard_reg, ptr @bitmap_set_bit, i64 1}
!148 = !{ptr @finish_spills, ptr @df_regs_ever_live_p, i64 2}
!149 = !{ptr @finish_spills, ptr @df_set_regs_ever_live, i64 3}
!150 = !{ptr @finish_spills, ptr @bmp_iter_set_init, i64 308042}
!151 = !{ptr @finish_spills, ptr @bmp_iter_set, i64 527682}
!152 = !{ptr @finish_spills, ptr @ira_mark_allocation_change, i64 1}
!153 = !{ptr @finish_spills, ptr @bmp_iter_next, i64 219640}
!154 = !{ptr @finish_spills, ptr @bitmap_clear_bit, i64 1}
!155 = !{ptr @finish_spills, ptr @ira_reassign_pseudos, i64 74}
!156 = !{ptr @finish_spills, ptr @bitmap_and_compl_into, i64 2}
!157 = !{ptr @finish_spills, ptr @reg_set_to_hard_reg_set, i64 316018}
!158 = !{ptr @finish_spills, ptr @compute_use_by_pseudos, i64 316018}
!159 = !{ptr @finish_spills, ptr @bitmap_clear, i64 76}
!160 = !{ptr @finish_spills, ptr @bitmap_set_bit, i64 1}
!161 = !{ptr @finish_spills, ptr @alter_reg, i64 1}
!162 = !{ptr @set_initial_elim_offsets, ptr @ix86_initial_elimination_offset, i64 335}
!163 = !{ptr @set_initial_label_offsets, ptr @set_label_offsets, i64 1}
!164 = !{ptr @set_initial_label_offsets, ptr @for_each_eh_label, i64 46}
!165 = !{ptr @eliminate_regs, ptr @eliminate_regs_1, i64 906}
!166 = !{ptr @calculate_needs_all_insns, ptr @_obstack_newchunk, i64 1}
!167 = !{ptr @calculate_needs_all_insns, ptr @set_label_offsets, i64 454849}
!168 = !{ptr @calculate_needs_all_insns, ptr @single_set_2, i64 1}
!169 = !{ptr @calculate_needs_all_insns, ptr @rhs_regno, i64 751843}
!170 = !{ptr @calculate_needs_all_insns, ptr @eliminate_regs_in_insn, i64 607852}
!171 = !{ptr @calculate_needs_all_insns, ptr @find_reloads, i64 607852}
!172 = !{ptr @calculate_needs_all_insns, ptr @update_eliminable_offsets, i64 607851}
!173 = !{ptr @calculate_needs_all_insns, ptr @obstack_free, i64 2}
!174 = !{ptr @calculate_needs_all_insns, ptr @copy_reloads, i64 155983}
!175 = !{ptr @verify_initial_elim_offsets, ptr @ix86_initial_elimination_offset, i64 296}
!176 = !{ptr @select_reload_regs, ptr @find_reload_regs, i64 155983}
!177 = !{ptr @reload_as_needed, ptr @xcalloc, i64 38}
!178 = !{ptr @reload_as_needed, ptr @bitmap_initialize_stat, i64 607890}
!179 = !{ptr @reload_as_needed, ptr @set_initial_elim_offsets, i64 38}
!180 = !{ptr @reload_as_needed, ptr @set_offsets_for_label, i64 51302}
!181 = !{ptr @reload_as_needed, ptr @note_stores, i64 607853}
!182 = !{ptr @reload_as_needed, ptr @eliminate_regs, i64 1}
!183 = !{ptr @reload_as_needed, ptr @eliminate_regs_in_insn, i64 201}
!184 = !{ptr @reload_as_needed, ptr @update_eliminable_offsets, i64 202}
!185 = !{ptr @reload_as_needed, ptr @bitmap_clear, i64 763874}
!186 = !{ptr @reload_as_needed, ptr @find_reloads, i64 155984}
!187 = !{ptr @reload_as_needed, ptr @choose_reload_regs, i64 155983}
!188 = !{ptr @reload_as_needed, ptr @merge_assigned_reloads, i64 155983}
!189 = !{ptr @reload_as_needed, ptr @emit_reload_insns, i64 155983}
!190 = !{ptr @reload_as_needed, ptr @subst_reloads, i64 155983}
!191 = !{ptr @reload_as_needed, ptr @asm_noperands, i64 155983}
!192 = !{ptr @reload_as_needed, ptr @recog_memoized, i64 3}
!193 = !{ptr @reload_as_needed, ptr @extract_insn, i64 2}
!194 = !{ptr @reload_as_needed, ptr @constrain_operands, i64 2}
!195 = !{ptr @reload_as_needed, ptr @error_for_asm, i64 2}
!196 = !{ptr @reload_as_needed, ptr @delete_insn, i64 2}
!197 = !{ptr @reload_as_needed, ptr @forget_marked_reloads, i64 607851}
!198 = !{ptr @reload_as_needed, ptr @free, i64 38}
!199 = !{ptr @replace_pseudos_in, ptr @rhs_regno, i64 1}
!200 = !{ptr @replace_pseudos_in, ptr @eliminate_regs, i64 1}
!201 = !{ptr @replace_pseudos_in, ptr @replace_pseudos_in, i64 4}
!202 = !{ptr @VEC_rtx_gc_free, ptr @ggc_free, i64 37}
!203 = !{ptr @fixup_abnormal_edges, ptr @ei_start_1, i64 151664}
!204 = !{ptr @fixup_abnormal_edges, ptr @ei_cond, i64 450313}
!205 = !{ptr @fixup_abnormal_edges, ptr @ei_next, i64 298649}
!206 = !{ptr @fixup_abnormal_edges, ptr @can_throw_internal, i64 2}
!207 = !{ptr @fixup_abnormal_edges, ptr @delete_insn, i64 2}
!208 = !{ptr @fixup_abnormal_edges, ptr @insert_insn_on_edge, i64 1}
!209 = !{ptr @fixup_abnormal_edges, ptr @sbitmap_alloc, i64 1}
!210 = !{ptr @fixup_abnormal_edges, ptr @sbitmap_ones, i64 1}
!211 = !{ptr @fixup_abnormal_edges, ptr @find_many_sub_basic_blocks, i64 1}
!212 = !{ptr @fixup_abnormal_edges, ptr @free, i64 2}
!213 = !{ptr @fixup_abnormal_edges, ptr @commit_edge_insertions, i64 1}
!214 = !{ptr @VEC_rtx_p_heap_free, ptr @free, i64 1}
!215 = !{ptr @mark_home_live_1, ptr @end_hard_regno, i64 107332}
!216 = !{ptr @mark_home_live_1, ptr @df_set_regs_ever_live, i64 107332}
!217 = !{ptr @eliminate_regs_1, ptr @rhs_regno, i64 569785}
!218 = !{ptr @eliminate_regs_1, ptr @plus_constant, i64 1402}
!219 = !{ptr @eliminate_regs_1, ptr @copy_rtx, i64 1}
!220 = !{ptr @eliminate_regs_1, ptr @gen_rtx_fmt_ee_stat, i64 1218}
!221 = !{ptr @eliminate_regs_1, ptr @eliminate_regs_1, i64 160877}
!222 = !{ptr @eliminate_regs_1, ptr @form_sum, i64 2}
!223 = !{ptr @eliminate_regs_1, ptr @alloc_reg_note, i64 72}
!224 = !{ptr @eliminate_regs_1, ptr @gen_rtx_fmt_e_stat, i64 13}
!225 = !{ptr @eliminate_regs_1, ptr @gen_rtx_SUBREG, i64 1}
!226 = !{ptr @eliminate_regs_1, ptr @replace_equiv_address_nv, i64 159363}
!227 = !{ptr @eliminate_regs_1, ptr @fancy_abort, i64 3}
!228 = !{ptr @eliminate_regs_1, ptr @shallow_copy_rtx_stat, i64 5}
!229 = !{ptr @eliminate_regs_1, ptr @gen_rtvec_v, i64 10}
!230 = !{ptr @clear_reload_reg_in_use, ptr @fancy_abort, i64 1}
!231 = !{ptr @clear_reload_reg_in_use, ptr @true_regnum, i64 17}
!232 = !{ptr @clear_reload_reg_in_use, ptr @end_hard_regno, i64 17}
!233 = !{ptr @ei_cond, ptr @ei_end_p, i64 462164}
!234 = !{ptr @ei_cond, ptr @ei_edge, i64 306510}
!235 = !{ptr @ei_next, ptr @ei_container, i64 613019}
!236 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 306510}
!237 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!238 = !{ptr @set_label_offsets, ptr @prev_nonnote_insn, i64 52790}
!239 = !{ptr @set_label_offsets, ptr @set_offsets_for_label, i64 7305}
!240 = !{ptr @set_label_offsets, ptr @set_label_offsets, i64 348861}
!241 = !{ptr @eliminate_regs_in_insn, ptr @recog_memoized, i64 624052}
!242 = !{ptr @eliminate_regs_in_insn, ptr @asm_noperands, i64 624052}
!243 = !{ptr @eliminate_regs_in_insn, ptr @single_set_2, i64 1}
!244 = !{ptr @eliminate_regs_in_insn, ptr @eliminate_regs, i64 1}
!245 = !{ptr @eliminate_regs_in_insn, ptr @rhs_regno, i64 388681}
!246 = !{ptr @eliminate_regs_in_insn, ptr @subreg_lowpart_p, i64 1}
!247 = !{ptr @eliminate_regs_in_insn, ptr @elimination_effects, i64 623990}
!248 = !{ptr @eliminate_regs_in_insn, ptr @extract_insn, i64 623990}
!249 = !{ptr @eliminate_regs_in_insn, ptr @eliminate_regs_1, i64 1163657}
!250 = !{ptr @eliminate_regs_in_insn, ptr @gen_clobber, i64 1}
!251 = !{ptr @eliminate_regs_in_insn, ptr @emit_insn_after, i64 1}
!252 = !{ptr @eliminate_regs_in_insn, ptr @check_eliminable_occurrences, i64 623990}
!253 = !{ptr @eliminate_regs_in_insn, ptr @copy_insn, i64 205}
!254 = !{ptr @eliminate_regs_in_insn, ptr @copy_insn_1, i64 57}
!255 = !{ptr @eliminate_regs_in_insn, ptr @recog, i64 408}
!256 = !{ptr @copy_reloads, ptr @_obstack_newchunk, i64 4453}
!257 = !{ptr @recog_memoized, ptr @recog, i64 62}
!258 = !{ptr @elimination_effects, ptr @rhs_regno, i64 1185530}
!259 = !{ptr @elimination_effects, ptr @function_invariant_p, i64 1}
!260 = !{ptr @elimination_effects, ptr @elimination_effects, i64 2540612}
!261 = !{ptr @check_eliminable_occurrences, ptr @rhs_regno, i64 310566}
!262 = !{ptr @check_eliminable_occurrences, ptr @check_eliminable_occurrences, i64 2566175}
!263 = !{ptr @find_reload_regs, ptr @rhs_regno, i64 31695}
!264 = !{ptr @find_reload_regs, ptr @fprintf, i64 2}
!265 = !{ptr @find_reload_regs, ptr @spec_qsort, i64 160087}
!266 = !{ptr @find_reload_regs, ptr @order_regs_for_reload, i64 160087}
!267 = !{ptr @find_reload_regs, ptr @find_reg, i64 42}
!268 = !{ptr @find_reload_regs, ptr @spill_failure, i64 1}
!269 = !{ptr @order_regs_for_reload, ptr @reg_set_to_hard_reg_set, i64 320174}
!270 = !{ptr @order_regs_for_reload, ptr @bitmap_clear, i64 320174}
!271 = !{ptr @order_regs_for_reload, ptr @bmp_iter_set_init, i64 320174}
!272 = !{ptr @order_regs_for_reload, ptr @bmp_iter_set, i64 547900}
!273 = !{ptr @order_regs_for_reload, ptr @count_pseudo, i64 227726}
!274 = !{ptr @order_regs_for_reload, ptr @bmp_iter_next, i64 227726}
!275 = !{ptr @find_reg, ptr @reloads_conflict, i64 1}
!276 = !{ptr @find_reg, ptr @ix86_hard_regno_mode_ok, i64 164}
!277 = !{ptr @find_reg, ptr @ira_better_spill_reload_regno_p, i64 120}
!278 = !{ptr @find_reg, ptr @fprintf, i64 1}
!279 = !{ptr @find_reg, ptr @bmp_iter_set_init, i64 82}
!280 = !{ptr @find_reg, ptr @bmp_iter_set, i64 124}
!281 = !{ptr @find_reg, ptr @count_spilled_pseudo, i64 42}
!282 = !{ptr @find_reg, ptr @bmp_iter_next, i64 42}
!283 = !{ptr @find_reg, ptr @fancy_abort, i64 3}
!284 = !{ptr @count_pseudo, ptr @bitmap_bit_p, i64 455449}
!285 = !{ptr @count_pseudo, ptr @bitmap_set_bit, i64 225362}
!286 = !{ptr @count_pseudo, ptr @fancy_abort, i64 1}
!287 = !{ptr @count_spilled_pseudo, ptr @bitmap_bit_p, i64 41}
!288 = !{ptr @forget_old_reloads_1, ptr @rhs_regno, i64 392915}
!289 = !{ptr @forget_old_reloads_1, ptr @bitmap_set_bit, i64 392872}
!290 = !{ptr @forget_old_reloads_1, ptr @bitmap_bit_p, i64 42}
!291 = !{ptr @choose_reload_regs, ptr @rhs_regno, i64 64339}
!292 = !{ptr @choose_reload_regs, ptr @fancy_abort, i64 2}
!293 = !{ptr @choose_reload_regs, ptr @spec_qsort, i64 1}
!294 = !{ptr @choose_reload_regs, ptr @choose_reload_regs_init, i64 160088}
!295 = !{ptr @choose_reload_regs, ptr @rtx_equal_p, i64 145511}
!296 = !{ptr @choose_reload_regs, ptr @ix86_cannot_change_mode_class, i64 302}
!297 = !{ptr @choose_reload_regs, ptr @subreg_regno_offset, i64 301}
!298 = !{ptr @choose_reload_regs, ptr @smallest_mode_for_size, i64 1}
!299 = !{ptr @choose_reload_regs, ptr @ix86_hard_regno_mode_ok, i64 2}
!300 = !{ptr @choose_reload_regs, ptr @reg_overlap_mentioned_for_reload_p, i64 5}
!301 = !{ptr @choose_reload_regs, ptr @reg_classes_intersect_p, i64 1}
!302 = !{ptr @choose_reload_regs, ptr @single_set_2, i64 1}
!303 = !{ptr @choose_reload_regs, ptr @find_equiv_reg, i64 80906}
!304 = !{ptr @choose_reload_regs, ptr @subreg_regno, i64 1}
!305 = !{ptr @choose_reload_regs, ptr @gen_rtx_REG, i64 1}
!306 = !{ptr @choose_reload_regs, ptr @mark_reload_reg_in_use, i64 1}
!307 = !{ptr @choose_reload_regs, ptr @allocate_reload_reg, i64 43}
!308 = !{ptr @choose_reload_regs, ptr @true_regnum, i64 31694}
!309 = !{ptr @choose_reload_regs, ptr @free_for_value_p, i64 1}
!310 = !{ptr @choose_reload_regs, ptr @clear_reload_reg_in_use, i64 154}
!311 = !{ptr @choose_reload_regs, ptr @bitmap_set_bit, i64 43}
!312 = !{ptr @merge_assigned_reloads, ptr @reg_set_p, i64 1}
!313 = !{ptr @merge_assigned_reloads, ptr @reg_overlap_mentioned_p, i64 2}
!314 = !{ptr @merge_assigned_reloads, ptr @rtx_equal_p, i64 2}
!315 = !{ptr @merge_assigned_reloads, ptr @transfer_replacements, i64 1}
!316 = !{ptr @emit_reload_insns, ptr @fprintf, i64 1}
!317 = !{ptr @emit_reload_insns, ptr @debug_reload_to_stream, i64 1}
!318 = !{ptr @emit_reload_insns, ptr @rhs_regno, i64 1934}
!319 = !{ptr @emit_reload_insns, ptr @end_hard_regno, i64 84}
!320 = !{ptr @emit_reload_insns, ptr @do_input_reload, i64 160087}
!321 = !{ptr @emit_reload_insns, ptr @do_output_reload, i64 160087}
!322 = !{ptr @emit_reload_insns, ptr @emit_insn_before, i64 1601773}
!323 = !{ptr @emit_reload_insns, ptr @emit_insn_after, i64 1281900}
!324 = !{ptr @emit_reload_insns, ptr @bitmap_bit_p, i64 302}
!325 = !{ptr @emit_reload_insns, ptr @reload_reg_reaches_end_p, i64 42}
!326 = !{ptr @emit_reload_insns, ptr @reload_regs_reach_end_p, i64 41}
!327 = !{ptr @emit_reload_insns, ptr @inherit_piecemeal_p, i64 38}
!328 = !{ptr @emit_reload_insns, ptr @forget_old_reloads_1, i64 1}
!329 = !{ptr @emit_reload_insns, ptr @single_set_2, i64 1}
!330 = !{ptr @emit_reload_insns, ptr @fancy_abort, i64 1}
!331 = !{ptr @emit_reload_insns, ptr @find_regno_note, i64 301}
!332 = !{ptr @emit_reload_insns, ptr @bitmap_set_bit, i64 300}
!333 = !{ptr @forget_marked_reloads, ptr @bmp_iter_set_init, i64 623847}
!334 = !{ptr @forget_marked_reloads, ptr @bmp_iter_set, i64 1016720}
!335 = !{ptr @forget_marked_reloads, ptr @bitmap_bit_p, i64 78585}
!336 = !{ptr @forget_marked_reloads, ptr @bmp_iter_next, i64 392873}
!337 = !{ptr @choose_reload_regs_init, ptr @reg_set_to_hard_reg_set, i64 320174}
!338 = !{ptr @choose_reload_regs_init, ptr @compute_use_by_pseudos, i64 320174}
!339 = !{ptr @choose_reload_regs_init, ptr @rhs_regno, i64 31695}
!340 = !{ptr @choose_reload_regs_init, ptr @mark_reload_reg_in_use, i64 31695}
!341 = !{ptr @allocate_reload_reg, ptr @reload_reg_free_p, i64 176}
!342 = !{ptr @allocate_reload_reg, ptr @ix86_hard_regno_mode_ok, i64 158}
!343 = !{ptr @allocate_reload_reg, ptr @set_reload_reg, i64 42}
!344 = !{ptr @set_reload_reg, ptr @gen_rtx_REG, i64 4}
!345 = !{ptr @set_reload_reg, ptr @true_regnum, i64 42}
!346 = !{ptr @set_reload_reg, ptr @ix86_hard_regno_mode_ok, i64 82}
!347 = !{ptr @set_reload_reg, ptr @mark_reload_reg_in_use, i64 40}
!348 = !{ptr @reload_reg_free_p, ptr @fancy_abort, i64 1}
!349 = !{ptr @do_input_reload, ptr @rtx_equal_p, i64 77960}
!350 = !{ptr @do_input_reload, ptr @emit_input_reload_insns, i64 1}
!351 = !{ptr @do_input_reload, ptr @rhs_regno, i64 1}
!352 = !{ptr @do_output_reload, ptr @asm_noperands, i64 1}
!353 = !{ptr @do_output_reload, ptr @error_for_asm, i64 1}
!354 = !{ptr @do_output_reload, ptr @rhs_regno, i64 346}
!355 = !{ptr @do_output_reload, ptr @gen_rtx_REG, i64 1}
!356 = !{ptr @do_output_reload, ptr @reload_adjust_reg_for_mode, i64 1}
!357 = !{ptr @do_output_reload, ptr @rtx_equal_p, i64 388}
!358 = !{ptr @do_output_reload, ptr @find_reg_note, i64 42}
!359 = !{ptr @do_output_reload, ptr @fancy_abort, i64 1}
!360 = !{ptr @do_output_reload, ptr @emit_output_reload_insns, i64 40}
!361 = !{ptr @reload_reg_reaches_end_p, ptr @fancy_abort, i64 1}
!362 = !{ptr @reload_regs_reach_end_p, ptr @reload_reg_reaches_end_p, i64 42}
!363 = !{ptr @inherit_piecemeal_p, ptr @ix86_cannot_change_mode_class, i64 83}
!364 = !{ptr @gen_reload, ptr @get_last_insn, i64 42}
!365 = !{ptr @gen_reload, ptr @find_replacement, i64 3}
!366 = !{ptr @gen_reload, ptr @gen_rtx_fmt_ee_stat, i64 2}
!367 = !{ptr @gen_reload, ptr @emit_insn_if_valid_for_reload, i64 2}
!368 = !{ptr @gen_reload, ptr @reg_or_subregno, i64 156}
!369 = !{ptr @gen_reload, ptr @ix86_secondary_memory_needed, i64 38}
!370 = !{ptr @gen_reload, ptr @get_secondary_mem, i64 1}
!371 = !{ptr @gen_reload, ptr @gen_reload, i64 2}
!372 = !{ptr @gen_reload, ptr @gen_rtx_fmt_e_stat, i64 1}
!373 = !{ptr @gen_reload, ptr @gen_move_insn, i64 39}
!374 = !{ptr @gen_reload, ptr @emit_insn, i64 39}
!375 = !{ptr @gen_reload, ptr @mark_jump_label, i64 39}
!376 = !{ptr @gen_reload, ptr @get_insns, i64 40}
!377 = !{ptr @emit_output_reload_insns, ptr @start_sequence, i64 1}
!378 = !{ptr @emit_output_reload_insns, ptr @push_to_sequence, i64 41}
!379 = !{ptr @emit_output_reload_insns, ptr @secondary_reload_class, i64 1}
!380 = !{ptr @emit_output_reload_insns, ptr @single_set_2, i64 3}
!381 = !{ptr @emit_output_reload_insns, ptr @rtx_equal_p, i64 39}
!382 = !{ptr @emit_output_reload_insns, ptr @reg_mentioned_p, i64 43}
!383 = !{ptr @emit_output_reload_insns, ptr @rhs_regno, i64 81}
!384 = !{ptr @emit_output_reload_insns, ptr @gen_reload, i64 41}
!385 = !{ptr @emit_output_reload_insns, ptr @get_insns, i64 85}
!386 = !{ptr @emit_output_reload_insns, ptr @note_stores, i64 42}
!387 = !{ptr @emit_output_reload_insns, ptr @emit_insn, i64 1}
!388 = !{ptr @emit_output_reload_insns, ptr @copy_reg_eh_region_note_forward, i64 1}
!389 = !{ptr @emit_output_reload_insns, ptr @end_sequence, i64 42}
!390 = !{ptr @ei_end_p, ptr @ei_container, i64 924327}
!391 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 462164}
!392 = !{ptr @ei_edge, ptr @ei_container, i64 613019}
!393 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 306510}
!394 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!395 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!396 = !{!"function_entry_count", i64 1}
!397 = !{!398, !398, i64 0}
!398 = !{!"omnipotent char", !399, i64 0}
!399 = !{!"Simple C/C++ TBAA"}
!400 = !{!"branch_weights", i32 1, i32 1}
!401 = !{!"branch_weights", i32 1, i32 0}
!402 = distinct !{!402, !403}
!403 = !{!"llvm.loop.mustprogress"}
!404 = distinct !{!404, !403}
!405 = !{!"branch_weights", i32 1, i32 2}
!406 = !{!407, !408, i64 40}
!407 = !{!"obstack", !408, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !408, i64 40, !410, i64 48, !409, i64 56, !409, i64 64, !409, i64 72, !410, i64 80, !410, i64 80, !410, i64 80}
!408 = !{!"long", !398, i64 0}
!409 = !{!"any pointer", !398, i64 0}
!410 = !{!"int", !398, i64 0}
!411 = !{!407, !409, i64 32}
!412 = !{!407, !409, i64 24}
!413 = !{!407, !409, i64 16}
!414 = !{!"branch_weights", i32 2, i32 1}
!415 = !{!407, !410, i64 48}
!416 = !{!407, !409, i64 8}
!417 = !{!409, !409, i64 0}
!418 = !{!"function_entry_count", i64 1976884}
!419 = !{!"reload1.c:bitmap_initialize_stat"}
!420 = !{!421, !409, i64 24}
!421 = !{!"bitmap_head_def", !409, i64 0, !409, i64 8, !410, i64 16, !409, i64 24}
!422 = !{!"function_entry_count", i64 676498}
!423 = !{!"branch_weights", i32 676499, i32 1}
!424 = !{!"branch_weights", i32 21803, i32 654697}
!425 = !{!"branch_weights", i32 1, i32 676499}
!426 = !{!427, !409, i64 0}
!427 = !{!"insn_chain", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !410, i64 32, !410, i64 36, !410, i64 36, !410, i64 36, !410, i64 36, !421, i64 40, !421, i64 72, !409, i64 104, !410, i64 112, !408, i64 120}
!428 = !{!"function_entry_count", i64 640348}
!429 = !{i8 0, i8 2}
!430 = !{!"branch_weights", i32 184898, i32 455451}
!431 = !{!410, !410, i64 0}
!432 = !{!433, !433, i64 0}
!433 = !{!"short", !398, i64 0}
!434 = !{!"branch_weights", i32 4721, i32 450731}
!435 = !{!"branch_weights", i32 1, i32 4721}
!436 = !{!"branch_weights", i32 455451, i32 0}
!437 = distinct !{!437, !403}
!438 = !{!"function_entry_count", i64 1904703}
!439 = !{!"reload1.c:bmp_iter_set_init"}
!440 = !{!421, !409, i64 0}
!441 = !{!442, !409, i64 0}
!442 = !{!"", !409, i64 0, !409, i64 8, !410, i64 16, !408, i64 24}
!443 = !{!442, !409, i64 8}
!444 = !{!"branch_weights", i32 682841, i32 1221864}
!445 = !{!446, !410, i64 16}
!446 = !{!"bitmap_element_def", !409, i64 0, !409, i64 8, !410, i64 16, !398, i64 24}
!447 = !{!"branch_weights", i32 1711118, i32 193587}
!448 = !{!442, !410, i64 16}
!449 = !{!408, !408, i64 0}
!450 = !{!442, !408, i64 24}
!451 = !{!"function_entry_count", i64 3209122}
!452 = !{!"reload1.c:bmp_iter_set"}
!453 = !{!"branch_weights", i32 2612364, i32 596760}
!454 = !{!"branch_weights", i32 1304419, i32 1}
!455 = !{!"branch_weights", i32 18718026, i32 1304419}
!456 = distinct !{!456, !403}
!457 = !{!"branch_weights", i32 1, i32 2513187}
!458 = !{!"branch_weights", i32 2414012, i32 707661}
!459 = !{!"branch_weights", i32 2513187, i32 608485}
!460 = distinct !{!460, !403}
!461 = !{!446, !409, i64 0}
!462 = !{!"branch_weights", i32 1904704, i32 608485}
!463 = !{!"function_entry_count", i64 450730}
!464 = !{!"reload1.c:add_to_hard_reg_set"}
!465 = !{!"branch_weights", i32 1, i32 450731}
!466 = distinct !{!466, !403}
!467 = !{!"function_entry_count", i64 1304419}
!468 = !{!"reload1.c:bmp_iter_next"}
!469 = !{!"function_entry_count", i64 38}
!470 = !{!"branch_weights", i32 1, i32 39}
!471 = !{!"branch_weights", i32 39, i32 1}
!472 = !{!"branch_weights", i32 155, i32 1}
!473 = !{!"branch_weights", i32 1159801, i32 155}
!474 = distinct !{!474, !403}
!475 = !{!476, !398, i64 466}
!476 = !{!"rtl_data", !477, i64 0, !478, i64 40, !479, i64 96, !480, i64 112, !482, i64 208, !483, i64 248, !410, i64 312, !409, i64 320, !409, i64 328, !409, i64 336, !409, i64 344, !409, i64 352, !409, i64 360, !409, i64 368, !409, i64 376, !409, i64 384, !409, i64 392, !408, i64 400, !409, i64 408, !409, i64 416, !409, i64 424, !410, i64 432, !410, i64 436, !410, i64 440, !410, i64 444, !410, i64 448, !410, i64 452, !409, i64 456, !398, i64 464, !398, i64 465, !398, i64 466, !398, i64 467, !398, i64 468, !398, i64 469, !398, i64 470, !398, i64 471, !398, i64 472, !398, i64 473, !398, i64 474, !398, i64 475, !398, i64 476, !398, i64 477, !398, i64 478, !398, i64 479, !398, i64 480, !398, i64 481, !398, i64 482, !398, i64 483, !398, i64 484, !398, i64 485}
!477 = !{!"expr_status", !410, i64 0, !410, i64 4, !410, i64 8, !409, i64 16, !409, i64 24, !409, i64 32}
!478 = !{!"emit_status", !410, i64 0, !410, i64 4, !409, i64 8, !409, i64 16, !409, i64 24, !410, i64 32, !410, i64 36, !410, i64 40, !410, i64 44, !409, i64 48}
!479 = !{!"varasm_status", !409, i64 0, !410, i64 8}
!480 = !{!"incoming_args", !410, i64 0, !410, i64 4, !410, i64 8, !409, i64 16, !481, i64 24, !409, i64 88}
!481 = !{!"ix86_args", !410, i64 0, !410, i64 4, !410, i64 8, !410, i64 12, !410, i64 16, !410, i64 20, !410, i64 24, !410, i64 28, !410, i64 32, !410, i64 36, !410, i64 40, !410, i64 44, !410, i64 48, !410, i64 52, !410, i64 56, !410, i64 60}
!482 = !{!"function_subsections", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32}
!483 = !{!"rtl_eh", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !398, i64 48}
!484 = !{!"branch_weights", i32 2127031423, i32 20452225}
!485 = distinct !{!485, !403}
!486 = !{!"branch_weights", i32 1, i32 155}
!487 = !{!"branch_weights", i32 -1208653668, i32 1371592250}
!488 = !{!"branch_weights", i32 613018, i32 1}
!489 = !{!"branch_weights", i32 7882, i32 2147475766}
!490 = !{!"branch_weights", i32 39, i32 623662}
!491 = !{!"branch_weights", i32 1631672943, i32 -623447426}
!492 = !{!"branch_weights", i32 279597, i32 621285}
!493 = !{!"branch_weights", i32 384248, i32 237038}
!494 = !{!"branch_weights", i32 358793, i32 25456}
!495 = !{!"branch_weights", i32 1, i32 25456}
!496 = !{i32 0, i32 2}
!497 = !{!"branch_weights", i32 6450, i32 164216657}
!498 = !{!"branch_weights", i32 6450, i32 19007}
!499 = !{!"branch_weights", i32 1, i32 6450}
!500 = !{!"branch_weights", i32 12901, i32 41602500}
!501 = !{!"branch_weights", i32 155, i32 3603369}
!502 = distinct !{!502, !403}
!503 = !{!"branch_weights", i32 1, i32 79}
!504 = distinct !{!504, !403}
!505 = !{!"branch_weights", i32 1159041, i32 155}
!506 = distinct !{!506, !403}
!507 = !{!"branch_weights", i32 900881, i32 39}
!508 = !{!"branch_weights", i32 155, i32 1159041}
!509 = distinct !{!509, !403}
!510 = !{!"branch_weights", i32 3603369, i32 155}
!511 = distinct !{!511, !403}
!512 = !{!513, !410, i64 0}
!513 = !{!"elim_table", !410, i64 0, !410, i64 4, !408, i64 8, !410, i64 16, !410, i64 20, !408, i64 24, !408, i64 32, !410, i64 40, !409, i64 48, !409, i64 56}
!514 = !{!513, !410, i64 16}
!515 = !{!"branch_weights", i32 115, i32 39}
!516 = !{!"branch_weights", i32 77, i32 77}
!517 = distinct !{!517, !403}
!518 = !{!"branch_weights", i32 1, i32 77}
!519 = !{!"branch_weights", i32 153, i32 155}
!520 = distinct !{!520, !403}
!521 = !{!476, !398, i64 477}
!522 = !{!"branch_weights", i32 187, i32 1}
!523 = !{!"branch_weights", i32 187134, i32 110520}
!524 = !{!"branch_weights", i32 186228, i32 907}
!525 = !{!"branch_weights", i32 1, i32 907}
!526 = !{!527, !398, i64 32}
!527 = !{!"mem_attrs", !409, i64 0, !409, i64 8, !409, i64 16, !410, i64 24, !410, i64 28, !398, i64 32}
!528 = !{!"branch_weights", i32 1190425, i32 187}
!529 = distinct !{!529, !403}
!530 = !{!"branch_weights", i32 35, i32 13}
!531 = !{!"branch_weights", i32 43, i32 5}
!532 = !{!"branch_weights", i32 81, i32 359}
!533 = !{!"branch_weights", i32 5, i32 5}
!534 = !{!"branch_weights", i32 35, i32 5}
!535 = !{!"branch_weights", i32 1, i32 5}
!536 = !{!"branch_weights", i32 5, i32 1}
!537 = !{!"branch_weights", i32 2015, i32 1}
!538 = !{!"branch_weights", i32 39, i32 1976}
!539 = distinct !{!539, !403}
!540 = !{!"branch_weights", i32 79, i32 1}
!541 = !{!513, !410, i64 4}
!542 = !{!"branch_weights", i32 457, i32 155}
!543 = distinct !{!543, !403}
!544 = !{!"branch_weights", i32 182858, i32 107132}
!545 = !{!"branch_weights", i32 182858, i32 1}
!546 = distinct !{!546, !403}
!547 = distinct !{!547, !403}
!548 = !{!"branch_weights", i32 159, i32 1}
!549 = !{!550, !409, i64 8}
!550 = !{!"function", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48, !409, i64 56, !409, i64 64, !409, i64 72, !409, i64 80, !409, i64 88, !409, i64 96, !410, i64 104, !410, i64 108, !410, i64 112, !410, i64 116, !410, i64 120, !410, i64 124, !409, i64 128, !410, i64 136, !410, i64 137, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139}
!551 = !{!552, !409, i64 0}
!552 = !{!"control_flow_graph", !409, i64 0, !409, i64 8, !409, i64 16, !410, i64 24, !410, i64 28, !410, i64 32, !409, i64 40, !410, i64 48, !398, i64 52, !398, i64 60, !410, i64 68, !410, i64 72}
!553 = !{!554, !409, i64 56}
!554 = !{!"basic_block_def", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !398, i64 32, !409, i64 48, !409, i64 56, !398, i64 64, !408, i64 72, !410, i64 80, !410, i64 84, !410, i64 88, !410, i64 92, !410, i64 96}
!555 = !{!552, !409, i64 8}
!556 = distinct !{!556, !403}
!557 = !{!"branch_weights", i32 289687, i32 303}
!558 = !{!"branch_weights", i32 289989, i32 1}
!559 = !{!"branch_weights", i32 7079391, i32 2140404257}
!560 = !{!"branch_weights", i32 303, i32 1}
!561 = !{!"branch_weights", i32 1, i32 303}
!562 = !{!563, !409, i64 1040}
!563 = !{!"gcc_target", !564, i64 0, !566, i64 368, !567, i64 664, !410, i64 744, !409, i64 752, !409, i64 760, !409, i64 768, !409, i64 776, !409, i64 784, !409, i64 792, !409, i64 800, !409, i64 808, !409, i64 816, !409, i64 824, !409, i64 832, !409, i64 840, !409, i64 848, !409, i64 856, !409, i64 864, !409, i64 872, !409, i64 880, !409, i64 888, !409, i64 896, !409, i64 904, !409, i64 912, !409, i64 920, !409, i64 928, !409, i64 936, !409, i64 944, !409, i64 952, !409, i64 960, !409, i64 968, !409, i64 976, !409, i64 984, !409, i64 992, !409, i64 1000, !409, i64 1008, !409, i64 1016, !409, i64 1024, !409, i64 1032, !409, i64 1040, !409, i64 1048, !409, i64 1056, !408, i64 1064, !408, i64 1072, !409, i64 1080, !409, i64 1088, !409, i64 1096, !409, i64 1104, !409, i64 1112, !409, i64 1120, !409, i64 1128, !409, i64 1136, !409, i64 1144, !409, i64 1152, !409, i64 1160, !409, i64 1168, !568, i64 1176, !409, i64 1232, !409, i64 1240, !409, i64 1248, !409, i64 1256, !409, i64 1264, !409, i64 1272, !409, i64 1280, !409, i64 1288, !409, i64 1296, !409, i64 1304, !409, i64 1312, !409, i64 1320, !409, i64 1328, !409, i64 1336, !409, i64 1344, !409, i64 1352, !409, i64 1360, !409, i64 1368, !409, i64 1376, !409, i64 1384, !409, i64 1392, !409, i64 1400, !409, i64 1408, !409, i64 1416, !409, i64 1424, !409, i64 1432, !409, i64 1440, !409, i64 1448, !409, i64 1456, !408, i64 1464, !569, i64 1472, !409, i64 1664, !409, i64 1672, !409, i64 1680, !409, i64 1688, !409, i64 1696, !409, i64 1704, !409, i64 1712, !409, i64 1720, !409, i64 1728, !409, i64 1736, !409, i64 1744, !409, i64 1752, !409, i64 1760, !409, i64 1768, !409, i64 1776, !570, i64 1784, !571, i64 1792, !572, i64 1896, !573, i64 1968, !409, i64 2016, !398, i64 2024, !398, i64 2025, !398, i64 2026, !398, i64 2027, !398, i64 2028, !398, i64 2029, !398, i64 2030, !398, i64 2031, !398, i64 2032, !398, i64 2033, !398, i64 2034, !398, i64 2035}
!564 = !{!"asm_out", !409, i64 0, !409, i64 8, !409, i64 16, !565, i64 24, !565, i64 56, !409, i64 88, !409, i64 96, !409, i64 104, !409, i64 112, !409, i64 120, !409, i64 128, !409, i64 136, !409, i64 144, !409, i64 152, !409, i64 160, !409, i64 168, !409, i64 176, !409, i64 184, !409, i64 192, !409, i64 200, !409, i64 208, !409, i64 216, !409, i64 224, !409, i64 232, !409, i64 240, !409, i64 248, !409, i64 256, !409, i64 264, !409, i64 272, !409, i64 280, !409, i64 288, !409, i64 296, !409, i64 304, !409, i64 312, !409, i64 320, !409, i64 328, !409, i64 336, !409, i64 344, !409, i64 352, !409, i64 360}
!565 = !{!"asm_int_op", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24}
!566 = !{!"sched", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48, !409, i64 56, !409, i64 64, !409, i64 72, !409, i64 80, !409, i64 88, !409, i64 96, !409, i64 104, !409, i64 112, !409, i64 120, !409, i64 128, !409, i64 136, !409, i64 144, !409, i64 152, !409, i64 160, !409, i64 168, !409, i64 176, !409, i64 184, !409, i64 192, !409, i64 200, !409, i64 208, !409, i64 216, !409, i64 224, !409, i64 232, !409, i64 240, !409, i64 248, !409, i64 256, !409, i64 264, !409, i64 272, !409, i64 280, !409, i64 288}
!567 = !{!"vectorize", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48, !409, i64 56, !409, i64 64, !409, i64 72}
!568 = !{!"addr_space", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48}
!569 = !{!"calls", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48, !409, i64 56, !409, i64 64, !409, i64 72, !409, i64 80, !409, i64 88, !409, i64 96, !409, i64 104, !409, i64 112, !409, i64 120, !409, i64 128, !409, i64 136, !409, i64 144, !409, i64 152, !409, i64 160, !409, i64 168, !409, i64 176, !409, i64 184}
!570 = !{!"c", !409, i64 0}
!571 = !{!"cxx", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48, !409, i64 56, !409, i64 64, !409, i64 72, !409, i64 80, !409, i64 88, !409, i64 96}
!572 = !{!"emutls", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40, !409, i64 48, !409, i64 56, !398, i64 64, !398, i64 65}
!573 = !{!"target_option_hooks", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !409, i64 40}
!574 = !{!575, !409, i64 224}
!575 = !{!"df", !398, i64 0, !398, i64 64, !409, i64 128, !576, i64 136, !576, i64 176, !409, i64 216, !409, i64 224, !409, i64 232, !410, i64 240, !410, i64 244, !409, i64 248, !410, i64 256, !410, i64 260, !409, i64 264, !409, i64 272, !409, i64 280, !409, i64 288, !409, i64 296, !409, i64 304, !409, i64 312, !409, i64 320, !409, i64 328, !409, i64 336, !410, i64 344, !410, i64 348, !409, i64 352, !410, i64 360, !410, i64 364, !398, i64 365, !398, i64 366}
!576 = !{!"df_ref_info", !409, i64 0, !409, i64 8, !409, i64 16, !410, i64 24, !410, i64 28, !410, i64 32, !410, i64 36}
!577 = !{!578, !409, i64 0}
!578 = !{!"df_reg_info", !409, i64 0, !410, i64 8}
!579 = !{!580, !409, i64 0}
!580 = !{!"df_insn_info", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32, !410, i64 40}
!581 = distinct !{!581, !403}
!582 = distinct !{!582, !403}
!583 = distinct !{!583, !403}
!584 = !{!"branch_weights", i32 -1207713475, i32 1371592250}
!585 = !{!"branch_weights", i32 68959, i32 554932}
!586 = !{!"branch_weights", i32 39, i32 623852}
!587 = !{!"branch_weights", i32 1, i32 623890}
!588 = !{!"branch_weights", i32 399580, i32 224311}
!589 = !{!"branch_weights", i32 391144, i32 8437}
!590 = !{!"branch_weights", i32 135932, i32 255213}
!591 = !{!"branch_weights", i32 66541, i32 69392}
!592 = !{!"branch_weights", i32 66033, i32 509}
!593 = !{!"branch_weights", i32 59986, i32 497872}
!594 = !{!"branch_weights", i32 -1395244254, i32 -947389175, i32 106160260, i32 12761}
!595 = !{!"branch_weights", i32 497872, i32 0}
!596 = distinct !{!596, !403}
!597 = !{!"branch_weights", i32 1, i32 557858}
!598 = !{!"branch_weights", i32 155, i32 3604129}
!599 = distinct !{!599, !403}
!600 = distinct !{!600, !403}
!601 = distinct !{!601, !403}
!602 = !{!"branch_weights", i32 3, i32 36}
!603 = !{!"branch_weights", i32 3, i32 0}
!604 = distinct !{!604, !403}
!605 = !{!476, !409, i64 88}
!606 = !{!"function_entry_count", i64 289988}
!607 = !{!"branch_weights", i32 107132, i32 182858}
!608 = !{!"function_entry_count", i64 0}
!609 = !{!"reload1.c:has_nonexceptional_receiver"}
!610 = !{!552, !410, i64 24}
!611 = !{!554, !410, i64 96}
!612 = distinct !{!612, !403}
!613 = distinct !{!613, !403}
!614 = !{i64 0, i64 4, !431, i64 8, i64 8, !417}
!615 = !{i64 0, i64 8, !417}
!616 = !{!617, !410, i64 48}
!617 = !{!"edge_def", !409, i64 0, !409, i64 8, !398, i64 16, !409, i64 24, !409, i64 32, !410, i64 40, !410, i64 44, !410, i64 48, !410, i64 52, !408, i64 56}
!618 = !{!617, !409, i64 0}
!619 = distinct !{!619, !403}
!620 = distinct !{!620, !403}
!621 = distinct !{!621, !403}
!622 = !{!"function_entry_count", i64 3407657}
!623 = !{!"reload1.c:scan_paradoxical_subregs"}
!624 = !{!"branch_weights", i32 1407994, i32 874535, i32 470905, i32 11983, i32 134400, i32 195831, i32 1, i32 1, i32 1, i32 1, i32 303509, i32 62, i32 8245, i32 203}
!625 = !{!"branch_weights", i32 203, i32 1}
!626 = !{!"branch_weights", i32 1, i32 1407993}
!627 = !{!"branch_weights", i32 211040372, i32 -1773944533, i32 7808194}
!628 = !{!629, !410, i64 0}
!629 = !{!"rtvec_def", !410, i64 0, !398, i64 8}
!630 = !{!"branch_weights", i32 8444, i32 1}
!631 = !{!"branch_weights", i32 48900, i32 8444}
!632 = distinct !{!632, !403}
!633 = !{!"branch_weights", i32 1555318, i32 1407993}
!634 = distinct !{!634, !403}
!635 = !{!"function_entry_count", i64 4283162}
!636 = !{!"reload1.c:rhs_regno"}
!637 = !{!"function_entry_count", i64 63803}
!638 = !{!"branch_weights", i32 25799, i32 38006}
!639 = !{!"branch_weights", i32 1, i32 38006}
!640 = !{!"reload1.c:init_elim_table"}
!641 = !{!"branch_weights", i32 2, i32 38}
!642 = !{!643, !410, i64 0}
!643 = !{!"elim_table_1", !410, i64 0, !410, i64 4}
!644 = !{!643, !410, i64 4}
!645 = !{!563, !409, i64 1776}
!646 = !{!476, !398, i64 479}
!647 = !{!513, !410, i64 20}
!648 = distinct !{!648, !403}
!649 = !{!513, !409, i64 48}
!650 = !{!513, !409, i64 56}
!651 = distinct !{!651, !403}
!652 = !{!"function_entry_count", i64 289798}
!653 = !{!"reload1.c:alter_reg"}
!654 = !{!"branch_weights", i32 1, i32 289799}
!655 = !{!"branch_weights", i32 289799, i32 1}
!656 = !{!"branch_weights", i32 182668, i32 107132}
!657 = !{!"branch_weights", i32 303, i32 182366}
!658 = !{!"branch_weights", i32 49798959, i32 2097684689}
!659 = !{!"branch_weights", i32 9, i32 1}
!660 = !{!"branch_weights", i32 1, i32 9}
!661 = !{!"branch_weights", i32 81, i32 19}
!662 = !{!527, !410, i64 28}
!663 = !{!"function_entry_count", i64 629836}
!664 = !{!"reload1.c:mark_not_eliminable"}
!665 = !{!"branch_weights", i32 1, i32 629837}
!666 = !{!"branch_weights", i32 1259673, i32 1259673}
!667 = !{!"branch_weights", i32 1, i32 1259673}
!668 = !{!"branch_weights", i32 629837, i32 1889508}
!669 = distinct !{!669, !403}
!670 = !{!"reload1.c:maybe_fix_stack_asms"}
!671 = !{!427, !409, i64 24}
!672 = !{!"branch_weights", i32 -1649131689, i32 223354502}
!673 = !{!"branch_weights", i32 623700, i32 1}
!674 = distinct !{!674, !403}
!675 = distinct !{!675, !403}
!676 = distinct !{!676, !403}
!677 = !{!"branch_weights", i32 155, i32 2705249}
!678 = distinct !{!678, !403}
!679 = !{!"reload1.c:spill_hard_reg"}
!680 = !{!"branch_weights", i32 -1846188141, i32 1434658178}
!681 = !{!"branch_weights", i32 1, i32 107132}
!682 = distinct !{!682, !403}
!683 = !{!"function_entry_count", i64 76}
!684 = !{!"reload1.c:finish_spills"}
!685 = !{!"branch_weights", i32 4027, i32 3}
!686 = !{!"branch_weights", i32 1, i32 3}
!687 = !{!"branch_weights", i32 77, i32 3952}
!688 = distinct !{!688, !403}
!689 = !{!"branch_weights", i32 1, i32 153}
!690 = !{!"branch_weights", i32 1, i32 605}
!691 = !{!"branch_weights", i32 153, i32 1057}
!692 = distinct !{!692, !403}
!693 = !{!"branch_weights", i32 5929, i32 155}
!694 = !{!"branch_weights", i32 153, i32 1}
!695 = !{!"branch_weights", i32 1, i32 160087}
!696 = !{!427, !408, i64 120}
!697 = !{!"branch_weights", i32 160087, i32 17926}
!698 = distinct !{!698, !403}
!699 = !{!"branch_weights", i32 110374, i32 49714}
!700 = !{!"branch_weights", i32 49714, i32 0}
!701 = distinct !{!701, !403}
!702 = !{!"branch_weights", i32 153, i32 320023}
!703 = distinct !{!703, !403}
!704 = !{!"branch_weights", i32 579977, i32 1}
!705 = !{!"branch_weights", i32 1159801, i32 153}
!706 = distinct !{!706, !403}
!707 = !{!"branch_weights", i32 77, i32 1}
!708 = !{!"branch_weights", i32 1, i32 1352849}
!709 = !{!"branch_weights", i32 1192762, i32 160088}
!710 = !{!"branch_weights", i32 153, i32 2705545}
!711 = distinct !{!711, !403}
!712 = distinct !{!712, !403}
!713 = !{!"function_entry_count", i64 84}
!714 = !{!"reload1.c:set_initial_elim_offsets"}
!715 = !{!513, !408, i64 8}
!716 = !{!513, !408, i64 24}
!717 = !{!513, !408, i64 32}
!718 = !{!"branch_weights", i32 505, i32 169}
!719 = distinct !{!719, !403}
!720 = !{!"function_entry_count", i64 46}
!721 = !{!"reload1.c:set_initial_label_offsets"}
!722 = !{!"branch_weights", i32 46, i32 1}
!723 = distinct !{!723, !403}
!724 = !{!"function_entry_count", i64 906}
!725 = !{!"reload1.c:calculate_needs_all_insns"}
!726 = !{!427, !410, i64 112}
!727 = !{!"branch_weights", i32 9643, i32 507792079, i32 1498269703, i32 -441714358, i32 9643, i32 665040027}
!728 = !{!"branch_weights", i32 209682, i32 258815}
!729 = !{!"branch_weights", i32 -1648503850, i32 223354502}
!730 = !{!"branch_weights", i32 613166, i32 1}
!731 = !{!"branch_weights", i32 -2147483648, i32 0}
!732 = !{!"branch_weights", i32 384322, i32 237112}
!733 = !{!"branch_weights", i32 384322, i32 1}
!734 = !{!"branch_weights", i32 1, i32 623848}
!735 = !{!"branch_weights", i32 4873, i32 -1254444242}
!736 = !{!427, !409, i64 8}
!737 = !{!"branch_weights", i32 623643, i32 206}
!738 = !{!"branch_weights", i32 206, i32 1}
!739 = !{!"branch_weights", i32 463761, i32 160088}
!740 = !{!"branch_weights", i32 155, i32 2705841}
!741 = distinct !{!741, !403}
!742 = !{!"reload1.c:verify_initial_elim_offsets"}
!743 = !{!"branch_weights", i32 139385, i32 47275}
!744 = distinct !{!744, !403}
!745 = !{!"reload1.c:update_eliminables"}
!746 = !{!563, !409, i64 1768}
!747 = distinct !{!747, !403}
!748 = distinct !{!748, !403}
!749 = distinct !{!749, !403}
!750 = !{!"branch_weights", i32 114, i32 39}
!751 = distinct !{!751, !403}
!752 = !{!"branch_weights", i32 39, i32 39}
!753 = distinct !{!753, !403}
!754 = !{!"branch_weights", i32 1561, i32 39}
!755 = !{!"reload1.c:select_reload_regs"}
!756 = !{!"branch_weights", i32 155, i32 640197}
!757 = distinct !{!757, !403}
!758 = !{!"reload1.c:delete_caller_save_insns"}
!759 = distinct !{!759, !403}
!760 = !{!"reload1.c:delete_dead_insn"}
!761 = !{!"reload1.c:reload_as_needed"}
!762 = !{!"branch_weights", i32 7509, i32 395418399, i32 -1294427455, i32 7508, i32 1166694306, i32 517871595}
!763 = !{!"branch_weights", i32 194940, i32 -1254819514}
!764 = !{!"branch_weights", i32 1, i32 206}
!765 = !{!"branch_weights", i32 -297594911, i32 1379893363}
!766 = !{!"branch_weights", i32 2147460263, i32 23385}
!767 = !{!"branch_weights", i32 160088, i32 1}
!768 = !{!"branch_weights", i32 1, i32 160088}
!769 = distinct !{!769, !403}
!770 = !{!"branch_weights", i32 623805, i32 43}
!771 = !{!"branch_weights", i32 43, i32 1}
!772 = !{!"branch_weights", i32 1, i32 43}
!773 = !{!"branch_weights", i32 43, i32 0}
!774 = distinct !{!774, !403}
!775 = !{!"branch_weights", i32 -1590537478, i32 256616387, i32 336093236}
!776 = distinct !{!776, !403}
!777 = !{!"function_entry_count", i64 68958}
!778 = !{!"reload1.c:replace_pseudos_in"}
!779 = !{!"branch_weights", i32 68957, i32 1}
!780 = distinct !{!780, !403}
!781 = distinct !{!781, !403}
!782 = !{!"reload1.c:VEC_rtx_gc_free"}
!783 = !{!"branch_weights", i32 1, i32 155654}
!784 = !{!"branch_weights", i32 19156, i32 -1359061261}
!785 = !{!"branch_weights", i32 155654, i32 150857}
!786 = distinct !{!786, !403}
!787 = !{!"branch_weights", i32 155655, i32 1}
!788 = !{!789, !409, i64 8}
!789 = !{!"rtl_bb_info", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !410, i64 32}
!790 = !{!789, !409, i64 0}
!791 = distinct !{!791, !403}
!792 = distinct !{!792, !403}
!793 = distinct !{!793, !403}
!794 = !{!"branch_weights", i32 155, i32 622465}
!795 = distinct !{!795, !403}
!796 = !{!552, !410, i64 32}
!797 = !{!798, !409, i64 0}
!798 = !{!"simple_bitmap_def", !409, i64 0, !410, i64 8, !410, i64 12, !398, i64 16}
!799 = !{!"reload1.c:VEC_rtx_p_heap_free"}
!800 = !{!"function_entry_count", i64 107333}
!801 = !{!"reload1.c:mark_home_live_1"}
!802 = !{!"branch_weights", i32 1, i32 107334}
!803 = !{!"branch_weights", i32 107333, i32 1}
!804 = distinct !{!804, !403}
!805 = !{!"function_entry_count", i64 1326618}
!806 = !{!"reload1.c:eliminate_regs_1"}
!807 = !{!"branch_weights", i32 1, i32 127}
!808 = !{!"branch_weights", i32 24, i32 289559, i32 1, i32 1, i32 1, i32 11983, i32 134400, i32 155330, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 559705, i32 14520, i32 165, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 113, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 203, i32 160627, i32 1, i32 1, i32 1, i32 1}
!809 = !{!"branch_weights", i32 559101, i32 605}
!810 = !{!"branch_weights", i32 377, i32 2235649}
!811 = !{!"branch_weights", i32 189, i32 189}
!812 = !{!"branch_weights", i32 1677112, i32 558913}
!813 = distinct !{!813, !403}
!814 = !{!"branch_weights", i32 366025, i32 1211}
!815 = !{!"branch_weights", i32 605, i32 1}
!816 = !{!"branch_weights", i32 127, i32 169807105}
!817 = !{!"branch_weights", i32 14236, i32 285}
!818 = !{!"branch_weights", i32 14236, i32 1}
!819 = !{!"branch_weights", i32 14128, i32 109}
!820 = !{!"branch_weights", i32 2405, i32 54105}
!821 = !{!"branch_weights", i32 1203, i32 1203}
!822 = !{!"branch_weights", i32 1447209, i32 2407}
!823 = !{!"branch_weights", i32 1, i32 1203}
!824 = !{!"branch_weights", i32 43583, i32 12926}
!825 = distinct !{!825, !403}
!826 = !{!"branch_weights", i32 1, i32 393}
!827 = !{!"branch_weights", i32 393, i32 1}
!828 = !{!"branch_weights", i32 165, i32 1}
!829 = !{!"branch_weights", i32 1, i32 657}
!830 = !{!513, !410, i64 40}
!831 = !{!"branch_weights", i32 492, i32 165}
!832 = distinct !{!832, !403}
!833 = !{!"branch_weights", i32 1, i32 165}
!834 = !{!"branch_weights", i32 1, i32 113}
!835 = !{!"branch_weights", i32 39, i32 75}
!836 = !{!"branch_weights", i32 1, i32 75}
!837 = !{!"branch_weights", i32 113, i32 1}
!838 = !{!"branch_weights", i32 41209, i32 407}
!839 = !{!"branch_weights", i32 2136905673, i32 10577975}
!840 = !{!"branch_weights", i32 1, i32 191}
!841 = !{!"branch_weights", i32 576, i32 25, i32 24}
!842 = distinct !{!842, !403}
!843 = !{!"branch_weights", i32 191, i32 1}
!844 = distinct !{!844, !403}
!845 = !{!"function_entry_count", i64 63388}
!846 = !{!"branch_weights", i32 1, i32 253553}
!847 = !{!"branch_weights", i32 190164, i32 63389}
!848 = distinct !{!848, !403}
!849 = !{!850, !409, i64 64}
!850 = !{!"reload", !409, i64 0, !409, i64 8, !410, i64 16, !410, i64 20, !410, i64 24, !410, i64 28, !410, i64 32, !410, i64 36, !409, i64 40, !409, i64 48, !410, i64 56, !409, i64 64, !410, i64 72, !410, i64 76, !410, i64 80, !410, i64 84, !410, i64 88, !410, i64 92, !410, i64 96, !410, i64 96, !410, i64 96, !410, i64 96}
!851 = !{!850, !410, i64 72}
!852 = !{!850, !410, i64 92}
!853 = !{!850, !410, i64 28}
!854 = !{!"function_entry_count", i64 153}
!855 = !{!"reload1.c:clear_reload_reg_in_use"}
!856 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 154, i32 1, i32 1}
!857 = distinct !{!857, !403}
!858 = !{!"branch_weights", i32 0, i32 0}
!859 = distinct !{!859, !403, !860, !861}
!860 = !{!"llvm.loop.isvectorized", i32 1}
!861 = !{!"llvm.loop.unroll.runtime.disable"}
!862 = !{!"function_entry_count", i64 155654}
!863 = !{!"reload1.c:ei_start_1"}
!864 = !{!"function_entry_count", i64 462164}
!865 = !{!"reload1.c:ei_cond"}
!866 = !{!"branch_weights", i32 306511, i32 155655}
!867 = !{!"function_entry_count", i64 306510}
!868 = !{!"reload1.c:ei_next"}
!869 = !{!"branch_weights", i32 1, i32 306511}
!870 = !{!"branch_weights", i32 306511, i32 1}
!871 = !{!872, !410, i64 0}
!872 = !{!"", !410, i64 0, !409, i64 8}
!873 = !{!"function_entry_count", i64 665278}
!874 = !{!"reload1.c:end_hard_regno"}
!875 = !{!"reload1.c:insn_constraint_len"}
!876 = !{!"function_entry_count", i64 818045}
!877 = !{!"reload1.c:set_label_offsets"}
!878 = !{!"branch_weights", i32 24, i32 47629, i32 200854, i32 155353, i32 206107, i32 52709, i32 24, i32 24, i32 1, i32 155330}
!879 = !{!"branch_weights", i32 47629, i32 1}
!880 = !{!"branch_weights", i32 52652, i32 195831}
!881 = !{!"branch_weights", i32 210513, i32 93}
!882 = !{!"branch_weights", i32 52652, i32 157953}
!883 = distinct !{!883, !403}
!884 = !{!"branch_weights", i32 52331, i32 143501}
!885 = !{!"branch_weights", i32 1, i32 52331}
!886 = !{!"branch_weights", i32 7242, i32 45090}
!887 = !{!"branch_weights", i32 754357, i32 1}
!888 = !{!"branch_weights", i32 188590, i32 565767}
!889 = distinct !{!889, !403}
!890 = !{!"branch_weights", i32 1, i32 414166}
!891 = !{!"branch_weights", i32 24, i32 563888}
!892 = !{!"branch_weights", i32 414166, i32 149745}
!893 = distinct !{!893, !403}
!894 = !{!"branch_weights", i32 1, i32 187}
!895 = !{!"branch_weights", i32 162005, i32 187}
!896 = distinct !{!896, !403}
!897 = !{!"branch_weights", i32 155330, i32 1}
!898 = !{!"branch_weights", i32 24, i32 1, i32 1, i32 7128, i32 148180}
!899 = !{!"branch_weights", i32 1, i32 592720, i32 2, i32 1}
!900 = !{!"branch_weights", i32 9261, i32 18522, i32 -1550303246, i32 9261}
!901 = !{!"branch_weights", i32 93, i32 1}
!902 = !{!"branch_weights", i32 69, i32 24}
!903 = distinct !{!903, !403}
!904 = !{!"function_entry_count", i64 624052}
!905 = !{!"reload1.c:eliminate_regs_in_insn"}
!906 = !{!"branch_weights", i32 -356258146, i32 6311}
!907 = !{!"branch_weights", i32 613371, i32 1}
!908 = !{!"branch_weights", i32 302275, i32 -1252743049}
!909 = !{!"branch_weights", i32 576, i32 97500, i32 2400, i32 55296, i32 1152, i32 576}
!910 = !{!"branch_weights", i32 1, i32 62}
!911 = !{!"branch_weights", i32 8101348, i32 2139382300}
!912 = !{!"branch_weights", i32 384434, i32 237205}
!913 = !{!"branch_weights", i32 384132, i32 303}
!914 = !{!"branch_weights", i32 1, i32 1536525}
!915 = !{!"branch_weights", i32 1152393, i32 384132}
!916 = distinct !{!916, !403}
!917 = !{!"branch_weights", i32 5016, i32 379419}
!918 = !{!"branch_weights", i32 4407, i32 610}
!919 = !{!"branch_weights", i32 1, i32 67409}
!920 = !{!"branch_weights", i32 785883, i32 -1960233691}
!921 = !{!"branch_weights", i32 1, i32 22}
!922 = !{!"branch_weights", i32 67409, i32 942}
!923 = distinct !{!923, !403}
!924 = !{!"branch_weights", i32 1, i32 4407}
!925 = !{!"branch_weights", i32 4251, i32 157}
!926 = !{!"branch_weights", i32 1, i32 4251}
!927 = !{!"branch_weights", i32 1, i32 17001}
!928 = !{!929, !409, i64 0}
!929 = !{!"rtl_hooks", !409, i64 0, !409, i64 8, !409, i64 16, !409, i64 24, !409, i64 32}
!930 = !{!"branch_weights", i32 12750, i32 4251}
!931 = distinct !{!931, !403}
!932 = !{!933, !398, i64 1086}
!933 = !{!"recog_data", !398, i64 0, !398, i64 240, !398, i64 480, !398, i64 720, !398, i64 840, !398, i64 960, !398, i64 1072, !398, i64 1086, !398, i64 1087, !398, i64 1088, !398, i64 1089, !409, i64 1120}
!934 = !{!"branch_weights", i32 623991, i32 1}
!935 = !{!933, !398, i64 1087}
!936 = !{!"branch_weights", i32 309, i32 623683}
!937 = !{!"branch_weights", i32 1314743, i32 1}
!938 = !{!939, !409, i64 24}
!939 = !{!"insn_data", !409, i64 0, !398, i64 8, !409, i64 16, !409, i64 24, !398, i64 32, !398, i64 33, !398, i64 34, !398, i64 35}
!940 = !{!941, !398, i64 19}
!941 = !{!"insn_operand_data", !409, i64 0, !409, i64 8, !410, i64 16, !398, i64 18, !398, i64 19}
!942 = !{!"branch_weights", i32 151195, i32 1163549}
!943 = !{!"branch_weights", i32 914818, i32 248732}
!944 = !{!"branch_weights", i32 166857, i32 81876}
!945 = !{!"branch_weights", i32 1, i32 667425}
!946 = !{!"branch_weights", i32 500568, i32 166857}
!947 = distinct !{!947, !403}
!948 = !{!"branch_weights", i32 4863, i32 1158687}
!949 = !{!"branch_weights", i32 1148747, i32 14803}
!950 = !{!"branch_weights", i32 1163139, i32 411}
!951 = !{!"branch_weights", i32 1, i32 166857}
!952 = !{!"branch_weights", i32 690752, i32 623991}
!953 = distinct !{!953, !403}
!954 = !{!"branch_weights", i32 309, i32 0}
!955 = distinct !{!955, !403}
!956 = !{!"branch_weights", i32 623991, i32 690752}
!957 = distinct !{!957, !403}
!958 = distinct !{!958, !403}
!959 = !{!"branch_weights", i32 623582, i32 411}
!960 = !{!"branch_weights", i32 206, i32 206}
!961 = !{!"branch_weights", i32 150, i32 57}
!962 = !{!"branch_weights", i32 168921, i32 823}
!963 = !{!"branch_weights", i32 187, i32 225}
!964 = !{!"branch_weights", i32 19798028, i32 2127685620}
!965 = !{!"branch_weights", i32 70313, i32 375}
!966 = !{!"branch_weights", i32 411, i32 1}
!967 = !{!"branch_weights", i32 623787, i32 206}
!968 = !{!"branch_weights", i32 623786, i32 1}
!969 = !{!"branch_weights", i32 309, i32 623478}
!970 = !{!"branch_weights", i32 623786, i32 690547}
!971 = distinct !{!971, !403}
!972 = distinct !{!972, !403}
!973 = !{!"branch_weights", i32 2495965, i32 1}
!974 = !{!"branch_weights", i32 1871973, i32 623992}
!975 = distinct !{!975, !403}
!976 = !{!"branch_weights", i32 2146070142, i32 1413506}
!977 = !{!"branch_weights", i32 299, i32 113}
!978 = !{!"reload1.c:update_eliminable_offsets"}
!979 = !{!"branch_weights", i32 1248105, i32 1248105}
!980 = !{!"branch_weights", i32 1248105, i32 1}
!981 = !{!"branch_weights", i32 1872156, i32 624053}
!982 = distinct !{!982, !403}
!983 = !{!"function_entry_count", i64 160087}
!984 = !{!"reload1.c:copy_reloads"}
!985 = !{!"branch_weights", i32 4452, i32 155637}
!986 = !{!427, !409, i64 104}
!987 = !{!"function_entry_count", i64 59892}
!988 = !{!"reload1.c:set_offsets_for_label"}
!989 = !{!"branch_weights", i32 119785, i32 119785}
!990 = !{!"branch_weights", i32 119785, i32 1}
!991 = !{!"branch_weights", i32 59893, i32 179676}
!992 = distinct !{!992, !403}
!993 = !{!"reload1.c:recog_memoized"}
!994 = !{!"branch_weights", i32 62, i32 623992}
!995 = !{!"function_entry_count", i64 3377568}
!996 = !{!"reload1.c:elimination_effects"}
!997 = !{!"branch_weights", i32 713400, i32 471201, i32 1, i32 1, i32 1, i32 11983, i32 134400, i32 1, i32 303509, i32 1, i32 1, i32 1, i32 1, i32 1, i32 883687, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 39, i32 235, i32 1, i32 105, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 203, i32 24, i32 8245, i32 621946, i32 228605}
!998 = !{!"branch_weights", i32 883083, i32 605}
!999 = !{!"branch_weights", i32 821, i32 3531281}
!1000 = !{!"branch_weights", i32 411, i32 411}
!1001 = !{!"branch_weights", i32 1, i32 411}
!1002 = !{!"branch_weights", i32 2649428, i32 882673}
!1003 = distinct !{!1003, !403}
!1004 = distinct !{!1004, !403}
!1005 = distinct !{!1005, !403}
!1006 = !{!"branch_weights", i32 1, i32 93}
!1007 = distinct !{!1007, !403}
!1008 = !{!"branch_weights", i32 1, i32 32977}
!1009 = !{!"branch_weights", i32 24732, i32 8245}
!1010 = distinct !{!1010, !403}
!1011 = !{!"branch_weights", i32 384742, i32 237205}
!1012 = !{!"branch_weights", i32 1, i32 1538965}
!1013 = !{!"branch_weights", i32 1154223, i32 384742}
!1014 = distinct !{!1014, !403}
!1015 = !{!"branch_weights", i32 1, i32 713399}
!1016 = !{!"branch_weights", i32 397543472, i32 -1082425989, i32 21551634}
!1017 = !{!"branch_weights", i32 8421, i32 1}
!1018 = !{!"branch_weights", i32 8422, i32 8421}
!1019 = distinct !{!1019, !403}
!1020 = !{!"branch_weights", i32 713399, i32 705771}
!1021 = distinct !{!1021, !403}
!1022 = !{!"function_entry_count", i64 3190166}
!1023 = !{!"reload1.c:check_eliminable_occurrences"}
!1024 = !{!"branch_weights", i32 1008528, i32 2181640}
!1025 = !{!"branch_weights", i32 310566, i32 1871075}
!1026 = !{!"branch_weights", i32 310566, i32 1}
!1027 = !{!"branch_weights", i32 1, i32 1242261}
!1028 = !{!"branch_weights", i32 931695, i32 310566}
!1029 = distinct !{!1029, !403}
!1030 = !{!"branch_weights", i32 1, i32 1871074}
!1031 = !{!"branch_weights", i32 615341254, i32 -300370044, i32 13196550}
!1032 = distinct !{!1032, !403}
!1033 = !{!"branch_weights", i32 1871074, i32 1079389}
!1034 = distinct !{!1034, !403}
!1035 = !{!"reload1.c:find_reload_regs"}
!1036 = !{!"branch_weights", i32 160087, i32 1}
!1037 = !{!"branch_weights", i32 128394, i32 31695}
!1038 = !{!850, !410, i64 56}
!1039 = !{!850, !410, i64 32}
!1040 = distinct !{!1040, !403}
!1041 = !{!850, !409, i64 8}
!1042 = !{!"branch_weights", i32 77962, i32 82127}
!1043 = !{!850, !409, i64 0}
!1044 = !{!"branch_weights", i32 1, i32 77962}
!1045 = !{!"branch_weights", i32 43, i32 160046}
!1046 = !{!850, !410, i64 16}
!1047 = distinct !{!1047, !403}
!1048 = !{!"reload1.c:reload_reg_class_lower"}
!1049 = !{!"reload1.c:order_regs_for_reload"}
!1050 = distinct !{!1050, !403}
!1051 = distinct !{!1051, !403}
!1052 = !{!"function_entry_count", i64 42}
!1053 = !{!"reload1.c:find_reg"}
!1054 = !{!"branch_weights", i32 1, i32 42}
!1055 = distinct !{!1055, !403, !860, !861}
!1056 = distinct !{!1056, !403}
!1057 = !{!"branch_weights", i32 28561, i32 350199}
!1058 = !{!"branch_weights", i32 1, i32 169}
!1059 = !{!"branch_weights", i32 1, i32 168}
!1060 = distinct !{!1060, !403}
!1061 = !{!"branch_weights", i32 2134851405, i32 12632243}
!1062 = !{!"branch_weights", i32 169, i32 1}
!1063 = !{!"branch_weights", i32 168, i32 1}
!1064 = distinct !{!1064, !403}
!1065 = !{!"branch_weights", i32 43, i32 127}
!1066 = !{!"branch_weights", i32 127, i32 1}
!1067 = !{!"branch_weights", i32 43, i32 2184}
!1068 = distinct !{!1068, !403}
!1069 = !{!"branch_weights", i32 42, i32 1}
!1070 = distinct !{!1070, !403}
!1071 = !{!"branch_weights", i32 1, i32 171}
!1072 = !{!"branch_weights", i32 171, i32 1}
!1073 = distinct !{!1073, !403}
!1074 = distinct !{!1074, !403}
!1075 = !{!"reload1.c:spill_failure"}
!1076 = !{!"function_entry_count", i64 227725}
!1077 = !{!"reload1.c:count_pseudo"}
!1078 = !{!1079, !410, i64 0}
!1079 = !{!"reg_info_t", !410, i64 0, !410, i64 4, !410, i64 8, !410, i64 12, !410, i64 16, !410, i64 20, !410, i64 24}
!1080 = !{!"branch_weights", i32 227726, i32 1}
!1081 = !{!"branch_weights", i32 225366, i32 2361}
!1082 = !{!"branch_weights", i32 14085, i32 -1120588589}
!1083 = !{!"branch_weights", i32 225366, i32 1}
!1084 = !{!"branch_weights", i32 1, i32 225365}
!1085 = distinct !{!1085, !403}
!1086 = !{!"reload1.c:reloads_conflict"}
!1087 = !{!"reload1.c:count_spilled_pseudo"}
!1088 = !{!"branch_weights", i32 43, i32 1893}
!1089 = !{!"branch_weights", i32 43, i32 3829}
!1090 = distinct !{!1090, !403}
!1091 = !{!"reload1.c:reloads_unique_chain_p"}
!1092 = distinct !{!1092, !403}
!1093 = !{!"reload1.c:gen_reload_chain_without_interm_reg_p"}
!1094 = distinct !{!1094, !403}
!1095 = !{!"reload1.c:substitute"}
!1096 = distinct !{!1096, !403}
!1097 = distinct !{!1097, !403}
!1098 = !{!"reload1.c:VEC_rtx_p_base_length"}
!1099 = !{!1100, !410, i64 0}
!1100 = !{!"VEC_rtx_p_base", !410, i64 0, !410, i64 4, !398, i64 8}
!1101 = !{!"reload1.c:VEC_rtx_p_base_pop"}
!1102 = !{!"reload1.c:VEC_rtx_p_heap_safe_push"}
!1103 = !{!"reload1.c:VEC_rtx_p_heap_reserve"}
!1104 = !{!"reload1.c:VEC_rtx_p_base_quick_push"}
!1105 = !{!"reload1.c:VEC_rtx_p_base_space"}
!1106 = !{!1100, !410, i64 4}
!1107 = !{!"function_entry_count", i64 182667}
!1108 = !{!"reload1.c:REG_N_REFS"}
!1109 = !{!1110, !410, i64 4}
!1110 = !{!"regstat_n_sets_and_refs_t", !410, i64 0, !410, i64 4}
!1111 = !{!"reload1.c:set_initial_eh_label_offset"}
!1112 = !{!"function_entry_count", i64 630026}
!1113 = !{!"reload1.c:forget_old_reloads_1"}
!1114 = !{!"branch_weights", i32 -1960796015, i32 9844, i32 -427034660}
!1115 = distinct !{!1115, !403}
!1116 = !{!"branch_weights", i32 303, i32 392614}
!1117 = !{!"branch_weights", i32 43, i32 392572}
!1118 = !{!"branch_weights", i32 1893, i32 43}
!1119 = distinct !{!1119, !403}
!1120 = !{!"branch_weights", i32 265524311, i32 1881959337}
!1121 = !{!"branch_weights", i32 1, i32 392873}
!1122 = !{!"branch_weights", i32 392873, i32 1}
!1123 = distinct !{!1123, !403}
!1124 = distinct !{!1124, !403}
!1125 = !{!"reload1.c:choose_reload_regs"}
!1126 = !{!"branch_weights", i32 31695, i32 1}
!1127 = distinct !{!1127, !403}
!1128 = !{!"branch_weights", i32 13414, i32 2147470234}
!1129 = distinct !{!1129, !403}
!1130 = !{!"branch_weights", i32 160090, i32 160088}
!1131 = !{!"branch_weights", i32 2147463869, i32 19779}
!1132 = !{!"branch_weights", i32 46268, i32 31695}
!1133 = !{!"branch_weights", i32 82127, i32 77962}
!1134 = !{!"branch_weights", i32 303, i32 77660}
!1135 = !{!850, !409, i64 40}
!1136 = !{!"branch_weights", i32 -1279429496, i32 38830, i32 38830}
!1137 = !{!"branch_weights", i32 2136923929, i32 10559719}
!1138 = !{!"branch_weights", i32 111, i32 193}
!1139 = !{!"branch_weights", i32 111, i32 1}
!1140 = distinct !{!1140, !403}
!1141 = distinct !{!1141, !403, !860, !861}
!1142 = distinct !{!1142, !403}
!1143 = distinct !{!1143, !403, !860, !861}
!1144 = !{!"branch_weights", i32 0, i32 -2147483648}
!1145 = !{!"branch_weights", i32 77962, i32 1}
!1146 = !{!"branch_weights", i32 1, i32 82127}
!1147 = !{!"branch_weights", i32 657023, i32 1}
!1148 = !{!"branch_weights", i32 82127, i32 1}
!1149 = !{!"branch_weights", i32 1878925000, i32 268558648}
!1150 = !{!"branch_weights", i32 12694, i32 69434}
!1151 = !{!"branch_weights", i32 90655, i32 1}
!1152 = distinct !{!1152, !403}
!1153 = distinct !{!1153, !403, !860, !861}
!1154 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!1155 = distinct !{!1155, !403}
!1156 = distinct !{!1156, !403}
!1157 = distinct !{!1157, !403}
!1158 = !{!"branch_weights", i32 43, i32 128352}
!1159 = distinct !{!1159, !403}
!1160 = distinct !{!1160, !403}
!1161 = distinct !{!1161, !403}
!1162 = !{!"branch_weights", i32 320174, i32 1}
!1163 = !{!"branch_weights", i32 320175, i32 1}
!1164 = !{!"branch_weights", i32 1, i32 320174}
!1165 = distinct !{!1165, !403}
!1166 = !{!"branch_weights", i32 160088, i32 160087}
!1167 = distinct !{!1167, !403}
!1168 = distinct !{!1168, !403}
!1169 = !{!"branch_weights", i32 128352, i32 31737}
!1170 = !{!"branch_weights", i32 43, i32 31695}
!1171 = !{!"branch_weights", i32 1, i32 87}
!1172 = !{!"branch_weights", i32 154, i32 31542}
!1173 = distinct !{!1173, !403}
!1174 = !{!850, !409, i64 48}
!1175 = !{!"branch_weights", i32 345, i32 81783}
!1176 = !{!"branch_weights", i32 303, i32 43}
!1177 = !{!"branch_weights", i32 12775727, i32 2134707921}
!1178 = distinct !{!1178, !403}
!1179 = distinct !{!1179, !403, !860, !861}
!1180 = !{!"branch_weights", i32 43, i32 88, i32 3698, i32 43}
!1181 = distinct !{!1181, !403}
!1182 = !{!"reload1.c:merge_assigned_reloads"}
!1183 = distinct !{!1183, !403}
!1184 = distinct !{!1184, !403}
!1185 = distinct !{!1185, !403}
!1186 = distinct !{!1186, !403}
!1187 = distinct !{!1187, !403}
!1188 = !{!"reload1.c:emit_reload_insns"}
!1189 = !{!"branch_weights", i32 160046, i32 43}
!1190 = distinct !{!1190, !403}
!1191 = distinct !{!1191, !403}
!1192 = !{!"branch_weights", i32 160390, i32 160087}
!1193 = distinct !{!1193, !403}
!1194 = distinct !{!1194, !403}
!1195 = distinct !{!1195, !403}
!1196 = !{!"branch_weights", i32 1849, i32 87}
!1197 = !{!"branch_weights", i32 43, i32 1849}
!1198 = distinct !{!1198, !403}
!1199 = distinct !{!1199, !403}
!1200 = distinct !{!1200, !403}
!1201 = distinct !{!1201, !403}
!1202 = !{!"branch_weights", i32 77962, i32 82085}
!1203 = !{!"branch_weights", i32 40891, i32 12390276, i32 -950737752}
!1204 = !{!"branch_weights", i32 1, i32 81783}
!1205 = !{!"branch_weights", i32 2431, i32 1}
!1206 = !{!"branch_weights", i32 1879821074, i32 267662574}
!1207 = !{!"branch_weights", i32 302, i32 1}
!1208 = distinct !{!1208, !403}
!1209 = !{!"branch_weights", i32 1, i32 302}
!1210 = distinct !{!1210, !403}
!1211 = distinct !{!1211, !403}
!1212 = !{!"reload1.c:fixup_eh_region_note"}
!1213 = !{!"function_entry_count", i64 623847}
!1214 = !{!"reload1.c:forget_marked_reloads"}
!1215 = !{!"branch_weights", i32 230974, i32 392874}
!1216 = !{!"branch_weights", i32 392572, i32 303}
!1217 = !{!"branch_weights", i32 314290, i32 78283}
!1218 = !{!"branch_weights", i32 78283, i32 1}
!1219 = !{!"branch_weights", i32 1717936631, i32 429547017}
!1220 = !{!"branch_weights", i32 78241, i32 345}
!1221 = !{!"branch_weights", i32 392874, i32 0}
!1222 = distinct !{!1222, !403}
!1223 = !{!"reload1.c:choose_reload_regs_init"}
!1224 = distinct !{!1224, !403}
!1225 = distinct !{!1225, !403}
!1226 = !{!"reload1.c:free_for_value_p"}
!1227 = distinct !{!1227, !403}
!1228 = !{!"function_entry_count", i64 31736}
!1229 = !{!"reload1.c:mark_reload_reg_in_use"}
!1230 = !{!"branch_weights", i32 31736, i32 1}
!1231 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 31695, i32 43, i32 1}
!1232 = distinct !{!1232, !403}
!1233 = !{!"reload1.c:allocate_reload_reg"}
!1234 = !{!"branch_weights", i32 84, i32 1}
!1235 = distinct !{!1235, !403}
!1236 = !{!"branch_weights", i32 5, i32 81}
!1237 = !{!"branch_weights", i32 1, i32 85}
!1238 = !{!"branch_weights", i32 43, i32 43}
!1239 = !{!"branch_weights", i32 169, i32 171}
!1240 = distinct !{!1240, !403}
!1241 = !{!"reload1.c:set_reload_reg"}
!1242 = !{!"branch_weights", i32 3, i32 41}
!1243 = !{!"branch_weights", i32 41, i32 1}
!1244 = !{!"branch_weights", i32 1073741846, i32 1073741802}
!1245 = !{!"reload1.c:failed_reload"}
!1246 = !{!"reload1.c:reload_reg_free_for_value_p"}
!1247 = distinct !{!1247, !403}
!1248 = !{!"reload1.c:reload_reg_free_p"}
!1249 = !{!"branch_weights", i32 85, i32 1}
!1250 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 85, i32 1, i32 1}
!1251 = distinct !{!1251, !403}
!1252 = distinct !{!1252, !403}
!1253 = distinct !{!1253, !403}
!1254 = distinct !{!1254, !403}
!1255 = distinct !{!1255, !403}
!1256 = distinct !{!1256, !403}
!1257 = distinct !{!1257, !403}
!1258 = distinct !{!1258, !403}
!1259 = distinct !{!1259, !403}
!1260 = !{!"branch_weights", i32 169, i32 169}
!1261 = distinct !{!1261, !403}
!1262 = distinct !{!1262, !403}
!1263 = distinct !{!1263, !403}
!1264 = !{!"reload1.c:do_input_reload"}
!1265 = !{!"branch_weights", i32 77660, i32 303}
!1266 = !{!"branch_weights", i32 27545, i32 2147456103}
!1267 = !{!850, !410, i64 20}
!1268 = !{!"branch_weights", i32 2147483647, i32 1}
!1269 = !{!"branch_weights", i32 38981, i32 -1255891593}
!1270 = !{!"reload1.c:do_output_reload"}
!1271 = !{!"branch_weights", i32 882865, i32 -1008902814}
!1272 = !{!"branch_weights", i32 -922545232, i32 -1093494665}
!1273 = !{!"branch_weights", i32 345, i32 1}
!1274 = !{!"branch_weights", i32 -1008902814, i32 882865}
!1275 = !{!"branch_weights", i32 87, i32 1}
!1276 = !{!"branch_weights", i32 49371499, i32 2098112149}
!1277 = !{!"reload1.c:reload_reg_reaches_end_p"}
!1278 = distinct !{!1278, !403}
!1279 = distinct !{!1279, !403}
!1280 = distinct !{!1280, !403}
!1281 = distinct !{!1281, !403}
!1282 = distinct !{!1282, !403}
!1283 = distinct !{!1283, !403}
!1284 = distinct !{!1284, !403}
!1285 = !{!"branch_weights", i32 1, i32 84}
!1286 = distinct !{!1286, !403}
!1287 = !{!"reload1.c:reload_regs_reach_end_p"}
!1288 = distinct !{!1288, !403}
!1289 = !{!"reload1.c:inherit_piecemeal_p"}
!1290 = !{!"reload1.c:emit_input_reload_insns"}
!1291 = distinct !{!1291, !403}
!1292 = !{!850, !410, i64 76}
!1293 = !{!850, !410, i64 36}
!1294 = distinct !{!1294, !403}
!1295 = !{!1079, !410, i64 4}
!1296 = distinct !{!1296, !403}
!1297 = !{!850, !410, i64 84}
!1298 = !{!1299, !410, i64 0}
!1299 = !{!"secondary_reload_info", !410, i64 0, !410, i64 4, !409, i64 8, !410, i64 16}
!1300 = !{!1299, !409, i64 8}
!1301 = !{!563, !409, i64 1728}
!1302 = !{!939, !409, i64 16}
!1303 = !{!"reload1.c:delete_output_reload"}
!1304 = distinct !{!1304, !403}
!1305 = distinct !{!1305, !403}
!1306 = distinct !{!1306, !403}
!1307 = distinct !{!1307, !403}
!1308 = distinct !{!1308, !403}
!1309 = distinct !{!1309, !403}
!1310 = !{!1079, !410, i64 24}
!1311 = distinct !{!1311, !403}
!1312 = distinct !{!1312, !403}
!1313 = !{!"reload1.c:inc_for_reload"}
!1314 = !{!"reload1.c:conflicts_with_override"}
!1315 = distinct !{!1315, !403}
!1316 = !{!"reload1.c:REG_N_SETS"}
!1317 = !{!1110, !410, i64 0}
!1318 = !{!"reload1.c:reload_adjust_reg_for_icode"}
!1319 = !{!"reload1.c:reload_adjust_reg_for_temp"}
!1320 = distinct !{!1320, !403}
!1321 = !{!"reload1.c:gen_reload"}
!1322 = !{!"branch_weights", i32 7911982, i32 67108864, i32 -1450275933, i32 33077806}
!1323 = !{!1324, !410, i64 0}
!1324 = !{!"optab_handlers", !410, i64 0}
!1325 = !{!941, !409, i64 0}
!1326 = !{!"branch_weights", i32 1, i32 86, i32 1}
!1327 = !{!"reload1.c:emit_insn_if_valid_for_reload"}
!1328 = !{!"reload1.c:delete_address_reloads"}
!1329 = !{!"reload1.c:delete_address_reloads_1"}
!1330 = distinct !{!1330, !403}
!1331 = distinct !{!1331, !403}
!1332 = distinct !{!1332, !403}
!1333 = distinct !{!1333, !403}
!1334 = distinct !{!1334, !403}
!1335 = distinct !{!1335, !403}
!1336 = distinct !{!1336, !403}
!1337 = !{!"reload1.c:emit_output_reload_insns"}
!1338 = !{!850, !410, i64 80}
!1339 = !{!850, !410, i64 88}
!1340 = !{!"branch_weights", i32 351, i32 1}
!1341 = !{!"branch_weights", i32 1884401579, i32 263082069}
!1342 = !{!"branch_weights", i32 24472747, i32 2123010901}
!1343 = !{!"branch_weights", i32 956853452, i32 1190630196}
!1344 = distinct !{!1344, !403}
!1345 = !{!"reload1.c:ei_end_p"}
!1346 = !{!"branch_weights", i32 1, i32 462165}
!1347 = !{!"reload1.c:ei_edge"}
!1348 = !{!"function_entry_count", i64 768674}
!1349 = !{!"reload1.c:VEC_edge_base_length"}
!1350 = !{!"branch_weights", i32 1, i32 768675}
!1351 = !{!1352, !410, i64 0}
!1352 = !{!"VEC_edge_base", !410, i64 0, !410, i64 4, !398, i64 8}
!1353 = !{!"function_entry_count", i64 2150368}
!1354 = !{!"reload1.c:ei_container"}
!1355 = !{!"branch_weights", i32 1, i32 2150369}
!1356 = !{!"reload1.c:VEC_edge_base_index"}
